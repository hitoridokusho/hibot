# hibot

hibot は [ひとり読書会][hitoridokusho]のための [HUBOT][github/hubot] です。

## 概要

[Lingr][lingr] をチャットとし、[@hitoridokusho][@hitoridokusho] の操作などを行います。

## 設定

    $ # for hubot-auto-fav
    $ export HUBOT_AUTO_FAV_API_INTERVAL='1000'
    $ export HUBOT_AUTO_FAV_INTERVAL='60000'
    $ export HUBOT_AUTO_FAV_KEYWORDS='["keyword1", "keyword2"]'
    $ export HUBOT_AUTO_FAV_ROOM='room id'
    $ export HUBOT_AUTO_FAV_API_KEY='twitter api key'
    $ export HUBOT_AUTO_FAV_API_SECRET='twitter api secret'
    $ export HUBOT_AUTO_FAV_ACCESS_TOKEN='twitter access token'
    $ export HUBOT_AUTO_FAV_ACCESS_TOKEN_SECRET='twitter access token secret'

    $ # for hubot-fav
    $ export HUBOT_FAV_API_KEY='twitter api key'
    $ export HUBOT_FAV_API_SECRET='twitter api secret'
    $ export HUBOT_FAV_ACCESS_TOKEN='twitter access token'
    $ export HUBOT_FAV_ACCESS_TOKEN_SECRET='twitter access token secret'

    $ # for hubot-lingr (adapter)
    $ export HUBOT_LINGR_BOT='hibot'
    $ export HUBOT_LINGR_SECRET='...'

    $ # for hubot-merge-pr
    $ export HUBOT_MERGE_PR_DEFAULT_USERNAME='...'
    $ export HUBOT_MERGE_PR_TIMEOUT='30000'
    $ export HUBOT_MERGE_PR_TOKEN='...'

    $ # for hubot-omikuji
    $ export HUBOT_OMIKUJI_INITIAL_DATA='...'

    $ # for hubot-retweet
    $ export HUBOT_RETWEET_API_KEY='twitter api key'
    $ export HUBOT_RETWEET_API_SECRET='twitter api secret'
    $ export HUBOT_RETWEET_ACCESS_TOKEN='twitter access token'
    $ export HUBOT_RETWEET_ACCESS_TOKEN_SECRET='twitter access token secret'

    $ # for hubot-sakagemc
    $ export HUBOT_SAKAGEMC_ID='90569826@N04'
    $ export HUBOT_SAKAGEMC_FLICKR_API_KEY='...'
    $ export HUBOT_SAKAGEMC_FLICKR_SECRET='...'

    $ # for hubot-tweet
    $ export HUBOT_TWEET_API_KEY='twitter api key'
    $ export HUBOT_TWEET_API_SECRET='twitter api secret'
    $ export HUBOT_TWEET_ACCESS_TOKEN='twitter access token'
    $ export HUBOT_TWEET_ACCESS_TOKEN_SECRET='twitter access token secret'

[アダプター設定の詳細は hubot-lingr を参照][miyagawa/hubot-lingr]

## バッジ

[![Build Status][travis-badge]][travis]

[travis]: https://travis-ci.org/hitoridokusho/hibot
[travis-badge]: https://travis-ci.org/hitoridokusho/hibot.svg?branch=master
[hitoridokusho]: http://hitoridokusho.doorkeeper.jp/
[@hitoridokusho]: https://twitter.com/hitoridokusho
[lingr]: http://lingr.com/
[github/hubot]: https://github.com/github/hubot
[miyagawa/hubot-lingr]: https://github.com/miyagawa/hubot-lingr
