%% Pendulo Doble
clear ; clc ; 

%% DATOS [Si] ==================================================
dt=1E-3 ; m1=1 ; m2=1; g=9.8 ; l1=2 ; l2=2; theta01 = pi/2 ; theta02 = pi/2;
N=1E6 ;

[r1,r2]=deal(zeros(2,N)) ; [theta_1,theta_2,w1,w2,a1,a2]=deal(zeros(1,N)) ; % pre-alojar espacio

[r1(1,1),r2(1,1),r1(2,1),r2(2,1)] = cart(l1,l2,theta01,theta02);
theta_1(1)=theta01; theta_2(1)=theta02; % condiciones iniciales
[a1(1), a2(1)] = Ec_EuLag(theta_1(1), theta_2(1), w1(1), w2(1), l1,l2,m1,m2,g);

t=linspace(0,dt*(N-1),N) ; % discretización tiempo

%% [TRAYECTORIAS] ==================================================

[theta_1,theta_2,w1,w2,a1,a2]=Motion(t,theta_1,theta_2,w1,w2,a1,a2,l1,l2,m1,m2,g);
[r1(1,:),r2(1,:),r1(2,:),r2(2,:)]=cart(l1,l2,theta_1,theta_2);

Animation(r1,r2,t)


%% FUNCIONES DE USUARIO ==================================================
function [x1,x2,y1,y2]=cart(l1,l2,theta_1,theta_2) 
    x1=l1*sin(theta_1) ;  y1=l1*cos(theta_1);
    x2=l2*sin(theta_2) + x1 ;  y2= l2*cos(theta_2) + y1;
       
end

function [a1,a2]=Ec_EuLag(theta_1,theta_2,w1,w2,l1,l2,m1,m2,g) 
    k=(m2*l2)/(m1+m2);
    A= [l1, k*cos(theta_2 - theta_1); l1*cos(theta_2 - theta_1), l2];
    B= [(k*sin(theta_2 - theta_1)*(w2^2) + g*sin(theta_1) ); (-l1*sin(theta_2 - theta_1)*(w1^2) + g*sin(theta_2) )];
    X= A\B;
    a1 = X(1); a2 = X(2);
end
       
function [theta_1,theta_2,w1,w2,a1,a2]=Motion(t,theta_1,theta_2,w1,w2,a1,a2,l1,l2,m1,m2,g) 
    for i=1:length(t)-1
        dt=t(i+1)-t(i) ; 
        % predictores de aceleración, velocidad y posición (Euler)
        [a1_pred a2_pred]=Ec_EuLag(theta_1(i),theta_2(i),w1(i),w2(i),l1,l2,m1,m2,g) ; % aceleración

        w1_pred=w1(i)+a1_pred*dt ; % Euler vx(i+1)=vx(i)+a_pred*dt ;
        w2_pred=w2(i)+a2_pred*dt ;
   
       theta1_pred=theta_1(i)+w1(i)*dt ;   % Euler x(i+1)=x(i)+vx_pred*dt ; 
       theta2_pred=theta_2(i)+w2(i)*dt ;

       % correctores de posición, aceleración y velocidad (HEUN)
       theta_1(i+1)=theta_1(i)+0.5*(w1(i)+w1_pred)*dt ;
       theta_2(i+1)=theta_2(i)+0.5*(w2(i)+w2_pred)*dt ;
    
       [a1(i+1) a2(i+1)]=Ec_EuLag(theta1_pred,theta2_pred,w1_pred,w2_pred,l1,l2,m1,m2,g);

       w1(i+1)=w1(i)+0.5*(a1_pred+a1(i+1))*dt;
       w2(i+1)=w2(i)+0.5*(a2_pred+a2(i+1))*dt;
   
    end
end


function Animation(r1,r2,t)

    figure
    hold on
    grid on
    axis equal

    % Límites de la animación
    L = max(abs([r1(:); r2(:)]))*1.2;
    xlim([-L L])
    ylim([-L L])

    xlabel('x')
    ylabel('y')
    title('Péndulo doble')

    % Dibujar inicialmente el péndulo
    p1 = plot([0 r1(1,1)], ...
              [0 r1(2,1)], ...
              'k-', 'LineWidth',2);

    p2 = plot([r1(1,1) r2(1,1)], ...
              [r1(2,1) r2(2,1)], ...
              'k-', 'LineWidth',2);

    m1 = plot(r1(1,1),r1(2,1), ...
              'bo','MarkerFaceColor','b','MarkerSize',8);

    m2 = plot(r2(1,1),r2(2,1), ...
              'ro','MarkerFaceColor','r','MarkerSize',8);

    % Punto de suspensión
    plot(0,0,'ko','MarkerFaceColor','k','MarkerSize',6)

    % Animación
    for i = 1:5:length(t)

        set(p1,'XData',[0 r1(1,i)], ...
               'YData',[0 r1(2,i)])

        set(p2,'XData',[r1(1,i) r2(1,i)], ...
               'YData',[r1(2,i) r2(2,i)])

        set(m1,'XData',r1(1,i), ...
               'YData',r1(2,i))

        set(m2,'XData',r2(1,i), ...
               'YData',r2(2,i))

        drawnow

    end

end
