if(global.chapter_key_clear==true)
{
	if(position_meeting(mouse_x,mouse_y,self)==true)
	{
		sprite_index=spt_chapter_sel_spin_button1;
	}
	else if(position_meeting(mouse_x,mouse_y,self)==false)
	{
		sprite_index=spt_chapter_sel_spin_button;
	}
}