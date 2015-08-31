
#############[第一部份].R 的基本資料屬性包含以下五種
class("test")
class(10.10)
class(10)
class(as.integer(3)) # 因為 R 計算上是都是以雙倍精確度來計算，所以必須指定為 integer，不然都會被當成 numeric
class(as.integer(3.1)) # as.integer 可以將不是整數的數值變成整數
class(as.integer(T)) # as.integer(T) = 1
class(as.integer(F)) # as.integer(T) = 0
class(2+2i)
class(TRUE) # 注意都要大寫，不可寫 True，但可以簡化成 T
class(T)

#############[第二部份].R的基本變數與資料
#2-1.一般變數
x = 12.5      	# 一般數值
A1= "John"		  #文字字串
z = FALSE		    # 邏輯值 TRUE/FALSE 或 T/F
y = 2.4e3     	# 2.4 x 10三次方 = 2400

A2 = paste(A1,"Dow",sep="")  	# A2="JohnDow"

x^2  			# 平方, 也可寫成 x**2
x + 3  ; x - 3 ; x * 3 ; x / 3 	# 加減乘除
x %/% 3   		            # 整除
x %% 3  		           # 餘數

#2-2.向量 (Vector)
x = c(1, 15.2, 33)                # c是combine的意思
y = c("男","女","女")             # 文字向量
z = c(TRUE,FALSE, FALSE, TRUE)    # 或 c(T,F,F,T)
x2 = x + 1	                      #  x2 = c(2, 16.2, 14)
x[2]		                          #  15.2
x[c(1,3)]	                        # 第一和第三個元素，就是(1, 33)         
x[-2]    	                        # 去掉第二個元素，也就是(1, 33)
y[3]		                          # "女"
y[1:2]		                       # c("男","女")
#vector 中所有元素都必須是同一種資料屬性
#c() 也可以被用來結合兩個向量
x <- c(1:5)  # 1:5 表示從1到5 . 就是(1,2,3,4,5) 
y <- c(2, 4, 8) 
z <- c(x, y) 
z

#2-3.Factor 變數
#其實就是”分類”的意思
#可以把”文字向量”分類，也可以把”數值向量”分類
gender = c("Boy","Girl","Girl","Boy","Girl")    # 文字向量
gender = as.factor(gender)  ;   gender		 # Factor 變數 # 用分號區隔指令

parttime = c(1,0,0,0,1)   		# 有無打工(數值向量)
parttime = as.factor(parttime)  ;  parttime	# Factor 變數
parttime[2]   		 # 顯示出第二筆資料(Factor 變數的指標使用跟向量變數一樣)


#2-4.串列 (List)
#是向量的的擴充，可包含不同屬性的元素
#list 是非常方便好用的資料形態。尤其是需儲存不同類型資料的時候，特別好用。
friend1 = list(fname="John",age=32,child.ages=c(2,5))
friend1

friend1$fname  				# 等於 friend1[[1]]  # $是指定變項 
friend1$age  	# 等於 friend1[[2]]
friend1$child.ages	# 等於 friend1[[3]]
friend1$child.ages[2]	# 等於 friend1[[3]][2]


#2-5.矩陣 (Matrix)
M1 <- matrix(c(1:144), 12, 12)

M1[6, ]
M1[, 6]

x1 = c(11,12,13)
x2 = c(21,22,23)
M1 = rbind(x1,x2)     #row bind; 視為橫列連起來
M2 = cbind(x1,x2) 	#column bind; 視為直行連起來

#2-6.資料框架 (Data Frame)
data(iris)
names(iris) # 查看變數名
dim(iris) # 查看列數與欄數
summary(iris)#基本敘述性統計量

iris    #把iris資料全部show出來

head(iris, 12)	# 只看前12筆資料
tail(iris, 12) # 只看尾巴12筆資料
iris1 <- iris[1:12, ]	# 把iris前12筆資料存成iris1

iris1[6, ]  	# iris1第6筆是多少(row)
iris1[c(4, 10) , ] #取得第4 及第10 列資料

#以下三種寫法都代表同一件事(Column)
iris1[, 2]  	# iris1第2筆是多少(Column)
iris1[, "Sepal.Width"] #和 iris1[, 2] 相同
iris1$Sepal.Width

subset(iris1, Sepal.Width >= 3.5)#取得Sepal.Width 大於等於3.5 的資料

############[第三部份].R的資料匯入與輸出
#3-1.如果我的檔案是.csv檔
babies = read.csv("d:/Rdata Practice/babies.csv")   #把babies.csv 叫進來
str(babies)     			#把babies資料的屬性show出來
head(babies , 15)				# 只看前15筆資料
tail(babies , 15) # 只看尾巴15筆資料

#3-2.如果我的檔案是.txt檔
xdata = read.table("d:/Rdata Practice/babies.txt",header=TRUE)   # header: 表頭
head(xdata)				# 只看前6筆資料

#3-3.另存新檔(輸出資料)
data <- iris # iris 是 R 內建的資料。
write.table(data, file = "d:/Rdata Practice/R BasicLab/test.CSV", sep = ",")

################[第四部份].合併與分割資料
#4-1.資料合併
x <- c(1, 2, 3)
y <- c(10, 20, 30)
union(x ,y) # union 如英文名稱就是取聯集
rbind(x, y) # 透過 row 合併
cbind(x, y) # 透過 column 合併

x <- cbind(c("Tom", "Joe", "Vicky"), c(27, 29, 28))
y <- cbind(c("Tom", "Joe", "Vicky"), c(178, 186, 168))
colnames(x) <- c("name", "age")
colnames(y) <- c("name", "tall")
merge(x, y, by = "name") # 將 data.frame 透過一個欄位進行合併

#4-2.資料分割
data <- iris
split(data, sample(rep(1:2, 75))) # rep(1:2, 75) 產生 1,2 交錯的向量，但加了前面的 sample 則是隨機抽取

data <- iris
subset(data, Sepal.Length > 5) # 只會出現 Sepal.Length > 5 的資料
subset(data, Sepal.Length > 5,select = Sepal.Length) # 只會出現 Sepal.Length > 5 的資料且欄位只有 Sepal
subset(data, Sepal.Length > 5,select = -Sepal.Length) # selct = 負的代表不要出現的欄位。

#[補充範圍]4-3.資料比例
#install.packages("dplyr")
library(dplyr)
data(iris)
X = summarise(group_by(iris, Species), tsl = sum(Sepal.Length))
y = X$tsl / sum(X$tsl)

pie(y,label=c("setosa","versicolor","virginica"),density=100,col=2:4)
dev.off()#把圖型清除

##################以下為本週回家作業(加分用)#########
##以下為本週回家作業(加分用)
-- 請以內建的iris資料集
- 查看變數名
- 查看資料結構(型態)
- 取得第50 及第100 列資料
- iris第100筆的資料是多少(Column)
- 切割一個新的集合(data set)，此集合中只要Sepal.Length > 4 的資料，同時共有多少筆?
- (當你的R-studio是新的，會有很多的packages你沒有安裝過，這時你一定常常會卡關，請試著排除障礙，自己去google，寫程式沒有捷徑，要下點苦功。加油)
