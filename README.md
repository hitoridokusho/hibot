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

    $ # for hubot-backlog-status
    $ export HUBOT_BACKLOG_STATUS_USE_SLACK='1'
    $ export HUBOT_BACKLOG_STATUS_SPACE_ID='...'
    $ export HUBOT_BACKLOG_STATUS_API_KEY='...'

    $ # for hubot-backlog-activity
    $ export HUBOT_BACKLOG_ACTIVITY_SPACE_ID='...'
    $ export HUBOT_BACKLOG_ACTIVITY_API_KEY='...'
    $ export HUBOT_BACKLOG_ACTIVITY_MAPPINGS='{"BOUZUYA": "hitoridokusho"}'
    $ export HUBOT_BACKLOG_ACTIVITY_INTERVAL='30000'
    $ export HUBOT_BACKLOG_ACTIVITY_USE_SLACK='1'

    $ # for hubot-docomo-dialogue
    $ HUBOT_DOCOMO_DIALOGUE_P='0.3'
    $ HUBOT_DOCOMO_DIALOGUE_API_KEY='docomo api key'

    $ # for hubot-fav
    $ export HUBOT_FAV_API_KEY='twitter api key'
    $ export HUBOT_FAV_API_SECRET='twitter api secret'
    $ export HUBOT_FAV_ACCESS_TOKEN='twitter access token'
    $ export HUBOT_FAV_ACCESS_TOKEN_SECRET='twitter access token secret'

    $ # for hubot-lingr (adapter)
    $ export HUBOT_LINGR_BOT='hibot'
    $ export HUBOT_LINGR_SECRET='...'

    $ # for hubot-list-pr
    $ export HUBOT_LIST_PR_DEFAULT_USERNAME='...'
    $ export HUBOT_LIST_PR_TOKEN='...'

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

    $ # for hubot-script-hoshii
    $ export HUBOT_SCRIPT_HOSHII_USER='hitoridokusho'
    $ export HUBOT_SCRIPT_HOSHII_REPO='hibot'
    $ export HUBOT_SCRIPT_HOSHII_TOKEN='...github token...'

    $ # for hubot-tweet
    $ export HUBOT_TWEET_API_KEY='twitter api key'
    $ export HUBOT_TWEET_API_SECRET='twitter api secret'
    $ export HUBOT_TWEET_ACCESS_TOKEN='twitter access token'
    $ export HUBOT_TWEET_ACCESS_TOKEN_SECRET='twitter access token secret'

    $ # for hubot-twitter-favs
    $ export HUBOT_TWITTER_FAVS_API_KEY='twitter api key'
    $ export HUBOT_TWITTER_FAVS_API_SECRET='twitter api secret'
    $ export HUBOT_TWITTER_FAVS_ACCESS_TOKEN='twitter access token'
    $ export HUBOT_TWITTER_FAVS_ACCESS_TOKEN_SECRET='twitter access token secret'
    $ export HUBOT_TWITTER_FAVS_SHOW_DETAIL='1'

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
