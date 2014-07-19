# hibot

hibot は [ひとり読書会][hitoridokusho]のための [HUBOT][github/hubot] です。

## 概要

[Lingr][lingr] をチャットとし、[@hitoridokusho][@hitoridokusho] の操作などを行います。

## 設定

    $ # for hubot-auto-fav
    $ export HUBOT_AUTO_FAV_API_INTERVAL='1000'
    $ export HUBOT_AUTO_FAV_INTERVAL='60000'
    $ export HUBOT_AUTO_FAV_KEYWORDS='["keyword1", "keyword2"]'
    $ export HUBOT_AUTO_FAV_ROOM='room_id'
    $ export HUBOT_AUTO_FAV_API_KEY='twitter api key'
    $ export HUBOT_AUTO_FAV_API_SECRET='twitter api secret'
    $ export HUBOT_AUTO_FAV_ACCESS_TOKEN='twitter access token'
    $ export HUBOT_AUTO_FAV_ACCESS_TOKEN_SECRET='twitter access token secret'

    $ # for hubot-lingr (adapter)
    $ export HUBOT_LINGR_BOT='hibot'
    $ export HUBOT_LINGR_SECRET='...'

    $ # for hubot-sakagemc
    $ export HUBOT_SAKAGEMC_ID='90569826@N04'
    $ HUBOT_SAKAGEMC_FLICKR_API_KEY='...'
    $ HUBOT_SAKAGEMC_FLICKR_SECRET='...'

[設定の詳細は hubot-lingr を参照][miyagawa/hubot-lingr]

## バッジ

[![Build Status](https://travis-ci.org/hitoridokusho/hibot.svg?branch=master)](https://travis-ci.org/hitoridokusho/hibot)

[hitoridokusho]: http://hitoridokusho.doorkeeper.jp/
[@hitoridokusho]: https://twitter.com/hitoridokusho
[lingr]: http://lingr.com/
[github/hubot]: https://github.com/github/hubot
[miyagawa/hubot-lingr]: https://github.com/miyagawa/hubot-lingr
