p = [3];
disp('p = [3] :')
[N, ROC, C, S] = roc_cs(p);
disp('N = '); disp(N);
disp('ROC :'); disp(ROC);
disp('C : '); disp(C);
disp('S : '); disp(S);

p = [0.1];
disp('p = [0.1] :')
[N, ROC, C, S] = roc_cs(p);
disp('N = '); disp(N);
disp('ROC :'); disp(ROC);
disp('C : '); disp(C);
disp('S : '); disp(S);

p = [0];
disp('p = [0] :')
[N, ROC, C, S] = roc_cs(p);
disp('N = '); disp(N);
disp('ROC :'); disp(ROC);
disp('C : '); disp(C);
disp('S : '); disp(S);

p = [0, 0.5];
disp('p = [0, 0.5] :')
[N, ROC, C, S] = roc_cs(p);
disp('N = '); disp(N);
disp('ROC :'); disp(ROC);
disp('C : '); disp(C);
disp('S : '); disp(S);

p = [2, -0.5];
disp('p = [2, -0.5] :')
[N, ROC, C, S] = roc_cs(p);
disp('N = '); disp(N);
disp('ROC :'); disp(ROC);
disp('C : '); disp(C);
disp('S : '); disp(S);


p = [0.5, -0.5];
disp('p = [0.5, -0.5] :')
[N, ROC, C, S] = roc_cs(p);
disp('N = '); disp(N);
disp('ROC :'); disp(ROC);
disp('C : '); disp(C);
disp('S : '); disp(S);

p = [2, 2, 2];
disp('p = [2, 2, 2] :')
[N, ROC, C, S] = roc_cs(p);
disp('N = '); disp(N);
disp('ROC :'); disp(ROC);
disp('C : '); disp(C);
disp('S : '); disp(S);

p = [0, 1, 2];
disp('p = [0, 1, 2] :')
[N, ROC, C, S] = roc_cs(p);
disp('N = '); disp(N);
disp('ROC :'); disp(ROC);
disp('C : '); disp(C);
disp('S : '); disp(S);

p = [-0.5, 1j];
disp('p = [-0.5, 1j] :')
[N, ROC, C, S] = roc_cs(p);
disp('N = '); disp(N);
disp('ROC :'); disp(ROC);
disp('C : '); disp(C);
disp('S : '); disp(S);

p = [0, 1j, -1j];
disp('p = [0, 1j, -1j] :')
[N, ROC, C, S] = roc_cs(p);
disp('N = '); disp(N);
disp('ROC :'); disp(ROC);
disp('C : '); disp(C);
disp('S : '); disp(S);

p = [0.5, -0.5, 2+1j, 2-1j];
disp('p = [0.5, -0.5, 2+1j, 2-1j] :')
[N, ROC, C, S] = roc_cs(p);
disp('N = '); disp(N);
disp('ROC :'); disp(ROC);
disp('C : '); disp(C);
disp('S : '); disp(S);

p = [1+1j, 1+2j, 1+3j, 2+1j];
disp('p = [1+1j, 1+2j, 1+3j, 2+1j] :')
[N, ROC, C, S] = roc_cs(p);
disp('N = '); disp(N);
disp('ROC :'); disp(ROC);
disp('C : '); disp(C);
disp('S : '); disp(S);

