function OnEvent(event, arg)
    --OutputLogMessage("Event: "..event.." Arg: "..arg.."\n")
    EnablePrimaryMouseButtonEvents(true);
      
    while(  IsKeyLockOn("capslock") ) 
    do
      --swap_armor(5) 
      --Turn(4)
      if( IsMouseButtonPressed(1) and IsMouseButtonPressed(3) ) then
      Circle_c(1,12,22,1)
      else
      BetterSleep(5)
      end     
   end
end

function Turn(n)
  if( IsMouseButtonPressed(n) ) then
  
  for i=1,30 do 
    for i=1,10 do
    MoveMouseRelative(125,0)
    end
    BetterSleep(1)
  end
  
  for i=1,27 do
  MoveMouseRelative(125,0)
  BetterSleep(1)
  end  
  
  BetterSleep(500)
  end
end

function BetterSleep(t)
  sleep_start_time = GetRunningTime()
  repeat
    sleep_end_time = GetRunningTime()
    sleep_elapsed = sleep_end_time-sleep_start_time

    until(sleep_elapsed>t)
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

function Circle_b(n,x,y,t)
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

function swap_armor(n)
    if( IsMouseButtonPressed(n)) then
      PressKey("E")
      BetterSleep(700)
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
end

--OutputLogMessage("running for: %d ms", GetRunningTime())
--x,y = GetMousePosition();
--OutputLogMessage("Mouse is at %d %d\n",x,y);