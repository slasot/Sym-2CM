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

  numeric u, C, ca, cb;
  u := 5cm;
  C := 1/5u;
  ca := 0.9;
  cb := 1 - ca;

  fill (0,C) -- (u-C,u) -- (0,u) -- cycle withcolor ca*white+cb*green;
  fill (C,0) -- (u,u-C) -- (u,0) -- cycle withcolor ca*white+cb*blue;
  fill (0,0) -- (0,C) -- (u-C,u) -- (u,u) -- (u,u-C) -- (C,0) -- cycle withcolor ca*white;

  pickup pencircle scaled 1.5pt;

  drawarrow (0,0) -- (u+3bp,0);
  drawarrow (0,0) -- (0,u+3bp);

  draw (0,C) -- (u-C,u);
  draw (C,0) -- (u,u-C);

  label(btex $\Longrightarrow_+$ etex, 1/3.5((0,C)+1.5*(0,u)+(u-C,u)) );
  label(btex $\Longrightarrow_-$ etex, 1/3.5((C,0)+1.5*(u,0)+(u,u-C)) );
  label(btex $\Longrightarrow_0$ etex, 1/2(u,u) );

  label.ulft(btex $C$ etex, (C,0));
  label.lft(btex $C$ etex, (0,C));

  label.rt(btex $a$ etex, (u+5bp,0));
  label.lft(btex $a'$ etex, (0,u));

endfig;

end.
