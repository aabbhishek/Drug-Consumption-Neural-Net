input=xlsread('data_drug.xls');
input=input';
target=xlsread('cannabis_S_target.xls');
target=target';
%drugnet=perceptron; %23
drugnet=feedforwardnet(20,'trainlm');%43 %
%drugnet=patternnet(130);% 42
%drugnet=fitnet([90 60]); %46
%drugnet = selforgmap([8 8]);
%drugnet=lvqnet(10)%73
drugnet=configure(drugnet,input,target);
drugnet=train(drugnet,input,target);
%view(drugnet);
y=drugnet(input);
output=max(y); 
