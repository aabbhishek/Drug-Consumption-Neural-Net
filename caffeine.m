input=xlsread('data_drug.xls');
input=input';
target=xlsread('caffeine_R_target.xls');
target=target';
drugnet=perceptron; %50
%drugnet=feedforwardnet(20,'trainlm');%71 %
%drugnet=patternnet(130);% 71
%drugnet=fitnet([90 60]); %71
%drugnet = selforgmap([8 8]);
olodrugnet=lvqnet(10)%73
drugnet=configure(drugnet,input,target);
drugnet=train(drugnet,input,target);
%view(drugnet);
y=drugnet(input);
output=max(y); 
