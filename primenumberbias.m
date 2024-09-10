% sd (standard deviation) is hand calculated
Result = [];
mean = 6.235;
index = 0;
A=[1 2 2 3 3 4 5 5 6 7 7 8 9 10 11 11 12];
for tosses = [1 2 3 10 30 100]
    index = index + 1;
    random_element = 0;
    portion = [];
    for ind = 1:10000
        for index = 1:tosses
            random_element = random_element + randsample(A,1,true);
        end
        random_element = random_element / tosses;
        portion = [portion random_element];
        random_element = 0;
    end
    Result(index, :) = portion;
    clear("portion");
end

Result( ~any(Result,2), : ) = [];

sd1 = sqrt(11.5917);
x = 0:0.05:12;
figure(1)
n = 1;
p2 = histogram(Result(1,:), 'Normalization', 'pdf', 'BinWidth', 1/(n+1));
title("n = 1 for Weighted 12-Sided Dice");
xlabel("Values of Zn");
ylabel("Probability Density");
hold on
norm = normpdf(x, mean ,sd1);
plot(x, norm, '-', 'LineWidth', 2);
hold off

sd2 = sqrt(5.7958);
figure(2)
n = 2;
p2 = histogram(Result(2,:), 'Normalization', 'pdf', 'BinWidth', 1/(n+1));
title("n = 2 for Weighted 12-Sided Dice");
xlabel("Values of Zn");
ylabel("Probability Density");
hold on
norm = normpdf(x, mean ,sd2);
plot(x, norm, '-', 'LineWidth', 2);
hold off

sd3 = sqrt(3.8639);
figure(3)
n = 3;
p2 = histogram(Result(3,:), 'Normalization', 'pdf', 'BinWidth', 1/(n+1));
title("n = 3 for Weighted 12-Sided Dice");
xlabel("Values of Zn");
ylabel("Probability Density");
hold on
norm = normpdf(x, mean ,sd3);
plot(x, norm, '-', 'LineWidth', 2);
hold off

sd4 = sqrt(1.1592);
figure(4)
n = 10;
p2 = histogram(Result(4,:), 'Normalization', 'pdf', 'BinWidth', 1/(n+1));
title("n = 10 for Weighted 12-Sided Dice");
xlabel("Values of Zn");
ylabel("Probability Density");
hold on
norm = normpdf(x, mean ,sd4);
plot(x, norm, '-', 'LineWidth', 2);
hold off

sd5 = sqrt(0.3964);
figure(5)
n = 30;
p2 = histogram(Result(5,:), 'Normalization', 'pdf', 'BinWidth', 1/(n+1));
title("n = 30 for Weighted 12-Sided Dice");
xlabel("Values of Zn");
ylabel("Probability Density");
hold on
norm = normpdf(x, mean ,sd5);
plot(x, norm, '-', 'LineWidth', 2);
hold off

sd6 = sqrt(0.1159);
figure(6)
n = 100;
p2 = histogram(Result(6,:), 'Normalization', 'pdf', 'BinWidth', 1/(n+1));
title("n = 100 for Weighted 12-Sided Dice");
xlabel("Values of Zn");
ylabel("Probability Density");
hold on
norm = normpdf(x, mean ,sd6);
plot(x, norm, '-', 'LineWidth', 2);
hold off




