input=xlsread('data_drug.xls');
input=input';
target=xlsread('amphetamines _O_target.xls');
target=target';
%drugnet=perceptron;
%drugnet=feedforwardnet(20,'trainlm'); %56%
%drugnet=patternnet(130);% 57
drugnet=fitnet([90 60]); %63
%drugnet = selforgmap([8 8]);
%drugnet=lvqnet(10)
drugnet=configure(drugnet,input,target);
drugnet=train(drugnet,input,target);
%view(drugnet);
y=drugnet(input);
output=max(y); 
