
//터치스크린 감지 시스템 만들기 한프레임에 좌표가 100이상 움직으면 터치로 인식 //완료 //는 개뿔//는 해결이야 병신아

if(tracking_mode==true)
{
	x=mouse_x;
	y=mouse_y;
}else if(global.pause_sens==true)
{
	sprite_index=spt_mouseStart;
}




//////////터치 및 버그 방지 코드 ////////////


keyboard_set_numlock(true); ///////넘패드 조작 방지///////

if(abs(temp_x-x)>40||abs(temp_y-y)>40)  
{
	if(tracking_mode==true&&collision_line(temp_x,temp_y,mouse_x,mouse_y,wall_parents,1,1)) //도는 벽 지나갈떄 버그있음 //고칠것//완료
	{
		s=1;
	}
}
if(abs(temp_x-x)>90||abs(temp_y-y)>90)
{
	s=1;
}
switch(s)
{
	case 1 :
	{
		image_index=1;
	}
	case 0:
	{
		temp_x=x;
		temp_y=y;
	}
}



room_last_check();




if(instance_exists(key)==true&&place_meeting(x,y,FinishLine_parents))////키가 아직 남았는데 통과할때////
{
	image_index=1;	
}


/////벽에 충돌했을때/////
if(place_meeting(x,y,wall_parents)&&sprite_index==spt0_mousePnt)
{
	image_index=1;
}

/////밖에 있을때/////
if(place_free(x,y)&&sprite_index==spt0_mousePnt)
{
	image_index=1;
}


if(image_index==1)
{
	tracking_mode=false;
	room_speed=1;
	delay-=1;
	if(delay<1)
	{
		room_speed=64;
		global.total_death_count+=1;
		global.death_count+=1;
		room_restart()
	}
}




