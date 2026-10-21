function scr_get_timer_string(_mins, _secs, _do_hours = false)
{
	if (_secs < 10)
	{
		_secs = string_format(_secs, 1, 3);
		_secs = "0" + _secs;
	}
	else
	{
		_secs = string_format(_secs, 2, 3);
	}
	var h;
	if (_do_hours)
	{
		for (h = 0; _mins > 59; h++)
		{
			_mins -= 60;
		}
		if (h < 10)
		{
			h = string_concat("0", h);
		}
		else
		{
			h = string(h);
		}
	}
	if (_mins < 10)
	{
		_mins = string_concat("0", _mins);
	}
	else
	{
		_mins = string_concat(_mins);
	}
	if (_do_hours)
	{
		return string_concat(h, ":", _mins, ":", _secs);
	}
	return string_concat(_mins, ":", _secs);
}
