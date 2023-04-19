%30 day feature 

Xtest = zeros(4280,30);
Xtrain = zeros(17211-30,30);


for i= (17211-4280)+1:17211
    Xtest(i-(17211-4280), :) = (CLOSE(i-30 : i-1))';
end

for i= 31:17211
    Xtrain(i-30, :) = (CLOSE(i-30 : i-1))';
end

  X_Test_30day = Xtest;
  X_Train_30day = Xtrain;
  
  size(X_Test_30day)
  size(X_Train_30day)
  