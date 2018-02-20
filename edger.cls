\NeedsTeXFormat{LaTeX2e}
%\ProvidesClass{edger}[EDGER Manuscript latex template]
\LoadClass{article}[12pt]

\RequirePackage{amsmath}
\usepackage{indentfirst}
\usepackage{floatrow}
\floatsetup[table]{capposition=top}


%Set the margins of the document
\usepackage[skip=1pt,font={small,bf},labelsep=space]{caption}

%Set font to times new romain
\usepackage{fancyhdr}
\usepackage{graphicx}
\usepackage{tgtermes}
\usepackage{mathptmx}
\usepackage{lipsum}
\usepackage{etoolbox}
\usepackage{titlesec}
\usepackage{setspace}
\usepackage[linewidth=1pt,innerleftmargin=1pt]{mdframed}
\mdfdefinestyle{mdfexample1}{leftmargin=1pt,rightmargin=1pt, innerleftmargin=2pt,innerrightmargin=2pt}
\usepackage{verbatim}
\usepackage{subcaption}
\RequirePackage{natbib}
\usepackage{xcolor}
\usepackage{color}
\usepackage[margin=1in,headheight=0.5in]{geometry}
%\thispagestyle{empty}


\usepackage{caption}
\newlength\myindention
\DeclareCaptionFormat{myformat}%
{\hspace*{\myindention}#1#2#3}
\setlength\myindention{-0.5cm}
\captionsetup{format=myformat}

\newcommand{\conftitle}{The 7th International Conference on...}




%\setlength{\headheight}{12pt}




\newcommand{\shorttitle}[1]
{\chead{\small \textcolor{black}{{#1}}}}


\titlespacing{\section}{0.25in}{\parskip}{-\parskip}

% Format the title of the manuscript
\renewcommand{\title}[1]
{ \begin{center}
	\textbf{\uppercase{\large #1}}
\end{center}
}




\newcommand{\authors}[1]
{ \begin{center}
		\textbf{\large #1}
	\end{center}
}


\newcommand{\institution}
{ \begin{center}
		\textit{\large Department of Geological Sciences
\\
			The University of Texas at Austin
		}
	\end{center}
}

%\renewcommand{\absnamepos}{center}

% \patchcmd{<cmd>}{<search>}{<replace>}{<success>}{<failure>}
\renewcommand{\abstractname}{\large ABSTRACT}




\newcommand\plot[3]{
	\begin{figure}
		\centering
		\includegraphics[#2]{#1}
		\captionsetup{width=\dimexpr\textwidth-2cm\relax}
		\caption{#3}
		\label{fig:#1}
	\end{figure}
}


\newcommand\multiplot[3]{
		\centering
		\includegraphics[#2]{#1}
		\caption{#3}
		\label{fig:#1}
}

\captionsetup[figure]{labelfont={bf},name={Figure},labelsep=period}
%\renewenvironment{abstract}{ \begin{mdframed}[style=mdfexample1]  } {\end{mdframed} }


\newenvironment{edgerabstract}
{ \begin{mdframed}[style=mdfexample1] 
	\begin{abstract}
		\noindent
	\large  }
	 {
\end{abstract} 
\end{mdframed} }


%To capitalize sections and subsections
\makeatletter
\renewcommand{\section}{\@startsection {section}{1}{\z@}%
	{-3.5ex \@plus -1ex \@minus -.2ex}%
	{2.3ex \@plus .2ex}%
	{\normalfont\Large\scshape\bfseries}}

\renewcommand{\subsection}{\@startsection{subsection}{2}{\z@}%
	{-3.25ex\@plus -1ex \@minus -.2ex}%
	{1.5ex \@plus .2ex}%
	{\normalfont\large\bfseries}}

\renewcommand{\subsubsection}{\@startsection{subsubsection}{2}{\z@}%
	{-3.25ex\@plus -1ex \@minus -.2ex}%
	{1.5ex \@plus .2ex}%
	{\normalfont\normalsize\bfseries}}
\makeatother

%Defines table command
\newcommand{\tabl}[4]
{
	\begin{table}
		{#3}
		\captionsetup{width=\dimexpr\textwidth-2cm\relax}
		\caption{#2}
		\label{tabl:#1}
	\end{table}
}

\fancypagestyle{plain}{%
	\fancyhf{}
	\fancyfoot[c]{\small \thepage}
	\fancyhead[c]{\small \shorttitle}
	\renewcommand{\headrulewidth}{0pt}
	\renewcommand{\footrulewidth}{0.0pt}}

\fancypagestyle{new}{%
	\fancyhf{}
	\fancyfoot[c]{\small \thepage}
	
	\renewcommand{\headrulewidth}{0pt}
	\renewcommand{\footrulewidth}{0.0pt}}

% Sets line spacing through the document
\linespread{1.2}


%sets font size throughout
\renewcommand{\normalsize}{\large}

%Sets graphics path
\graphicspath{{./Fig/}}


\AtBeginEnvironment{thebibliography}{\linespread{1}\selectfont}
\def\bibfont{\small}
