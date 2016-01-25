# Description
#   A hubot script for scan images and upload to imgur
#
# Configuration:
#   HUBOT_SCANIMAGE_HOST - Public ip and port of docker-scanimage
#     (https://github.com/lgaticaq/docker-scanimage)
#
# Commands:
#   hubot scanimage -> <url image>
#
# Author:
#   lgaticaq

module.exports = (robot) ->
  robot.respond /scanimage/i, (res) ->
    unless process.env.HUBOT_SCANIMAGE_HOST
      err = "HUBOT_SCANIMAGE_HOST not configured"
      res.reply err
      robot.emit "error", err
    else
      res.send "Wait, scanning..."
      robot.http(process.env.HUBOT_SCANIMAGE_HOST)
        .get() (err, resp, body) ->
          if err
            res.reply "an error occurred while scanning"
            robot.emit "error", err, resp
          else
            res.send body
