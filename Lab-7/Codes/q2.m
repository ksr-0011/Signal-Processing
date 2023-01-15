[y, Fs] = audioread('file_example_WAV_5MG.wav');

a = 1;
for B = 1:1:8
    f = quadratic_quant(xn,B,a);
    sound(f, Fs);
    pause(2)
    clear sound
end    