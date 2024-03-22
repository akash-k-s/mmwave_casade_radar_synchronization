function status = motorcontroller(count)
%% Initialize serial with motor controller
controller = serialport("COM2",115200);
configureTerminator(controller,"CR");
%%  finding the direction of the motor
direction = count
%% pause for 2 seconds for radar to intilize
pause(10);
if mod(direction, 2)
    disp('moving in -x direction')
    writeline(controller,"G01X-1000F1000")
else
    disp('moving in +x direction')
    writeline(controller,"G01X0F1000")
end
%% reading  the output from serial 
read(controller,1000,"string");
status = 1;
controller =[];
end

