% lab.cls
% 2012-Sep-10 Jim Hefferon jhefferon@smcvt.edu

% --- Class structure: identification part
% ---
\ProvidesClass{lab}[2012/09/10 version 0.01 Class style for lab manual]
\NeedsTeXFormat{LaTeX2e}

% --- Class structure: initial code part
% ---


% --- Class structure: declaration of options part
% ---

\RequirePackage{etoolbox}
% Package options: final, notfinal
%  Do not generate the Sage output fresh, but instead take it from the 
% .result files.
\newtoggle{generatesagelab}  % from etoolbox
\toggletrue{generatesagelab}                        
\DeclareOption{generatesage}{\toggletrue{generatesagelab}}   % default 
\DeclareOption{notgeneratesage}{\togglefalse{generatesagelab}}

% This class extends the book class
% Read all the documentclass options; pass them to book
\PassOptionsToClass{11pt}{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}

% --- Class structure: execution of options part
% ---
\ProcessOptions \relax
\iftoggle{generatesagelab}{%
  \PassOptionsToPackage{generatesage}{sageoutput}
}{%
  \PassOptionsToPackage{notgeneratesage}{sageoutput}
}

% --- Class structure: declaration of options part
% ---
\LoadClass{book}

% --- Class structure: main code part
% ---

\usepackage{../linalgjh}
% Set the fonts
\usepackage{conc}

\RequirePackage{amsmath}
\RequirePackage{amsmath,amsthm,amssymb}
\newtheorem{thm}{Theorem}
\newtheorem{lem}[thm]{Lemma}    % numbered in sequence with thm	 
\newtheorem{cor}[thm]{Corollary}	

\usepackage{fontspec}
\setmainfont[Ligatures=TeX,  % CM-Super
             Path = /usr/local/texlive/2012/texmf-dist/fonts/type1/public/cm-super/,
             ItalicFont = sfoti10.pfb,
             SmallCapsFont = sfocc10]{sform10.pfb}
\setsansfont{Computer Modern Sans Serif Demi Condensed}
% \setmonofont[Path=/usr/local/texlive/texmf-local/fonts/type1/bh/luxi/,
%              Scale=0.87]{ul9r8a.pfb}  % Luxi Mono Regular
% \setmonofont[Path=/usr/local/texlive/texmf-local/fonts/type1/bh/luxi/,
%                Scale=0.87]{ul9r8a.pfb}  % Luxi Mono Regular
% \setmonofont[Path=fonts/tmp/,
%              Scale=MatchLowercase]{lmmono10-regular.otf}  % Latin Modern Mono Regular
% \setmonofont[Path=fonts/tmp/,
%              Scale=MatchLowercase]{texgyrecursor-regular.otf}  % TeX Gyre Cursor Regular
% \setmonofont[Path=fonts/tmp/,
%              Scale=MatchLowercase]{VerilySerifMono.otf}  % Verily Serif Mono
% \setmonofont[
%              Scale=MatchLowercase]{Andale Mono}  
\setmonofont[
             Scale=MatchLowercase]{Courier New}  
% font for code listings
\newfontfamily\listingsfont[Path=fonts/,
                                  Scale=1]{ProggyClean.ttf}
\newfontfamily\listingsinlinefont[Path=fonts/,
                                  Scale=MatchLowercase]{ProggyClean.ttf}
\newfontfamily\luximono[Path=/usr/local/texlive/texmf-local/fonts/type1/bh/luxi/,
                        ItalicFont = ul9ro8a.pfb,
                        BoldFont = ul9b8a.pfb]{ul9r8a.pfb}
\newfontfamily\berasans[Path=/usr/local/texlive/2012/texmf-dist/fonts/type1/public/bera/,
                        BoldFont = fvsb8a.pfb]{fvsr8a.pfb}
\newfontfamily\berasansx[Path=/usr/local/texlive/2012/texmf-dist/fonts/type1/public/bera/,
                        BoldFont = fvsb8a.pfb,
                        Scale = MatchLowercase]{fvsr8a.pfb}
% \newfontfamily\latinmodernmono[Path=fonts/tmp/,
%               Scale=MatchLowercase]{lmmono10-regular.otf}
% \newfontfamily\texgyrecursor[Path=fonts/tmp/,
%               Scale=MatchLowercase]{texgyrecursor-bold.otf}


\usepackage[math-style=upright]{unicode-math} % see http://tex.stackexchange.com/questions/50995/font-mixup-with-neo-euler-and-fontspec
\setmathfont[Path=/usr/local/texlive/texmf-local/fonts/opentype/euler/]{euler.otf}
\AtBeginDocument{\DeclareMathAlphabet\mathbf{U}{eur}{b}{n}} % fontspec manual p. 11; doesn't seem to do anything.
\setmathfont[range=\mathbb,
             Path=/usr/local/texlive/2012/texmf-dist/fonts/type1/public/amsfonts/symbols/]{msbm10.pfb}	

% \newfontfamily\lcircleone[Path=/usr/local/texlive/2012/texmf-dist/fonts/type1/public/amsfonts/latxfont/]{lcircle1.pfb}
% \newcommand{\lcircleonedot}{\lcircleone \char"119}

% \RequirePackage[pdfpagemode=FullScreen]{hyperref}

% Have the Sage output generated on the fly to guarantee accuracy
% \RequirePackage{sageoutput/sageoutput}
% The same for python output 
% \RequirePackage{sageoutput/python}
\RequirePackage{reploutput}
% Make a file for improved graphics
% \RequirePackage{append}
% \newcommand{\graphicsfn}{reploutput/improvedgraphics.sage}
% \immediate\openout\appendwrite=\graphicsfn\relax
% \immediate\write\appendwrite{\filecontent #2}%
% \immediate\closeout\appendwrite


\RequirePackage{hyperref}
\hypersetup{
    bookmarks=false,         % show bookmarks bar?
    % unicode=false,          % non-Latin characters in Acrobat’s bookmarks
    pdftoolbar=true,        % show Acrobat’s toolbar?
    pdfmenubar=true,        % show Acrobat’s menu?
    % pdffitwindow=true,     % window fit to page when opened
    pdfstartview={FitH},    % fits the width of the page to the window
    pdftitle={Lab Manual for Linear Algebra},    % title
    pdfauthor={Jim Hefferon},     % author
    pdfsubject={Linear Algebra},   % subject of the document
    pdfcreator={Jim Hefferon},   % creator of the document
    pdfproducer={xelatex}, % producer of the document
    pdfkeywords={Linear Algebra} {mathematics} {textbook} {Sage} {Free} {Hefferon} {lab},  % list of keywords
    pdfnewwindow=true,      % links in new window
    colorlinks=true,       % false: boxed links; true: colored links
    linkcolor=blue,          % color of internal links
    citecolor=blue,        % color of links to bibliography
    filecolor=blue,      % color of file links
    urlcolor=blue           % color of external links
}
% Change the font for URL's
\def\UrlFont{\normalfont}

% \RequirePackage{color}
\RequirePackage[usenames,dvipsnames]{xcolor}
  \definecolor{darkcolor}{HTML}{193E9A}  % 
  \definecolor{boldcolor}{HTML}{0034B7}  % 
  \definecolor{lightcolor}{HTML}{DAE4FC} % {799FFC}  % 
  \definecolor{bgcolor}{HTML}{FCFFDC}  %  
  \definecolor{flourishcolor}{HTML}{F80018}  %

% Fix bug in xetex: prevent color changes on pages with Sage graphics;
% see http://tex.stackexchange.com/questions/60315/text-appearing-bold-on-some-pages-with-images
\usepackage{eso-pic}
\AddToShipoutPicture{%
% \makeatletter%
\special{pdf: put @thispage <</Group << /S /Transparency /I true /CS /DeviceRGB>> >>}%
% \makeatother%
}


\RequirePackage{graphicx}
\RequirePackage{url}
\RequirePackage{lipsum}


\usepackage{sagetex} % has to come before listings because defines some stuff
%------------------------- code listings
\definecolor{pythoncolor}{HTML}{BCD4CE}   
\definecolor{latexrulecolor}{HTML}{E6E6E6}   
\definecolor{rulecolor}{HTML}{3D2B22}   
\definecolor{shellcolor}{HTML}{D1A298}  
\RequirePackage{listings}
% make hyphens show up as hyphens; http://tex.stackexchange.com/a/33188
\makeatletter
  \def\lst@filenamerpl{_\textunderscore $\textdollar} % keep emacs's coloring: $
  \lst@CCPutMacro\lst@ProcessOther {"2D}{\lst@ttfamily{-{}}{-{}}}
  \@empty\z@\@empty
\makeatother
\lstloadlanguages{TeX,bash,Python}
\lstset{basicstyle=\listingsfont,
   lineskip=-.25ex,
   % aboveskip=\medskipamount,
   % belowskip=\medskipamount,
   showstringspaces=false,
   xleftmargin=0pt,                      
   numberfirstline=true,           % first line gets numbered always
   numbers=left,                   % where to put the line-numbers
   numberstyle=\tiny\color{gray},  % the style that is used for the line-numbers
   stepnumber=1,                   % the step between two line-numbers.
   numbersep=5pt,                  % how far the line-numbers are from the code
   backgroundcolor=\color{pythoncolor},  % choose the background color. You must add \usepackage{color}
   showspaces=false,               % show spaces adding particular underscores
   showstringspaces=false,         % underline spaces within strings
   showtabs=false,                 % show tabs within strings adding particular underscores
   % frame=single,                   % adds a frame around the code
   rulecolor=\color{rulecolor},        % if not set, the frame-color may be changed on line-breaks within not-black text (e.g. commens (green here))
   tabsize=2,                      % sets default tabsize to 2 spaces
}
\lstdefinestyle{inline}{basicstyle=\listingsinlinefont,texcl=true}
\lstdefinestyle{shell}{backgroundcolor=\color{shellcolor}}
\lstdefinestyle{python}{backgroundcolor=\color{pythoncolor},
  language=Python,
  identifierstyle=\listingsfont,
  commentstyle=\listingsfont,
  stringstyle=\listingsfont,
  keywordstyle=\listingsfont,
  }
\lstdefinestyle{latex}{
  language=[LaTeX]TeX,                % the language of the code
}

% Page layout
\RequirePackage[left=1in,right=1in,top=1in,bottom=1in,
                head=13.6pt]{geometry}

\RequirePackage{fancyhdr}
\fancypagestyle{preface}{%
  \fancyhf{} % clear all six fields
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
}
\fancypagestyle{firstpage}{%
  \fancyhf{} % clear all six fields
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
}
\fancypagestyle{followingpage}{%
  \fancyhf{} % clear all six fields
  \fancyhead[RE]{{\berasansx \nouppercase{\leftmark}}}
  \fancyhead[LO]{{\berasansx Section: \nouppercase{\rightmark}}}
  \fancyhead[LE,RO]{{\berasansx Page \thepage}}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
}

\pagestyle{followingpage}
\renewcommand{\chaptermark}[1]{\markboth{\chaptername:\ #1}{}}
\AtBeginDocument{\thispagestyle{firstpage}}

% Bibliography
\usepackage[square,colon]{natbib}
% Change the look of footnotes
\usepackage[perpage,para]{footmisc}
% Change horiz room between fn mark and fn hskip from .5em 
% Suggested to RF making this settable
\makeatletter
\long\def\@makefntext#1{\leavevmode
\@makefnmark\nobreak
\hskip.05em\relax#1%
}

% Sectioning
% \@startsection{<type>}{<level>}{<indent>}{<beforeskip>}{<afterskip>}{<style>}
% <type>
%    One of: section, subsection, subsubsection, paragraph or subparagraph. 
%    No backslash.
% <level>
%     Sectioning level:
%       chapter 0
%       section 1
%       subsection 2
%       subsubsection 3
%       paragraph 4
%       subparagraph 5
% <indent>
%     A length specifying the indentation from the left margin.
% <beforeskip>
%     The absolute value is how much vertical distance to leave before the 
%     heading. If <beforeskip> negative then the first paragraph will not 
%     be indented.
% <afterskip>
%     The absolute value is how much vertical distance to leave after the 
%     heading. If <afterskip> is negative, the text following the sectioning 
%     command will appear on the same level as the section heading.
% <style>
%     Set the style of the heading (e.g. \itshape for an italic heading). The 
%     last command in <style> may take a single argument but all the others 
%     must be declarations.

\newsavebox{\chapterrule}
\savebox{\chapterrule}{\colorbox{red}{\makebox[\textwidth][l]{\rule{0em}{0.6pt}}}}
% \savebox{\chapterrule}{\setlength{\fboxsep}{0pt}\colorbox{red}{dddd\makebox[.5\textwidth]{\rule{0em}{6pt}}}}
% \colorbox{red}{\makebox[0em][l]{\rule[-.15in]{\textwidth}{.6pt}}}}

% \renewcommand{\chapter}{\@startsection
% {chapter}%                   % the name
% {1}%                         % the level
% {0em}%                       % the indent
% {-4in}%            % the before skip was: {-2.5\baselineskip}
% {2.0\baselineskip}%          % the after skip
% {\noindent\makebox[0em][l]{\raisebox{-7.5pt}{\setlength{\fboxsep}{0pt}\colorbox{red}{\makebox[\textwidth][l]{\rule{0em}{0.6pt}}}}}\berasans\Huge\bfseries}} % the style

%---------------------------------------------
% Modified slightly from ../bookconcretejh.sty
% for clearing out (needs twoside document option).
\newcommand{\clearemptydoublepage}{%
  \clearpage{\pagestyle{empty}\cleardoublepage}}

\def\@makechapterhead#1{\clearemptydoublepage
  % Grab the name of the chapter.  Has to go here, not in \chapter, since
  % that macro does not take an argument.
  % \gdef\sectioningname{#1} 
  % Below here is where the chapter heading is formatted
  \vspace*{80pt plus 10pt minus 8pt} % was 50\p@ 
  {\parindent \z@ \raggedright \normalfont
    \ifnum \c@secnumdepth >\m@ne
      \if@mainmatter
        % \huge\bfseries \@chapapp\space \thechapter
        {\setlength{\fboxsep}{0pt}\colorbox{flourishcolor}{\makebox[\textwidth]{\rule{0em}{0.6pt}}}} \\[-5ex]
        % \selectfont\Large\textcolor{boldcolor}{\fancyfont{ \@chapapp{} \thechapter}}
        \par\nobreak
        \vskip 0\p@
      \fi
    \par
    \vskip 0\p@ \fi %was 20\p@
    \interlinepenalty\@M
    % \Huge \bfseries \usefont{T1}{fvs}{b}{n}\Huge\textcolor{black}{#1}\par\nobreak
    {\berasans\Huge\bfseries #1}
    \vspace{40pt plus 5pt minus 3pt}
    % \vskip 50\p@  % was 30\p@
  }}

% For starred chaters
\def\@makeschapterhead#1{%
  \vspace*{75pt plus 10pt minus 8pt} % was: \vspace*{50\p@}%
  {\parindent \z@ \raggedright
    \normalfont
    \interlinepenalty\@M
    % \usefont{T1}{fvs}{b}{n}\Huge\textcolor{black}{#1} \\[-1.75ex] 
    {\berasans\Huge\bfseries #1} \\[-1.75ex]
    {\setlength{\fboxsep}{0pt}\colorbox{flourishcolor}{\makebox[\textwidth]{\rule{0em}{0.6pt}}}}\par\nobreak
    \vspace{40pt plus 5pt minus 3pt}
    % \vskip 40\p@
  }}
%---------------------------------------------




\renewcommand{\section}{\@startsection
{section}%                   % the name
{2}%                         % the level
{0em}%                       % the indent
{-2.5\baselineskip}%            % the before skip
{0.5\baselineskip}%          % the after skip
{\berasans\large\bfseries}} % the style

\renewcommand{\subsection}{\@startsection
{subsection}%                   % the name
{3}%                         % the level
{0em}%                       % the indent
{-1\baselineskip}%            % the before skip
{-0.8em}%          % the after skip
{\berasansx\bfseries}} % the style
% \renewcommand{\thesub}{}

% Depth to with sections numbering is shown?
\setcounter{secnumdepth}{0}

% Table of Contents
\RequirePackage{tocloft}
\setcounter{tocdepth}{0}
\tocloftpagestyle{empty}
\setlength{\cftbeforetoctitleskip}{20ex}  % page head vert sizes
\setlength{\cftaftertoctitleskip}{5ex}
\renewcommand{\cfttoctitlefont}{\berasans\Large\bfseries} % font in page head
\renewcommand{\cftchapdotsep}{\cftdotsep} 
\setlength{\cftbeforechapskip}{.2ex}   % vert space between chap lines
\setlength{\cftchapnumwidth}{0em}  % omit chapter numbers
\renewcommand{\cftchappresnum}[1]{\relax}


% Dashes, lifted from ltugboat.cls
\def\thinskip{\hskip 0.16667em\relax}
\def\endash{--}
\def\emdash{\endash-}
\def\d@sh#1#2{\unskip#1\thinskip#2\thinskip\ignorespaces}
\def\dash{\d@sh\nobreak\endash}
\def\Dash{\d@sh\nobreak\emdash}
\def\ldash{\d@sh\empty{\hbox{\endash}\nobreak}}
\def\rdash{\d@sh\nobreak\endash}
\def\Ldash{\d@sh\empty{\hbox{\emdash}\nobreak}}
\def\Rdash{\d@sh\nobreak\emdash}

\usepackage{../linalgjh}
\AtBeginDocument{\def\Re{\mathbb{R}}}

\newcommand{\pgm}[1]{\texttt{#1}}
\newcommand{\pkg}[1]{\textit{#1}}
\newcommand{\keyboardkey}[1]{\textit{$\langle$#1\,$\rangle$}}
\newcommand{\Sage}{Sage}
\newcommand{\Sagecmd}[1]{\texttt{#1}}
\newcommand{\python}{Python}
\newcommand{\pythoncmd}[1]{\texttt{#1}}
\newcommand{\inlinecode}[1]{\hspace{0.1em}\lstinline[style=inline]!#1!\hspace{0.1em}}

