[y1, Fs1] = audioread('file_example_WAV_1MG.wav'); %bit rate = 256 kbps
[y2, Fs2] = audioread('file_example_WAV_2MG.wav'); %bit rate = 512 kbps
[y3, Fs3] = audioread('file_example_WAV_5MG.wav'); %bit rate = 1411 kbps
[y4, Fs4] = audioread('file_example_WAV_10MG.wav'); %bit rate = 1411 kbps

bitrate1 = 256*1000;
bitrate2 = 512*1000;
bitrate3 = 1411*1000;
bitrate4 = 1411*1000;

t1 = length(y1)/Fs1;
t2 = length(y2)/Fs2;
t3 = length(y3)/Fs3;
t4 = length(y4)/Fs4;

bits1 = bitrate1/Fs1;
bits2 = bitrate2/Fs2;
bits3 = bitrate3/Fs3;
bits4 = bitrate4/Fs4;

level1 = 2^bits1;
level2 = 2^bits2;
level3 = 2^bits3;
level4 = 2^bits4;

% disp('For 1mb file:');
% disp("Duration = " + t1);
% disp("Bits Used " + bits1);
% disp("Levels of Quantisation = " + level1);
% 
% disp('For 2mb file:');
% disp("Duration = " + t2);
% disp("Bits Used " + bits2);
% disp("Levels of Quantisation = " + level2);
% 
% 
% disp('For 5mb file:');
% disp("Duration = " + t3);
% disp("Bits Used " + bits3);
% disp("Levels of Quantisation = " + level3);
% 
% 
% disp('For 10mb file:');
% disp("Duration = " + t4);
% disp("Bits Used " + bits4);
% disp("Levels of Quantisation = " + level4);


% sound(y1,0.5*Fs1);
% sound(y1,1.5*Fs1);

%---------------------------------------------------
% ANSWERS:

% For 1mb file:
% Duration = 33.5296
% Bits Used 32
% Levels of Quantisation = 4294967296
% For 2mb file:
% Duration = 33.5296
% Bits Used 32
% Levels of Quantisation = 4294967296
% For 5mb file:
% Duration = 29.6287
% Bits Used 31.9955
% Levels of Quantisation = 4281487159.1985
% For 10mb file:
% Duration = 58.9936
% Bits Used 31.9955
% Levels of Quantisation = 4281487159.1985
