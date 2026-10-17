function string_split(_str, _splitter)
{
	_str += " ";
	var _ctx = { splitter: _splitter, current_str: "", list: array_create(0) };
	string_foreach(_str, method(_ctx, function(_char, _pos)
	{
		if (_char != splitter)
		{
			current_str += _char;
		}
		else
		{
			array_push(list, current_str);
			current_str = "";
		}
	}));
	return _ctx.list;
}

function function_overload(_array, _func)
{
	var _size = array_length(_array);
	switch (_size)
	{
		case 0:
			_func();
			break;
		case 1:
			_func(_array[0]);
			break;
		case 2:
			_func(_array[0], _array[1]);
			break;
		case 3:
			_func(_array[0], _array[1], _array[2]);
			break;
		case 4:
			_func(_array[0], _array[1], _array[2], _array[3]);
			break;
		case 5:
			_func(_array[0], _array[1], _array[2], _array[3], _array[4]);
			break;
		case 6:
			_func(_array[0], _array[1], _array[2], _array[3], _array[4], _array[5]);
			break;
		case 7:
			_func(_array[0], _array[1], _array[2], _array[3], _array[4], _array[5], _array[6]);
			break;
	}
}

function DebugCommand(_command_id, _desc, _format, _func) constructor
{
	command_id = _command_id;
	description = _desc;
	format = _format;
	func = _func;
	
	Invoke = function(_command_id)
	{
		if (_command_id != undefined)
		{
			function_overload(_command_id, func);
		}
		else
		{
			func();
		}
	};
}

function TextList_Add(_type, _text)
{
	with (obj_debugcontroller)
	{
		ds_list_add(text_list, [_type, _text]);
	}
}
