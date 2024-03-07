current_directory = pwd;
cd D:\ti\mmwave_studio_02_01_01_00\mmWaveStudio\Scripts\Cascade\ ;
fid = fopen('Cascade_Configuration_MIMO.lua');
fseek(fid,20,'bof');
fgetl(fid) 
cd(current_directory);