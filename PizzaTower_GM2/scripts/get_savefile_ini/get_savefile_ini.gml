function get_savefile_ini(_is_peppino = true)
{
	if (global.swapmode)
	{
		_is_peppino = false;
	}
	return string_concat("saveData", global.currentsavefile, _is_peppino ? "" : "N", ".ini");
}
