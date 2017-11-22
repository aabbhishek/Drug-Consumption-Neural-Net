input=xlsread('data_drug.xls');
input=input';
target=xlsread('benzodiazepine_Q_target.xls');
target=target';
%drugnet=perceptron; %50
%drugnet=feedforwardnet(20,'trainlm');%54 %
%drugnet=patternnet(130);% 54
drugnet=fitnet([90 60]); %59
%drugnet = selforgmap([8 8]);
%drugnet=lvqnet(10)%53
drugnet=configure(drugnet,input,target);
drugnet=train(drugnet,input,target);
%view(drugnet);
y=drugnet(input);
output=max(y); 
