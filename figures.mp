outputformat := "eps";
prologues := 3;
outputtemplate := "%j-%c.eps";


verbatimtex
%&latex
\documentclass{article}
\usepackage{amsmath}
\usepackage{bm}
\begin{document}
etex

beginfig(1);

  numeric u, C;
  u := 5cm;
  C := 1/5u;

  pickup pencircle scaled 1.5pt;

  drawarrow (0,0) -- (u+3bp,0);
  drawarrow (0,0) -- (0,u+3bp);

%  draw (C,-1bp) -- (C,1bp);
%  draw (-1bp,C) -- (1bp,C);

%  label.bot(btex $C$ etex, (C,0));
%  label.lft(btex $C$ etex, (0,C));
%  label.bot(btex $x$ etex, (u+3bp,0));
%  label.lft(btex $y$ etex, (0,u+3bp));

  draw (C,2C) -- (C,u);
  draw (2C,C) -- (u,C);
  draw (C,2C) -- (u-C,u);
  draw (2C,C) -- (u,u-C);

  pickup pencircle scaled 1pt;

  withdots := dashpattern(off 1/20*C on 0 off 1/20*C);
  draw (2C,C) -- (2C,0) dashed withdots;
  draw (2C,C) -- (0,C)  dashed withdots;
  draw (C,2C) -- (0,2C) dashed withdots;
  draw (C,2C) -- (C,0)  dashed withdots;

  label.ulft(btex $C$ etex, (C,0));
  label.ulft(btex $2C$ etex, (2C,0));
  label.lft(btex $C$ etex, (0,C));
  label.lft(btex $2C$ etex, (0,2C));


%  label(btex $\bm+$ etex, 1/3((C,2C)+(C,u)+(u-C,u)) );
%  label(btex $\bm-$ etex, 1/3((2C,C)+(u,C)+(u,u-C)) );
%  label(btex $0$ etex, (1/2C,1/2C));
%  label(btex $0$ etex, (3C,3C));
%  label(btex $0$ etex, (.5C,3C));
%  label(btex $0$ etex, (3C,.5C));

%  my_label := thelabel(btex \tiny $0$ etex, (C,C));
% Erase/unfill the background area behind the label
%  unfill bbox my_label;
% Draw the label text over the white background
%  draw my_label;


  picture my_label;

  for i = .5 step .5 until u/C:
    for j = .5 step .5 until u/C:
      if ((i*C < C) or (j*C < C) or (abs(i-j)*C < C)):
        %label(btex \tiny $0$ etex, (i*C,j*C));
        my_label := thelabel(btex \tiny $0$ etex, (i*C,j*C));
        unfill bbox my_label;
        draw my_label;
      fi;

      if (i > 1) and (j > i+1):
        label(btex \tiny $+$ etex, (i*C,j*C));
      fi;

      if (j > 1) and (i > j+1):
        label(btex \tiny $-$ etex, (i*C,j*C));
      fi;
    endfor;
  endfor;

  label.rt(btex $a$ etex, (u+5bp,0));
  label.lft(btex $a'$ etex, (0,u));

endfig;

end.
