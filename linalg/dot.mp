u := 0.5cm;
pi := 3.14159265358979;

% Plot y=cos(x)
beginfig(1);
draw (0,0)--(2u*pi,0);                                            % x-axis
draw (0,-u)--(0,u);                                               % y-axis
draw (0,u)--(2u*pi,u) dashed evenly;                              % y=1
draw (0,-u)--(2u*pi,-u) dashed evenly;                            % y=-1
draw (0,u) for i = 0 upto 360:..((pi/180)*i*u,cosd(i)*u) endfor;  % y=cos(x)
dotlabel.lft(btex $0$ etex,(0,0));                                % origin
dotlabel.lft(btex $1$ etex,(0,u));                                % (0,1)
dotlabel.lft(btex $-1$ etex,(0,-u));                              % (0,-1)
dotlabel.bot(btex $\pi$ etex,(u*pi,0));                           % (pi,0)
dotlabel.bot(btex $2\pi$ etex,(2u*pi,0));                         % (2pi,0)
endfig;

% Plot y=arccos(x)
beginfig(2);
draw (-u,0)--(u,0);                                               % x-axis
draw (0,0)--(0,u*pi);                                             % y-axis
draw (u,0)--(u,u*pi) dashed evenly;                               % x=1
draw (-u,0)--(-u,u*pi) dashed evenly;                             % x=-1
draw (u,0) for i = 0 upto 180:..(cosd(i)*u,(pi/180)*i*u) endfor;  % y=arccos(x)
dotlabel.bot(btex $0$ etex,(0,0));                                % origin
dotlabel.bot(btex $1$ etex,(u,0));                                % (1,0)
dotlabel.bot(btex $-1$ etex,(-u,0));                              % (-1,0)
dotlabel.rt(btex $\pi/2$ etex,(0,u*pi/2));                        % (0,pi/2)
dotlabel.rt(btex $\pi$ etex,(0,u*pi));                            % (0,pi)
endfig;

% Aligned vectors
beginfig(3);
drawarrow (0,0)--(u,0);
drawarrow (0,0)--(2u,0);
endfig;

% Vectors making an acute angle
beginfig(4);
drawarrow (0,0)--(u,0);
drawarrow (0,0)--(u*dir 45);
endfig;

% Orthogonal vectors
beginfig(5);
drawarrow (0,0)--(u,0);
drawarrow (0,0)--(0,u);
endfig;

% Vectors making an obtuse angle
beginfig(6);
drawarrow (0,0)--(u,0);
drawarrow (0,0)--(u*dir 135);
endfig;

% Anti-aligned vectors
beginfig(7);
drawarrow (0,0)--(u,0);
drawarrow (0,0)--(-u,0);
endfig;

beginfig(8);
drawarrow (0,0)--(3u,0);
drawarrow (0,0)--(3u*dir 60);
drawarrow (3u,0)--(3u*dir 60);
drawarrow (0.5u,0)..(0.5u*dir 30)..(0.5u*dir 60);
label.rt((btex $\Theta$ etex),(0.5u*dir 45));
label.lft((btex $a$ etex),(1.5u*dir 60));
label.bot((btex $b$ etex),(1.5u,0));
label.rt((btex $c=a-b$ etex),(3u*dir 30));
endfig;

beginfig(9);
draw (0,0)--(2u*dir 135);
draw (0,0)--(2u*dir 225);
drawarrow (0.5u*dir 135)..(0.5u*dir 180)..(0.5u*dir 225);
\label.lft((btex $\Theta$ etex),(0.5u*dir 180));
\label.ulft((btex $B(x_2,y_2)$ etex),(2u*dir 135));
\label.llft((btex $A(x_1,y_1)$ etex),(2u*dir 225));
\label.rt((btex $C(x_3,y_3)$ etex),(0,0));
\label.bot((btex $\ v$ etex),(u*dir 225));
\label.top((btex $\ w$ etex),(u*dir 135));
endfig;

end;
