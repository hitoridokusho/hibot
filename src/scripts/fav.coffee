# Description:
#   fav
#
# Commands:
#   None
#
# Configuration:
#   HUBOT_FAV_CONSUMER_KEY
#   HUBOT_FAV_CONSUMER_SECRET
#   HUBOT_FAV_ACCESS_TOKEN
#   HUBOT_FAV_ACCESS_TOKEN_SECRET
#   HUBOT_FAV_KEYWORD
{Promise} = require 'q'
{OAuth} = require 'oauth'
qs = require 'qs'

class Twitter
  constructor: (options) ->
    requestTokenUrl = 'https://api.twitter.com/oauth/request_token'
    authorizeUrl = 'https://api.twitter.com/oauth/authorize'
    accessTokenUrl = 'https://api.twitter.com/oauth/access_token'
    @baseUrl = 'https://api.twitter.com/1.1'
    @consumerKey = options.consumerKey
    @consumerSecret = options.consumerSecret
    @accessToken = options.accessToken
    @accessTokenSecret = options.accessTokenSecret
    @oauth = new OAuth(
      requestTokenUrl,
      accessTokenUrl,
      @consumerKey,
      @consumerSecret,
      '1.0',
      @callBackUrl,
      'HMAC-SHA1'
    )

  search: (options) ->
    q = qs.stringify(options or {})
    url = @baseUrl + '/search/tweets.json' + if q? then '?' + q else ''
    token = @accessToken
    secret = @accessTokenSecret
    new Promise (resolve, reject) =>
      @oauth.get url, token, secret, (err, body, res) ->
        if err? or res.statusCode isnt 200
          reject err
        else
          resolve JSON.parse(body)

  createFavorite: (options) ->
    url = @baseUrl + '/favorites/create.json'
    token = @accessToken
    secret = @accessTokenSecret
    new Promise (resolve, reject) =>
      @oauth.post url, token, secret, options, (err, body, res) ->
        if err? or res.statusCode isnt 200
          reject err
        else
          resolve JSON.parse(body)

module.exports = (robot) ->
  keyword =
    text: process.env.HUBOT_FAV_KEYWORD
    sinceId: null

  twitter = new Twitter(
    consumerKey: process.env.HUBOT_FAV_CONSUMER_KEY
    consumerSecret: process.env.HUBOT_FAV_CONSUMER_SECRET
    accessToken: process.env.HUBOT_FAV_ACCESS_TOKEN
    accessTokenSecret: process.env.HUBOT_FAV_ACCESS_TOKEN_SECRET
  )

  watch = ->
    options = if keyword.sinceId? then { since_id: keyword.sinceId } else {}
    options.q = keyword.text
    twitter.search options
      .then (data) ->
        robot.logger.info "fav searched tweets.length=#{data.statuses.length}"
        sinceId = keyword.sinceId
        if data.statuses.length > 0
          keyword.sinceId = data.statuses[0].id
        return [] unless sinceId?
        data.statuses.filter (tweet) -> !tweet.favorited
      .then (tweets) ->
        robot.logger.info "fav filtered tweets.length=#{tweets.length}"
        tweets.forEach (tweet) ->
          twitter.createFavorite { id: tweet.id_str }
            .then ->
              robot.logger.info "fav favorite tweet.id=#{tweet.id}"
            , (err) ->
              robot.logger.error err
      , (err) ->
        robot.logger.error err

  interval = 60 * 1000
  setInterval watch, interval
