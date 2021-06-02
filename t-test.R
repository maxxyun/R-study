library(readxl)

data<-readxl::read_excel(path = "D:\\Download\\t-test.xlsx",
                         sheet = 'Sheet1',
                         #range = "A1:A51", 
                         col_names =TRUE)
shapiro.test(data$Weight)

t.test(data$Weight,mu=300,alternative = 'two.sided')
