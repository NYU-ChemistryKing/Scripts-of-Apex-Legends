function OnEvent(event, arg)
    --OutputLogMessage("Event: "..event.." Arg: "..arg.."\n")
    EnablePrimaryMouseButtonEvents(true);
    --event == "MOUSE_BUTTON_PRESSED" and arg == 1 and  
    while(  IsMouseButtonPressed(3) ) 
    do
      if( IsMouseButtonPressed(1) ) then
      Circle_c(1,2,2,1)
      
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
  MoveMouseRelative(x,y+1)            
  end
  BetterSleep(t)
                
  for i=1,n do
  MoveMouseRelative(-x,-y)
  end
  BetterSleep(t)
end