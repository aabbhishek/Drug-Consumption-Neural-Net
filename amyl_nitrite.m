input=xlsread('data_drug.xls');
input=input';
target=xlsread('amyl_nitrite_P_target.xls');
target=target';
%drugnet=perceptron;
%drugnet=feedforwardnet(20,'trainlm');%70 %
%drugnet=patternnet(130);% 69
%drugnet=fitnet([90 60]); %63
%drugnet = selforgmap([8 8]);
drugnet=lvqnet(10)%68
drugnet=configure(drugnet,input,target);
drugnet=train(drugnet,input,target);
%view(drugnet);
y=drugnet(input);
output=max(y); 
