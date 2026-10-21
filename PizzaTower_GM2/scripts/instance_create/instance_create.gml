/// @description Creates an instance of a given object at a given position, at the object's 1.x depth.
/// @param {Real} _x The x position the object will be created at.
/// @param {Real} _y The y position the object will be created at.
/// @param {Asset.GMObject} _obj The object to create an instance of.
function instance_create(_x, _y, _obj)
{
	return instance_create_depth(_x, _y, object_get_depth(_obj), _obj);
}
