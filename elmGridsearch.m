%ELM GRID search on data 15 feature and daily target
                      

ActivationFunction = {'sig', 'sin', 'hardlim', 'tribas', 'radbas'};
state= zeros(1,50);
predictedtarget = zeros(500, 4280);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  15 Feature %%%%%%%%%%%%%%%%%%%%%
TrainingData_File =[Y_Train_daily X_train_15_feature];
TestingData_File =[Y_Test_daily X_test_15_feature]; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 30 Day  %%%%%%%%%%%%%%%%%%%%%%%%%%
%TrainingData_File =[Y_Train_daily(31:17211,:) X_Train_30day];
%TestingData_File =[Y_Test_daily X_Test_30day]; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Elm_Type=1; %classification

%[e r]=ELM(TrainingData_File, TestingData_File, Elm_Type, 10, 'sig');
%r

for NumberofHiddenNeurons= 1:10
    for j= 1:5
        Actf='';
        if j==1
        Actf ='sig';
        end
        if j==2
        Actf ='sin';
        end
        if j==3
        Actf ='hardlim';
        end
        if j==4
        Actf ='tribas';
        end        
        if j==5
        Actf ='radbas';
        end        
        [predictedtarget(((NumberofHiddenNeurons-1)*5 +j), :), state((NumberofHiddenNeurons-1)*5 +j)]= ELM(TrainingData_File, TestingData_File, Elm_Type, NumberofHiddenNeurons*5, Actf);
    end
end

b= max(state);
state_ELM_15_feature_daily_target=state;
%state_hidden_accuracy = [state(1) state(6) state(11) state(16) state(21) state(26) state(31) state(36) state(41) state(46)];
state_hidden_accuracy = [state(2) state(7) state(12) state(17) state(22) state(27) state(32) state(37) state(42) state(47)];
indx=find(state == b);
hidden= floor(indx(1)/5)+1;
%disp(mod(indx(1),5)) % th activation function number
%actfunc=ActivationFunction(mod(indx,5));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Label 15 feature%%%%%%%%%%%%
predictLabel_ELM_15_feature_daily_target =predictedtarget(indx(1),:); % size=4280
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Label 30 day feature%%%%%%%%%%%%
%predictLabel_ELM_30day_daily_target =predictedtarget(indx(1),:); % size=4280

%plot(state)
%plot(state_hidden_accuracy)
%predictedtarget(((hidden-1)*5 +mod(indx(1),5)), :)


