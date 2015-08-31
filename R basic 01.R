
#############[�Ĥ@����].R ���򥻸���ݩʥ]�t�H�U����
class("test")
class(10.10)
class(10)
class(as.integer(3)) # �]�� R �p��W�O���O�H������T�רӭp��A�ҥH�������w�� integer�A���M���|�Q���� numeric
class(as.integer(3.1)) # as.integer �i�H�N���O��ƪ��ƭ��ܦ����
class(as.integer(T)) # as.integer(T) = 1
class(as.integer(F)) # as.integer(T) = 0
class(2+2i)
class(TRUE) # �`�N���n�j�g�A���i�g True�A���i�H²�Ʀ� T
class(T)

#############[�ĤG����].R�����ܼƻP���
#2-1.�@���ܼ�
x = 12.5      	# �@��ƭ�
A1= "John"		  #��r�r��
z = FALSE		    # �޿�� TRUE/FALSE �� T/F
y = 2.4e3     	# 2.4 x 10�T���� = 2400

A2 = paste(A1,"Dow",sep="")  	# A2="JohnDow"

x^2  			# ����, �]�i�g�� x**2
x + 3  ; x - 3 ; x * 3 ; x / 3 	# �[���
x %/% 3   		            # �㰣
x %% 3  		           # �l��

#2-2.�V�q (Vector)
x = c(1, 15.2, 33)                # c�Ocombine���N��
y = c("�k","�k","�k")             # ��r�V�q
z = c(TRUE,FALSE, FALSE, TRUE)    # �� c(T,F,F,T)
x2 = x + 1	                      #  x2 = c(2, 16.2, 14)
x[2]		                          #  15.2
x[c(1,3)]	                        # �Ĥ@�M�ĤT�Ӥ����A�N�O(1, 33)         
x[-2]    	                        # �h���ĤG�Ӥ����A�]�N�O(1, 33)
y[3]		                          # "�k"
y[1:2]		                       # c("�k","�k")
#vector ���Ҧ������������O�P�@�ظ���ݩ�
#c() �]�i�H�Q�Ψӵ��X��ӦV�q
x <- c(1:5)  # 1:5 ���ܱq1��5 . �N�O(1,2,3,4,5) 
y <- c(2, 4, 8) 
z <- c(x, y) 
z

#2-3.Factor �ܼ�
#���N�O�����������N��
#�i�H�⡨��r�V�q�������A�]�i�H�⡨�ƭȦV�q������
gender = c("Boy","Girl","Girl","Boy","Girl")    # ��r�V�q
gender = as.factor(gender)  ;   gender		 # Factor �ܼ� # �Τ����Ϲj���O

parttime = c(1,0,0,0,1)   		# ���L���u(�ƭȦV�q)
parttime = as.factor(parttime)  ;  parttime	# Factor �ܼ�
parttime[2]   		 # ��ܥX�ĤG�����(Factor �ܼƪ����Шϥθ�V�q�ܼƤ@��)


#2-4.��C (List)
#�O�V�q�����X�R�A�i�]�t���P�ݩʪ�����
#list �O�D�`��K�n�Ϊ���ƧκA�C�ר�O���x�s���P������ƪ��ɭԡA�S�O�n�ΡC
friend1 = list(fname="John",age=32,child.ages=c(2,5))
friend1

friend1$fname  				# ���� friend1[[1]]  # $�O���w�ܶ� 
friend1$age  	# ���� friend1[[2]]
friend1$child.ages	# ���� friend1[[3]]
friend1$child.ages[2]	# ���� friend1[[3]][2]


#2-5.�x�} (Matrix)
M1 <- matrix(c(1:144), 12, 12)

M1[6, ]
M1[, 6]

x1 = c(11,12,13)
x2 = c(21,22,23)
M1 = rbind(x1,x2)     #row bind; ������C�s�_��
M2 = cbind(x1,x2) 	#column bind; ��������s�_��

#2-6.��Ʈج[ (Data Frame)
data(iris)
names(iris) # �d���ܼƦW
dim(iris) # �d�ݦC�ƻP���
summary(iris)#�򥻱ԭz�ʲέp�q

iris    #��iris��ƥ���show�X��

head(iris, 12)	# �u�ݫe12�����
tail(iris, 12) # �u�ݧ���12�����
iris1 <- iris[1:12, ]	# ��iris�e12����Ʀs��iris1

iris1[6, ]  	# iris1��6���O�h��(row)
iris1[c(4, 10) , ] #���o��4 �β�10 �C���

#�H�U�T�ؼg�k���N���P�@���(Column)
iris1[, 2]  	# iris1��2���O�h��(Column)
iris1[, "Sepal.Width"] #�M iris1[, 2] �ۦP
iris1$Sepal.Width

subset(iris1, Sepal.Width >= 3.5)#���oSepal.Width �j�󵥩�3.5 �����

############[�ĤT����].R����ƶפJ�P��X
#3-1.�p�G�ڪ��ɮ׬O.csv��
babies = read.csv("d:/Rdata Practice/babies.csv")   #��babies.csv �s�i��
str(babies)     			#��babies��ƪ��ݩ�show�X��
head(babies , 15)				# �u�ݫe15�����
tail(babies , 15) # �u�ݧ���15�����

#3-2.�p�G�ڪ��ɮ׬O.txt��
xdata = read.table("d:/Rdata Practice/babies.txt",header=TRUE)   # header: ���Y
head(xdata)				# �u�ݫe6�����

#3-3.�t�s�s��(��X���)
data <- iris # iris �O R ���ت���ơC
write.table(data, file = "d:/Rdata Practice/R BasicLab/test.CSV", sep = ",")

################[�ĥ|����].�X�ֻP���θ��
#4-1.��ƦX��
x <- c(1, 2, 3)
y <- c(10, 20, 30)
union(x ,y) # union �p�^��W�ٴN�O���p��
rbind(x, y) # �z�L row �X��
cbind(x, y) # �z�L column �X��

x <- cbind(c("Tom", "Joe", "Vicky"), c(27, 29, 28))
y <- cbind(c("Tom", "Joe", "Vicky"), c(178, 186, 168))
colnames(x) <- c("name", "age")
colnames(y) <- c("name", "tall")
merge(x, y, by = "name") # �N data.frame �z�L�@�����i��X��

#4-2.��Ƥ���
data <- iris
split(data, sample(rep(1:2, 75))) # rep(1:2, 75) ���� 1,2 ������V�q�A���[�F�e���� sample �h�O�H�����

data <- iris
subset(data, Sepal.Length > 5) # �u�|�X�{ Sepal.Length > 5 �����
subset(data, Sepal.Length > 5,select = Sepal.Length) # �u�|�X�{ Sepal.Length > 5 ����ƥB���u�� Sepal
subset(data, Sepal.Length > 5,select = -Sepal.Length) # selct = �t���N�����n�X�{�����C

#[�ɥR�d��]4-3.��Ƥ��
#install.packages("dplyr")
library(dplyr)
data(iris)
X = summarise(group_by(iris, Species), tsl = sum(Sepal.Length))
y = X$tsl / sum(X$tsl)

pie(y,label=c("setosa","versicolor","virginica"),density=100,col=2:4)
dev.off()#��ϫ��M��

##################�H�U�����g�^�a�@�~(�[����)#########
##�H�U�����g�^�a�@�~(�[����)
-- �ХH���ت�iris��ƶ�
- �d���ܼƦW
- �d�ݸ�Ƶ��c(���A)
- ���o��50 �β�100 �C���
- iris��100������ƬO�h��(Column)
- ���Τ@�ӷs�����X(data set)�A�����X���u�nSepal.Length > 4 ����ơA�P�ɦ@���h�ֵ�?
- (���A��R-studio�O�s���A�|���ܦh��packages�A�S���w�˹L�A�o�ɧA�@�w�`�`�|�d���A�иյ۱ư���ê�A�ۤv�hgoogle�A�g�{���S�����|�A�n�U�I�W�\�C�[�o)