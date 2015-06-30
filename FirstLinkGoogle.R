FirstLink1<-function()
{
        library(RCurl)
        library(XML)
        library(httr)
        name<-readline(prompt = "Enter The Searching Name:")
        name<-gsub("[[:space:]]", "+", name)
        u <- "http://www.google.co.in/search?aq=f&gcx=w&sourceid=chrome&ie=UTF-8&q="
        lik<-paste(u,name,sep = "")  
        
        html <- getURL(lik)
        
        # parse HTML into tree structure
        doc <- htmlParse(html)
        
        # extract url nodes using XPath. Originally I had used "//a[@href][@class='l']" until the google code change.
        plain.text2 <- xpathSApply(doc, "//h3//a",xmlGetAttr,'href',simplify = TRUE)
        data1<-plain.text2
        
        # free doc from memory
        free(doc)
        
        # ensure urls start with "http" to avoid google references to the search page
        data1<-rm_url(data1,extract = TRUE)
        data1<-substring(data1,0,regexpr("&", data1)-1)
        data2<-data1[!is.na(data1)]
        data2<-data2[data2!=""]
        print(data2)
        BROWSE(data2[[1]])
} 