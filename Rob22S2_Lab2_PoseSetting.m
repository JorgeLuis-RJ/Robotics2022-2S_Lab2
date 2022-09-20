%%
rosinit; % Conexión con nodo maestro
%%
setPoseAbsClient = rossvcclient('/turtle1/teleport_absolute'); % Creación del cliente
setPoseAbsReq = rosmessage(setPoseAbsClient); % Creación del mensaje
setPoseAbsReq.X = 5; % Declaración del valor 'X' del servicio
setPoseAbsReq.Y = 5; % Declaración del valor 'Y' del servicio
setPoseAbsReq.Theta = 3; % Declaración del valor 'Theta' del servicio
%%
setPoseAbsResp = call(setPoseAbsClient, setPoseAbsReq); % Solicitud para realizar el servicio
%%
setPoseRelClient = rossvcclient('/turtle1/teleport_relative'); % Creación del cliente
setPoseRelReq = rosmessage(setPoseRelClient); % Creación del mensaje
setPoseRelReq.Linear = 1.2; % Declaración del valor 'Linear' del servicio
setPoseRelReq.Angular = 0; % Declaración del valor 'Angular' del servicio
%%
setPoseRelResp = call(setPoseRelClient, setPoseRelReq); % Solicitud para realizar el servicio
%%
rosshutdown; % Desconexión del nodo global de Matlab