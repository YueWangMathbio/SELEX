% plot figures for the SELEX paper
% f1 expected A1 proportion after one round of SELEX r1
% f2 expected A1 proportion after two rounds of SELEX r2
% f3 expected A1 proportion after three rounds of SELEX r3
% f4 probability of a1=0 after one round of SELEX p1
% f5 probability of a1=a2=0 after one round of SELEX p2
% f6 expected A1 proportion (conditioned on a_s>0) after one round of SELEX
% r1p
% f7 probability of a1>0, a2=0 after one round of SELEX pure

clear all
close all

load P1.dat % probability of a1=0 after 1 round of SELEX
load P2.dat % probability of a1=a2=0 after 1 round of SELEX
load R1.dat % expected a1/(a1+a2) after 1 round of SELEX
load R2.dat % expected a1/(a1+a2) after 2 rounds of SELEX
load R3.dat % expected a1/(a1+a2) after 3 rounds of SELEX
load R1p.dat % expected a1/(a1+a2) after 1 round of SELEX,
             % conditioned on a1+a2>0
load newPure.dat % probability of a1>0, a2=0 after 1 round of SELEX       

ini=200;
ss=[230,260,300,350,400,450,500,600,700,800,...
    900,1000,1200,1400,1600,1800,2000,2300,2600,3000,3500,4000,...
    4500,5000,6000,7000,8000,9000,10000,12000,14000,16000,18000,...
    20000,23000,26000,30000,35000,40000,45000,50000,60000,70000,...
    80000,90000,100000,120000,140000,160000,180000,200000,230000,...
    260000,300000,350000,400000,450000,500000,600000,700000,800000,...
    900000,1000000];
ls=length(ss);
yy=(1:ini);
yy(ini+1:ini+ls)=ss;
xx=yy;

[X,Y]=meshgrid(xx,yy);


ff=figure(1);
ff.Position=[50 50 850 750];
hold on
[C,h]=contourf(X,Y,R1',20);
set(gca,'xscale','log')
set(gca,'yscale','log')
ylabel('initial S_T')
xlabel('initial A_1')
set(gca,'TickDir','out');
set(gca,'FontSize',20);
set(gcf,'Renderer','Painters');
[M,I] = max(R1,[],2);
plot(xx,xx(I),'r','LineWidth',4)
cb=colorbar;
hold off

ff=figure(2);
ff.Position=[50 50 850 750];
hold on
[C,h]=contourf(X,Y,R2',20);
set(gca,'xscale','log')
set(gca,'yscale','log')
ylabel('initial S_T')
xlabel('initial A_1')
set(gca,'TickDir','out');
set(gca,'FontSize',20);
set(gcf,'Renderer','Painters');
[M,I] = max(R2,[],2);
plot(xx(1:237),xx(I(1:237)),'r','LineWidth',4)
I2=[208,209,209,210,210,211,211,212,212,213,213,214,214,...
    215,215,216,216,217,217,218,218,219,219,220,220,221];
plot(xx(238:263),xx(I2),'r:','LineWidth',4)
plot(700000,200,'ks',700000,3,'kx',700000,700000,'ko',...
    3,10000,'k^','MarkerSize',20,'LineWidth', 2)
cb=colorbar;
hold off

ff=figure(3);
ff.Position=[50 50 850 750];
hold on
[C,h]=contourf(X,Y,R3',20);
set(gca,'xscale','log')
set(gca,'yscale','log')
ylabel('initial S_T')
xlabel('initial A_1')
set(gca,'TickDir','out');
set(gca,'FontSize',20);
set(gcf,'Renderer','Painters');
[M,I] = max(R3,[],2);
plot(xx(1:231),xx(I(1:231)),'r','LineWidth',4)
I3=[208,209,209,210,210,211,211,212,212,213,213,214,214,...
    215,215,216,216,217,217,218,218,219,219,220,220,221,...
    221,222,222,223,223,224,224];
plot(xx(231:263),xx(I3),'r:','LineWidth',4)
plot(700000,200,'ks',700000,3,'kx',700000,700000,'ko',...
    3,10000,'k^','MarkerSize',20,'LineWidth', 2)
cb=colorbar;
hold off

ff=figure(4);
ff.Position=[50 50 850 750];
hold on
[C,h]=contourf(X,Y,P1',20);
set(gca,'xscale','log')
set(gca,'yscale','log')
ylabel('initial S_T')
xlabel('initial A_1')
set(gca,'TickDir','out');
set(gca,'FontSize',20);
set(gcf,'Renderer','Painters');
cb=colorbar;
hold off

ff=figure(5);
ff.Position=[50 50 850 750];
hold on
[C,h]=contourf(X,Y,P2',20);
set(gca,'xscale','log')
set(gca,'yscale','log')
ylabel('initial S_T')
xlabel('initial A_1')
set(gca,'TickDir','out');
set(gca,'FontSize',20);
set(gcf,'Renderer','Painters');
cb=colorbar;
hold off

ff=figure(6);
ff.Position=[50 50 850 750];
hold on
[C,h]=contourf(X,Y,R1p',20);
set(gca,'xscale','log')
set(gca,'yscale','log')
ylabel('initial S_T')
xlabel('initial A_1')
set(gca,'TickDir','out');
set(gca,'FontSize',20);
set(gcf,'Renderer','Painters');
cb=colorbar;
hold off


ini=100;
ss=[120,140,160,180,200,230,260,300,350,400,450,500,600,700,800,...
    900,1000,1200,1400,1600,1800,2000,2300,2600,3000,3500,4000,...
    4500,5000,6000,7000,8000,9000,10000,12000,14000,16000,18000,...
    20000,23000,26000,30000,35000,40000,45000,50000,60000,70000,...
    80000,90000,100000];
ls=length(ss);
yy=(1:ini);
yy(ini+1:ini+ls)=ss;
xx=yy;

[X,Y]=meshgrid(xx,yy);

ff=figure(7);
ff.Position=[50 50 950 850];
hold on
[C,h]=contourf(X,Y,newPure',20);
set(gca,'xscale','log')
set(gca,'yscale','log')
ylabel('initial S_T')
xlabel('initial A_2')
set(gca,'TickDir','out');
set(gca,'FontSize',20);
set(gcf,'Renderer','Painters');
cb=colorbar;
hold off



