data=csvread('short-microstrip.csv');
x=data(:,1);
y=data(:,2);
h = figure;
plot(x,y,'-o');
hold
plot(x,y);
xlabel('Distance From Maximum (cm)');
ylabel('Amplitude at 1GHz (dB)');
title('Shorted Load Microstrip');
saveas(h,'Shorted Load Microstrip.pdf');
close (h);