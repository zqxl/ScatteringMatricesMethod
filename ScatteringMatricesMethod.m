%{
����һ��ͨ�õ� Scattering Matrices Method ����ʹ�õĹ�ʽ�ο���
Wavelength tunable polarizer based on layered black phosphorus on Si/SiO2 substrate
��1256ҳ�Ҳ� ��ʽ��2��

ʵ��˼·��
1. �������������ֱ���������I��L���������Ϊ����Ӧ��������������һ�������ʵ������ʡ����
2. ����һ�������������������е�I��L���ں����ڽ�����˲����� �������ź�
%}
function ScatteringMatricesMethod
a=[1,2;1,1]
b=[0,1;2,1]
c=[2,1;0,1];
calculateS(a,b)

function S=calculateS(varargin)
len = length(varargin);
S=varargin{1};
for i=2:len
    S = S * varargin{i};
end

