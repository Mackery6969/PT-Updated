if (room == tower_soundtestlevel && (obj_player.state == states.backtohub || obj_player.state == states.comingoutdoor || obj_player.targetDoor == "A"))
{
	exit;
}
with (obj_player)
{
	x = other.x;
	y = other.y;
	roomstartx = x;
	roomstarty = y;
	hsp = 0;
	vsp = 0;
	movespeed = 0;
}
