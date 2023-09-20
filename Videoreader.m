% This script was written by Hannes Euler.

function Videoreader
    Ende =4899;
    start = Ende -3000;
    [file,path] = uigetfile('.mp4');
    disp(file);
    disp(path);
    [~,name,~] = fileparts(strcat(path,file));
    v = VideoReader(strcat(path,file));
    out = VideoWriter(strcat(path,name)+"-cut.mp4",'MPEG-4');
    out.FrameRate = 25;
    open(out);
    for img = start:start+3000
        b = read(v,img);
    writeVideo(out,b)
    end
    
    
    close(out);