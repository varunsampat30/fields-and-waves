data=csvread('unknownMicrostrip.csv');
x=data(:,1);
y=data(:,2);
plot(x,y);
xlabel('Distance From Maximum (cm)');
ylabel('Amplitude at 1GHz (dB)');
title('Unknown Microstrip');