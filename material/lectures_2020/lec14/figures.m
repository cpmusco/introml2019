x = [-1:.01:2];
y = max(0, 1-x);
y2 = 1./(1+exp(x));
figure(); hold();
plot(x,y,'LineWidth',3);
plot(x,-log(1-y2),'LineWidth',3);
xlim([-1,2]);
xlabel('$y_i\cdot \langle \vec{x},\vec{\beta}\rangle$','FontSize',30,'interpreter','latex');
legend('Hinge Loss', 'Logistic Regression Loss', 'FontSize',20,'interpreter','latex','Location','Northeast');


% logistic loss stuff
x = [-5:.01:5];
y = x > 0;
plot(x,y,'LineWidth',3);
ylim([-.5,1.5]);
xlabel('$\langle \vec{x},\vec{\beta}\rangle$','FontSize',30,'interpreter','latex');
ylabel('$f(\vec{x}) = {1}[\langle \vec{x},\vec{\beta}\rangle > 0]$','FontSize',30,'interpreter','latex');

x = [-5:.01:5];
y = 1./(1+exp(-x));
plot(x,y,'LineWidth',5);
hold();
plot(x,ones(size(x)),'k-')
plot(x,zeros(size(x)),'k-')
ylim([-.5,1.5]);
xlabel('$\langle \vec{x},\vec{\beta}\rangle$','FontSize',30,'interpreter','latex');
ylabel('$h_{\vec{\beta}}(\vec{x})$','FontSize',30,'interpreter','latex');


x = [-3:.01:3];
plot(x,x > 0,'LineWidth',5);
hold();
plot(x,x.^2,'LineWidth',5);
legend('$0-1$ Loss', 'Square Loss', 'FontSize',20,'interpreter','latex','Location','Southeast');
ylabel('Loss when $y_i =0$','FontSize',30,'interpreter','latex');
xlabel('$\langle \vec{x},\vec{\beta}\rangle$','FontSize',30,'interpreter','latex');
h = plot(x,ones(size(x)),'k-');
h.Annotation.LegendInformation.IconDisplayStyle = 'off';
h = plot(x,zeros(size(x)),'k-');
h.Annotation.LegendInformation.IconDisplayStyle = 'off';
ylim([-2,4]);


figure();
x = [-3:.01:3];
plot(x,x > 0,'LineWidth',5);
hold();
plot(x,x.^2,'LineWidth',5);
y = 1./(1+exp(-x));
plot(x,-log(1-y),'LineWidth',5);
legend('$0-1$ Loss', 'Square Loss', 'Logistic Loss', 'FontSize',20,'interpreter','latex','Location','Southeast');
ylabel('Loss when $y_i =0$','FontSize',30,'interpreter','latex');
xlabel('$\langle \vec{x},\vec{\beta}\rangle$','FontSize',30,'interpreter','latex');
h = plot(x,ones(size(x)),'k-');
h.Annotation.LegendInformation.IconDisplayStyle = 'off';
h = plot(x,zeros(size(x)),'k-');
h.Annotation.LegendInformation.IconDisplayStyle = 'off';
ylim([-2,4]);

figure();
x = [-3:.01:3];
plot(x,x < 0,'LineWidth',5);
hold();
ax = gca;
ax.ColorOrderIndex = 3;
y = 1./(1+exp(-x));
plot(x,-log(y),'LineWidth',5);
% ax.ColorOrderIndex = 3;
% plot(x,-log(1-y),'LineWidth',5);
legend('$0-1$ Loss', 'Logistic Loss', 'FontSize',20,'interpreter','latex','Location','Southeast');
ylabel('Loss when $y_i =1$','FontSize',30,'interpreter','latex');
xlabel('$\langle \vec{x},\vec{\beta}\rangle$','FontSize',30,'interpreter','latex');
h = plot(x,ones(size(x)),'k-');
h.Annotation.LegendInformation.IconDisplayStyle = 'off';
h = plot(x,zeros(size(x)),'k-');
h.Annotation.LegendInformation.IconDisplayStyle = 'off';
ylim([-2,4]);