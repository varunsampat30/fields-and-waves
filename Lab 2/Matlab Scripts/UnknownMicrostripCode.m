data=csvread('unknownMicrostrip.csv');
x=data(:,1);
y=data(:,2);
h=figure;
plot(x,y,'-o');
hold
plot(x,y);
xlabel('Distance From Maximum (cm)');
ylabel('Amplitude at 1GHz (dB)');
title('Unknown Load Microstrip');
saveas(h,'Unknown Load Microstrip.pdf');
close (h);