if(global.chapter_player_clear==true)
{
	if(position_meeting(mouse_x,mouse_y,self)==true)
	{
		sprite_index=spt_chapter_sel_key_button1;
	}
	else if(position_meeting(mouse_x,mouse_y,self)==false)
	{
		sprite_index=spt_chapter_sel_key_button;
	}
}