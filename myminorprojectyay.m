function myminorproject
clear all; close all;
a=arduino("COM3",'uno');
%Setup of my graph
figure
h=animatedline;
ax=gca;
ax.YGrid='on';
ax.YLim=[-0.1 5];
ylabel('Voltage [volts]');
xlabel('Time [HH:MM:SS]');
title('Voltage moisture sensor vs Time on Live graph');
stop=0;
startTime=datetime('now');
% wetLittle and dry limits for my voltage readings
wetLittle=3;
dry=3.4; 
while ~stop
    stop=readDigitalPin(a,'D6');
    %Stops code from running just in case
    voltage=readVoltage(a,'A0');
    t=datetime('now')-startTime;
    addpoints(h,datenum(t),convert(voltage));
    datetick('x','keeplimits')
    drawnow
%voltage>3.4 then pump
    if voltage>dry
        disp('My soil is dry, please water me Maaz!')
        writeDigitalPin(a,'D2',1);
        %voltage>3 then pump
    elseif voltage>wetLittle %its wet but not wet enough so water pump stil!
        disp('My soil is slightly wet, please water me Maaz!')
        writeDigitalPin(a,'D2',1);
    else
        %voltage less than above? Then stop pumping, or dont pump water ata
        %all into plant
        disp('Im wet enough, no need for water!')
        writeDigitalPin(a,'D2',0);
    end
end
end
%This function makes voltage of moisture sensor into a 0 to 1 scal
function unit=convert(voltage)
wetLittle=3;
dry=3.4;
m=1/(wetLittle-dry);
b=1-(m*wetLittle);
unit=m*voltage+b;
end
       