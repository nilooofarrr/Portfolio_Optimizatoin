%ML + 1/n
%Use predicted_labels_best and calculate profit

predicted_labels_best = predictLabel_ELM_15_feature_daily_target;
table=zeros(2,534);

%1 day profit
%predictlabel=pl
% pl = [plFOLD plHMRZ plMSMI plPKLJ plPTAP plSFKZ plSGRB plSIP]
pl= [predicted_labels_best(1:535)',  predicted_labels_best(535+1:2*535)', predicted_labels_best(2*535+1:3*535)', predicted_labels_best(3*535+1:4*535)', predicted_labels_best(4*535+1:5*535)', predicted_labels_best(5*535+1:6*535)', predicted_labels_best(6*535+1:7*535)', predicted_labels_best(7*535+1:8*535)'];
closeall= [FOLDclose(FOLD_testindex:2898), HMRZclose(HMRZ_testindex:1410), MSMIclose(MSMI_testindex:2912), PKLJclose(PKLJ_testindex:1515), PTAPclose(PTAP_testindex:1475), SFKZclose(SFKZ_testindex:3950), SGRBclose(SGRB_testindex:3273), SIPAclose(SIPA_testindex:4058);];

%size(closeall)%535 * 8
%size(pl) %535 * 8
profit_bestlabel_1n = zeros(1,534);
profit_random_1n = zeros(1,534);


for j=1:534
    n=1;
    for i=1:8
    %profitpl(1, i)*(FOLDclose(FOLD_testindex+1) - FOLDclose(FOLD_testindex))
    if pl(j,i)~=0
        profit_bestlabel_1n(j) = (n-1)*profit_bestlabel_1n(j)/n + (pl(j,i)*(closeall(j+1,i)-closeall(j,i)))/n;
        n=n+1;
    end
    end
end

profit_bestlabel_1n

for j=1:534
    n=1;
    plrandom=randint(1,8);
    for i=1:8
    if pl(j,i)~=0
        profit_random_1n(j) = (n-1)*profit_random_1n(j)/n + (plrandom(i)*(closeall(j+1,i)-closeall(j,i)))/n;
        n=n+1;
    end
    end
end

profit_random_1n







