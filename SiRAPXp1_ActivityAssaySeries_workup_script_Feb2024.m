
data = table2array(SulfiteReductionReactionAssaydSiRAPXp3CuIAPXCuBAPX);

x = data(:,1); % Extract the first column as the x-values
y1 = data(:,2); % Extract the second column as the first set of y-values
y2 = data(:,4); % Extract the third column as the second set of y-values
y3 = data(:,6); % Extract the fourth column as the third set of y-values
y4 = data(:,8); % Extract the fifth column as the fourth set of y-values
y5 = data(:,10); % Extract the sixth column as the fifth set of y-values
y6 = data(:,12); % Extract the sixth column as the fifth set of y-values
y7 = data(:,14); % Extract the sixth column as the fifth set of y-values
y8 = data(:,16); % Extract the sixth column as the fifth set of y-values
y9 = data(:,18); % Extract the sixth column as the fifth set of y-values
y10 = data(:,20); % Extract the sixth column as the fifth set of y-values
y11 = data(:,22); % Extract the sixth column as the fifth set of y-values



figure % Create a new figure window
subplot(3,4,1) % Create a 2x2 grid of subplots and select the first one
scatter(x,y1,'k.') % Create a scatter plot of x vs y1 with black points
title('SiR-APX.3: APO') % Add a title to the plot

subplot(3,4,2) % Select the second subplot
scatter(x,y2,'k.') % Create a scatter plot of x vs y2 with black points
title('SiR-APX.3: Heme-Only') % Add a title to the plot

subplot(3,4,3) % Select the third subplot
scatter(x,y3,'k.') % Create a scatter plot of x vs y3 with black points
title('SiR-APX.3: Holo-PD10') % Add a title to the plot

subplot(3,4,4) % Select the fourth subplot
scatter(x,y4,'k.') % Create a scatter plot of x vs y4 with black points
title('SiR-APX.3: Holo-DEAE') % Add a title to the plot


subplot(3,4,5) % Select the fifth subplot
scatter(x,y5,'k.') % Create a scatter plot of x vs y5 with black points
title('SiR-APX.3: PreACluster') % Add a title to the plot

subplot(3,4,6) % Select the fifth subplot
scatter(x,y6,'k.') % Create a scatter plot of x vs y5 with black points
title('SiR-APX.3: APO2') % Add a title to the plot

subplot(3,4,7) % Select the sixth subplot
scatter(x,y7,'k.') % Create a scatter plot of x vs y5 with black points
title('SiR-APX.3: CuBAPXCu') % Add a title to the plot

subplot(3,4,8) % Select the seventh subplot
scatter(x,y8,'k.') % Create a scatter plot of x vs y6 with black points
title('SiR-APX.3: CuBAPX') % Add a title to the plot

subplot(3,4,9) % Select the eigth subplot
scatter(x,y9,'k.') % Create a scatter plot of x vs y6 with black points
title('SiR-APX.3: CuIAPXCu') % Add a title to the plot

subplot(3,4,10) % Select the ninth subplot
scatter(x,y10,'k.') % Create a scatter plot of x vs y6 with black points
title('SiR-APX.3: CuIAPX') % Add a title to the plot

subplot(3,4,11) % Select the tenth subplot
scatter(x,y11,'k.') % Create a scatter plot of x vs y6 with black points
title('SiR-APX.3: CuIAPXCu2') % Add a title to the plot



%% 

% select range for backgrounds (B) of plot number #
indexesb1 = x > 0 & x < 60;
indexesb2 = x > 20 & x < 60;
indexesb3 = x > 0 & x < 55;
indexesb4 = x > 0 & x < 55;
indexesb5 = x > 0 & x < 62;
indexesb6 = x > 0 & x < 55;
indexesb7 = x > 0 & x < 55;
indexesb8 = x > 0 & x < 55;
indexesb9 = x > 0 & x < 55;
indexesb10 = x > 0 & x < 55;
indexesb11 = x > 0 & x < 55;



% select range for activity (A) of plot number #
indexesa1 = x > 105;
indexesa2 = x > 95;
indexesa3 = x > 70;
indexesa4 = x > 86;
indexesa5 = x > 92;
indexesa6 = x > 90;
indexesa7 = x > 74;
indexesa8 = x > 70;
indexesa9 = x > 70;
indexesa10 = x > 70;
indexesa11 = x > 70;




% Do the fit for plot number #
[coefficientsb1, Sb1] = polyfit(x(indexesb1), y1(indexesb1), 1);
[coefficientsa1, Sa1] = polyfit(x(indexesa1), y1(indexesa1), 1);
[coefficientsb2, Sb2] = polyfit(x(indexesb2), y2(indexesb2), 1);
[coefficientsa2, Sa2] = polyfit(x(indexesa2), y2(indexesa2), 1);
[coefficientsb3, Sb3] = polyfit(x(indexesb3), y3(indexesb3), 1);
[coefficientsa3, Sa3] = polyfit(x(indexesa3), y3(indexesa3), 1);
[coefficientsb4, Sb4] = polyfit(x(indexesb4), y4(indexesb4), 1);
[coefficientsa4, Sa4] = polyfit(x(indexesa4), y4(indexesa4), 1);
[coefficientsb5, Sb5] = polyfit(x(indexesb5), y5(indexesb5), 1);
[coefficientsa5, Sa5] = polyfit(x(indexesa5), y5(indexesa5), 1);
[coefficientsb6, Sb6] = polyfit(x(indexesb6), y6(indexesb6), 1);
[coefficientsa6, Sa6] = polyfit(x(indexesa6), y6(indexesa6), 1);
[coefficientsb7, Sb7] = polyfit(x(indexesb7), y7(indexesb7), 1);
[coefficientsa7, Sa7] = polyfit(x(indexesa7), y7(indexesa7), 1);
[coefficientsb8, Sb8] = polyfit(x(indexesb8), y8(indexesb8), 1);
[coefficientsa8, Sa8] = polyfit(x(indexesa8), y8(indexesa8), 1);
[coefficientsb9, Sb9] = polyfit(x(indexesb9), y9(indexesb9), 1);
[coefficientsa9, Sa9] = polyfit(x(indexesa9), y9(indexesa9), 1);
[coefficientsb10, Sb10] = polyfit(x(indexesb10), y10(indexesb10), 1);
[coefficientsa10, Sa10] = polyfit(x(indexesa10), y10(indexesa10), 1);
[coefficientsb11, Sb11] = polyfit(x(indexesb11), y11(indexesb11), 1);
[coefficientsa11, Sa11] = polyfit(x(indexesa11), y11(indexesa11), 1);





R_squared_a1 = 1 - (Sa1.normr/norm(y1(indexesa1) - mean(y1(indexesa1))))^2;
R_squared_b1 = 1 - (Sa1.normr/norm(y1(indexesb1) - mean(y1(indexesb1))))^2;
R_squared_a2 = 1 - (Sa1.normr/norm(y2(indexesa2) - mean(y2(indexesa2))))^2;
R_squared_b2 = 1 - (Sa1.normr/norm(y2(indexesb2) - mean(y2(indexesb2))))^2;
R_squared_a3 = 1 - (Sa1.normr/norm(y3(indexesa3) - mean(y3(indexesa3))))^2;
R_squared_b3 = 1 - (Sa1.normr/norm(y3(indexesb3) - mean(y3(indexesb3))))^2;
R_squared_a4 = 1 - (Sa1.normr/norm(y4(indexesa4) - mean(y4(indexesa4))))^2;
R_squared_b4 = 1 - (Sa1.normr/norm(y4(indexesb4) - mean(y4(indexesb4))))^2;
R_squared_a5 = 1 - (Sa1.normr/norm(y5(indexesa5) - mean(y5(indexesa5))))^2;
R_squared_b5 = 1 - (Sa1.normr/norm(y5(indexesb5) - mean(y5(indexesb5))))^2;
R_squared_a6 = 1 - (Sa1.normr/norm(y6(indexesa6) - mean(y6(indexesa6))))^2;
R_squared_b6 = 1 - (Sa1.normr/norm(y6(indexesb6) - mean(y6(indexesb6))))^2;
R_squared_a7 = 1 - (Sa1.normr/norm(y7(indexesa7) - mean(y7(indexesa7))))^2;
R_squared_b7 = 1 - (Sa1.normr/norm(y7(indexesb7) - mean(y7(indexesb7))))^2;
R_squared_a8 = 1 - (Sa1.normr/norm(y8(indexesa8) - mean(y8(indexesa8))))^2;
R_squared_b8 = 1 - (Sa1.normr/norm(y8(indexesb8) - mean(y8(indexesb8))))^2;
R_squared_a9 = 1 - (Sa1.normr/norm(y9(indexesa9) - mean(y9(indexesa9))))^2;
R_squared_b9 = 1 - (Sa1.normr/norm(y9(indexesb9) - mean(y9(indexesb9))))^2;
R_squared_a10 = 1 - (Sa1.normr/norm(y10(indexesa10) - mean(y10(indexesa10))))^2;
R_squared_b10 = 1 - (Sa1.normr/norm(y10(indexesb10) - mean(y10(indexesb10))))^2;
R_squared_a11 = 1 - (Sa1.normr/norm(y11(indexesa11) - mean(y11(indexesa11))))^2;
R_squared_b11 = 1 - (Sa1.normr/norm(y11(indexesb11) - mean(y11(indexesb11))))^2;





% Draw the fitted line.

xFitB1 = x(indexesb1); % Or T if you just want to see the line over the whole plot.
yFitB1 = polyval(coefficientsb1, xFitB1);
xFitA1 = x(indexesa1); % Or T if you just want to see the line over the whole plot.
yFitA1 = polyval(coefficientsa1, xFitA1);

xFitB2 = x(indexesb2); % Or T if you just want to see the line over the whole plot.
yFitB2 = polyval(coefficientsb2, xFitB2);
xFitA2 = x(indexesa2); % Or T if you just want to see the line over the whole plot.
yFitA2 = polyval(coefficientsa2, xFitA2);

xFitB3 = x(indexesb3); % Or T if you just want to see the line over the whole plot.
yFitB3 = polyval(coefficientsb3, xFitB3);
xFitA3 = x(indexesa3); % Or T if you just want to see the line over the whole plot.
yFitA3 = polyval(coefficientsa3, xFitA3);

xFitB4 = x(indexesb4); % Or T if you just want to see the line over the whole plot.
yFitB4 = polyval(coefficientsb4, xFitB4);
xFitA4 = x(indexesa4); % Or T if you just want to see the line over the whole plot.
yFitA4 = polyval(coefficientsa4, xFitA4);

xFitB5 = x(indexesb5); % Or T if you just want to see the line over the whole plot.
yFitB5 = polyval(coefficientsb5, xFitB5);
xFitA5 = x(indexesa5); % Or T if you just want to see the line over the whole plot.
yFitA5 = polyval(coefficientsa5, xFitA5);

xFitB6 = x(indexesb6); % Or T if you just want to see the line over the whole plot.
yFitB6 = polyval(coefficientsb6, xFitB6);
xFitA6 = x(indexesa6); % Or T if you just want to see the line over the whole plot.
yFitA6 = polyval(coefficientsa6, xFitA6);

xFitB7 = x(indexesb7); % Or T if you just want to see the line over the whole plot.
yFitB7 = polyval(coefficientsb7, xFitB7);
xFitA7 = x(indexesa7); % Or T if you just want to see the line over the whole plot.
yFitA7 = polyval(coefficientsa7, xFitA7);

xFitB8 = x(indexesb8); % Or T if you just want to see the line over the whole plot.
yFitB8 = polyval(coefficientsb8, xFitB8);
xFitA8 = x(indexesa8); % Or T if you just want to see the line over the whole plot.
yFitA8 = polyval(coefficientsa8, xFitA8);

xFitB9 = x(indexesb9); % Or T if you just want to see the line over the whole plot.
yFitB9 = polyval(coefficientsb9, xFitB9);
xFitA9 = x(indexesa9); % Or T if you just want to see the line over the whole plot.
yFitA9 = polyval(coefficientsa9, xFitA9);

xFitB10 = x(indexesb10); % Or T if you just want to see the line over the whole plot.
yFitB10 = polyval(coefficientsb10, xFitB10);
xFitA10 = x(indexesa10); % Or T if you just want to see the line over the whole plot.
yFitA10 = polyval(coefficientsa10, xFitA10);

xFitB11 = x(indexesb11); % Or T if you just want to see the line over the whole plot.
yFitB11 = polyval(coefficientsb11, xFitB11);
xFitA11 = x(indexesa11); % Or T if you just want to see the line over the whole plot.
yFitA11 = polyval(coefficientsa11, xFitA11);






%plot everything
fontSize = 20;
figure % Create a new figure window
subplot(3,4,1) % Create a 2x2 grid of subplots and select the first one
scatter(x,y1,'k.') % Create a scatter plot of x vs y1 with black points
hold on;
plot(xFitB1, yFitB1, 'r-', 'LineWidth', 1) %plot the background linear fit
plot(xFitA1, yFitA1, 'g-', 'LineWidth', 1) %plot the activity linear fit
hold off;
xlabel('time (seconds)', 'FontSize', fontSize)
ylabel('MV absorption (AU)', 'FontSize', fontSize)
%caption = sprintf('y = %f * T + %f', coefficients(1), coefficients(2));
%title(caption, 'FontSize', fontSize)
title('SiR-APX.3: APO') % Add a title to the plot

subplot(3,4,2) % Select the second subplot
scatter(x,y2,'k.') % Create a scatter plot of x vs y2 with black points
hold on;
plot(xFitB2, yFitB2, 'r-', 'LineWidth', 1) %plot the background linear fit
plot(xFitA2, yFitA2, 'g-', 'LineWidth', 1) %plot the activity linear fit
hold off;
xlabel('time (seconds)', 'FontSize', fontSize)
ylabel('MV absorption (AU)', 'FontSize', fontSize)
title('SiR-APX.3: Heme-Only') % Add a title to the plot

subplot(3,4,3) % Select the third subplot
scatter(x,y3,'k.') % Create a scatter plot of x vs y3 with black points
hold on;
plot(xFitB3, yFitB3, 'r-', 'LineWidth', 1) %plot the background linear fit
plot(xFitA3, yFitA3, 'g-', 'LineWidth', 1) %plot the activity linear fit
hold off;
xlabel('time (seconds)', 'FontSize', fontSize)
ylabel('MV absorption (AU)', 'FontSize', fontSize)
title('SiR-APX.3: Holo-PD10') % Add a title to the plot

subplot(3,4,4) % Select the fourth subplot
scatter(x,y4,'k.') % Create a scatter plot of x vs y4 with black points
hold on;
plot(xFitB4, yFitB4, 'r-', 'LineWidth', 1) %plot the background linear fit
plot(xFitA4, yFitA4, 'g-', 'LineWidth', 1) %plot the activity linear fit
hold off;
xlabel('time (seconds)', 'FontSize', fontSize)
ylabel('MV absorption (AU)', 'FontSize', fontSize)
title('SiR-APX.3: Holo-DEAE') % Add a title to the plot

subplot(3,4,5) % Select the fifth subplot
scatter(x,y5,'k.') % Create a scatter plot of x vs y5 with black points
hold on;
plot(xFitB5, yFitB5, 'r-', 'LineWidth', 1) %plot the background linear fit
plot(xFitA5, yFitA5, 'g-', 'LineWidth', 1) %plot the activity linear fit
hold off;
xlabel('time (seconds)', 'FontSize', fontSize)
ylabel('MV absorption (AU)', 'FontSize', fontSize)
title('SiR-APX.3: PreACluster') % Add a title to the plot

subplot(3,4,6) % Select the fifth subplot
scatter(x,y6,'k.') % Create a scatter plot of x vs y6 with black points
hold on;
plot(xFitB6, yFitB6, 'r-', 'LineWidth', 1) %plot the background linear fit
plot(xFitA6, yFitA6, 'g-', 'LineWidth', 1) %plot the activity linear fit
hold off;
xlabel('time (seconds)', 'FontSize', fontSize)
ylabel('MV absorption (AU)', 'FontSize', fontSize)
title('SiR-APX.3: APO2') % Add a title to the plot

subplot(3,4,7) % Select the fifth subplot
scatter(x,y7,'k.') % Create a scatter plot of x vs y6 with black points
hold on;
plot(xFitB7, yFitB7, 'r-', 'LineWidth', 1) %plot the background linear fit
plot(xFitA7, yFitA7, 'g-', 'LineWidth', 1) %plot the activity linear fit
hold off;
xlabel('time (seconds)', 'FontSize', fontSize)
ylabel('MV absorption (AU)', 'FontSize', fontSize)
title('SiR-APX.3: CuBAPXCu') % Add a title to the plot

subplot(3,4,8) % Select the fifth subplot
scatter(x,y8,'k.') % Create a scatter plot of x vs y6 with black points
hold on;
plot(xFitB8, yFitB8, 'r-', 'LineWidth', 1) %plot the background linear fit
plot(xFitA8, yFitA8, 'g-', 'LineWidth', 1) %plot the activity linear fit
hold off;
xlabel('time (seconds)', 'FontSize', fontSize)
ylabel('MV absorption (AU)', 'FontSize', fontSize)
title('SiR-APX.3: CuBAPX') % Add a title to the plot

subplot(3,4,9) % Select the fifth subplot
scatter(x,y9,'k.') % Create a scatter plot of x vs y6 with black points
hold on;
plot(xFitB9, yFitB9, 'r-', 'LineWidth', 1) %plot the background linear fit
plot(xFitA9, yFitA9, 'g-', 'LineWidth', 1) %plot the activity linear fit
hold off;
xlabel('time (seconds)', 'FontSize', fontSize)
ylabel('MV absorption (AU)', 'FontSize', fontSize)
title('SiR-APX.3: CuIAPXCu') % Add a title to the plot

subplot(3,4,10) % Select the fifth subplot
scatter(x,y10,'k.') % Create a scatter plot of x vs y6 with black points
hold on;
plot(xFitB10, yFitB10, 'r-', 'LineWidth', 1) %plot the background linear fit
plot(xFitA10, yFitA10, 'g-', 'LineWidth', 1) %plot the activity linear fit
hold off;
xlabel('time (seconds)', 'FontSize', fontSize)
ylabel('MV absorption (AU)', 'FontSize', fontSize)
title('SiR-APX.3: CuIAPX') % Add a title to the plot

subplot(3,4,11) % Select the fifth subplot
scatter(x,y11,'k.') % Create a scatter plot of x vs y6 with black points
hold on;
plot(xFitB11, yFitB11, 'r-', 'LineWidth', 1) %plot the background linear fit
plot(xFitA11, yFitA11, 'g-', 'LineWidth', 1) %plot the activity linear fit
hold off;
xlabel('time (seconds)', 'FontSize', fontSize)
ylabel('MV absorption (AU)', 'FontSize', fontSize)
title('SiR-APX.3: CuIAPXCu2') % Add a title to the plot





%%
 % BACKGROUND SLOPES


% Note, each 10 x-bins are equal to 1 second!

bgs = zeros(6,1);
bgs(1) = coefficientsb1(1);
bgs(2) = coefficientsb2(1);
bgs(3) = coefficientsb3(1);
bgs(4) = coefficientsb4(1);
bgs(5) = coefficientsb5(1);
bgs(6) = coefficientsb6(1);
bgs(7) = coefficientsb7(1);
bgs(8) = coefficientsb8(1);
bgs(9) = coefficientsb9(1);
bgs(10) = coefficientsb10(1);
bgs(11) = coefficientsb11(1);




% Create a bar graph of the slopes
figure
bar(bgs)
set(gca,'xticklabel',{'SiR-APX.3: APO','SiR-APX.3: Heme-only','SiR-APX.3: Holo PD10','SiR-APX.3: Holo DEAE', 'SiR-APX.1: PRe-assembled cluster', 'SiR-APX.3: Apo #2','Cu(B)-APX+Cu', 'Cu(B)-APX', 'Cu(I)-APX+Cu', 'Cu(I)-APX', 'Cu(I)-APX+Cu2'})
title('Background Slopes')



%%

% The actual data regions:

slopes = zeros(6,1);

slopes(1) = coefficientsa1(1);
slopes(2) = coefficientsa2(1);
slopes(3) = coefficientsa3(1);
slopes(4) = coefficientsa4(1);
slopes(5) = coefficientsa5(1);
slopes(6) = coefficientsa6(1);
slopes(7) = coefficientsa7(1);
slopes(8) = coefficientsa8(1);
slopes(9) = coefficientsa9(1);
slopes(10) = coefficientsa10(1);
slopes(11) = coefficientsa11(1);

% Create a bar graph of the slopes
figure
bar(slopes)
set(gca,'xticklabel',{'SiR-APX.3: APO','SiR-APX.3: Heme-only','SiR-APX.3: Holo PD10','SiR-APX.3: Holo DEAE', 'SiR-APX.1: PRe-assembled cluster', 'SiR-APX.3: Apo #2','Cu(B)-APX+Cu', 'Cu(B)-APX', 'Cu(I)-APX+Cu', 'Cu(I)-APX', 'Cu(I)-APX+Cu2'})
title('Enzymatic')





%%

% Doing some substractions of BG now

% The volumes-added:

modified_volumes = zeros(11,1);


for i = 1:11
    modified_volumes(i) = (250 / 300);
end


corr_slopes = zeros(11,1);



corr_slopes(1) = (slopes(1) - (bgs(1)*modified_volumes(1)));
corr_slopes(2) = (slopes(2) - (bgs(2)*modified_volumes(2)));
corr_slopes(3) = (slopes(3) - (bgs(3)*modified_volumes(3)));
corr_slopes(4) = (slopes(4) - (bgs(4)*modified_volumes(4)));
corr_slopes(5) = (slopes(5) - (bgs(5)*modified_volumes(5)));
corr_slopes(6) = (slopes(6) - (bgs(6)*modified_volumes(6)));
corr_slopes(7) = (slopes(7) - (bgs(7)*modified_volumes(7)));
corr_slopes(8) = (slopes(8) - (bgs(8)*modified_volumes(8)));
corr_slopes(9) = (slopes(9) - (bgs(9)*modified_volumes(9)));
corr_slopes(10) = (slopes(10) - (bgs(10)*modified_volumes(10)));
corr_slopes(11) = (slopes(11) - (bgs(11)*modified_volumes(11)));



% Create a bar graph of the slopes
figure
bar(corr_slopes)
set(gca,'xticklabel',{'SiR-APX.3: APO','SiR-APX.3: Heme-only','SiR-APX.3: Holo PD10','SiR-APX.3: Holo DEAE', 'SiR-APX.1: PRe-assembled cluster', 'SiR-APX.3: Apo #2','Cu(B)-APX+Cu', 'Cu(B)-APX', 'Cu(I)-APX+Cu', 'Cu(I)-APX', 'Cu(I)-APX+Cu2'})
title('Enzymatic (background-subtracted)')



%% Now actually making some kinetics calculations:

% Cell volume for the reaction = 300 ul
% addition volume for each sample can be given, such that the rate of from
% the ending (new modified slopes from the above calc) can be modified
% properly, and the final rates can be put out.

% modified_rates = modified_volumes.*slopes;


% Known enzyme concentration for the reaction: 5 uM in the total cuvette
% volume!

final_change_in_signal_per_uM_enzyme = zeros(11,1);


% The volumes-added:


final_change_in_signal_per_uM_enzyme(1) = corr_slopes(1)/(4.58);  
final_change_in_signal_per_uM_enzyme(2) = corr_slopes(2)/(4.63);
final_change_in_signal_per_uM_enzyme(3) = corr_slopes(3)/(5.28);
final_change_in_signal_per_uM_enzyme(4) = corr_slopes(4)/(5.2);
final_change_in_signal_per_uM_enzyme(5) = corr_slopes(5)/(5.28);
final_change_in_signal_per_uM_enzyme(6) = corr_slopes(6)/(5.1);
final_change_in_signal_per_uM_enzyme(7) = corr_slopes(7)/(5);
final_change_in_signal_per_uM_enzyme(8) = corr_slopes(8)/(5);
final_change_in_signal_per_uM_enzyme(9) = corr_slopes(9)/(5);
final_change_in_signal_per_uM_enzyme(10) = corr_slopes(10)/(5);
final_change_in_signal_per_uM_enzyme(11) = corr_slopes(11)/(5);


extinction_coeff_mol_MV = 13000; % M^-1cm^-1


for i = 1:11
    final_change_mol_MV_per_minute_per_M_enzyme(i) = (1000000*60*final_change_in_signal_per_uM_enzyme(i))/extinction_coeff_mol_MV;
end





% The next question is... what did Evan and Chris see, how do we relate
% this all????

% they saw... THE TRUTH!!!!!!
