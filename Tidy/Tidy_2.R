#Tidy - 資料輸入與輸出

#資料輸入和輸出的函數都存在套件readr中
#可以使用：
#read_csv()：分隔符號為，的檔案
#read_csv2()：分隔符號為；的檔案(有些國家的小數點用，表示，就會出現這個檔案
#read_tsv()：分隔符號為tab檔案
#read_delim()：可以自行選擇分隔符號

#============================================
#輸入CSV檔案

#install.packages("magrittr", method = "wininet")
#install.packages("tidyverse", method = "wininet")
library(readr)


read_csv("file1.csv")
read_csv2("file2.csv")
read_delim("file3.txt",delim = "|")
read_tsv("file4.tsv")



#============================================
#輸出csv檔案

write_delim(read_delim("file3.txt",delim = "|"),
            "file3_write.txt",delim = "|")


#============================================
#輸入EXCEL檔案
#讀取Execl檔案用readxl套件
library(readxl)
excel_sheets("datasets.xlsx")  #sheets所有名稱

read_excel("datasets.xlsx")  #會讀取第一個sheet的所有資料

read_excel("datasets.xlsx", sheet = "chickwts")  #指定讀取哪個sheet

read_excel("datasets.xlsx", sheet = 4)  #sheet = 4：第4個sheet

#讀取前3筆資料
read_excel("datasets.xlsx", n_max = 3)

#讀取第幾格到第幾格儲存格
read_excel("datasets.xlsx", range = "C1:E4")

#讀取第幾列到第幾列儲存格
read_excel("datasets.xlsx", range = cell_rows(1:4))

#讀取第幾欄到第幾欄儲存格
read_excel("datasets.xlsx", range = cell_cols("B:D"))

#讀取指定sheet第幾格到第幾格儲存格
read_excel("datasets.xlsx", range = "quakes!B1:D5")

#將儲存格為setosa的改成na
read_excel("datasets.xlsx", na = "setosa")


#==============================================
#輸出excel檔案
#常出現異常
