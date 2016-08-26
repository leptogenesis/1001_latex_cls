\NeedsTeXFormat{LaTeX2e} 
\ProvidesClass{tub1001}[2016/07/16 class to create application forms for TUBITAK 1001]
\LoadClass{article}
\RequirePackage{enumerate}
\renewcommand{\familydefault}{\sfdefault}
\RequirePackage{tikz}
\usetikzlibrary{positioning}
\RequirePackage[utf8]{inputenc}
\RequirePackage{tcolorbox}
\RequirePackage{pdflscape}
\RequirePackage{xinttools}
%\RequirePackage{xstring}
\RequirePackage{tabularx}
\RequirePackage{colortbl}
\RequirePackage{multirow}
\RequirePackage{atbegshi}
\RequirePackage{natbib}
\RequirePackage{tikzpagenodes}
\tcbuselibrary{most,breakable}
%\tcbset{enhanced, frame engine=path, frame style={line width=5pt}}
%\tcbsetforeverylayer{enhanced, 

\tcbset{common/.style={freelance,%spartan, 
			%skin first=enhanced, skin middle=enhanced, skin last=enhanced, 
				left=0mm,
				top=0mm,
				breakable=unlimited,
				colback=white,
				colframe=black, 
				sharp corners,
				segmentation style={black,solid, shorten <= -\parindent, shorten >= \parindent},
				frame engine=path,
				frame code={\path[draw,line width=1] (interior.north west) rectangle (interior.south east);},
				extras last={frame code={\path[draw,line width=1] (interior.north west) rectangle (interior.south east);}},
				extras first={frame code={\path[draw,line width=1] (interior.north west) rectangle (interior.south east);}},
				extras middle={frame code={\path[draw,line width=1] (interior.north west) rectangle (interior.south east);}},
				parbox=false,
				}
			}
			
\addtolength{\oddsidemargin}{-3.0cm}
\addtolength{\evensidemargin}{-3.0cm}
\addtolength{\topmargin}{-1.7cm}
\addtolength{\textheight}{35mm}
\addtolength{\textwidth}{6cm}

\RequirePackage{helvet}

\RequirePackage{titlesec}
\titleformat{\subsection}[block]{\normalfont\fontsize{9}{15}\selectfont\bfseries\bf\hspace*{1em}\thesubsection.}{}{1em}{} 
\titleformat{\subsubsection}[block]{\normalfont\fontsize{9}{15}\selectfont\bfseries\bf\hspace*{4em}\thesubsubsection.}{}{1em}{} 
\titleformat{\section}{\normalfont\fontsize{9}{15}\selectfont\bfseries}{\thesection.}{1em}{}

\newif\ifform  
\renewcommand\bibsection{\noindent{\bf Ek-1: Kaynaklar} \vspace*{1em}}

  
\newcolumntype{b}{X}
\newcolumntype{s}{>{\hsize=.5\hsize}X}

\fontsize{9pt}{12pt}\selectfont
\pagestyle{empty}

\newcommand{\Footer}{\def\guncellemetarihi{\ifform 08/01/2016 \else 27/05/2013 \fi} \begin{tikzpicture}[overlay,remember picture] \node [help lines, scale=0.8] at ([xshift=3cm, yshift=-4mm]current page footer area.north west) {\fontfamily{times}\selectfont1001BF-01 Güncelleme Tarihi: \guncellemetarihi} ; \end{tikzpicture}}
\newcommand{\Header}{\ifform\begin{tikzpicture}[overlay,remember picture] \node at ([xshift=0mm, yshift=0mm]current page header area.south) {\includegraphics[width=7.7mm, height=10.4mm]{logo.png}}; \end{tikzpicture}\fi}
\AtBeginShipout{\AtBeginShipoutAddToBox{\Header\Footer}}
%\AtBeginShipoutFirst{\Header\Footer}

\newenvironment{basvuruformu}%
{%
\global\let\ifform\iftrue
\renewcommand{\baselinestretch}{0.5}
\begin{center}
\begin{tabularx}{\textwidth}{X}
%\rowcolor{lightgray}\multicolumn{1}{c}{{\bf 
\rowcolor{lightgray}\hspace*{\fill}
\hspace*{\fill}\fontsize{11pt}{12pt}\selectfont \bf 1001 – BİLİMSEL VE TEKNOLOJİK ARAŞTIRMA PROJELERİNİ DESTEKLEME PROGRAMI\hspace*{\fill}
%}}
\end{tabularx} \vspace*{0.2em}

\fontsize{8pt}{12pt}\selectfont
\textcolor{red}{ \bf Başvurunun~bilimsel~değerlendirmeye~alınabilmesi~için,~Arial~9~yazı~tipinde~hazırlanması~ve \\
toplamda 20 sayfayı geçmemesi gerekmektedir. (EK-1 ve EK-2 hariç) } \vspace*{1.5em}

\fontsize{7pt}{12pt}\selectfont
\bf Araştırma proje önerisi değerlendirme formuna \\
\textcolor{blue}{\bf http://www.tubitak.gov.tr/tubitak\_content\_files/ARDEB/destek\_prog/danisman\_panelist/DA\_Panelist\_Proje\_Onerisi\_Degerlendirme\_Formu.doc} \\
adresinden ulaşabilirsiniz.
\end{center}
\vspace*{-1.6em}
}%
{%
\bf
\noindent BAŞVURU FORMU EKLER \vspace*{1em}\\
EK-1: KAYNAKLAR \\
EK-2: BÜTÇE VE GEREKÇESİ 
\newpage
\global\let\ifform\iffalse

}

\newenvironment{projeozeti}[2]
{\ignorespaces\noindent
\def\keywords{#2}
\section{PROJE ÖZETİ}
%{\bf 1. PROJE ÖZETİ}
%\\
\fontsize{9pt}{12pt}\selectfont
Proje başlığı, özeti ve anahtar kelimeler Türkçe ve İngilizce yazılmalıdır. Proje özetleri birer sayfayı geçmemelidir. Özet (summary) projenin soyut bir tanıtımı değil, ana hatları ile önerilen projenin: \vspace*{1.2mm}
\begin{enumerate}[i.]
\setlength{\itemsep}{-0.3em}
\item	Amacı, 
\item	Konunun kısa bir tanıtımı, neden bu konunun seçildiği ve özgün değeri, 
\item	Kuramsal yaklaşım ve kullanılacak yöntemin ana hatları, 
\item	Ulaşılmak istenen hedefler ve beklenen çıktıların bilimsel, teknolojik ve sosyo-ekonomik ne tür katkılarda bulunabileceği
\end{enumerate}
hususlarında ayrı paragraflar halinde kısa ve net cümlelerle bilgi verici nitelikte olmalıdır. \\
Anahtar Kelimeler ve İngilizce karşılıkları (keywords) uluslararası literatüre uygun bir şekilde seçilerek özet sayfasının sonundaki ilgili bölümde ayrıca belirtilmelidir.


%\begin{tcolorbox}[left=0mm,top=0mm,breakable,colback=white,colframe=black, sharp corners,segmentation style={black,solid},enhanced, frame code={\path[draw,line width=8] (interior.north west) rectangle (interior.south east);}] 
\begin{tcolorbox}[common]
{\bf Proje Başlığı:} #1 \vspace*{1em}

\tcbline
%\begin{center}
{\hspace*{\fill}\bf Proje Özeti: \hspace*{\fill}} \\
%\end{center}
}
{
\tcbline*
{\bf Anahtar Kelimeler:}\keywords
\end{tcolorbox}
\ignorespacesafterend
}
\newenvironment{projectsummary}[2]
{\ignorespaces
\fontsize{9pt}{12pt}\selectfont


%\begin{tcolorbox}[left=0mm,top=0mm,breakable,colback=white,colframe=black, sharp corners,segmentation style={black,solid}, freelance, frame code={\path[draw,line width=8,red] (interior.north west) rectangle (interior.south east);}] 
\begin{tcolorbox}[common]
{\bf Project Title:} #1
\tcbline* 
%\begin{center}
{\hspace*{\fill}\bf Project Summary \hspace*{\fill}} \\\fontsize{9pt}{12pt}\selectfont \\
%\end{center}
\def\keywords{#2}
}
{
\tcbline*
{\bf Keywords:}\keywords
\end{tcolorbox}
\ignorespacesafterend
}

\newenvironment{amacvehedefler}
{\ignorespaces\noindent%
\section{AMAÇ VE HEDEFLER}\fontsize{9pt}{12pt}\selectfont
Projenin amacı ve hedefleri ayrı bölümler halinde kısa ve net cümlelerle ortaya konulmalıdır. Amaç ve hedeflerin belirgin, ölçülebilir, gerçekçi ve proje süresinde ulaşılabilir nitelikte olmasına dikkat edilmelidir.
%\begin{tcolorbox}[left=0mm,top=0mm,breakable,colback=white,colframe=black, sharp corners,segmentation style={black,solid}] 
\begin{tcolorbox}[common]
}
{
\end{tcolorbox}
\ignorespacesafterend
}

\newenvironment{konukapsamveliteraturozeti}%
{\ignorespaces\noindent%
\section{KONU, KAPSAM ve LİTERATÜR ÖZETİ}\fontsize{9pt}{12pt}\selectfont
Proje önerisinde ele alınan konunun kapsamı ve sınırları, projenin araştırma sorusu veya problemi açık bir şekilde ortaya konulmalı ve İlgili bilim/teknoloji alan(lar)ındaki literatür taraması ve değerlendirilmesi yapılarak proje konusunun literatürdeki önemi, arka planı, bugün gelinen durum, yaşanan sorunlar, eksiklikler, doldurulması gereken boşluklar vb. hususlar açık ve net bir şekilde ortaya konulmalıdır. \vspace{1em}

\noindent Literatür değerlendirmesi yapılırken \underline{ham bir literatür listesi değil}, ilgili literatürün özet halinde bir analizi sunulmalıdır. Referanslar \underline{\textcolor{blue}{http://www.tubitak.gov.tr/ardeb-kaynakca}} sayfasındaki açıklamalara uygun olarak EK-1’de verilmelidir.

%\begin{tcolorbox}[left=0mm,top=0mm,breakable,colback=white,colframe=black, sharp corners,segmentation style={black,solid}] 
\begin{tcolorbox}[common]
}
{
\end{tcolorbox}
\ignorespacesafterend
}

\newenvironment{ozgundeger}%
{\ignorespaces\noindent%
\section{ÖZGÜN DEĞER}\fontsize{9pt}{12pt}\selectfont

Proje önerisinin, özgün değeri (bilimsel kalitesi, farklılığı ve yeniliği, hangi eksikliği nasıl gidereceği veya hangi soruna nasıl bir çözüm geliştireceği ve/veya ilgili bilim/teknoloji alan(lar)ına metodolojik/kavramsal/kuramsal olarak ne gibi özgün katkılarda bulunacağı vb.) ayrıntılı olarak açıklanmalıdır.
%\begin{tcolorbox}[left=0mm,top=0mm,breakable,colback=white,colframe=black, sharp corners,segmentation style={black,solid}] 
\begin{tcolorbox}[common]
}
{
\end{tcolorbox}
\ignorespacesafterend
}

\newenvironment{yontem}%
{\ignorespaces\noindent%
\section{YÖNTEM}
\fontsize{9pt}{12pt}\selectfont
Projede uygulanacak yöntem ve araştırma teknikleri (veri toplama araçları ve analiz yöntemleri dahil) ilgili literatüre atıf yapılarak (gerekirse ön çalışma yapılarak) belirgin ve tutarlı bir şekilde ayrıntılı olarak açıklanmalı ve bu yöntem ve tekniklerin projede öngörülen amaç ve hedeflere ulaşmaya elverişli olduğu ortaya konulmalıdır. \vspace*{1em}

\noindent
Projede uygulanacak yöntem(ler)le ilerleme kaydedilememesi durumunda devreye sokulacak alternatif yöntem(ler) de belirlenerek açık bir şekilde ifade edilmelidir.
%\begin{tcolorbox}[left=0mm,top=0mm,breakable,colback=white,colframe=black, sharp corners,segmentation style={black,solid}] 
\begin{tcolorbox}[common]
}
{
\end{tcolorbox}
\ignorespacesafterend
}

\newenvironment{projeyonetimiekipvearastirmaolanaklari}%
{\ignorespaces\noindent%
\section{PROJE YÖNETİMİ, EKİP VE ARAŞTIRMA OLANAKLARI}
\subsection{PROJE YÖNETİMİ}
\subsubsection{YÖNETİM DÜZENİ (İş Paketleri (İP), Görev Dağılımı ve Süreçleri)}\fontsize{9pt}{12pt}\selectfont
Projede yer alacak başlıca iş paketleri, her bir iş paketinin kim/kimler tarafından ne kadarlık bir zaman diliminde gerçekleştirileceği hakkındaki bilgiler aşağıda yer alan {\bf\underline{İş-Zaman Çizelgesi}} doldurularak verilmelidir. Her bir iş paketinde görev alacak personelin niteliği (yürütücü, araştırmacı, danışman, bursiyer, yardımcı personel) belirtilmelidir. Gelişme ve sonuç raporu hazırlama aşamaları proje çalışmalarına paralel olarak yürütülmeli ve ayrı bir iş paketi olarak gösterilmemelidir. 

\bursiyerlistesi
\newpage

\begin{tikzpicture}[overlay, remember picture]
\path[fill=white] (current page footer area.north west) rectangle +(10,-3);
\path[fill=white] ([yshift=-6mm]current page header area.south west) rectangle +(10,2);
\node[help lines, minimum width=1.5*\textheight, rectangle, rotate around={-90:(current page.center)}, align=center] at ([yshift=-\textwidth/2+\textheight/2] current page footer area.west) {\fontfamily{times}\selectfont1001BF-01 Güncelleme Tarihi: 08/01/2016};

\node[rotate=-90] at  ([xshift=-5mm-1.9cm,yshift=-3.8mm] current page.east) {\includegraphics[width=7.7mm, height=10.4mm]{logo.png}};
%\node[minimum width=1.5*\textheight, rectangle, rotate around={-90:(current page.center)}, align=center] at ([yshift=\textwidth-\textheight]current page text area.north) {
\node (a) at ([yshift=\textwidth/2-\textheight/2]current page text area.north) {};
\node[minimum width=1.5*\textheight, rectangle, rotate around={-90:(current page.center)}, align=center, below=of a] {
{\bf  İŞ-ZAMAN ÇİZELGESİ(*) }\\
\setlength{\tabcolsep}{1mm}
\setlength\extrarowheight{20pt}
\begin{tabular}{| p{0.03\textwidth} | p{0.1\textwidth} | p{0.1\textwidth} | *{36}{c|}}
\hline \rowcolor{lightgray} & &  & \multicolumn{36}{c|}{\multirow{1}{*}{\bf AYLAR}} \\
\rowcolor{lightgray} 
   \cline{4-39}
   \multirow{-2}{*}{\cellcolor{lightgray}\tikz{\node[align=center, minimum width=0cm] at (0,0) {\bf İP \\[0.5em] \bf No}}} &
   \multirow{-2}{*}{\cellcolor{lightgray}\tikz{\node[align=center, minimum width=0cm] at (0,0) {\bf İP \\[0.5em] \bf Adı/Tanımı}}} & 
   \multirow{-2}{*}{\cellcolor{lightgray}\tikz{\node[align=center, minimum width=0cm] at (0,0) {\bf Kim(ler) \\[0.5em] \bf Tarafından \\[0.5em] \bf Yapılacağı};}} &
   \xintFor* ##1 in {\xintSeq {1}{36}} \do {{##1} \xintifForLast{}{&}}
    \tabularnewline
\hline
\xintFor* ##1 in {\xintSeq {1}{\theprojeipsayisi}} \do {\csname prjip##1\endcsname \\ \hline}
\end{tabular}\\
(*) Çizelgedeki satırlar ve sütunlar gerektiği kadar genişletilebilir ve çoğaltılabilir \hspace*{12.5cm}
};
\end{tikzpicture}

\newpage

\subsubsection{BAŞARI ÖLÇÜTLERİ VE RİSK YÖNETİMİ}
Projenin tam anlamıyla başarıya ulaşmış sayılabilmesi için {\bf İş-Zaman Çizelgesinde} yer alan her bir ana iş paketinin hedefi, başarı 
ölçütü (ne ölçüde gerçekleşmesi gerektiği) ve projenin başarısındaki önem derecesi aşağıdaki {\bf Başarı Ölçütleri Tablosu}’nda belirtilmelidir.  \\
%\begin{center}
{\hspace*{\fill}\bf BAŞARI ÖLÇÜTLERİ TABLOSU (*) \hspace*{\fill}}\\
%\end{center}
\setlength\extrarowheight{10pt}
\begin{tabularx}{\textwidth}{|c|p{3in}|X|c|}
\hline
\rowcolor{lightgray} \bf İP No & \bf \hspace*{1in}İş Paketi Hedefi  & {\setlength\extrarowheight{0pt} \hspace*{\fill} \begin{tabular}{c}\bf Başarı Ölçütü \\ \bf (\%, sayı, ifade, vb) \end{tabular}} \hspace*{\fill} & {\setlength\extrarowheight{0pt}\begin{tabular}{c} \bf Projenin \\ \bf Başarısındaki \\ \bf Önemi (*) \end{tabular} }\tabularnewline
\hline
\xintFor* ##1 in {\xintSeq {1}{\theprojebasariolcutusayisi}} \do {\csname prjbasariolcutu##1\endcsname \\ \hline}
\end{tabularx}

\noindent
(*) Tablodaki satırlar gerektiği kadar genişletilebilir ve çoğaltılabilir. \\
(**) Sütun toplamı 100 olmalıdır. \vspace{1em}

\noindent
Projenin başarısını olumsuz yönde etkileyebilecek riskler ve bu risklerle karşılaşıldığında projenin başarıyla yürütülmesini sağlamak için alınacak tedbirler ({\bf B Planı}) ilgili iş paketleri belirtilerek ana hatlarıyla aşağıdaki {\bf Risk Yönetimi Tablosu}’nda ifade edilmelidir. 
%\begin{center}
{\hspace*{\fill}\bf
RİSK YÖNETİMİ TABLOSU (*)
\hspace*{\fill}}\\%\end{center}
\noindent\setlength\extrarowheight{10pt}
\begin{tabularx}{\textwidth}{|c|X|X|}
\hline
\rowcolor{lightgray} \bf İP No & \hspace*{1in}\bf En Önemli Risk(ler) & \bf \hspace*{1.5in}B Planı \\
\hline
\xintFor* ##1 in {\xintSeq {1}{\theprojerisksayisi}} \do {\csname prjrisk##1\endcsname \\ \hline}
\end{tabularx}
(*) Tablodaki satırlar gerektiği kadar genişletilebilir ve çoğaltılabilir. \\

\subsection{PROJE EKİBİ}
\subsubsection{PROJE YÜRÜTÜCÜSÜNÜN DİĞER PROJELERİ VE GÜNCEL YAYINLARI}
\fontsize{9pt}{12pt}\selectfont
Proje yürütücüsünün TÜBİTAK, üniversite ya da diğer kurum/kuruluşların desteği ile tamamlamış olduğu projeler ile şu sırada yürütmekte olduğu veya destek almak için başvurduğu projeler hakkında aşağıdaki tablolarda yer alan bilgiler verilmelidir. Proje değerlendirme süreci sırasında destek kararı çıkması ve/veya yeni bir başvuru daha yapılması durumunda derhal TÜBİTAK'a yazılı olarak bildirilmelidir

%\begin{center}
{\hspace*{\fill}\bf PROJE YÜRÜTÜCÜSÜNÜN TÜBİTAK DESTEKLİ PROJELERİ (*)
\hspace*{\fill}}\\%\end{center}
\setlength\extrarowheight{10pt}
\begin{tabularx}{\textwidth}{|c|c|X|X|X|}
\hline
\rowcolor{lightgray} \bf Proje No & \bf Projedeki Görevi & \bf Proje Adı & \bf Başlama-Bitiş Tarihi & \bf Destek Miktarı (TL) \\
\hline
\xintFor* ##1 in {\xintSeq {1}{\thetubitakprojesayisi}} \do {\csname yrtctubitakproje##1\endcsname \\ \hline}
\end{tabularx}
(*) Tablodaki satırlar gerektiği kadar genişletilebilir ve çoğaltılabilir. \\

%\begin{center}
{\hspace*{\fill}\bf PROJE YÜRÜTÜCÜSÜNÜN DİĞER PROJELERİ (DPT, BAP, FP6-7 vb.) (*)
\hspace*{\fill}}\\%\end{center}
\setlength\extrarowheight{10pt}
\begin{tabularx}{\textwidth}{|c|c|X|X|X|}
\hline
\rowcolor{lightgray} \bf Proje No & \bf Projedeki Görevi & \bf Proje Adı & \bf Başlama-Bitiş Tarihi & \bf Destek Miktarı (TL) \\
\hline
\xintFor* ##1 in {\xintSeq {1}{\thedigerprojesayisi}} \do {\csname yrtcdigerproje##1\endcsname \\ \hline}
\end{tabularx}
(*) Tablodaki satırlar gerektiği kadar genişletilebilir ve çoğaltılabilir. \\

%\begin{center}
{\hspace*{\fill} \bf PROJE YÜRÜTÜCÜSÜNÜN SON 5 YILDA YAPTIĞI YAYINLAR (*)
\hspace*{\fill}}\\%\end{center}
\setlength\extrarowheight{10pt}
\begin{tabularx}{\textwidth}{|p{0.26\textwidth}|p{0.26\textwidth}|X|X|p{0.05\textwidth}|}
\hline
\rowcolor{lightgray} \bf Yazar(lar) & \bf Makale Başlığı & \bf Dergi & \bf Cilt/Sayı/Sayfa & \bf Tarih \\
\hline
\xintFor* ##1 in {\xintSeq {1}{\theyayinsayisi}} \do {\csname yrtcyayin##1\endcsname \\ \hline}
\end{tabularx}
(*) Tablodaki satırlar gerektiği kadar genişletilebilir ve çoğaltılabilir. \\
\subsubsection{PROJE EKİBİNİN ÖNERİLEN PROJE KONUSU İLE İLGİLİ PROJELERİ}
\noindent
Proje ekibinin (proje yürütücüsü, araştırmacı, danışman) TÜBİTAK’a, herhangi bir kamu kurum ve kuruluşuna veya Türkiye’nin taraf olduğu uluslararası anlaşmalara dayalı olarak sağlanan fonlara sunulmuş olup öneri durumunda olan, yürüyen veya sonuçlanmış benzer konudaki projeleri varsa bu projeler hakkındaki bilgiler ve önerilen projeden ne gibi farkları olduğu aşağıdaki tabloda belirtilmelidir
%\begin{center}
{\hspace*{\fill}\bf PROJE EKİBİNİN ÖNERİLEN PROJE KONUSU İLE İLGİLİ PROJELERİ (*)
\hspace*{\fill}}\\%\end{center}
\begin{tabularx}{\textwidth}{|p{0.15\textwidth}|p{0.15\textwidth}|p{0.15\textwidth}|X|X|}
\hline
\rowcolor{lightgray} \bf Adı Soyadı & \bf Projedeki Görevi & \bf Proje Adı & \bf Başlama-Bitiş Tarihi & \bf Önerilen Projeden Farkı \\
\hline
\xintFor* ##1 in {\xintSeq {1}{\theekipprojesayisi}} \do {\csname ekpproje##1\endcsname \\ \hline}
\end{tabularx}
(*) Tablodaki satırlar gerektiği kadar genişletilebilir ve çoğaltılabilir. \\
\subsection{ARAŞTIRMA OLANAKLARI}
Bu bölümde projenin yürütüleceği kurum/kuruluş(lar)da var olup da projede kullanılacak olan altyapı/ekipman (laboratuvar, araç, makine-teçhizat vb.) olanaklar aşağıdaki tabloda belirtilmelidir.\\
%\begin{center}
{\hspace*{\fill}\bf 
MEVCUT ARAŞTIRMA OLANAKLARI TABLOSU (*)
\hspace*{\fill}}\\%\end{center}
\setlength\extrarowheight{10pt}
\begin{tabularx}{\textwidth}{|X|X|X}
\hline
\rowcolor{lightgray} 
{\setlength\extrarowheight{2pt}\begin{tabular}{c}\bf Mevcut Altyapı/Ekipman Türü, Modeli \\ (Laboratuvar, Araç, Makine-Teçhizat vb.) \end{tabular}}& \bf Mevcut Olduğu Kurum Kuruluş & \bf Projedeki Kullanım Amacı \\
\hline
\xintFor* ##1 in {\xintSeq {1}{\themevcutekipmansayisi}} \do {\csname mvctekipman##1\endcsname \\ \hline}
\end{tabularx}


}
{

\ignorespacesafterend
}



    

\newcounter{yayinsayisi}
\setcounter{yayinsayisi}{0}
\newcounter{digerprojesayisi}
\setcounter{digerprojesayisi}{0}
\newcounter{tubitakprojesayisi}
\setcounter{tubitakprojesayisi}{0}
\def\yurutucutubitakprojeekle#1#2#3#4#5{\stepcounter{tubitakprojesayisi}\expandafter\protected@edef\csname yrtctubitakproje\thetubitakprojesayisi\endcsname{#1 & #2 & #3 & #4 & #5}}
\def\yurutucudigerprojeekle#1#2#3#4#5{\stepcounter{digerprojesayisi}\expandafter\protected@edef\csname yrtcdigerproje\thedigerprojesayisi\endcsname{ #1 & #2 & #3 & #4 & #5}}
%\def\yurutucuyayinekle#1#2#3#4#5{\stepcounter{yayinsayisi}\expandafter\protected@edef\csname yrtcyayin\theyayinsayisi\endcsname{#1 & #2 & #3 & #4 & #5}}
\def\yurutucuyayinekle#1#2#3#4#5{\stepcounter{yayinsayisi}\expandafter\protected@edef\csname yrtcyayin\theyayinsayisi\endcsname{#1 & #2 & #3 & #4 & #5}}

\newcounter{projerisksayisi}
\setcounter{projerisksayisi}{0}
\def\projeriskekle#1#2#3{\stepcounter{projerisksayisi}\expandafter\protected@edef\csname prjrisk\theprojerisksayisi\endcsname{#1 & #2 & #3}}

\newcounter{projebasariolcutusayisi}
\setcounter{projebasariolcutusayisi}{0}
\def\projebasariolcutuekle#1#2#3#4{\stepcounter{projebasariolcutusayisi}\expandafter\protected@edef\csname prjbasariolcutu\theprojebasariolcutusayisi\endcsname{#1 & #2 & #3 & #4}}

\newcounter{projeipsayisi}
\setcounter{projeipsayisi}{0}
\newcommand\projeipekle[5]{\stepcounter{projeipsayisi}\expandafter\protected@edef\csname prjip\theprojeipsayisi\endcsname{#1 & #2 & #3 
	\xintiloop[1+1] 
	& \ifnum\xintiloopindex>#4 \ifnum\xintiloopindex<#5 \noexpand\cellcolor{black}  \fi \fi
	\ifnum\xintiloopindex=#4 \noexpand\cellcolor{black} \fi
	\ifnum\xintiloopindex=#5 \noexpand\cellcolor{black} \fi
	\relax \ifnum\xintiloopindex<36 \repeat}
%	\xintFor* ##1 in {\xintSeq {#5}{36}} \do {&} %
	}

\newcounter{ekipprojesayisi}
\setcounter{ekipprojesayisi}{0}
\def\ekipprojeekle#1#2#3#4#5{\stepcounter{ekipprojesayisi}\expandafter\protected@edef\csname ekpproje\theekipprojesayisi\endcsname{#1 & #2 & #3 & #4 & #5}}

\newcounter{mevcutekipmansayisi}
\setcounter{mevcutekipmansayisi}{0}
\def\mevcutekipmanekle#1#2#3{\stepcounter{mevcutekipmansayisi}\expandafter\protected@edef\csname mvctekipman\themevcutekipmansayisi\endcsname{#1 & #2 & #3}}

\newcounter{projeciktipaylasimisayisi}
\setcounter{projeciktipaylasimisayisi}{0}
\def\projeciktilarininpaylasimiekle#1#2#3{\stepcounter{projeciktipaylasimisayisi}\expandafter\protected@edef\csname prjciktipaylasimi\theprojeciktipaylasimisayisi\endcsname{#1 & #2 & #3}}

\def\bilimselyayginetkiekle#1{\def\bilimseletki{#1}}
\def\ekonomikyayginetkiekle#1{\def\ekonomiketki{#1}}
\def\yetistirmeyayginetkiekle#1{\def\arastirmacietki{#1}}

\newenvironment{yayginetki}{
\ignorespaces\noindent%
\section{YAYGIN ETKİ}\fontsize{9pt}{12pt}\selectfont
\subsection{PROJEDEN BEKLENEN YAYGIN ETKİ}
%\begin{center} 
{\hspace*{\fill}\bf
PROJEDEN BEKLENEN YAYGIN ETKİ TABLOSU
\hspace*{\fill}}\\%\end{center}
\begin{tabularx}{\textwidth}{|X|X|}
\hline
%\rowcolor{lightgray} \bf \multicolumn{1}{c}{\bf Yaygin Etki Türü} & Projede Öngörülen/Beklenen Çıktı, Sonuç ve Etkiler \\
\rowcolor{lightgray}\multicolumn{1}{|c|}{\bf Yaygin Etki Türü} & \bf Projede Öngörülen/Beklenen Çıktı, Sonuç ve Etkiler \\
\hline
\cellcolor{lightgray} \begin{tabular}{l} \bf Bilimsel/Akademik \\ (Makale, Bildiri, Kitap) \end{tabular} & \bilimseletki\\
\hline
\cellcolor{lightgray} \begin{tabular}{l} \bf Ekonomik/Ticari/Sosyal \\
\begin{minipage}[t]{0.45\textwidth}\flushleft (\fontsize{8pt}{12pt}\selectfont
Ürün, Prototip Ürün, Patent, Faydalı Model, Üretim İzni, Çeşit  Tescili, Spin-off/Start- up Şirket, Görsel/İşitsel Arşiv, Envanter/Veri Tabanı/Belgeleme Üretimi, Telife Konu Olan Eser, medyada Yer Alma, Fuar, Proje Pazarı, Çalıştay, Eğitim vb. Bilimsel Etkinlik, Proje Sonuçlarını Kullanacak Kurum/Kuruluş, vb. diğer yaygın etkiler)\end{minipage} \end{tabular} & \ekonomiketki \\
\hline
\cellcolor{lightgray} \begin{minipage}[t]{0.45\textwidth} {\bf Araştırmacı Yetiştirilmesi ve Yeni Proje(ler) Oluşturma} \\ \fontsize{8pt}{12pt}\selectfont
 (Yüksek Lisans/Doktora Tezi, Ulusal/Uluslararası Yeni Proje) \end{minipage} & \arastirmacietki \\ \hline
\end{tabularx}
\subsection{PROJE ÇIKTILARININ PAYLAŞIMI VE YAYILIMI }\fontsize{9pt}{12pt}\selectfont
Proje faaliyetleri boyunca elde edilecek çıktıların ve ulaşılacak sonuçların ilgili paydaşlar ve potansiyel kullanıcılara ulaştırılması ve yayılmasına yönelik yapılacak toplantı, çalıştay, eğitim, web sitesi, vb. ne tür faaliyetler yapılacağı aşağıdaki tabloda belirtilmelidir.
%\begin{center} 
{\hspace*{\fill}\bf
PROJE ÇIKTILARININ PAYLAŞIMI VE YAYILIMI TABLOSU (*)
\hspace*{\fill}}\\%\end{center}
\setlength\extrarowheight{10pt}
\begin{tabularx}{\textwidth}{|p{0.35\textwidth}|p{0.35\textwidth}|X|}
\hline
\rowcolor{lightgray} {\setlength\extrarowheight{0pt}\fontsize{9pt}{12pt}\selectfont\begin{tabular}{c} {\bf Faaliyet Türü} \\ (Toplantı, Çalıştay, Eğitim, Web Sayfası vb.) \end{tabular} }& \hspace*{\fill} {\bf Paydaş/Potansiyel Kullanıcılar}\hspace*{\fill} & \bf Faaliyet Zaman ve Süresi \\
\hline
\xintFor* ##1 in {\xintSeq {1}{\theprojeciktipaylasimisayisi}} \do {\csname prjciktipaylasimi##1\endcsname \\ \hline}
\end{tabularx}
(*) Tablodaki satırlar gerektiği kadar genişletilebilir ve çoğaltılabilir. \\
}
{
\ignorespacesafterend
}

\newenvironment{kaynaklar}
{\newpage\ignorespaces%\noindent {\bf Ek-1: Kaynaklar} \\
%\begin{thebibliography}{99}
}
{
%\end{thebibliography}
\ignorespacesafterend
}
