 load('8TSECLIent companies data.mat')
% FOLDclose=FOLDclose+1;
% HMRZclose=HMRZclose+1;
% MSMIclose=MSMIclose+1;
% PKLJclose=PKLJclose+1;
% PTAPclose=PTAPclose+1;
% SFKZclose=SFKZclose+1;
% SGRBclose=SGRBclose+1;
% SIPAclose=SIPAclose+1;
% 
% FOLDopen=FOLDopen+1;
% HMRZopen=HMRZopen+1;
% MSMIopen=MSMIopen+1;
% PKLJopen=PKLJopen+1;
% PTAPopen=PTAPopen+1;
% SFKZopen=SFKZopen+1;
% SGRBopen=SGRBopen+1;
% SIPAopen=SIPAopen+1;

% FOLDfeature=zeros(2898, 15);
% HMRZfeature=zeros(1410, 15);
% MSMIfeature=zeros(2912, 15);
% PKLJfeature=zeros(1515, 15);
% PTAPfeature=zeros(1475, 15);
% SFKZfeature=zeros(3950, 15);
% SGRBfeature=zeros(3273, 15);
% SIPAfeature=zeros(4058, 15);
% 
% FOLDtarget=zeros(1, 2898);
% HMRZtarget=zeros(1, 1410);
% MSMItarget=zeros(1, 2912);
% PKLJtarget=zeros(1, 1515);
% PTAPtarget=zeros(1, 1475);
% SFKZtarget=zeros(1, 3950);
% SGRBtarget=zeros(1, 3273);
% SIPAtarget=zeros(1, 4058);
% 
% 
%   for day=5:2898 
%       
%      FOLDfeature(day-4, 1)= logm(FOLDclose(day+1)/FOLDclose(day-1));
%      FOLDfeature(day-4, 2)= logm(FOLDclose(day-1)/FOLDclose(day-2));
%      FOLDfeature(day-4, 3)= logm(FOLDclose(day-2)/FOLDclose(day-3));
%      FOLDfeature(day-4, 4)= logm(FOLDclose(day-3)/FOLDclose(day-4));
%      FOLDfeature(day-4, 5)= logm(FOLDhigh(day)/FOLDopen(day));
%      FOLDfeature(day-4, 6)= logm(FOLDhigh(day)/FOLDopen(day-1));
%      FOLDfeature(day-4, 7)= logm(FOLDhigh(day)/FOLDopen(day-2));
%      FOLDfeature(day-4, 8)= logm(FOLDhigh(day)/FOLDopen(day-3));
%      FOLDfeature(day-4, 9)= logm(FOLDhigh(day-1)/FOLDopen(day-1));
%      FOLDfeature(day-4, 10)= logm(FOLDhigh(day-2)/FOLDopen(day-2));
%      FOLDfeature(day-4, 11)= logm(FOLDhigh(day-3)/FOLDopen(day-3));
%      FOLDfeature(day-4, 12)= logm(FOLDlow(day)/FOLDopen(day));
%      FOLDfeature(day-4, 13)= logm(FOLDlow(day-1)/FOLDopen(day-1));
%      FOLDfeature(day-4, 14)= logm(FOLDlow(day-2)/FOLDopen(day-2));
%      FOLDfeature(day-4, 15)= logm(FOLDlow(day-3)/FOLDopen(day-3));
%      
%   end
%   
%   for day =5:1410
%       
%      HMRZfeature(day-4, 1)= logm(HMRZclose(day+1)/HMRZclose(day-1));
%      HMRZfeature(day-4, 2)= logm(HMRZclose(day-1)/HMRZclose(day-2));
%      HMRZfeature(day-4, 3)= logm(HMRZclose(day-2)/HMRZclose(day-3));
%      HMRZfeature(day-4, 4)= logm(HMRZclose(day-3)/HMRZclose(day-4));
%      HMRZfeature(day-4, 5)= logm(HMRZhigh(day)/HMRZopen(day));
%      HMRZfeature(day-4, 6)= logm(HMRZhigh(day)/HMRZopen(day-1));
%      HMRZfeature(day-4, 7)= logm(HMRZhigh(day)/HMRZopen(day-2));
%      HMRZfeature(day-4, 8)= logm(HMRZhigh(day)/HMRZopen(day-3));
%      HMRZfeature(day-4, 9)= logm(HMRZhigh(day-1)/HMRZopen(day-1));
%      HMRZfeature(day-4, 10)= logm(HMRZhigh(day-2)/HMRZopen(day-2));
%      HMRZfeature(day-4, 11)= logm(HMRZhigh(day-3)/HMRZopen(day-3));
%      HMRZfeature(day-4, 12)= logm(HMRZlow(day)/HMRZopen(day));
%      HMRZfeature(day-4, 13)= logm(HMRZlow(day-1)/HMRZopen(day-1));
%      HMRZfeature(day-4, 14)= logm(HMRZlow(day-2)/HMRZopen(day-2));
%      HMRZfeature(day-4, 15)= logm(HMRZlow(day-3)/HMRZopen(day-3));
%   end
%   
%   for day =5:2912
%       
%      MSMIfeature(day-4, 1)= logm(MSMIclose(day+1)/MSMIclose(day-1));
%      MSMIfeature(day-4, 2)= logm(MSMIclose(day-1)/MSMIclose(day-2));
%      MSMIfeature(day-4, 3)= logm(MSMIclose(day-2)/MSMIclose(day-3));
%      MSMIfeature(day-4, 4)= logm(MSMIclose(day-3)/MSMIclose(day-4));
%      MSMIfeature(day-4, 5)= logm(MSMIhigh(day)/MSMIopen(day));
%      MSMIfeature(day-4, 6)= logm(MSMIhigh(day)/MSMIopen(day-1));
%      MSMIfeature(day-4, 7)= logm(MSMIhigh(day)/MSMIopen(day-2));
%      MSMIfeature(day-4, 8)= logm(MSMIhigh(day)/MSMIopen(day-3));
%      MSMIfeature(day-4, 9)= logm(MSMIhigh(day-1)/MSMIopen(day-1));
%      MSMIfeature(day-4, 10)= logm(MSMIhigh(day-2)/MSMIopen(day-2));
%      MSMIfeature(day-4, 11)= logm(MSMIhigh(day-3)/MSMIopen(day-3));
%      MSMIfeature(day-4, 12)= logm(MSMIlow(day)/MSMIopen(day));
%      MSMIfeature(day-4, 13)= logm(MSMIlow(day-1)/MSMIopen(day-1));
%      MSMIfeature(day-4, 14)= logm(MSMIlow(day-2)/MSMIopen(day-2));
%      MSMIfeature(day-4, 15)= logm(MSMIlow(day-3)/MSMIopen(day-3));     
%   end
%   
%   for day=5:1515
%       
%      PKLJfeature(day-4, 1)= logm(PKLJclose(day+1)/PKLJclose(day-1));
%      PKLJfeature(day-4, 2)= logm(PKLJclose(day-1)/PKLJclose(day-2));
%      PKLJfeature(day-4, 3)= logm(PKLJclose(day-2)/PKLJclose(day-3));
%      PKLJfeature(day-4, 4)= logm(PKLJclose(day-3)/PKLJclose(day-4));
%      PKLJfeature(day-4, 5)= logm(PKLJhigh(day)/PKLJopen(day));
%      PKLJfeature(day-4, 6)= logm(PKLJhigh(day)/PKLJopen(day-1));
%      PKLJfeature(day-4, 7)= logm(PKLJhigh(day)/PKLJopen(day-2));
%      PKLJfeature(day-4, 8)= logm(PKLJhigh(day)/PKLJopen(day-3));
%      PKLJfeature(day-4, 9)= logm(PKLJhigh(day-1)/PKLJopen(day-1));
%      PKLJfeature(day-4, 10)= logm(PKLJhigh(day-2)/PKLJopen(day-2));
%      PKLJfeature(day-4, 11)= logm(PKLJhigh(day-3)/PKLJopen(day-3));
%      PKLJfeature(day-4, 12)= logm(PKLJlow(day)/PKLJopen(day));
%      PKLJfeature(day-4, 13)= logm(PKLJlow(day-1)/PKLJopen(day-1));
%      PKLJfeature(day-4, 14)= logm(PKLJlow(day-2)/PKLJopen(day-2));
%      PKLJfeature(day-4, 15)= logm(PKLJlow(day-3)/PKLJopen(day-3)); 
%   end
%  
%  
%  
%   for day=5:1475
%       
%      PTAPfeature(day-4, 1)= logm(PTAPclose(day+1)/PTAPclose(day-1));
%      PTAPfeature(day-4, 2)= logm(PTAPclose(day-1)/PTAPclose(day-2));
%      PTAPfeature(day-4, 3)= logm(PTAPclose(day-2)/PTAPclose(day-3));
%      PTAPfeature(day-4, 4)= logm(PTAPclose(day-3)/PTAPclose(day-4));
%      PTAPfeature(day-4, 5)= logm(PTAPhigh(day)/PTAPopen(day));
%      PTAPfeature(day-4, 6)= logm(PTAPhigh(day)/PTAPopen(day-1));
%      PTAPfeature(day-4, 7)= logm(PTAPhigh(day)/PTAPopen(day-2));
%      PTAPfeature(day-4, 8)= logm(PTAPhigh(day)/PTAPopen(day-3));
%      PTAPfeature(day-4, 9)= logm(PTAPhigh(day-1)/PTAPopen(day-1));
%      PTAPfeature(day-4, 10)= logm(PTAPhigh(day-2)/PTAPopen(day-2));
%      PTAPfeature(day-4, 11)= logm(PTAPhigh(day-3)/PTAPopen(day-3));
%      PTAPfeature(day-4, 12)= logm(PTAPlow(day)/PTAPopen(day));
%      PTAPfeature(day-4, 13)= logm(PTAPlow(day-1)/PTAPopen(day-1));
%      PTAPfeature(day-4, 14)= logm(PTAPlow(day-2)/PTAPopen(day-2));
%      PTAPfeature(day-4, 15)= logm(PTAPlow(day-3)/PTAPopen(day-3));
%   end
%  
%   for day=5:3950
%         
%      SFKZfeature(day-4, 1)= logm(SFKZclose(day+1)/SFKZclose(day-1));
%      SFKZfeature(day-4, 2)= logm(SFKZclose(day-1)/SFKZclose(day-2));
%      SFKZfeature(day-4, 3)= logm(SFKZclose(day-2)/SFKZclose(day-3));
%      SFKZfeature(day-4, 4)= logm(SFKZclose(day-3)/SFKZclose(day-4));
%      SFKZfeature(day-4, 5)= logm(SFKZhigh(day)/SFKZopen(day));
%      SFKZfeature(day-4, 6)= logm(SFKZhigh(day)/SFKZopen(day-1));
%      SFKZfeature(day-4, 7)= logm(SFKZhigh(day)/SFKZopen(day-2));
%      SFKZfeature(day-4, 8)= logm(SFKZhigh(day)/SFKZopen(day-3));
%      SFKZfeature(day-4, 9)= logm(SFKZhigh(day-1)/SFKZopen(day-1));
%      SFKZfeature(day-4, 10)= logm(SFKZhigh(day-2)/SFKZopen(day-2));
%      SFKZfeature(day-4, 11)= logm(SFKZhigh(day-3)/SFKZopen(day-3));
%      SFKZfeature(day-4, 12)= logm(SFKZlow(day)/SFKZopen(day));
%      SFKZfeature(day-4, 13)= logm(SFKZlow(day-1)/SFKZopen(day-1));
%      SFKZfeature(day-4, 14)= logm(SFKZlow(day-2)/SFKZopen(day-2));
%      SFKZfeature(day-4, 15)= logm(SFKZlow(day-3)/SFKZopen(day-3));
%   end
%  
%    for day=5:3273
%        
%      SGRBfeature(day-4, 1)= logm(SGRBclose(day+1)/SGRBclose(day-1));
%      SGRBfeature(day-4, 2)= logm(SGRBclose(day-1)/SGRBclose(day-2));
%      SGRBfeature(day-4, 3)= logm(SGRBclose(day-2)/SGRBclose(day-3));
%      SGRBfeature(day-4, 4)= logm(SGRBclose(day-3)/SGRBclose(day-4));
%      SGRBfeature(day-4, 5)= logm(SGRBhigh(day)/SGRBopen(day));
%      SGRBfeature(day-4, 6)= logm(SGRBhigh(day)/SGRBopen(day-1));
%      SGRBfeature(day-4, 7)= logm(SGRBhigh(day)/SGRBopen(day-2));
%      SGRBfeature(day-4, 8)= logm(SGRBhigh(day)/SGRBopen(day-3));
%      SGRBfeature(day-4, 9)= logm(SGRBhigh(day-1)/SGRBopen(day-1));
%      SGRBfeature(day-4, 10)= logm(SGRBhigh(day-2)/SGRBopen(day-2));
%      SGRBfeature(day-4, 11)= logm(SGRBhigh(day-3)/SGRBopen(day-3));
%      SGRBfeature(day-4, 12)= logm(SGRBlow(day)/SGRBopen(day));
%      SGRBfeature(day-4, 13)= logm(SGRBlow(day-1)/SGRBopen(day-1));
%      SGRBfeature(day-4, 14)= logm(SGRBlow(day-2)/SGRBopen(day-2));
%      SGRBfeature(day-4, 15)= logm(SGRBlow(day-3)/SGRBopen(day-3));
%    end
%    
% for day=5:4058
%     
%      SIPAfeature(day-4, 1)= logm(SIPAclose(day+1)/SIPAclose(day-1));
%      SIPAfeature(day-4, 2)= logm(SIPAclose(day-1)/SIPAclose(day-2));
%      SIPAfeature(day-4, 3)= logm(SIPAclose(day-2)/SIPAclose(day-3));
%      SIPAfeature(day-4, 4)= logm(SIPAclose(day-3)/SIPAclose(day-4));
%      SIPAfeature(day-4, 5)= logm(SIPAhigh(day)/SIPAopen(day));
%      SIPAfeature(day-4, 6)= logm(SIPAhigh(day)/SIPAopen(day-1));
%      SIPAfeature(day-4, 7)= logm(SIPAhigh(day)/SIPAopen(day-2));
%      SIPAfeature(day-4, 8)= logm(SIPAhigh(day)/SIPAopen(day-3));
%      SIPAfeature(day-4, 9)= logm(SIPAhigh(day-1)/SIPAopen(day-1));
%      SIPAfeature(day-4, 10)= logm(SIPAhigh(day-2)/SIPAopen(day-2));
%      SIPAfeature(day-4, 11)= logm(SIPAhigh(day-3)/SIPAopen(day-3));
%      SIPAfeature(day-4, 12)= logm(SIPAlow(day)/SIPAopen(day));
%      SIPAfeature(day-4, 13)= logm(SIPAlow(day-1)/SIPAopen(day-1));
%      SIPAfeature(day-4, 14)= logm(SIPAlow(day-2)/SIPAopen(day-2));
%      SIPAfeature(day-4, 15)= logm(SIPAlow(day-3)/SIPAopen(day-3));
% end
%   
%  for i=5:2898
%      
%   if (FOLDclose(i)/FOLDopen(i) - 1.01) > 0
%       FOLDtarget(i)=1;
%   else
%       FOLDtarget(i)=0;
%   end 
%  end
%  
%  FOLDtarget
%  
%  for i=5:2912
%   
%   if (MSMIclose(i)/MSMIopen(i) - 1.01) > 0
%       MSMItarget(i)=1;
%   else
%       MSMItarget(i)=0;
%   end 
%  end
%  
% MSMItarget
%  
%  for i=5:1410
%   
%   if (HMRZclose(i)/HMRZopen(i) - 1.01) > 0
%       HMRZtarget(i)=1;
%   else
%       HMRZtarget(i)=0;
%   end 
%  end
%  
%  HMRZtarget
%  
%  for i=5:1515 
%   if (PKLJclose(i)/PKLJopen(i) - 1.01) > 0
%       PKLJtarget(i)=1;
%   else
%       PKLJtarget(i)=0;
%   end 
%  end
%  
% PKLJtarget
%  
%  for i=5:1475
%      
%   if (PTAPclose(i)/PTAPopen(i) - 1.01) > 0
%       PTAPtarget(i)=1;
%   else
%       PTAPtarget(i)=0;
%   end
%  end
%  
%  PTAPtarget
%  
%  for i=5:3950
%     if (SFKZclose(i)/SFKZopen(i) - 1.01) > 0
%       SFKZtarget(i)=1;
%   else
%       SFKZtarget(i)=0;
%     end 
%  end
%  SFKZtarget
%  
%  for i=5:3273
%     if (SGRBclose(i)/SGRBopen(i) - 1.01) > 0
%       SGRBtarget(i)=1;
%   else
%       SGRBtarget(i)=0;
%     end 
%  end
%  SGRBtarget
%  
%  for i=5:2898
%      
%   if (SIPAclose(i)/SIPAopen(i) - 1.01) > 0
%       SIPAtarget(i)=1;
%   else
%       SIPAtarget(i)=0;
%   end 
%  end
% SIPAtarget
% %%%%%%Build SVM MODEL %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%IF U CHANGE THE OUTPUT NAME CHANGE IT IN PORTFOLIO FIND (finding more than 3 company ) TOO
% [FOLDsvm_NMF_10 FOLDsvmTarget_NMF_10]=SVMmodel( FOLDtarget, FOLDfeature_10_NMF );
% 
% [HMRZsvm_NMF_10 HMRZsvmTarget_NMF_10]=SVMmodel( HMRZtarget, HMRZfeature_10_NMF );
% 
% [MSMIsvm_NMF_10 MSMIsvmTarget_NMF_10]=SVMmodel( MSMItarget, MSMIfeature_10_NMF );
% 
% [PKLJsvm_NMF_5 PKLJsvmTarget_NMF_5]=SVMmodel( PKLJtarget, PKLJfeature_5_NMF );
% 
% [PTAPsvm_NMF_5 PTAPsvmTarget_NMF_5]=SVMmodel( PTAPtarget, PTAPfeature_5_NMF );
% 
% [SFKZsvm_NMF_10 SFKZsvmTarget_NMF_10]=SVMmodel( SFKZtarget, SFKZfeature_10_NMF );
% 
% [SGRBsvm_NMF_10 SGRBsvmTarget_NMF_10]=SVMmodel( SGRBtarget, SGRBfeature_10_NMF);
% 
% [SIPAsvm_NMF_10 SIPAsvmTarget_NMF_10]=SVMmodel( SIPAtarget, SIPAfeature_10_NMF );
%%%%%%Build ELM model %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
NumberofHiddenNeurons=10;
ActivationFunction='sig';
Elm_Type=1; %Classification

% x=floor(0.75*size(FOLDfeature));
% y=size(FOLDfeature);
% TrainingData_File_FOLD=[FOLDtarget(1, 1:x(1))' FOLDfeature(1:x(1),:)];
% TestingData_File_FOLD=[FOLDtarget(1, x(1)+1:y)' FOLDfeature(x(1)+1:y,:)];
% 
% x=floor(0.75*size(HMRZfeature));
% y=size(HMRZfeature);
% TrainingData_File_HMRZ=[HMRZtarget(1, 1:x(1))' HMRZfeature(1:x(1),:)];
% TestingData_File_HMRZ=[HMRZtarget(1, x(1)+1:y)' HMRZfeature(x(1)+1:y,:)];
% 
% x=floor(0.75*size(MSMIfeature));
% y=size(MSMIfeature);
% TrainingData_File_MSMI=[MSMItarget(1, 1:x(1))' MSMIfeature(1:x(1),:)];
% TestingData_File_MSMI=[MSMItarget(1, x(1)+1:y)' MSMIfeature(x(1)+1:y,:)];
% 
% x=floor(0.75*size(PKLJfeature));
% y=size(PKLJfeature);
% TrainingData_File_PKLJ=[PKLJtarget(1, 1:x(1))' PKLJfeature(1:x(1),:)];
% TestingData_File_PKLJ=[PKLJtarget(1, x(1)+1:y)' PKLJfeature(x(1)+1:y,:)];
% 
% x=floor(0.75*size(PTAPfeature));
% y=size(PTAPfeature);
% TrainingData_File_PTAP=[PTAPtarget(1, 1:x(1))' PTAPfeature(1:x(1),:)];
% TestingData_File_PTAP=[PTAPtarget(1, x(1)+1:y)' PTAPfeature(x(1)+1:y,:)];
% 
% x=floor(0.75*size(SFKZfeature));
% y=size(SFKZfeature);
% TrainingData_File_SFKZ=[SFKZtarget(1, 1:x(1))' SFKZfeature(1:x(1),:)];
% TestingData_File_SFKZ=[SFKZtarget(1, x(1)+1:y)' SFKZfeature(x(1)+1:y,:)];
% 
% x=floor(0.75*size(SGRBfeature));
% y=size(SGRBfeature);
% TrainingData_File_SGRB=[SGRBtarget(1, 1:x(1))' SGRBfeature(1:x(1),:)];
% TestingData_File_SGRB=[SGRBtarget(1, x(1)+1:y)' SGRBfeature(x(1)+1:y,:)];
% 
% x=floor(0.75*size(SIPAfeature));
% y=size(SIPAfeature);
% TrainingData_File_SIPA=[SIPAtarget(1, 1:x(1))' SIPAfeature(1:x(1),:)];
% TestingData_File_SIPA=[SIPAtarget(1, x(1)+1:y)' SIPAfeature(x(1)+1:y,:)];


%%%%%%%%%%%%%% USE REDUCED DIMENSION DATA FOR ELM   10 feature  %%%%%%%%%%%

% x=floor(0.75*size(FOLDfeature_10_NMF));
% y=size(FOLDfeature_10_NMF);
% TrainingData_File_FOLD=[FOLDtarget(1, 1:x(1))' FOLDfeature_10_NMF(1:x(1),:)];
% TestingData_File_FOLD=[FOLDtarget(1, x(1)+1:y)' FOLDfeature_10_NMF(x(1)+1:y,:)];
% 
% x=floor(0.75*size(HMRZfeature_10_NMF));
% y=size(HMRZfeature_10_NMF);
% TrainingData_File_HMRZ=[HMRZtarget(1, 1:x(1))' HMRZfeature_10_NMF(1:x(1),:)];
% TestingData_File_HMRZ=[HMRZtarget(1, x(1)+1:y)' HMRZfeature_10_NMF(x(1)+1:y,:)];
% 
% x=floor(0.75*size(MSMIfeature_10_NMF));
% y=size(MSMIfeature_10_NMF);
% TrainingData_File_MSMI=[MSMItarget(1, 1:x(1))' MSMIfeature_10_NMF(1:x(1),:)];
% TestingData_File_MSMI=[MSMItarget(1, x(1)+1:y)' MSMIfeature_10_NMF(x(1)+1:y,:)];
% 
% x=floor(0.75*size(PKLJfeature_10_NMF));
% y=size(PKLJfeature_10_NMF);
% TrainingData_File_PKLJ=[PKLJtarget(1, 1:x(1))' PKLJfeature_10_NMF(1:x(1),:)];
% TestingData_File_PKLJ=[PKLJtarget(1, x(1)+1:y)' PKLJfeature_10_NMF(x(1)+1:y,:)];
% 
% x=floor(0.75*size(PTAPfeature_10_NMF));
% y=size(PTAPfeature_10_NMF);
% TrainingData_File_PTAP=[PTAPtarget(1, 1:x(1))' PTAPfeature_10_NMF(1:x(1),:)];
% TestingData_File_PTAP=[PTAPtarget(1, x(1)+1:y)' PTAPfeature_10_NMF(x(1)+1:y,:)];
% 
% x=floor(0.75*size(SFKZfeature_10_NMF));
% y=size(SFKZfeature_10_NMF);
% TrainingData_File_SFKZ=[SFKZtarget(1, 1:x(1))' SFKZfeature_10_NMF(1:x(1),:)];
% TestingData_File_SFKZ=[SFKZtarget(1, x(1)+1:y)' SFKZfeature_10_NMF(x(1)+1:y,:)];
% 
% x=floor(0.75*size(SGRBfeature_10_NMF));
% y=size(SGRBfeature_10_NMF);
% TrainingData_File_SGRB=[SGRBtarget(1, 1:x(1))' SGRBfeature_10_NMF(1:x(1),:)];
% TestingData_File_SGRB=[SGRBtarget(1, x(1)+1:y)' SGRBfeature_10_NMF(x(1)+1:y,:)];
% 
% x=floor(0.75*size(SIPAfeature_10_NMF));
% y=size(SIPAfeature_10_NMF);
% TrainingData_File_SIPA=[SIPAtarget(1, 1:x(1))' SIPAfeature_10_NMF(1:x(1),:)];
% TestingData_File_SIPA=[SIPAtarget(1, x(1)+1:y)' SIPAfeature_10_NMF(x(1)+1:y,:)];


%%%%%%%%%%%%%% USE REDUCED DIMENSION DATA FOR ELM   5 feature  %%%%%%%%%%%%

% for i=1:y
%     for j=1:15
%      if(FOLDfeature(i,j)== -Inf)
%          FOLDfeature(i,j)=-10000000000;
%      end
%     end
% end
% 
% FOLDfeature

% [FOLDelm_50_sig_target FOLDelm_50_sig_acc]=ELM(TrainingData_File_FOLD, TestingData_File_FOLD, Elm_Type, NumberofHiddenNeurons, ActivationFunction);
% 
% [HMRZelm_10_sig_NMF_10_target HMRZelm_10_sig_NMF_10_acc]=ELM(TrainingData_File_HMRZ, TestingData_File_HMRZ, Elm_Type, NumberofHiddenNeurons, ActivationFunction);
% 
% [MSMIelm_50_sig_target MSMIelm_50_sig_acc]=ELM(TrainingData_File_MSMI, TestingData_File_MSMI, Elm_Type, NumberofHiddenNeurons, ActivationFunction);
% 
% [PKLJelm_10_sig_target PKLJelm_10_sig_acc]=ELM(TrainingData_File_PKLJ, TestingData_File_PKLJ, Elm_Type, NumberofHiddenNeurons, ActivationFunction);
% 
% [PTAPelm_10_sig_target PTAPelm_10_sig_acc]=ELM(TrainingData_File_PTAP, TestingData_File_PTAP, Elm_Type, NumberofHiddenNeurons, ActivationFunction);
% 
% [SFKZelm_10_sig_target SFKZelm_10_sig_acc]=ELM(TrainingData_File_SFKZ, TestingData_File_SFKZ, Elm_Type, NumberofHiddenNeurons, ActivationFunction);
% 
% [SGRBelm_10_sig_target SGRBelm_10_sig_acc]=ELM(TrainingData_File_SGRB, TestingData_File_SGRB, Elm_Type, NumberofHiddenNeurons, ActivationFunction);
% 
% [SIPAelm_10_radbas_target SIPAelm_10_radbas_acc]=ELM(TrainingData_File_SIPA, TestingData_File_SIPA, Elm_Type, NumberofHiddenNeurons, ActivationFunction);

%%%%%%%%%%%%%%%%ELM eith NMF%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FOLD_train_NMF= FOLDfeature_10_NMF(1:floor(0.75* 2898),:);
FOLD_test_NMF= FOLDfeature_10_NMF(1:floor(0.75* 2898),:);

SGRB_train_NMF= FOLDfeature_10_NMF(1:floor(0.75* 2898),:);
SGRB_test_NMF= FOLDfeature_10_NMF(1:floor(0.75* 2898),:);

HMRZ_train_NMF= FOLDfeature_10_NMF(1:floor(0.75* 2898),:);
HMRZ_test_NMF= FOLDfeature_10_NMF(1:floor(0.75* 2898),:);

MSMI_train_NMF= FOLDfeature_10_NMF(1:floor(0.75* 2898),:)
MSMI_test_NMF

PTAP_train_NMF
PTAP_test_NMF

PKLJ_train_NMF
PKLJ_test_NMF

SFKZ_train_NMF
SFKZ_test_NMF

SIPA_train_NMF
SIPA_test_NMF

[FOLDelm_10_NMF_50_sig_target FOLDelm_50_sig_acc]= ELM(FOLDfeature_10_NMF(1:floor(0.75* 2898),:), FOLDfeature_10_NMF(1:floor(0.75* 2898)+1,:), Elm_Type, NumberofHiddenNeurons, ActivationFunction)

[HMRZelm_10_NMF_10_sig_target HMRZelm_10_sig_acc]= ELM(HMRZfeature_10_NMF(1:floor(0.75* 1410),:), HMRZfeature_10_NMF(1:floor(0.75* 1410)+1,:), Elm_Type, NumberofHiddenNeurons, ActivationFunction)

[MSMIelm_10_NMF_50_sig_target MSMIelm_50_sig_acc]= ELM(MSMIfeature_10_NMF(1:floor(0.75* 2912),:), MSMIfeature_10_NMF(1:floor(0.75* 2912)+1,:), Elm_Type, NumberofHiddenNeurons, ActivationFunction)

[PKLJelm_10_NMF_10_sig_target PKLJelm_10_sig_acc]= ELM(PKLJfeature_10_NMF(1:floor(0.75* 1515),:), PKLJfeature_10_NMF(1:floor(0.75* 1515)+1,:), Elm_Type, NumberofHiddenNeurons, ActivationFunction)

[PTAPelm_10_NMF_10_sig_target PTAPelm_10_sig_acc]= ELM(PTAPfeature_10_NMF(1:floor(0.75* 1475),:), PTAPfeature_10_NMF(1:floor(0.75* 1475)+1,:), Elm_Type, NumberofHiddenNeurons, ActivationFunction)

[SFKZelm_10_NMF_10_sig_target SFKZelm_10_sig_acc]= ELM(SFKZfeature_10_NMF(1:floor(0.75* 3950),:), SFKZfeature_10_NMF(1:floor(0.75* 3950)+1,:), Elm_Type, NumberofHiddenNeurons, ActivationFunction)

[SGRBelm_10_NMF_10_sig_target SGRBelm_10_sig_acc]= ELM(SGRBfeature_10_NMF(1:floor(0.75* 3273),:), SGRBfeature_10_NMF(1:floor(0.75* 3273)+1,:), Elm_Type, NumberofHiddenNeurons, ActivationFunction)

[SIPAelm_10_NMF_10_radbas_target SIPAelm_10_radbas_acc]= ELM(SIPAfeature_10_NMF(1:floor(0.75* 4058),:), SIPAfeature_10_NMF(1:floor(0.75* 4058)+1,:), Elm_Type, NumberofHiddenNeurons, ActivationFunction)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Optimization model Quadratic programming %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Give date 
%find related date in other 8 date array
%keep the index if exist
%in that index read the svm predict the label
%in the label was 1 add it to portfolio of optimization function
%date=13950414;
Date_portfolio_=cell(5000, 2);

%%%% for date 1380-1398 pick a day with atleast 3 companies have 1 target 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
index=1;

for i= 1380:1398   
    for j= 1:12
       for k= 1:31

           year=int2str(i);
           month=int2str(j);
           day=int2str(k);
           
           if i<10
               month=stract('0', month);
           end
           
           if j<10
               day=strcat('0', month);
           end         
           
           
           date2= strcat(year, month, day);
           date3= str2num(date2);
           
portfolio={};   

c=size(FOLDtarget);
if(find(FOLDdate == date3) - floor(0.75*c(2))>0)
if (FOLDelm_10_NMF_50_sig_target( find(FOLDdate == date3) - floor(0.75*c(2)) ) ==1)
portfolio = [portfolio, ['FOLD']];
end
end

c=size(HMRZtarget);
if(find(HMRZdate == date3) - floor(0.75*c(2))>0)
if (HMRZelm_10_NMF_10_sig_target( find(HMRZdate == date3) - floor(0.75*c(2)) ) ==1)
portfolio = [portfolio, ['HMRZ']];
end
end

c=size(MSMItarget);
if(find(MSMIdate == date3) - floor(0.75*c(2))>0)
if (MSMIelm_10_NMF_50_sig_target( find(MSMIdate == date3) - floor(0.75*c(2))) ==1)
portfolio = [portfolio, ['MSMI']];
end
end

c=size(PKLJtarget);
if(find(PKLJdate == date3) - floor(0.75*c(2))>0)
if (PKLJelm_10_NMF_10_sig_target( find(PKLJdate == date3) - floor(0.75*c(2))) ==1)
portfolio = [portfolio, ['PKLJ']];
end
end

c=size(PTAPtarget);
if(find(PTAPdate == date3) - floor(0.75*c(2))>0)
if (PTAPelm_10_NMF_10_sig_target( find(PTAPdate == date3) - floor(0.75*c(2))) ==1)
portfolio = [portfolio, ['PTAP']];
end
end

c=size(SFKZtarget);
if(find(SFKZdate == date3) - floor(0.75*c(2))>0)
if (SFKZelm_10_NMF_10_sig_target( find(SFKZdate == date3) - floor(0.75*c(2))) ==1)
portfolio = [portfolio, ['SFKZ']];
end
end

c=size(SGRBtarget);
if(find(SGRBdate == date3) - floor(0.75*c(2))>0)
if (SGRBelm_10_NMF_10_sig_target( find(SGRBdate == date3) - floor(0.75*c(2))) ==1)
portfolio = [portfolio, ['SGRB']];
end
end

c=size(SIPAtarget);
if(find(SIPAdate == date3) - floor(0.75*c(2))>0)
if (SIPAelm_10_NMF_10_radbas_target( find(SIPAdate == date3) - floor(0.75*c(2))) ==1)
portfolio = [portfolio, ['SIPA']];
end
end

v=size(portfolio);
if v(2)>3

    Date_portfolio{index, 1}= date3;
    Date_portfolio{index, 2}= portfolio; 
    index=index+1;

end

       end
    end
end


%Date_portfolio
for i=1:5000
    if (isempty(Date_portfolio{i, 1}))
        break;
    end
end
lastindex=i-1;

%contains all the dates and the list of stocks in that date with more than 3 companies having 101% return
Date_portfolio2=cell(lastindex,2);

for r=1:lastindex
    Date_portfolio2{r, 1}=Date_portfolio{r, 1};
    Date_portfolio2{r, 2}=Date_portfolio{r, 2};
end
Date_portfolio2

% contains the dates in test step which have more than 3 stock with more than 101% return HMRZdate(1058)=13961002
Date_portfolio3=cell(lastindex,2);
p=1;

for i=1:lastindex
    if  Date_portfolio2{i, 1}>13961002
        
         Date_portfolio3{p, 1}=Date_portfolio2{i, 1};
         Date_portfolio3{p, 2}=Date_portfolio2{i, 2};  
         p=p+1;
    end

end

for i=1:lastindex
    if (isempty(Date_portfolio3{i, 1}))
        break;
    end
end

Date_portfolio4=cell(i,2);

for r=1:i
    Date_portfolio4{r, 1}=Date_portfolio3{r, 1};
    Date_portfolio4{r, 2}=Date_portfolio3{r, 2};
end

Date_portfolio3
Date_portfolio4
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% PICK PREDICT DATES from TEST DATES (COMMON among all companies ending 25%) 
AveVar=0;
AveProfit=0;
sss=size(Date_portfolio4)-1;
arrayOfvar=zeros(1, sss(1)-1);
arrayOfprofit=zeros(1, sss(1)-1);


for iii=1:sss(1)-1
    
list_of_stocks_test_svm= Date_portfolio4{iii,2};

list_of_stocks = list_of_stocks_test_svm;

index=size(list_of_stocks);
Prices=zeros(1410, index(2));

for j=1:index(2)

if (strcmp(list_of_stocks(j),'FOLD') )
Prices(:,j) = FOLDclose(1:1410);
end

if (strcmp(list_of_stocks(j),'HMRZ') )
Prices(:,j) = HMRZclose(1:1410);
end

if (strcmp(list_of_stocks(j),'MSMI') )
Prices(:,j) = MSMIclose(1:1410);
end

if (strcmp(list_of_stocks(j),'PKLJ') )
Prices(:,j) = PKLJclose(1:1410);
end

if (strcmp(list_of_stocks(j),'PTAP') )
Prices(:,j) = PTAPclose(1:1410);
end

if (strcmp(list_of_stocks(j),'SFKZ') )
Prices(:,j) = SFKZclose(1:1410);
end

if (strcmp(list_of_stocks(j),'SGRB') )
Prices(:,j) = SGRBclose(1:1410);
end

if (strcmp(list_of_stocks(j),'SIPA') )
Prices(:,j) = SIPAclose(1:1410);
end

end
Prices

%Prices= [FOLDclose(1:1410), MSMIclose(1:1410),  HMRZclose(1:1410),  PKLJclose(1:1410), PTAPclose(1:1410)];
Returns= price2ret(Prices)*100;

Mean_matrx= mean(Returns);
Cov_matrx= cov(Returns);
[a b]= size(Mean_matrx);
muP= (sum(Mean_matrx))/b;

fun = @(x) x* Cov_matrx *x';

x0= ones(1, index(2));
x0= ( 1/(index(2)) )* x0;
A= []; %A*x <=b
b= [];
Aeq= [ones(1,index(2)); Mean_matrx]; %Aeq *x = beq
beq= [1; muP];
lb= zeros(1, index(2)); % for short sale they could have negative value
ub= 0.5*ones(1, index(2));

%VarP = portfolio variance that minimized
%weights = optimal portion of each stock = x
[weights, varP]= fmincon(fun, x0, A, b, Aeq, beq, lb, ub);

arrayOfvar(iii)=varP;

for jjj=1:index(2)
   
   list_of_stocks
switch cell2mat(list_of_stocks(1,jjj))
    case 'FOLD' 
arrayOfprofit(iii)=arrayOfprofit(iii)+ weights(jjj)*FOLDclose(find(FOLDdate == Date_portfolio4{iii,1})) - weights(jjj)*FOLDclose(find(FOLDdate == Date_portfolio4{iii,1})+1);
    case 'HMRZ' 
arrayOfprofit(iii)=arrayOfprofit(iii)+ weights(jjj)*HMRZclose(find(HMRZdate == Date_portfolio4{iii,1})) - weights(jjj)*HMRZclose(find(HMRZdate == Date_portfolio4{iii,1})+1);
    case 'MSMI'
arrayOfprofit(iii)=arrayOfprofit(iii)+ weights(jjj)*MSMIclose(find(MSMIdate == Date_portfolio4{iii,1})) - weights(jjj)*MSMIclose(find(MSMIdate == Date_portfolio4{iii,1})+1);
    case 'PKLJ'
arrayOfprofit(iii)=arrayOfprofit(iii)+ weights(jjj)*PKLJclose(find(PKLJdate == Date_portfolio4{iii,1})) - weights(jjj)*PKLJclose(find(PKLJdate == Date_portfolio4{iii,1})+1);
   case 'PTAP'
arrayOfprofit(iii)=arrayOfprofit(iii)+ weights(jjj)*PTAPclose(find(PTAPdate == Date_portfolio4{iii,1})) - weights(jjj)*PTAPclose(find(PTAPdate == Date_portfolio4{iii,1})+1);
    case 'SFKZ'
arrayOfprofit(iii)=arrayOfprofit(iii)+ weights(jjj)*SFKZclose(find(SFKZdate == Date_portfolio4{iii,1})) - weights(jjj)*SFKZclose(find(SFKZdate == Date_portfolio4{iii,1})+1);
    case 'SGRB' 
arrayOfprofit(iii)=arrayOfprofit(iii)+ weights(jjj)*SGRBclose(find(SGRBdate == Date_portfolio4{iii,1})) - weights(jjj)*SGRBclose(find(SGRBdate == Date_portfolio4{iii,1})+1);
    case 'SIPA'
arrayOfprofit(iii)=arrayOfprofit(iii)+ weights(jjj)*SIPAclose(find(SIPAdate == Date_portfolio4{iii,1})) - weights(jjj)*SIPAclose(find(SIPAdate == Date_portfolio4{iii,1})+1);
 
    otherwise
        warning('Unexpected stock type. No stock weight created.')
end

  
end
%%%%%% now we do the same process but this time we use learning model
%%%%%% target predicted for selecting 101% stocks


%%%%%%% now on that date we use the Mean - Variance model without select
%%%%%%% efficient stock using learning%%%%%%%%%%
end

arrayOfprofit
AveProfit=sum(arrayOfprofit)/(sss(1)-1)
AveVar=sum(arrayOfvar)/(sss(1)-1)
