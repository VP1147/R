### R como calculadora simples

# Adição/Subtração
10 + 20
5 - 7

# Multiplicação/Subtração
(10 + 5) / 4
2 * (2 + 1)

# Exponenciação
2^3
7^2
2^(5 + 1)

# Resto
20 %% 6
100 %% 3

# Exercício 1

# Soma de 10 e 20
10 + 20

# Multiplicação de 5 e 2
5 * 2

# Divisão entre a soma de 10 e 2, e 3
(10 + 2) / 3

# 2 elevado à quarta potência
2^4

# Módulo (resto da divisão) de 20 por 6
20 %% 6


### Variáveis

x <- 30 # atribui valor 30 a x

x = 40  # atribui valor 30 a x

# Sequência
a <- c(1, 2, 3, 4, 5)

# Sequências de chars
Numeros <- c('Um', 'Dois', 'Três', 'Quatro', 'Cinco')

# Atribui os nomes aos elementos
names(a) <- Numeros

# Imprime na tela
a

## Exercícios

# Atribui valor 50 à variável 'variav'
variav <- 50

# Imprimir o valor de 'variav'
variav

# Atribuir valor 10 à variável 'a'
a <- 20

# Imprime valor de 'a'
a

# Atribuir valor 20 à variável 'b'
b <- 20

# Imprimir valor de 'b'
b

# Criar a variável 'c', que é a soma de 'a' e 'b'
c <- a + b

# Imprimir a variável 'c'
c

## Ex 2

# Atribuir valor 40 à variável 'numero'
numero <- 40

# Atribuir "manga" à variável 'caracter'
caracter <- "manga"

# Atribuir FALSE à variável 'logica'
logica <- FALSE

# Somar a variável 'numero' com a variável 'caracter'
caracter + numero # Error in caracter + numero : 
                  # argumento não-numérico para operador binário

# Pode-se evitar este erro ao checar o tipo de dado previamente, com class()
class(numero)   # "numeric"
class(caracter) # "character"
class(logica)   # "logical"


### Vetores - Usos e operações

# Estruturas unidimensionais que podem conter dados numéricos,
# caracteres ou lógicos (TRUE ou FALSE)
loteria <- c(10, 12, 14)

# Saldo entre vendas e trocas de duas filiais de uma empresa
FilialA <- c(1000, 500, 150, -100, 0)
FilialB <- c(1000, -250, 100, -50, 200)

# Nomeação
DiasDaSemana <- c("Segunda", "Terça", "Quarta", "Quinta", "Sexta")

## Exercícios

# Nomeando
names(FilialA) <- DiasDaSemana
FilialA

names(FilialB) <- DiasDaSemana
FilialB

# Saldo total da semana
TotalA <- sum(FilialA)
TotalB <- sum(FilialB)
TotalA
TotalB

# Total da fábrica pelos dias da semana
TotalSemana <- FilialA + FilialB
TotalSemana

# Total da semana das filiais
Total <- sum(FilialA,FilialB)
Total # Lucro (> 0) ou prezuízo (< 0)?

## Comparações entre vetores

TotalA > TotalB

# Comparação entre o saldo das filiais na terça-feira
TercaA <- FilialA[2]
TercaB <- FilialB[2]
TercaA
TercaB
TercaA > TercaB

# Quarta-quinta-sexta
QuaQuiSexA <- FilialA[3-5]
QuaQuiSexB <- FilialB[3-5]
QuaQuiSexA
QuaQuiSexB

# Média da semana das filiais
mean(FilialA)
mean(FilialB)

# Média de quarta, quinta e sexta da filial A
mean(FilialA[3-5])

# Média de quarta, quinta e sexta da filial B
mean(FilialB[3-5])

# Calcular se os dias possuem saldo positivo (TRUE ou FALSE)
FilialA > 0
FilialB > 0

# Selecionar apenas os dias com saldo positivo
SaldoPositivoA <- FilialA[FilialA > 0]
SaldoPositivoB <- FilialB[FilialB > 0]
SaldoPositivoA
SaldoPositivoB

# Selecionar apenas dias com saldo negativo (prejuízo)
SaldoPositivoA <- FilialA[FilialA < 0]
SaldoPositivoB <- FilialB[FilialB < 0]
SaldoPositivoA
SaldoPositivoB

### Matriz

# coleção de elementos, todos de mesmo tipo (numérico, caractere ou lógico)
# Bidimensional - linhas e colunas

matrix(1:4, byrow=TRUE, nrow=2)

# Exemplo - Número de unidades vendidas de 3 jogos em 2 lançamentos

SamuraiShodown <- c(20000, 25000)
StreetFighter <- c(100100, 200100)
MortalKombat <- c(90000, 180000)

# Criando uma matriz, com colunas=jogos e linhas=lançamentos
Vendas <- c(SamuraiShodown, StreetFighter, MortalKombat); Vendas
VendasMatrix <- matrix(Vendas, byrow = TRUE, nrow = 3); VendasMatrix

## Nomeação

# Declarando os nomes
Jogos <- c("Samurai Shodown", "Street Fighter", "Mortal Kombat")
Lancamentos <- c("1°", "2°")

# Nomeando linhas e colunas
rownames(VendasMatrix) <- Jogos
colnames(VendasMatrix) <- Lancamentos
VendasMatrix

## Operações

# Somando o total de vendas de todos lançamentos para cada jogo
SomaLinhas <-rowSums(VendasMatrix); SomaLinhas

# Adicionando a coluna soma à matriz
VendasNovas <- cbind(VendasMatrix, SomaLinhas); VendasNovas

# Adicionando linhas 
VendasOntem <- matrix(c(1000, 2000), byrow = TRUE, nrow = 1, 
                      dimnames = list(c('item vendido'),
                                      c('de fábrica própria', 'revenda')))
VendasHoje <- matrix(c(1200, 1000), byrow = TRUE, nrow = 1, 
                      dimnames = list(c('item vendido'),
                                      c('de fábrica própria', 'revenda')))

VendasTotal <- rbind(VendasOntem, VendasHoje); VendasTotal

# Soma e média de vendas do segundo lançamento
SegundoLanc <- VendasMatrix[,2] # seleciona a segunda colula

mean(SegundoLanc)
sum(SegundoLanc)

## Parte 2

# Número de veículos emplacados em 2020 e 2021, por mês
NVeiculosEmplac2020 <- c(155, 165, 131, 39, 44, 102, 135, 142, 161, 168,
                         177, 195)
NVeiculosEmplac2021 <- c(131, 129, 141, 127, 143, 133, 124, 120, 109,
                         119, 126, 156)

# Nomes
meses <- c('Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun', 'Jul','Ago',
           'Set', 'Out', 'Nov', 'Dez')
ano <- c(2020, 2021)

NVeicEmplac <- matrix(c(NVeiculosEmplac2020, NVeiculosEmplac2021),
                      byrow = TRUE, nrow = 2, dimnames = list(ano, meses))
                      # dimnames - repassa os nomes para a matriz diretamente
NVeicEmplac

# Variação percentual entre 2020 e 2021 (para cada mês)
VariaEmplac <- (NVeicEmplac[1,]/NVeicEmplac[2,])-1; VariaEmplac

# Variação percentual entre 2020 e 2021 (total)
VariaEmplacTotal <- (sum(NVeicEmplac[1,])/sum(NVeicEmplac[2,]))-1
VariaEmplacTotal

### Data frames

# Informações
cidade <- c('Borrazópolis', 'Cuparaque', 'Passa e Fica', 'Combinado',
            'Jijoca do Jericoacoara', 'Sério', 'Não-me-Toque',
            'Varre-e-Sai', 'São Miguel do Gostoso', 'Xique-Xique',
            'Palma Sola', 'Sem Peixe', 'Recursolândia', 'Califórnia',
            'Ressaquinha', 'Feliz Natal')
estado <- c('PR', 'MG', 'RN', 'TO', 'CE', 'RS', 'RS','RJ', 'RN', 'BA',
            'SC', 'MG', 'TO', 'PR', 'RJ', 'MS')
pop <- c(6290, 5005, 13667, 4852, 20351, 1924, 17886, 11106, 
         10441, 45336, 7423, 2633, 3594, 8641, 4808, 14847)

# Criando um data frame
dados <- data.frame(cidade, estado, pop)

# Resumo do data frame
str(dados)

# Imprime o data frame
dados

# Seleção de elementos do df
dados[1,2] # linha 1, coluna 2
dados[4:6,3] # Linhas 4 a 6, coluna 3

# 10 primeiros valores da variável 'pop'
dados[1:10, 'pop']

## Subconjuntos - a partir do data frame, baseado em certas condições

# Subconjunto das cidades com menos de 10000 habitantes 
# (variável = dataframe$coluna)
Menor10k = subset(dados, subset = dados$pop < 10000); Menor10k

# Subconj. de todas as cidades localizadas em PR
# Operador lógico de igualdade: ==
subset(dados, subset = dados$estado == 'PR')

library(ggplot2)
ggplot(data = dados, aes(x=cidade, y = pop, group = 1)) +
  geom_line(color='blue', size=1.0)+
  geom_point()

### Para estudar
# Média, mediana e moda
# Desvio médio e desvio padrão
# Banco de dados externo (CSV e TXT)
# GGPlot (ggplot)
