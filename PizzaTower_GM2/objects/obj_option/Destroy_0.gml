with (obj_player)
{
	if (state == states.actor)
	{
		state = states.normal;
	}
}
gamesave_async_save_options();
fmod_event_instance_stop(global.snd_slidermaster, true);
fmod_event_instance_stop(global.snd_slidermusic, true);
fmod_event_instance_stop(global.snd_slidersfx, true);
for (var i = 0; i < array_length(menus); i++)
{
	var b = menus[i].options;
	for (var j = 0; j < array_length(b); j++)
	{
		if (b[j].type == optiontypes.slide && b[j].sound != noone)
		{
			destroy_sounds([b[j].sound]);
		}
	}
}
