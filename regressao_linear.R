#Exerc�cios iniciais para uso do R!
#Exerc�cio dispon�vel no site: http://www.mensuracaoflorestal.com.br/regressao-linear

#Ler arquivos em excel
require(xlsx)
exemplo <- read.xlsx("c:/users/KLDB00132941/Documents/Pessoal/r_script/dados.xlsx",sheetName = "Plan1")

#imprimir nome vari�veis:
names(exemplo)

#reconhecer como objeto isolado cada coluna de um Data frame
attach(exemplo)

#Elaborar gr�fico de distribui��o de Y em rela��o � X
plot(x,y,xlab="Vari�vel independente (X)",ylab="Vari�vel dependente (Y)")


#Ajuste pelo metodo dos m�nimos quadrados ordin�rios (MQO)

#ajusta a equa��o referente ao modelo Y = b0 +b1X
REG = lm(y~x, exemplo)

#Calcula estat�stica e apresenta as estimativas par�metros
summary(REG)

#An�lise de vari�ncia da regress�o
anova(REG)

#Elaborar gr�fico mostrando curva ajustada
plot(x,y,xlab = "Vari�vel independente (x)",ylab = "Var�vel dependente (y)")
abline(REG)


#Ajuste pelo m�todo de m�xima verossimilhan�a (MVS)
#Ajusta a equa��o por m�xima verossimilhan�� - modelos lineares generalizados
require(glm2)
REG2<- glm(y~x, exemplo, family = gaussian)
summary(REG2)
deviance(REG2) #-2Log(L)


