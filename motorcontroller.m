function status = motorcontroller(count)
%% Initialize serial with motor controller
controller = serialport("COM2",115200);
configureTerminator(controller,"CR");
%%  finding the direction of the motor
direction = count
%% pause for 2 seconds for radar to intilize
pause(2);
if mod(direction, 2)
    disp('moving in -x direction')
    writeline(controller,"G01X-200F10")
else
    disp('moving in +x direction')
    writeline(controller,"G01X200F10")
end
%% reading  the output from serial 
read(controller,1000,"string");
status = 1;
controller =[];
end

