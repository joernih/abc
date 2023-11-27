library(htmlTable)
library(magrittr)
library(xaringan)
library(aweek)

# Timeplan
## Input
ukenr <- c(34,seq(34,47))
ln <- length(ukenr)
datoer <- rep(2024,15)
#c(get_date(ukenr[1], day=1, year = 2023),get_date(ukenr[-1], day=3, year = 2023))
star <- rep("00:00",ln)
timer <- rep(3,ln)
forenr <- c(seq(1,7),"",seq(8,14))
tema <- c(
	  "0. JIH :Statistical tests og basic installations of R and RStudio",
	  "Regression analysis I",
	  "1. JIH :Basic commands in R I",
	  "Regression analysis II",
	  "2. JIH :Basic commands in R II",
	  "Regression analysis III",
	  "3. JIH :RMarkdown",
	  "--- ---",
	  "Probability models",
	  "4. JIH :Data wrangling",
	  "Time series ",
	  "5. JIH :Regression analysis (graphical and numerically)",
	  "Panel data",
	  "6. JIH: Packages in R",
	  "Model evaluation"
)
literatur <- c(
	       " ", 
	       " ", 
	       " ", 
	       " ", 
	       " ", 
	       " ", 
	       " ", 
	       " ", 
	       " ", 
	       " ", 
	       " ", 
	       " ", 
	       " ", 
	       " ", 
	       " " 
)
undervfor <- c(
	  "Campus Sone ",
	  "Campus Sone ",
	  "Campus Sone ",
	  "Campus Sone ",
	  "Campus Sone ",
	  "Campus Sone ",
	  "Campus Sone ",
	  "",
	  "Campus Sone ",
	  "Campus Sone ",
	  "Campus Sone ",
	  "Campus Sone ",
	  "Campus Sone ",
	  "Campus Sone ",
	  "Campus Sone "
)
###########################################################################################################
df1 <- data.frame(
		  Uke=ukenr,
		  Dato=datoer,
		  Tidspunkt=star,
		  Forelesning=forenr,
		  Literatur=literatur,
		  Temaer=tema,
		  Undervisningsform=undervfor,
		  Timer=timer
)
timenavn <- c("Uke","Datoer","Tidspunkt","Forelesning","Literatur","Sentrale temaer","Undervisningsform","Timer")
usethis::use_data(df1, overwrite = TRUE)
#devtools::document()



