%Calculate MV and profit list
profit_random=zeros(1, 535);

for dayindex= 1:534;
% list_of_stocks= pl(i,:);  %for using ml labels
list_of_stocks= randint(1,8);  %for using random stocks

    selectedstocks= find(list_of_stocks==1);
    x= size(selectedstocks);
if(x(2)==0)
     profit_random(dayindex)=0;     
    
elseif(x(2)==1)

 profit_random(dayindex)= closeall(dayindex+1, selectedstocks(1)) - closeall(dayindex, selectedstocks(1));   

else
    
   
    Prices= [FOLDclose(1:1410-535+dayindex-1), HMRZclose(1:1410-535+dayindex-1), MSMIclose(1:1410-535+dayindex-1), PKLJclose(1:1410-535+dayindex-1), PTAPclose(1:1410-535+dayindex-1), SFKZclose(1:1410-535+dayindex-1), SGRBclose(1:1410-535+dayindex-1), SIPAclose(1:1410-535+dayindex-1)];
    c=[];
    for i=1:x(2)
    c=[c, Prices(:,selectedstocks(i))];
    end
Prices=c;
    Returns= price2ret(Prices)*100;
    Mean_matrx= mean(Returns);
    Cov_matrx= cov(Returns);
    [a b]= size(Mean_matrx);
    muP= (sum(Mean_matrx))/b;

    fun = @(x) x* Cov_matrx *x';

    x0= ones(1, x(2));
    x0= ( 1/(x(2)) )* x0;
    A= []; %A*x <=b
    b= [];
    Aeq= [ones(1,x(2)); Mean_matrx]; %Aeq *x = beq
    beq= [1; muP];
    lb= zeros(1, x(2)); % for short sale they could have negative value
    ub= 0.5*ones(1, x(2));

    %VarP = portfolio variance that minimized
    %weights = optimal portion of each stock = x
    [weights, varP]= fmincon(fun, x0, A, b, Aeq, beq, lb, ub);
    
     weights
   for p= 1:x(2)
     %profit_random(dayindex)
     profit_random(dayindex) = profit_random(dayindex) + weights(p)*( closeall(dayindex+1, selectedstocks(p)) - closeall(dayindex, selectedstocks(p)) );
     %closeall(dayindex+1, selectedstocks(p))
     %closeall(dayindex, selectedstocks(p))
     %weights(p)*( closeall(dayindex+1, selectedstocks(p)) - closeall(dayindex, selectedstocks(p)) )
     profit_random(dayindex)
   end 
    
end

   
end
profit_random
