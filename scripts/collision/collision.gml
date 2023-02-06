/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 344FB3CE
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "collision"
function collision() 
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 238F6467
	/// @DnDComment : target values
	/// @DnDInput : 2
	/// @DnDParent : 344FB3CE
	/// @DnDArgument : "var" "tar_x"
	/// @DnDArgument : "value" "x"
	/// @DnDArgument : "var_1" "tar_y"
	/// @DnDArgument : "value_1" "y"
	var tar_x = x;
	var tar_y = y;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 699E6CC0
	/// @DnDInput : 2
	/// @DnDParent : 344FB3CE
	/// @DnDArgument : "expr" "xprevious"
	/// @DnDArgument : "expr_1" "yprevious"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	x = xprevious;
	y = yprevious;

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 627B1DE5
	/// @DnDInput : 2
	/// @DnDParent : 344FB3CE
	/// @DnDArgument : "var" "_dis_x"
	/// @DnDArgument : "value" "abs(tar_x - x)"
	/// @DnDArgument : "var_1" "_dis_y"
	/// @DnDArgument : "value_1" "abs(tar_y - y)"
	var _dis_x = abs(tar_x - x);
	var _dis_y = abs(tar_y - y);

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 4275B03A
	/// @DnDParent : 344FB3CE
	/// @DnDArgument : "times" "_dis_x"
	repeat(_dis_x)
	{
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 0B097B71
		/// @DnDParent : 4275B03A
		/// @DnDArgument : "x" "sign(tar_x - x)"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "obj_collider"
		/// @DnDArgument : "not" "1"
		var l0B097B71_0 = instance_place(x + sign(tar_x - x), y + 0, obj_collider);
		if (!(l0B097B71_0 > 0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 286DA162
			/// @DnDParent : 0B097B71
			/// @DnDArgument : "expr" "sign(tar_x - x)"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "x"
			x += sign(tar_x - x);
		}
	}

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 2C15B6AD
	/// @DnDParent : 344FB3CE
	/// @DnDArgument : "times" "_dis_y"
	repeat(_dis_y)
	{
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 327B021C
		/// @DnDParent : 2C15B6AD
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "sign(tar_y - y)"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "obj_collider"
		/// @DnDArgument : "not" "1"
		var l327B021C_0 = instance_place(x + 0, y + sign(tar_y - y), obj_collider);
		if (!(l327B021C_0 > 0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 236A4407
			/// @DnDParent : 327B021C
			/// @DnDArgument : "expr" "sign(tar_y - y)"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "y"
			y += sign(tar_y - y);
		}
	}
}