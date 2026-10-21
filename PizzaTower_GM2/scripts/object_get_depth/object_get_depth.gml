/// @description Returns the depth an object had in GameMaker 1.x, or 0 if it had none.
/// @param {Asset.GMObject} _obj The object to look up
/// @return {Real}
function object_get_depth(_obj)
{
	return global.object_depths[$ object_get_name(_obj)] ?? 0;
}
