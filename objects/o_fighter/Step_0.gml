/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7F1135A1
/// @DnDArgument : "code" "key_left = keyboard_check(vk_left);$(13_10)key_right = keyboard_check(vk_right);$(13_10)key_jump = keyboard_check_pressed(vk_up);$(13_10)key_down = keyboard_check_pressed(vk_down);$(13_10) //calc movement$(13_10)$(13_10)var move = key_right - key_left;$(13_10)$(13_10)hsp = move * walksp;$(13_10)$(13_10)vsp = vsp + grv;$(13_10)$(13_10)$(13_10)//jumping$(13_10)$(13_10)if (place_meeting(x,y + 1, oWall)) and (key_jump)$(13_10){$(13_10)	vsp = -7;$(13_10)	$(13_10)}$(13_10)$(13_10)$(13_10)//vertical collision$(13_10)$(13_10)if (place_meeting(x,y+vsp,oWall))$(13_10){$(13_10)	while (!place_meeting(x,y + sign(vsp),oWall))$(13_10)	{$(13_10)		y = y + sign(vsp);$(13_10)	}$(13_10)	vsp = 0;$(13_10)}$(13_10)y = y + vsp;$(13_10)$(13_10)$(13_10)//horizontal collision$(13_10)$(13_10)if (place_meeting(x+hsp,y,oWall))$(13_10){$(13_10)	while (!place_meeting(x +sign(hsp),y,oWall))$(13_10)	{$(13_10)		x = x + sign(hsp);$(13_10)	}$(13_10)	hsp = 0;$(13_10)}$(13_10)x = x + hsp;$(13_10)$(13_10)if(keyboard_check_pressed(vk_space))$(13_10){$(13_10)	sprite_index = s_forward_attack;$(13_10)	attack = true;$(13_10)}$(13_10)$(13_10)$(13_10)//turn$(13_10)if (hsp != 0) image_xscale = sign(hsp);"
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_up);
key_down = keyboard_check_pressed(vk_down);
 //calc movement

var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;


//jumping

if (place_meeting(x,y + 1, oWall)) and (key_jump)
{
	vsp = -7;
	
}


//vertical collision

if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y + sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;


//horizontal collision

if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x +sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

if(keyboard_check_pressed(vk_space))
{
	sprite_index = s_forward_attack;
	attack = true;
}


//turn
if (hsp != 0) image_xscale = sign(hsp);