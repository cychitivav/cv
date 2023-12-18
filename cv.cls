%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Developer CV LaTeX Template
% LaTeX Class
% Version 1.0 (12/10/2023)
%
% Authors:
% Cristian Chitiva <cychitivav@unal.edu.co>
%
% Author of the base template:
% Omar Roldan
%
% License:
% The MIT License (see included LICENSE file)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ----------------------------------------------
% CLASS CONFIGURATION
% ----------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[2023/10/12 Developer CV class v2.0]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{extarticle}} % Pass through any options to the base class
\ProcessOptions\relax % Process given options

\LoadClass{extarticle} % Load the base class

% ----------------------------------------------
% PACKAGES AND OTHER DOCUMENT CONFIGURATIONS
% ----------------------------------------------

\setlength{\parindent}{0mm} % Suppress paragraph indentation

\usepackage[hidelinks]{hyperref} % Required for links but hide the default boxes around links

\pagestyle{empty} % No headers or footers

\usepackage{multicol} % Required for multiple columns layout
\setlength{\columnsep}{2em}

% ----------------------------------------------
% PAGE LAYOUT
% ----------------------------------------------

\usepackage{geometry} % Required for adjusting page dimensions and margins

\geometry{
	paper=letterpaper, % Paper size, change to letterpaper for US letter size
	margin=1.6cm, % Top margin
	% showframe % Uncomment to show how the type block is set on the page
}

% ----------------------------------------------
% FONTS
% ----------------------------------------------

\usepackage[utf8]{inputenc} % Required for inputting international characters
\usepackage[T1]{fontenc} % Output font encoding for international characters

% -----------------------------------------------
% LINKS
% -----------------------------------------------

\usepackage[fixed]{fontawesome5} % Required for FontAwesome icons
\usepackage{setspace} % Required for adjusting line spacing
\usepackage{color} % Required for custom colors

% Command to output an icon in a black square box with text to the right
\newcommand{\link}[2]{% The first parameter is the FontAwesome icon name, the second is the box size and the third is the text
	\begin{spacing}{1.1}
		{\textcolor{black}{\normalsize\csname fa#1\endcsname}}% Icon
		\hspace{0.5em}% Whitespace
		\textcolor{black}{\normalsize#2}% Text
	\end{spacing}
}

\usepackage{calc} % Required for calculating the width of text blocks

\usepackage[none]{hyphenat} % Suppress text hyphenation

% ----------------------------------------------
% SECTIONS
% ----------------------------------------------
\usepackage[explicit]{titlesec} % Required for customizing the section title

\def\Vhrulefill{\leaders\hrule height0.7ex depth\dimexpr0.4pt-0.7ex\hfill} % Horizontal middle rule fill macro

\titleformat{\section}
{\LARGE\bfseries\MakeUppercase}
{\thesection.}
{1em}
{#1\hspace{1em}\Vhrulefill}

\titleformat{\subsection} [runin]
{\large\bfseries}
{}
{0em}
{#1:}

% ----------------------------------------------
% CUSTOM TITLE
% ----------------------------------------------

\newcommand{\name}[1]{\author{#1}}
\newcommand{\headline}[1]{\title{#1}}

\renewcommand{\maketitle}{
	\Huge\textbf{\@author} \newline
	\LARGE{\@title}
}

% ----------------------------------------------
% ENTRY LIST
% ----------------------------------------------
\usepackage{enumitem} % Required for manipulating lists
\setlist[itemize]{noitemsep, partopsep=0pt, topsep=0pt}

\newenvironment{entrylist}
{
	\begin{itemize}[leftmargin=0cm, label={}, itemsep=4ex]
		}{
	\end{itemize}
}

\newcommand{\entry}[5]{
	\item
	\Large\textbf{#1} \hfill \normalsize#2 \\
	\large\textit{#3} \hfill #4
	\par\normalsize#5
}

% ----------------------------------------------
% FOOTER
% ----------------------------------------------
\usepackage{fancyhdr} % Required for footer

\pagestyle{fancy}
\fancyhf{}

\newcommand{\makefooter}{
	\lfoot{\the\year} % Left footer text
	\cfoot{\@author~~~·~~~Résumé} % Centre footer text
	\rfoot{\LaTeX{}} % Right footer text
}


