close all, clear all, clc
%% Parâmetros
R = 0.195/2; L = 0.331;

emin = 0.05;
u_max = 1.2;
omega_max = (pi/180)*300;

ke = 0.3; kalpha = 1; kd_alpha = -0.5; % Não utilizados (linear).
gamma = 0.3; k = 1; % Parâmetros do controlador não-linear (Lyapunov).

%% Variantes do modelo
BEHAVIOUR_CONTROLLER = 2;
BC_ARTICLE = Simulink.Variant('BEHAVIOUR_CONTROLLER==1');
BC_MODIFIED = Simulink.Variant('BEHAVIOUR_CONTROLLER==2');

%% Controlador Fuzzy
fuzzyArticle = readfis('fuzzyArticle');
fuzzyModified = readfis('fuzzyModified');

%% Simulação
sim('model');
