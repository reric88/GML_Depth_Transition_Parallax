/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 6F8B190B
/// @DnDArgument : "obj" "ob_game"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "ob_game"
var l6F8B190B_0 = false;
l6F8B190B_0 = instance_exists(ob_game);
if(!l6F8B190B_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 168A7DBC
	/// @DnDParent : 6F8B190B
	/// @DnDArgument : "objectid" "ob_game"
	/// @DnDSaveInfo : "objectid" "ob_game"
	instance_create_layer(0, 0, "Instances", ob_game);
}