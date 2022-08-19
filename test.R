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