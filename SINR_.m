% Given values
PTX = 46; % Transmitted power in watts
bandwidth_Hz = 180e3; % Bandwidth in Hertz (180 kHz)
N0 = 1e-7; % Noise power spectral density in W/Hz
r = 1; % Number of repetitions 'r'

% Calculate K3
K3 = PTX ./ (bandwidth_Hz .* N0 .* path_loss_db);

% Calculate SINR using K3 and repetitions factor 'f'
f = r; % Assuming f is equal to repetitions for this example
SINR = K3 * f * r;


figure;
plot(distance_km, SINR, 'bo-');      % 'bo-' specifies blue circles connected by lines
xlabel('Distance (km)');
ylabel('SINR (dB)');
title('SINR for Open Area');
grid on;