function rf=model1(x)



A=x(1); %var yg dioptimisasi RLDC
B=x(2); %RLUS
C=x(1); %RLUC
tpdcch = 0.9287;
tdus = 8;
tonefactor = 12;
tpusch = tpdcch;
tuds = 0;
tulack = tuds;


Y= ((A.*tpdcch+tdus+B.*tonefactor.*tpusch+tuds+C.*tulack)*(96/208))+(10000/(10^3*343)) %model diganti dgn rumus delay(m=12, u=1)343 m/detik

if Y < 0
    Y = 1E-10
else
    Y = Y
end
    
% rf = Y; %output model lgsg menjadi obj function (maximize)
rf = Y; %output model lgsg menjadi 1/obj function (minimize)