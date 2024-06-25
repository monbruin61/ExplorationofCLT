%so actually, there's going to be 10^4 # of samples for each Zn. ;


Result = zeros(6, 10000);  % reserve memory for n [1x3] vectors


%want to use [x;y] to stack
mean = 13;
variances = [];
index = 0;
for samples = [1 2 3 10 30 100]
    index = index + 1;
    random_element = 0;
    portion = [];
    for ind = 1:10000
        for index = 1:samples
            random_element = random_element + unifrnd(10, 16);
        end
        random_element = random_element / samples;
        portion = [portion random_element];
        random_element = 0;
    end
    variances = [variances 3/samples];
    Result(index, :) = portion;
    clear("portion");
end
Result( ~any(Result,2), : ) = [];

sd1 = sqrt(variances(1));
x = 10:0.05:16;
figure(1)
p2 = histogram(Result(1,:), 'Normalization', 'pdf');
hold on
norm = normpdf(x, mean ,sd1);
plot(x, norm, '-', 'LineWidth', 2);
title("n = 1 for Uniform Continuous RV");
xlabel("Values of Zn");
ylabel("Probability Density");
hold off


sd2 = sqrt(variances(2));
figure(2)
p2 = histogram(Result(2,:), 'Normalization', 'pdf');
hold on
norm = normpdf(x, mean ,sd2);
plot(x, norm, '-', 'LineWidth', 2);
title("n = 2 for Uniform Continuous RV");
xlabel("Values of Zn");
ylabel("Probability Density");
hold off


sd3 = sqrt(variances(3));
figure(3)
p2 = histogram(Result(3,:), 'Normalization', 'pdf');
hold on
norm = normpdf(x, mean ,sd3);
plot(x, norm, '-', 'LineWidth', 2);
title("n = 3 for Uniform Continuous RV");
xlabel("Values of Zn");
ylabel("Probability Density");
hold off


sd4 = sqrt(variances(4));
figure(4)
p2 = histogram(Result(4,:), 'Normalization', 'pdf');
hold on
norm = normpdf(x, mean ,sd4);
plot(x, norm, '-', 'LineWidth', 2);
title("n = 10 for Uniform Continuous RV");
xlabel("Values of Zn");
ylabel("Probability Density");
hold off


sd5 = sqrt(variances(5));
figure(5)
p2 = histogram(Result(5,:), 'Normalization', 'pdf');
hold on
norm = normpdf(x, mean ,sd5);
plot(x, norm, '-', 'LineWidth', 2);
title("n = 30 for Uniform Continuous RV");
xlabel("Values of Zn");
ylabel("Probability Density");
hold off


sd6 = sqrt(variances(6));
figure(6)
p2 = histogram(Result(6,:), 'Normalization', 'pdf');
hold on
norm = normpdf(x, mean ,sd6);
plot(x, norm, '-', 'LineWidth', 2);
title("n = 100 for Uniform Continuous RV");
xlabel("Values of Zn");
ylabel("Probability Density");
hold off
