input=xlsread('data_drug.xls');
input=input';
aclohol=xlsread('alcohol _N_target.xls');
aclohol=aclohol';
%drugnet=feedforwardnet(7,'trainlm'); %40%
%drugnet=patternnet(7);% 41
drugnet=fitnet([90 60]); %54
%drugnet = selforgmap([8 8]);
drugnet=configure(drugnet,input,aclohol);
drugnet=train(drugnet,input,aclohol);
%view(drugnet);
y=drugnet(input);
aclohol_output=max(y); 
