img = imread('parasternal_image.jpg');
figure;
imshow(img);
title('Parasternal Long Axis View');
hold on; 
heart_rate=60;

%% Labels 
text(249, 519, 'Mitral Valve', 'Color', 'yellow', 'FontSize', 12, 'FontWeight', 'bold'); %Mitral Valve
text(400, 453, 'Aortic Valve', 'Color', 'green', 'FontSize', 12, 'FontWeight', 'bold');%Aortic Valve
text(120, 459, 'Left Ventricle', 'Color', 'blue', 'FontSize', 12, 'FontWeight', 'bold');%Left Ventricle
text(260, 415, 'Septal Wall', 'Color', 'red', 'FontSize', 12, 'FontWeight', 'bold'); %Septal Wall
hold off;

%% selecting diameter from systol 
img_sys=imread('aortic valve at midsystole.jpg');
figure;
imshow(img_sys);
title('aortic value at midsystole');
hold on; 

[x, y] = ginput(2); % Manually selecting points from image

% Calculate the pixel distance between the two points
doppler_diameter_pixels = sqrt((x(2) - x(1))^2 + (y(2) - y(1))^2);
line([x(1), x(2)], [y(1), y(2)], 'Color', 'cyan', 'LineWidth', 2);
%% selecting VTI from doppler image 
doppler_img = imread('doppler_image.png');
figure;
imshow(doppler_img);
title('find VTI  along the Doppler waveform');

[x, y] = ginput;%  manually trace the VTI by clicking points 
% x = time  y= velocity 
% press Enter to finish selection.

% Plot the selected points on the Doppler image
hold on;
plot(x, y, 'r-', 'LineWidth', 2); % Red line to show selected contour
scatter(x, y, 30, 'r', 'filled'); % Red dots at each selected point
hold off;
% Calculate the area under the curve 
vti = trapz(x, y); 
%% calculate cardiac output
lvot_area = pi * (lvot_diameter / 2)^2; % LVOT Area in cm^2
stroke_volume = lvot_area * vti; % Stroke Volume in mL 
cardiac_output = stroke_volume * heart_rate / 1000; % Cardiac output in L/min
fprintf('Cardiac Output: %.2f L/min\n', cardiac_output); 

