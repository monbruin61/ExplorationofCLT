%Disclaimer: This takes a minute longer than the previous to build

%want to use [x;y] to stack
mean = 13;
variances = [];
index = 0;
dt = 0.001;
t = -75:dt:101;
fa = @(t) t >= 10 & t <= 16; %is a pointer, returns bool
f1 = fa(t);
f1 = double(f1);
f1 = f1 ./ 6;
f2 = f1;
f3 = f2;
f4 = f2;
f5 = f2;
f6 = f2;
f7 = f2;
f8 = f2;


for i = 1:100
    if i > 1
        y1 = conv(f1, f2, "same").*dt;
        f2 = y1;
    end
    if i == 1
        f3 = f2;
        variances = [variances 3/i];
    end
    if i == 2
        f4 = f2;
        variances = [variances 3/i];
    end
    if i == 3
        f5 = f2;
        variances = [variances 3/i];
    end
    if i == 10
        f6 = f2;
        variances = [variances 3/i];
    end
    if i == 30
        f7 = f2;
        variances = [variances 3/i];
    end
    if i == 100
        f8 = f2;
        variances = [variances 3/i];
    end
end

x = 10:0.01:16;

sd1 = sqrt(variances(1));
norm = normpdf(x, mean ,sd1);
figure(1)
plot(x, norm, '-', 'LineWidth', 2);
title("n = 1 for Uniform Continuous RV");
xlabel("Values of Zn");
ylabel("Probability Density");
hold on
axis([9 17 0 0.3]);
plot(t, f3, '-', 'LineWidth', 2);
hold off
legend('Gaussian','Exact');

t4 = (1:length(f4)).*dt-75;
t4 = t4 ./ 2;
t4 = t4 + 6.5;
f4 = f4 .* 2;

sd2 = sqrt(variances(2));
norm = normpdf(x, mean ,sd2);
figure(2)
plot(x, norm, '-', 'LineWidth', 2);
title("n = 2 for Uniform Continuous RV");
xlabel("Values of Zn");
ylabel("Probability Density");
axis([9 17 0 0.4]);
hold on
plot(t4, f4, '-', 'LineWidth', 2);
hold off
legend('Gaussian','Exact');



t5 = (1:length(f5)).*dt -72;
t5 = t5./3;
t5 = t5 +7.67;
f5 = f5 .* 3;

sd3 = sqrt(variances(3));
norm = normpdf(x, mean ,sd3);
figure(3)
plot(x, norm, '-', 'LineWidth', 2);
title("n = 3 for Uniform Continuous RV");
xlabel("Values of Zn");
ylabel("Probability Density");
axis([10 16 0 0.5]);
hold on
plot(t5, f5, '-', 'LineWidth', 2);
hold off
legend('Gaussian','Exact');


t6 = (1:length(f6)).*dt -70;
t6 = t6./10;
t6 = t6 + 11.2;
f6 = f6 .* 10;

sd4 = sqrt(variances(4));
norm = normpdf(x, mean ,sd4);
figure(4)
plot(x, norm, '-', 'LineWidth', 4);
title("n = 10 for Uniform Continuous RV");
xlabel("Values of Zn");
ylabel("Probability Density");
axis([9 17 0 1]);
hold on
plot(t6, f6, '-', 'LineWidth', 2);
hold off
legend('Gaussian','Exact');

t7 = (1:length(f7)).*dt -67;
t7 = t7./30;
t7 = t7 + 12.3;
f7 = f7 .* (30);

sd5 = sqrt(variances(5));
norm = normpdf(x, mean ,sd5);
figure(5)
plot(x, norm, '-', 'LineWidth', 4);
title("n = 30 for Uniform Continuous RV");
xlabel("Values of Zn");
ylabel("Probability Density");
axis([11 15 0 1.5]);
hold on
plot(t7, f7, '-', 'LineWidth', 2);
hold off
legend('Gaussian','Exact');


t8 = (1:length(f8)).*dt -65;
t8 = t8./100;
t8 = t8 + 12.7717;
f8 = f8 .* (100);

sd6 = sqrt(variances(6));
norm = normpdf(x, mean ,sd6);
figure(6)
plot(x, norm, '-', 'LineWidth', 4);
title("n = 100 for Uniform Continuous RV");
xlabel("Values of Zn");
ylabel("Probability Density");
axis([12 14 0 3]);
hold on
plot(t8, f8, '-', 'LineWidth', 2);
hold off
legend('Gaussian','Exact');


