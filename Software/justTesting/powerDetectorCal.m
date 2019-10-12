  
measured = [0 0.57 14.3
        1 0.59 13.4
        2 0.62 12.4
        3 0.64 11.5
        4 0.66 11.6
        5 0.69 9.6
        6 0.71 8.7
        7 0.73 7.7
        8 0.75 6.8
        9 0.77 5.8
        10 0.8 4.7
        11 0.82 3.75
        12 0.84 2.7
        13 0.87 1.7
        14 0.89 0.68
        15 0.91 -0.3
        16 0.93 -1.2
        17 0.95 -2.2
        18 0.98 -3.3
        19 1    -4.2
        20 1.02 -5.3
        21 1.05 -6.2
        22 1.07 -7.3
        23 1.09 -8.3
        24 1.11 -9.25
        25 1.13 -10.2
        26 1.15 -11.3
        27 1.18 -12.2
        28 1.20 -13.3
        29 1.22 -14.2
        30 1.24 -15.2
        31 1.27 -16.2];

hold on;
plot(measured(:,2),measured(:,3))
xlabel("Voltage")
ylabel("Measured Power")

p = polyfit(measured(:,2),measured(:,3),1);
est = polyval(p,measured(:,2));
plot(measured(:,2),est)
% plot(measured(:,2),measured(:,3))

legend("AD8319 Calibration", "Matlab Best Fit", "Measured Best Fit")

fprintf("Power = %0.2f * voltage + %0.2f\n",p(1), p(2))