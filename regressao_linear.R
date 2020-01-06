#Exercícios iniciais para uso do R!
#Exercício disponível no site: http://www.mensuracaoflorestal.com.br/regressao-linear

#Ler arquivos em excel
require(xlsx)
exemplo <- read.xlsx("c:/users/KLDB00132941/Documents/Pessoal/r_script/dados.xlsx",sheetName = "Plan1")

#imprimir nome variáveis:
names(exemplo)

#reconhecer como objeto isolado cada coluna de um Data frame
attach(exemplo)

#Elaborar gráfico de distribuição de Y em relação à X
plot(x,y,xlab="Variável independente (X)",ylab="Variável dependente (Y)")


#Ajuste pelo metodo dos mínimos quadrados ordinários (MQO)

#ajusta a equação referente ao modelo Y = b0 +b1X
REG = lm(y~x, exemplo)

#Calcula estatística e apresenta as estimativas parâmetros
summary(REG)

#Análise de variância da regressão
anova(REG)

#Elaborar gráfico mostrando curva ajustada
plot(x,y,xlab = "Variável independente (x)",ylab = "Varável dependente (y)")
abline(REG)


#Ajuste pelo método de máxima verossimilhança (MVS)
#Ajusta a equação por máxima verossimilhançã - modelos lineares generalizados
require(glm2)
REG2<- glm(y~x, exemplo, family = gaussian)
summary(REG2)
deviance(REG2) #-2Log(L)


