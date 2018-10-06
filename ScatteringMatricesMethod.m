%{
创建一个通用的 Scattering Matrices Method 程序，使用的公式参考：
Wavelength tunable polarizer based on layered black phosphorus on Si/SiO2 substrate
第1256页右侧 公式（2）

实现思路：
1. 创建两个函数分别用来计算I、L，传入参数为介质应包括波长、两（一）个介质的折射率、厚度
2. 创建一个函数，用来接收所有的I、L，在函数内将其相乘并返回 反射差分信号
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

