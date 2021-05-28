\LoadClass[a4paper,12pt]{article} % Classe du document


%% Informations générales
\ProvidesPackage{PackagerQualityN}

%% Chargement des extensions
\RequirePackage{natbib}
\RequirePackage[french]{babel} %Langue du document
\RequirePackage[utf8]{inputenc} %Caractères spéciaux
\RequirePackage[section]{placeins}%Pour placement de section
\RequirePackage[T1]{fontenc} %Quelques lettres qui sont pas inclus dans UTF-8
\RequirePackage{mathtools} %Paquet pour des équations et symboles mathématiques
\RequirePackage{siunitx} %Pour écrire avec la notation scientifique (Ex.: \num{2e+9})
\RequirePackage{float} %Pour placement d'images
\RequirePackage{graphicx} %Paquet pour insérer des images
\RequirePackage[justification=centering]{caption} %Pour les légendes centralisées
\RequirePackage{subcaption}
\RequirePackage{wallpaper}
\RequirePackage{nomencl}
%\makenomenclature
\RequirePackage{fancyhdr}
%\pagestyle{fancy}
%\fancyheadoffset{1cm}
%\setlength{\headheight}{2cm}
\RequirePackage[hyphens]{url}
\RequirePackage[hidelinks]{hyperref}%Paquet pour insérer légendes dans des sous-figures comme Figure 1a, 1b
\RequirePackage[left=2cm,right=2cm,top=2.5cm,bottom=3.5cm]{geometry} %Configuration de la page
\RequirePackage{changepage}
\RequirePackage{fancyhdr}
\RequirePackage{pdftricks2}
\RequirePackage{enumitem}
\RequirePackage[retainorgcmds]{IEEEtrantools}
\numberwithin{equation}{section}
\RequirePackage{xcolor}
\RequirePackage{amsfonts}
\RequirePackage{times}
\RequirePackage{appendix}

%% Déclaration des options
\DeclareOption{option}{...}
\DeclareOption*{...}
\ProcessOptions


%% Définition des commandes

\newcommand{\img}[4]{
    \begin{figure}[H]
    \centering
    \includegraphics[scale=#3]{#1}
    \caption{#2}
    \end{figure}
}



\newcommand{\newp}{
\newpage
\makenomenclature
\pagestyle{fancy}
\fancyheadoffset{0.20cm}
\setlength{\headheight}{1cm}
\lhead{IUT - R\&T} %Affichage de l'image au top de la page
%\chead{} %Affichage de l'image au top de la page
\rhead{Thales Alenia space}
\rfoot{\thepage}
\cfoot{}
\lfoot{Projet tuteuré - Projet Robot}
}



\newcommand{\imgNofig}[2]{
    \begin{figure}[hb]
    \centering
    \includegraphics[scale=#2]{#1}
    \end{figure}
}






%% Fin du package
\endinput





