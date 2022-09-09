% combine data for SELEX

clear all
close all
ul=12;
ini=200;
ss=[230,260,300,350,400,450,500,600,700,800,...
    900,1000,1200,1400,1600,1800,2000,2300,2600,3000,3500,4000,...
    4500,5000,6000,7000,8000,9000,10000,12000,14000,16000,18000,...
    20000,23000,26000,30000,35000,40000,45000,50000,60000,70000,...
    80000,90000,100000,120000,140000,160000,180000,200000,230000,...
    260000,300000,350000,400000,450000,500000,600000,700000,800000,...
    900000,1000000];
ls=length(ss);

R1=zeros(ini+ls,ini+ls);
R2=zeros(ini+ls,ini+ls);
R3=zeros(ini+ls,ini+ls);
P1=zeros(ini+ls,ini+ls);
P2=zeros(ini+ls,ini+ls);

load P100.dat
load P200.dat
load R100.dat
load R200.dat
load R300.dat
load P101.dat
load P201.dat
load R101.dat
load R201.dat
load R301.dat
load P110.dat
load P210.dat
load R110.dat
load R210.dat
load R310.dat
load B1.dat
load B2.dat
load B3.dat
load P110new.dat
load P210new.dat
load R110new.dat
load R210new.dat
load R310new.dat



R1(1:ini,1:ini)=R100;
R1(1:ini,ini+1:ini+ls)=R101;
R1(ini+1:ini+ls,1:ini)=R110;
R1(ini+1:ini+ls,ini+1:ini+ls)=B1;
R2(1:ini,1:ini)=R200;
R2(1:ini,ini+1:ini+ls)=R201;
R2(ini+1:ini+ls,1:ini)=R210;
R2(ini+1:ini+ls,ini+1:ini+ls)=B2;
R3(1:ini,1:ini)=R300;
R3(1:ini,ini+1:ini+ls)=R301;
R3(ini+1:ini+ls,1:ini)=R310;
R3(ini+1:ini+ls,ini+1:ini+ls)=B3;
P1(1:ini,1:ini)=P100;
P1(1:ini,ini+1:ini+ls)=P101;
P1(ini+1:ini+ls,1:ini)=P110;
P2(1:ini,1:ini)=P200;
P2(1:ini,ini+1:ini+ls)=P201;
P2(ini+1:ini+ls,1:ini)=P210;
R1(ini+1:ini+ls,ini+1:ini+ul)=R110new;
R2(ini+1:ini+ls,ini+1:ini+ul)=R210new;
R3(ini+1:ini+ls,ini+1:ini+ul)=R310new;
P1(ini+1:ini+ls,ini+1:ini+ul)=P110new;
P2(ini+1:ini+ls,ini+1:ini+ul)=P210new;

R1p=R1./(1-P2);

save P1.dat P1 -ascii;
save P2.dat P2 -ascii;
save R1.dat R1 -ascii;
save R2.dat R2 -ascii;
save R3.dat R3 -ascii;
save R1p.dat R1p -ascii;

load Pure00.dat
load Pure01.dat
load Pure10.dat
ini=100;
ss=[120,140,160,180,200,230,260,300,350,400,450,500,600,700,800,...
    900,1000,1200,1400,1600,1800,2000,2300,2600,3000,3500,4000,...
    4500,5000,6000,7000,8000,9000,10000,12000,14000,16000,18000,...
    20000,23000,26000,30000,35000,40000,45000,50000,60000,70000,...
    80000,90000,100000,120000,140000,160000,180000,200000,230000,...
    260000,300000,350000,400000,450000,500000,600000,700000,800000,...
    900000,1000000];
ls=length(ss);
Pure=zeros(ini+ls,ini+ls);
Pure(1:ini,1:ini)=Pure00;
Pure(1:ini,ini+1:ini+ls)=Pure01;
Pure(ini+1:ini+ls,1:ini)=Pure10;
save Pure.dat Pure -ascii;

