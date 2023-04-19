%NNMF  15 feature

% NMF_30day=[];%zeros(21491,105);
% NMF_15feature=[];%zeros(21491,435);
% 
% accELM_30day=zeros(1,29);
% accSVM_30day=zeros(1,29);
% 
% accELM_15feature=zeros(1,14);
% accSVM_15feature=zeros(1,14);
% 
% 
% for i=1:14
%     [w h]=nnmf([X_train_15_feature; X_test_15_feature], i);
%     NMF_15feature = [NMF_15feature, w ];
% end
% 
% 
% for i=1:29
%     [w h]=nnmf([X_Train_30day; X_Test_30day], i);
%     NMF_30day = [NMF_30day, w ];
% end

%%%%%%% ELM 30day %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for i=2:29
test_new_30day = NMF_30day(17211+1:21491,(i-1)*i/2+1:(i+1)*i/2);
train_new_30day = NMF_30day(1:17211,(i-1)*i/2+1:(i+1)*i/2);
%disp('here')
%size(Y_Test_daily)
%size(test_new_30day)
%size(Y_Train_daily)
%size(train_new_30day)
%size([Y_Train_daily, train_new_30day])
%size([Y_Test_daily,test_new_30day])
[labels, accELM_30day(1,i)] = ELM([Y_Train_daily, train_new_30day], [Y_Test_daily, test_new_30day], 1, 30, 'sin');
[accSVM_30day(1,i),  label] = SVMmodel( [Y_Train_daily; Y_Test_daily]', [train_new_30day; test_new_30day] );
end
%%%%%%% ELM 15 feature %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for i=2:14
test_new_15_feature = NMF_15feature(17211+1:21491,(i-1)*i/2+1:(i+1)*i/2);
train_new_15_feature = NMF_15feature(1:17211,(i-1)*i/2+1:(i+1)*i/2);

%size([Y_Train_daily, train_new_15_feature])
%size([Y_Test_daily, test_new_15_feature])
[labels, accELM_15feature(1,i)] = ELM([Y_Train_daily, train_new_15_feature], [Y_Test_daily, test_new_15_feature], 1, 30, 'sin');
[accSVM_15feature(1,i),  label] = SVMmodel( [Y_Train_daily; Y_Test_daily]', [train_new_15_feature; test_new_15_feature] );
end

plot(accELM_30day);
plot(accELM_15feature);
plot(accSVM_30day);
plot(accSVM_15feature);
