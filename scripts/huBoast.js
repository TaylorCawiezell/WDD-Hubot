// Description:
//   Robots think highly of themselves.
//
// Dependencies:
//   None
//
// Configuration:
//   None
//
// Commands:
//   None
//
// Author: 
//	 dgerena aka Eli!
var responseArr=[
	"Ya, I'm the best","I am the greatest!"
]
module.exports = function(robot){
	return robot.hear(/^pretty\snice|awesome$|cool$|nice$/i, function(msg){
  		//Heh giving the bots a bit of boasting
    	msg.send(responseArr[Math.floor(Math.random()*2)]); 
	});
}