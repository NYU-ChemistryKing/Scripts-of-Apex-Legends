function OnEvent(event, arg)
    --OutputLogMessage("Event: "..event.." Arg: "..arg.."\n")
    EnablePrimaryMouseButtonEvents(true);
    --if( IsMouseButtonPressed(5) ) then
    --swap_armor()
    
    --event == "MOUSE_BUTTON_PRESSED" and arg == 1 and  
    while( IsKeyLockOn("capslock") ) 
    do
      if( IsMouseButtonPressed(1) and  IsMouseButtonPressed(3) ) then
      Circle(1,2,2,1)
      
      else
      BetterSleep(5)
      end

   end
end

function BetterSleep(t)
  sleep_start_time = GetRunningTime()
  repeat
    sleep_end_time = GetRunningTime()
    sleep_elapsed = sleep_end_time-sleep_start_time

    until(sleep_elapsed>t)
end

function Circle_c(n,x,y,t)
  for i=1,n do
  MoveMouseRelative(x,y)            
  end
  BetterSleep(t)
                
  for i=1,n do
  MoveMouseRelative(-x,-y)
  end
  BetterSleep(t)
end

function swap_armor() 
    PressKey("E")
    BetterSleep(600)
    ReleaseKey("E")
    
    BetterSleep(100)

    MoveMouseTo(12856,53375)
    BetterSleep(20)
    PressMouseButton("1")
    BetterSleep(20)
    ReleaseMouseButton("1")
    
    MoveMouseTo(12856,48912)
    BetterSleep(20)
    PressMouseButton("1")
    BetterSleep(20)
    ReleaseMouseButton("1")
    
    MoveMouseTo(12856,44403)
    BetterSleep(20)
    PressMouseButton("1")
    BetterSleep(20)
    ReleaseMouseButton("1")
    
    MoveMouseTo(12856,40168)
    BetterSleep(20)
    PressMouseButton("1")
    BetterSleep(20)
    ReleaseMouseButton("1")       
    --x,y = GetMousePosition();
    --OutputLogMessage("Mouse is at %d %d\n",x,y);

    BetterSleep(20)
    PressAndReleaseKey("Tab")
    
end

function Circle(n,x,y,t)
  for i=1,n do
  MoveMouseRelative(x,y)            
  end
  BetterSleep(t)
                
  for i=1,2*n do
  MoveMouseRelative(-x,-y)
  end
  BetterSleep(t)

  for i=1,n do
  MoveMouseRelative(x,y)
  end
  BetterSleep(t)

  for i=1,n do
  MoveMouseRelative(-x,y)
  end
  BetterSleep(t)

  for i=1,2*n do
  MoveMouseRelative(x,-y)
  end
  BetterSleep(t)

  for i=1,n do
  MoveMouseRelative(-x,y)
  end
  BetterSleep(t)
end