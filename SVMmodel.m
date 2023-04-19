function [ TestAccuracy  label] = SVMmodel( target, feature )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
% load('8TSECLIent companies data.mat');
% 
% target=FOLDtarget;
% feature=FOLDfeature;
[a, b]= size(target);
x= floor(0.75 *b);
[a endx]=size(target);

Train= feature(1:x,:); %without label 75%
Train_TargetVector= target(1:x); %train label75%
%feature(x+1:endx, :)
Test= feature(x+1:endx, :); %without label 25%

%size(Train)
%size(Train_TargetVector)
SVM_MoDEL= fitcsvm(Train, Train_TargetVector,'KernelFunction', 'rbf', 'Standardize', true);
%SVM_MoDEL= fitcsvm(Train,Train_TargetVector,'OptimizeHyperparameters','auto',...
%    'HyperparameterOptimizationOptions',struct('AcquisitionFunctionName',...
%    'expected-improvement-plus'));

[label score]= predict(SVM_MoDEL, Test);
%%%%%%%%%%%% Accuracy calculating %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
reallabel= target(x+1:endx); %test label
label=transpose(label);
errorArray= reallabel-label;
[s t]=size(errorArray);

for i=1:t
 if(errorArray(i) <0)
 errorArray(i) = errorArray(i) *(-1);
 end
end

[lengthoftest b]=size(Test);
number_of_loss_data= sum(errorArray);
TestAccuracy =1- number_of_loss_data/lengthoftest;

TestAccuracy
end

