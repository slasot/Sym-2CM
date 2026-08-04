outputformat := "pdf";
prologues := 3;

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
  C := 1/4u;

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

  label(btex $\bm+$ etex, 1/3((C,2C)+(C,u)+(u-C,u)) );
  label(btex $\bm-$ etex, 1/3((2C,C)+(u,C)+(u,u-C)) );
  label(btex $\bm0$ etex, (C,C));

  label.rt(btex $a$ etex, (u+5bp,0));
  label.lft(btex $a'$ etex, (0,u));

endfig;

end.
