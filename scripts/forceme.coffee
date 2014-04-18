#Description:
#  Helps you make desicions
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot force me <thin1>, <thin2>, <thing3> - Receive a choice
#
# Author:
#   Russell Schlup

module.exports = (robot) ->
  robot.respond /force me (.*)/i, (msg) ->
    # pulls the data from the regex
    data = msg.match[1].trim()
    # turns the string from text into an array sperated by commas
    arr = data.split(",")
    i = 0

    # while loop to pull any blank or non-strings out of the array
    while i < arr.length
      arr.splice i, 1  unless arr[i]
      i++

    # random number generator
    num = Math.floor(Math.random() * ((arr.length - 1) - 0 + 1)) + 0

    # pull the selection out of the array
    str = arr[num]

    # final check to make sure that this is actually,
    # purely is a string with something in it

    if !!str and str isnt "" and typeof str is "string"
      msg.send str
    else
      msg.send "Something doesn't seem right."