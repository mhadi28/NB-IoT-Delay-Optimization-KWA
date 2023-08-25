%okumura-hata propagation model (open area)
function path_loss_db = okumura_hata(distance_km, freq_DL, hb, hm)
    % Calculate path loss using Okumura-Hata model for open areas.

    % Constants for open areas (frequency in MHz)
    A = 69.55;
    B = 26.16;
    C = 13.82;

    % Calculate path loss using Okumura-Hata model
    path_loss_db = A + B * log10(distance_km) + C * log10(freq_DL) - 13.82 * log10(hb) ...
                   - (1.1 * log10(freq_DL) - 0.7) * hm + (1.56 * log10(freq_DL) - 0.8);
end