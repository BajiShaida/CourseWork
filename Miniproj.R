htmlpage<-function(url)
{
        library(RCurl)
        library(XML)
        library(qdapRegex)
        library(raster)
        html <- getURL(url, followlocation = TRUE)
        doc = htmlParse(html, asText =TRUE,trim = TRUE)
        plain.text1 <- xpathSApply(doc, "//table//li",xmlValue,simplify = TRUE)
        plain.text <- xpathSApply(doc, "//table//li//a",simplify = TRUE,xmlGetAttr, 'href')
        k<-rbind(plain.text1,plain.text)
        print(plain.text[1])
        
        n<-length(plain.text1)
        try(
                for(i in 1:n)
                {
                        
                        h<-paste(url,plain.text[i],sep="")[[1]]
                        html1 <- getURL(h, followlocation = TRUE)
                        doc1 = htmlParse(html1, asText =TRUE,trim = TRUE)
                        plain.text2 <- xpathSApply(doc1, "//p",xmlValue,simplify = TRUE)
                        print(plain.text2[1])
                        
                        
                })
        
}