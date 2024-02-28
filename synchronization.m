clear all
delete(gcp('nocreate'))
parpool("local")
addpath(genpath('.\'))
%% configuring radar parameters
f1 = parfeval(@radar_capture,1,1)
T = fetchOutputs(f1);

%% radar capure and motor control
count = 1
max_steps = 4;
FunList ={@radar_capture, @motorcontroller};
outputlist={};
serial_connection = true;
while(serial_connection)
    if(max_steps > count)
        f1 = parfeval(@radar_capture,1,2)
        f2 = parfeval(@motorcontroller,1,count)
        T = fetchOutputs(f1);
        T = fetchOutputs(f2);
        count = count +1
        dataList{2}{2}= count;
    else
        serial_connection = false;
    end

end

