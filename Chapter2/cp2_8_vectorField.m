%% �x�N�g����̉���
% �Q�l�Fhttps://www.math.kyoto-u.ac.jp/~karel/files/notes_biseki2matlab_2018.pdf
% 
% 
% $$\frac{\mathrm{dx}}{\mathrm{dt}}=x\left(1-x\right)$$

% �������������`
f = @(t,x) x.*(1-x);    % �\���o�[�ŉ����ׂɂ͈�����(t,x0,x1...)�̏��ɂ���K�v������
fsurf(f, [0,2,0,10]);
view([113.8 37.2]);

% �i�q�_�̒�`
t = 0:0.25:10;
x = 0:0.25:2;
[T,X] = meshgrid(t,x);

% �e�i�q�_�ł̌��z���v�Z
dT = ones(size(T));
dX = f(T,X);

% ���̒����𐳋K��
N = sqrt(dT.^2+dX.^2);
dT = dT./N;
dX = dX./N;

% �v���b�g
% �e�C���f�b�N�Xn�ɂ��āA���W(T(n),X(n))�Ŗ��(dT(n),dX(n))��`�悷��
quiver(T,X,dT,dX);

% ����������^���ĉ������߂�
tspan = [0,10];
y0 = 0.2;
[xs, ys] = ode45(f, tspan, y0);
hold on;
plot(xs, ys);
xlim(tspan);
ylim([0,2]);
grid on;
hold off;