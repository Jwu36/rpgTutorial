// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_dialog(_messages){
	if (instance_exists(obj_dialog)) return;
	
	var _inst = instance_create_depth(0, 0, 0, obj_dialog);
	_inst.messages = _messages;
	_inst.current_message = 0;
}

global.char_colors = {
	"Congrats" : c_yellow,
	"Cross"    : c_yellow,
	"You"      : c_aqua
}

global.welcome_dialog = [
{
	mode : 1,
	name : "Cross",
	msg  : "Welcome to the RPG TUTORIAL!"
},

{
	mode : 0,
	name : "You",
	msg  : "Thanks!"
},

{
	mode : 1,
	name : "Cross",
	msg  : "I like Programming!"
},

{
	mode : 0,
	name : "You",
	msg  : "That's Nasty..."
},
]

global.room1_end = [
{
	mode : 1,
	name: "Cross",
	msg : "Let's move to the next stage!"
},
]