# 연산자1
1 + 1
2 * 2
3 / 4
10 %/% 3
10 %% 3
5 ** 3
sqrt(4)


# 연산자2
2 > 1
3 < 2
4 >= 1
5 <= 4
7 == 9
8 != 9
(9 > 1) & (10 < 11)
(9 > 1) | (10 < 8)
!(7 == 9)


# 변수
a <- 1
b <- 2
plus <- a + b
cat(plus, '\n')


# 반복문과 cat함수
rm(list = ls())
for(i in 1:10){
  cat(i, i + 1, '\n')
}
c <- 1:10
d <- c(1,2,3,4,5,6,7,8,9,10)


# print함수
for(i in 1:10){
  print(i, i + 1, '\n')
}
for(i in 1:10){
  print(i)
  print(i + 1)
}


# if
rm(list = ls())
for(i in 1:5){
  if (i > 3){
    print(i)
  } else {
    print(0)
  }
}


# while
rm(list = ls())
for(i in 1:5){
  while (i <=3){
    print(i)
    i <- i+1
  }
}


# function
multiply <- function(a,b){
  x = 1
  for(i in a:b){
    x = x * i
  }
  return(x)
}
multiply(1,3)


# vector
rm(list = ls())
v1 <- c(1,2,3)
v2 <- c('a,','b','c')
v3 <- c(TRUE, FALSE, TRUE)
v4 <- c(v1, v2, v3)
v5 <- c(v1, v3)


# seq함수
rm(list = ls())
s1 <- seq(1, 10)
s2 <- seq(1, 10, 2)
s3 <- seq(1, 10, length = 4)


# rep함수
rm(list = ls())
r1 <- rep(1,4)
r2 <- rep(1, time = 4)
r3 <- rep(2:4, time = 2)
r4 <- rep(2:4, each = 2)
r5 <- rep(2:4, time = 2, each = 2)
r6 <- rep(seq(1,5,2), 2)


# vector 연산
rm(list = ls())
s1 <- seq(2,8,2)
r1 <- rep(2,4)
plus <- s1 + r1
minus <- s1 - r1
multiple <- s1 * r1
divide <- s1 / r1


# 행렬의 곱
m <- matrix(1:4, nrow = 2)
n <- c(4,5)
mn <- m * n
mn2 <- m %*% n


# vector 길이가 다를 경우
rm(list = ls())
r1 <- rep(2,6)
v1 <- c(1,2,3)
plus1 <- r1 + v1
plus2 <- v1 + 5
plus3 <- c(1,2,3) + c(4,5)


# vector 인덱싱
rm(list = ls())
v1 <- c(5:12)
i1 <- v1[2]
i2 <- v1[-3]
i3 <- v1[3:5]
i4 <- v1[v1 %% 2 != 0]
names(v1) <-c ('a','b','c','d','e','f','g','h')
i5 <- v1['a']


# matrix
rm(list = ls())
m1 <- matrix(seq(1,16), nrow = 4)
m2 <- matrix(seq(1,12), ncol = 3)
rb1 <- rbind(c(1,5,9), c(2,6,10), c(3,7,11), c(4,8,12))
cbl <- cbind(seq(1,4), seq(5,8), seq(9,12))


# matrix 인덱싱
rm(list = ls())
m1 <- matrix(seq(1,16), nrow = 4)
m1_2 <- m1[1,2]
m4_all <- m1[4,]
mall_e3 <- m1[,-3]
m24_1 <- m1[c(2,4), 1]
m13_all <- m1[c(TRUE,FALSE,TRUE,FALSE),]


# array
rm(list = ls())
al <- array(1:16, dim = c(2,4,2))
print(al)


# data.frame
rm(list = ls())
total_bill <- c(16.99, 10.34, 21.01, 23.68)
tip <- c(1.01, 1.66, 3.50, 3.31)
sex <- c('Female','Male','Male','Male')
smoker <- c('No', 'Yes', 'No', 'Yes')
df <- data.frame(total_bill,tip,sex,smoker)


# data.frame 인덱싱
df2_4 <- df[2,4]
df2_all <- df[2,]
dfall_tip <- df[,'tip']
df_tip <- df$tip
df123_34 <- df[seq(1,3), c(3,4)]
dfall_234 <- df[,2:4]
df_col2 <- df[2]
df_col2_v <- df[[2]]
df_ecol2 <- df[-2]


# list 인덱싱
rm(list = ls())
l = list(name = c('Tom','Cruise'), age = 60, height = 170)
l_name = l['name']
l_name2 = l$name
l_name3 = l[1]
l_name4 = l[[1]]


# 데이터 저장, 불러오기 (csv)
rm(list = ls())
total_bill <- c(16.99, 10.34, 21.01, 23.68)
tip <- c(1.01, 1.66, 3.50, 3.31)
sex <- c('Female','Male','Male','Male')
smoker <- c('No', 'Yes', 'No', 'Yes')
df <- data.frame(total_bill,tip,sex,smoker)
print(df)
write.csv(df,'data/test.csv', row.names = FALSE)
df2 <- read.csv('data\\test.csv', fileEncoding = 'UTF-8-BOM')
print(df2)


# 데이터 저장, 불러오기 (Rdata)
save(df2, file = 'data/test.Rdata')
rm(list = ls())
ls()
load('data/test.Rdata')
print(df2)


# 새 컬럼 추가/삭제하기
df2$day <- c('Sun', 'Sat', 'Fri', 'Sun')
df2['size'] <- c(2, 3, 3, 2)
df2$bill_per_person <- df2['total_bill'] / df2['size']
df2['bill_per_person'] <- df2['total_bill'] / df2['size']
df2['bill_per_person'] <- df2['total_bill'] / c(2, 3, 3, 2)
print(df2)
df3 <- subset(df2, subset = (bill_per_person > 7.5), select =  -total_bill)
df4 <- subset(df2, subset = (bill_per_person > 7.5), select = c(tip,sex,smoker,day,size,bill_per_person))
colnames(df4)[1] <- 'bill'


# EDA 
rm(list = ls())
View(iris)
head(iris, )
head(iris, 3)
tail(iris, )
tail(iris, 3)
summary(iris)
str(iris)


# Boxplot
boxplot(Sepal.Width ~ Species, data=iris)
summary(iris)


# Histogram
rm(list = ls())
sp1 = iris[,'Sepal.Length']
sp2 = iris['Sepal.Length']
hist(x = iris[,'Sepal.Length'])


# 형변환
rm(list = ls())
int <- as.integer(1.32)
chr <- as.character(365)
logic_TRUE <- as.numeric(TRUE)
logic_FALSE <- as.numeric(FALSE)
date1 <- as.Date('2022-09-12')
date2 <- as.Date('09/12/2022', format = '%m/%d/%Y')
today1 <- format(Sys.Date())
today2 <- format(Sys.Date(), format = '%m/%d/%Y')
weekday <- weekdays(date1)
m <- matrix(1:4, nrow=2)
v_m <- as.vector(m)


# apply
rm(list = ls())
m <- matrix(1:16, nrow = 4)
m3_sum <- apply(m, 1, sum)
m3_mean <- apply(m, 2, mean)
m3_max <- apply(m, 1, max)


# lapply, sapply, tapply
rm(list = ls())
l <- list(c(1,2,3), c(4,5,6))
la <- lapply(l, sum)
ls <- sapply(c(1,2,3), function(x) {x * 2 + 3})
t_iris <- tapply(iris$Sepal.Length, iris$Species, mean)


# reshape
rm(list = ls())
install.packages('reshape')
library('reshape')

data(airquality)
names(airquality)
colnames(airquality) <- tolower(colnames(airquality))
names(airquality)

air_melt <- melt(airquality, id=c('month', 'day'), na.rm = T)

air_cast <- cast(air_melt, day ~ month ~ variable)
print(air_cast)

air_cast_month_mean <- cast(air_melt, month ~ variable, mean)
print(air_cast_month_mean)

air_cast_month_mean_gco1 <- cast(air_melt, month ~ variable, mean, margins = c('grand_row'))
print(air_cast_month_mean_gco1)

air_cast_month_mean_wind <- cast(air_melt, day ~ month, mean, subset = (variable == 'wind'))
print(air_cast_month_mean_wind)

air_cast_month_range <- cast(air_melt, month ~ variable, range)
print(air_cast_month_range)


# sqldf
rm(list = ls())
install.packages('sqldf')
library('sqldf')

data(iris)
iris_all <- sqldf('select * from iris')
iris_head <- sqldf('select * from iris limit 6')
iris_setosa <- sqldf('select * from iris where species like "se%"')


# plyr
install.packages('plyr')
library('plyr')

rm(list = ls())
set.seed(123)
df_year <- data.frame(year=rep(2022:2024, each = 7), value = runif(21,1,100))


#ddply
df_year_dd <- ddply(df_year, 'year', function(x){
  mean_value <- mean(x$value)
  sd_value <- sd(x$value)
  cv <- sd_value / mean_value
  data.frame(m.value = mean_value, s.value = sd_value, cv.value = cv)
})

df_year_dd_s <- ddply(df_year, .(year), summarise, mean.value = mean(value))
df_year_dd_t <- ddply(df_year, .(year), transform, mean.value = mean(value))


#adply
rm(list = ls())
data(iris)
iris_ad <- adply(iris, 1, function(x) {x$Sepal.Length > 5 & x$Species == 'setosa'})
print(iris_ad)


# 기타 함수
rm(list = ls())
fruit <- c('orange', 'banana', 'apple', 'peach')
fruit_substr <- substr(fruit, 2,3)

iris_split <- split(iris, iris$Species)

n <- c(1,2,3,4,5)
a <- c('a', 'b', 'c')
na_paste <- paste(n, a)