\ProvidesClass{biomed-thesis}[]
\RequirePackage{ifthen}
\RequirePackage{graphicx}
\RequirePackage{datetime}
\RequirePackage{fancyhdr}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions{}
\LoadClass{book}

\pagestyle{fancy}
\def\@authoralt{}        \def\authoralt#1{\gdef\@authoralt{#1}}
\def\@authorbsc{}        \def\authorbsc#1{\gdef\@authorbsc{#1}}
\def\@placetime{}        \def\placetime#1{\gdef\@placetime{#1}}
\def\@documenttype{}        \def\documenttype#1{\gdef\@documenttype{#1}}
\def\@subtitle{}        \def\subtitle#1{\gdef\@subtitle{#1}}
\def\@institution{}     \def\institution#1{\gdef\@institution{#1}}
\def\@department{}      \def\department#1{\gdef\@department{#1}}
\def\@division{}        \def\division#1{\gdef\@division{#1}}
\def\@lab{}             \def\lab#1{\gdef\@lab{#1}}
\def\@supervisor{}             \def\supervisor#1{\gdef\@supervisor{#1}}
\def\@uppertitleback{}  \long\def\uppertitleback#1{\def\@uppertitleback{#1}}
\def\@approval{}        \long\def\approval#1{\def\@approval{#1}}
\def\@copyrightdeclaration{}        \long\def\copyrightdeclaration#1{\def\@copyrightdeclaration{#1}}
\def\@abstractgreek{}        \long\def\abstractgreek#1{\def\@abstractgreek{#1}}
\def\@acknowledgementsgreek{}        \long\def\acknowledgementsgreek#1{\def\@acknowledgementsgreek{#1}}

\def\new@tpage{\newpage\thispagestyle{empty}\null}
\setlength{\oddsidemargin}{7mm}
\setlength{\evensidemargin}{0mm}
\setlength{\textwidth}{150mm}

\setlength{\topmargin}{0mm}
\setlength{\textheight}{235mm}
\advance \topmargin by -\headheight
\advance \topmargin by -\headsep
\renewcommand{\maketitle}{
	\begin{titlepage}
	\new@tpage
		\begin{center}
	\begin{minipage}{2.5cm}
	\includegraphics[width=3cm]{images/ntua} \\
			       \end{minipage}

	\begin{minipage}{15cm}
	\begin{center}
	\textsc{\huge{\@institution} \\
		\large{\@department \\
			\@division \\
		}}
	\end{center}
	\end{minipage}

	\vfill

		\begin{center}
	\LARGE \bfseries \@title
		\end{center}
	\begin{center}
	\@subtitle
		\end{center}
	\vspace{2mm}
	\begin{center}
	\large{\@documenttype}\\
		\vspace{1mm}
	\@authoralt
		\end{center}
	\vspace{2mm}
	\hspace{1mm}
	\end{center}

	\vfill

		\begin{minipage}{15cm}
	\begin{tabbing}
	\large \@supervisor
		\end{tabbing}
	\end{minipage}
	\vspace{1mm}

	\vfill

		\begin{center}
	\textsc{\@lab}\\
		\@placetime
		\end{center}
	\cleardoublepage{}

	\new@tpage
		\noindent
		\begin{minipage}[t]{\textwidth}
	\@uppertitleback
		\end{minipage}
	\par
		\vfill
		\begin{center}
	\LARGE \bfseries \@title
		\end{center}
	\begin{center}
	\@subtitle
		\end{center}

	\begin{center}
	\large{\@documenttype}\\
		\@authoralt
		\end{center}
	\hspace{1mm}

	\vfill

		\begin{minipage}{\textwidth}
	\@approval
		\end{minipage}

	\new@tpage
		\begin{minipage}[t]{\textwidth}
	\@uppertitleback
		\end{minipage}
	\begin{minipage}{\textwidth}
	\vspace{6cm}
	\ldots\ldots\ldots\ldots\ldots\ldots\\
		\@author\\
		\@authorbsc
		\vspace{6cm}\\
		\textlatin{Copyright \copyright--All rights reserved}\ \ \@author, \the\year.\\
		\@copyrightdeclaration
		\end{minipage}
	\end{titlepage}
}

\uppertitleback{
	\begin{minipage}{2cm}
	\includegraphics[width=2.5cm]{images/ntua}
	\end{minipage}
	\hspace{0.5cm}
	\begin{minipage}{12cm}
	\@institution \\
		\@department \\
		\@division \\
		\@lab
		\end{minipage}
}

\renewcommand{\cleardoublepage}{
	\clearpage
		\ifodd\c@page\else
		\mbox{}
	\vspace{\fill}
	\vspace{5ex}
	\thispagestyle{empty}
	\newpage
		\fi
}

\renewcommand{\chaptermark}[1]{
	\markboth{\mbox{\selectlanguage{greek}\@chapapp}\ \thechapter.\ \ #1}{}
}
\renewcommand{\sectionmark}[1]{
	\markright{\thesection\ \ #1}{}
}

\fancyhf{}
\fancyhead[LE,RO]{\thepage}
\fancyhead[LO]{\slshape\nouppercase{{\rightmark}}}
\fancyhead[RE]{\slshape\nouppercase{{\rightmark}}}
\addtolength{\headheight}{2pt}
\setlength{\headwidth}{\textwidth}
\addtolength{\topmargin}{-2pt}

\let\finik@tocont\tableofcontents
\renewcommand{\tableofcontents}{
	\finik@tocont
		\addcontentsline{toc}{chapter}{\contentsname}
}

\let\finik@lof\listoffigures
\renewcommand{\listoffigures}{
	\finik@lof
		\addcontentsline{toc}{chapter}{\listfigurename}
}

\let\finik@lot\listoftables
\renewcommand{\listoftables}{
	\finik@lot
		\addcontentsline{toc}{chapter}{\listtablename}
}

\newenvironment{acknowledgements}{%
	\chapter*{\@acknowledgementsgreek}%
		\addcontentsline{toc}{chapter}{\@acknowledgementsgreek}%
}{}

\def\abstract{%
	\chapter*{\@abstractgreek\@mkboth{\@abstractgreek}{\@abstractgreek}}
	\addcontentsline{toc}{chapter}{\@abstractgreek}
}

\def\abstracteng{
	\chapter*{Abstract\@mkboth{Abstract}{Abstract}}
	\addcontentsline{toc}{chapter}{Abstract}
}

\AtEndDocument{\subparagraph{}\label{lastback}}
\endinput
