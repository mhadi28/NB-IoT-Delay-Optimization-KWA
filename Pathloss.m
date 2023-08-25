% Example usage
hm = 42;                        % Height of the base station antenna in meters
hb = 1.5;                            % Height of the mobile station antenna in meters
freq_dl = 925;                            % Frequency of operation in megahertz
distance_km = [1 2 3 4 5 6 7 8 9 10];           % Distance between transmitter and receiver in kilometers

path_loss_db = okumura_hata(distance_km, freq_dl, hm, hb);

% Plotting the path loss
figure;
plot(distance_km, path_loss_db, 'bo-');        % 'bo-' specifies blue circles connected by lines
xlabel('Distance (km)');
ylabel('Path Loss (dB)');
title('Okumura-Hata Path Loss for Open Area');
grid on;