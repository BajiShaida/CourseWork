webpage<-function(){
  
  url<-readline(prompt="Enter The Web Address:") 
  htmltotext(url)
}
htmltotext<-function(url)
{
  library(RCurl)
  library(XML)
  html <- getURL(url, followlocation = TRUE)
  doc = htmlParse(html, asText =TRUE)
  plain.text <- xpathSApply(doc, "//p", xmlValue)
  write.table(plain.text,"D:/baji/projects/exe.txt")
  print(plain.text)
}
