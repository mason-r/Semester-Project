/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 2A8FF1CF
/// @DnDArgument : "key" "ord("A")"
var l2A8FF1CF_0;
l2A8FF1CF_0 = keyboard_check_pressed(ord("A"));
if (l2A8FF1CF_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4C97D76D
	/// @DnDParent : 2A8FF1CF
	/// @DnDArgument : "var" "global.Music"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "true"
	if(!(global.Music == true))
	{
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 5E538615
		/// @DnDParent : 4C97D76D
		/// @DnDArgument : "value" "true"
		/// @DnDArgument : "var" "global.Music"
		global.Music = true;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 01B89388
		/// @DnDParent : 4C97D76D
		/// @DnDArgument : "soundid" "Hubbell"
		/// @DnDSaveInfo : "soundid" "Hubbell"
		audio_play_sound(Hubbell, 0, 0);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 67EA3A10
	/// @DnDParent : 2A8FF1CF
	else
	{
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 42EF6D0E
		/// @DnDParent : 67EA3A10
		/// @DnDArgument : "value" "false"
		/// @DnDArgument : "var" "global.Music"
		global.Music = false;
	
		/// @DnDAction : YoYo Games.Audio.Stop_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 3E3818BC
		/// @DnDParent : 67EA3A10
		audio_stop_sound(noone);
	}
}