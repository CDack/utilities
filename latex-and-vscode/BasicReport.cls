\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{BasicReport}[2014/08/16 Example LaTeX class]
\LoadClass{article}

\RequirePackage{amssymb, amsmath, amsthm, cancel, multicol, epsfig, epstopdf, graphics, natbib, array}
\RequirePackage[margin=1.0in, top=1.0in, bottom=1.0in]{geometry}

% ============= Custom commands for common elements ============ % 
\newcommand{\?}{\overset{?}{=}} % Question marks on top of equals signs
\newcommand{\clt}{Central Limit Theorem }
\newcommand{\approxdot}{\overset{.}{\sim} }
% ================================================== %

% ================== Experimental Commands ================ % 
\newcommand{\e}[1]{\ensuremath{\times 10^{#1}}}
\newcommand{\ltapprox}{\overset{<}{\sim} }
\newcommand{\qlt}{\overset{?}{<} }
\newcommand{\inch}{\ensuremath{\,\textrm{in.}}}  % Something to experiment with
% ================================================= %

% =============  Commands For The Document Formatting =========== % 
% \RequirePackage{indentfirst} % Lets you indent the first paragraph of a section
% \RequirePackage{setspace}   %Allows double spacing with the \doublespacing command
% ================================================== %

% ==================  figurehere template ================== % 
%  \begin{figurehere}
%  \centering
%  \scalebox{.55}{\includegraphics{_________.eps}}
%  \caption{Description.\newline}
%  \label{fig:_______}
%  \end{figurehere} 
% ================================================== %

\RequirePackage{listings}

\RequirePackage{color}

\definecolor{mygreen}{rgb}{0,0.5,0}
\definecolor{mygray}{rgb}{0.5,0.5,0.5}
\definecolor{mymauve}{rgb}{0.58,0,0.82}

\lstset{ %
  backgroundcolor=\color{white},   % choose the background color; you must add \RequirePackage{color} or \RequirePackage{xcolor}
  basicstyle=\footnotesize,        % the size of the fonts that are used for the code
  breakatwhitespace=false,         % sets if automatic breaks should only happen at whitespace
  breaklines=true,                 % sets automatic line breaking
  captionpos=b,                    % sets the caption-position to bottom
  commentstyle=\color{mygreen},    % comment style
  deletekeywords={...},            % if you want to delete keywords from the given language
  escapeinside={\%*}{*)},          % if you want to add LaTeX within your code
  extendedchars=true,              % lets you use non-ASCII characters; for 8-bits encodings only, does not work with UTF-8
  frame=none,                    % adds a frame around the code
  keepspaces=true,                 % keeps spaces in text, useful for keeping indentation of code (possibly needs columns=flexible)
  keywordstyle=\color{blue},       % keyword style
  language=matlab,                 % the language of the code
  morekeywords={*,...},            % if you want to add more keywords to the set
  numbers=none,                    % where to put the line-numbers; possible values are (none, left, right)
  numbersep=5pt,                   % how far the line-numbers are from the code
  numberstyle=\tiny\color{mygray}, % the style that is used for the line-numbers
  rulecolor=\color{black},         % if not set, the frame-color may be changed on line-breaks within not-black text (e.g. comments (green here))
  showspaces=false,                % show spaces everywhere adding particular underscores; it overrides 'showstringspaces'
  showstringspaces=false,          % underline spaces within strings only
  showtabs=false,                  % show tabs within strings adding particular underscores
  stepnumber=2,                    % the step between two line-numbers. If it's 1, each line will be numbered
  stringstyle=\color{mymauve},     % string literal style
  tabsize=2,                       % sets default tabsize to 2 spaces
  title=\lstname                   % show the filename of files included with \lstinputlisting; also try caption instead of title
}

\RequirePackage{fancyhdr} % Headers and footers
\pagestyle{fancy} % All pages have headers and footers
\fancyhead{} % Blank out the default header
\fancyfoot[C]{\thepage} % Custom footer text


\makeatletter
\newenvironment{figurehere}
  {\def\@captype{figure}}
  {}
\makeatother

%JSON Formatting
\usepackage{listings}
\usepackage{xcolor}

\colorlet{punct}{red!60!black}
\definecolor{background}{HTML}{EEEEEE}
\definecolor{delim}{RGB}{20,105,176}
\colorlet{numb}{magenta!60!black}

\lstdefinelanguage{json}{
    basicstyle=\normalfont\ttfamily,
    numbers=left,
    numberstyle=\scriptsize,
    stepnumber=1,
    numbersep=8pt,
    showstringspaces=false,
    breaklines=true,
    frame=lines,
    backgroundcolor=\color{background},
    literate=
     *{0}{{{\color{numb}0}}}{1}
      {1}{{{\color{numb}1}}}{1}
      {2}{{{\color{numb}2}}}{1}
      {3}{{{\color{numb}3}}}{1}
      {4}{{{\color{numb}4}}}{1}
      {5}{{{\color{numb}5}}}{1}
      {6}{{{\color{numb}6}}}{1}
      {7}{{{\color{numb}7}}}{1}
      {8}{{{\color{numb}8}}}{1}
      {9}{{{\color{numb}9}}}{1}
      {:}{{{\color{punct}{:}}}}{1}
      {,}{{{\color{punct}{,}}}}{1}
      {\{}{{{\color{delim}{\{}}}}{1}
      {\}}{{{\color{delim}{\}}}}}{1}
      {[}{{{\color{delim}{[}}}}{1}
      {]}{{{\color{delim}{]}}}}{1},
}