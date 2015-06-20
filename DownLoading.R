library(RCurl)
library(XML)
library(qdapRegex)
library(raster)
url<-"http://www.sec.gov/cgi-bin/browse-edgar?company=microsoft%20corp&owner=exclude&action=getcompany"
html <- getURL(url, followlocation = TRUE)  
doc = htmlParse(html, asText =TRUE,trim = TRUE)
plain.text2 <- xpathSApply(doc, "//table//td[1]", simplify = TRUE,xmlValue)
plain.text1 <- xpathSApply(doc, "//table//td//a",xmlGetAttr,'href', simplify = TRUE)
data1<-plain.text2[c(-1,-2)]
print(data1)
link<-grep(".htm",plain.text1)
h<-length(data1)
for(i in 1:h)
{
        if(data1[i]=="10-Q" | data1[i]=="10-K")
        {     
                url<-"http://www.sec.gov"
                h<-paste(url,plain.text1[link[i]],sep="")
                html1 <- getURL(h, followlocation = TRUE)
                doc1 = htmlParse(html1, asText =TRUE,trim = TRUE)
                
                plain.text <- xpathSApply(doc1, "//table//td//a",xmlGetAttr,'href', simplify = TRUE)
                
                myfolder=file.path("D:", "baji", "projects","text",data1[i] )
                path<-paste(myfolder,i,".html",sep="")
                
                
                download.file(paste(url,plain.text[1],sep=""), destfile = path )
                #print(plain.text)
                print(data1[i])
                
        }
        
}


##Second Method For Downloading and saving another Folder.

company<-function(companyName)
{
        library(RCurl)
        library(XML)
        library(qdapRegex)
        library(raster)
        
        str<-companyName
        s1<-substring(str,0,regexpr(" ", str)-1)
        s2<-substring(str,regexpr(" ", str)+1)
        cmp<-paste(s1,"+",s2,sep = "")
        str1<-"http://www.sec.gov/cgi-bin/browse-edgar?company="
        str2<-"&owner=exclude&action=getcompany"
        
        
        url<-paste(str1,cmp,str2,sep="")
        html <- getURL(url, followlocation = TRUE)  
        doc = htmlParse(html, asText =TRUE,trim = TRUE)
        
        plain.text2 <- xpathSApply(doc, "//table//td[1]", simplify = TRUE,xmlValue)
        data1<-plain.text2[c(-1,-2)]
        print(data1)
        
        plain.text1 <- xpathSApply(doc, "//table//td//a",xmlGetAttr,'href', simplify = TRUE)
        link<-grep(".htm",plain.text1)
        
        myfolder1=file.path("D:", "baji", "projects","text",str )
        dir.create(myfolder1)
        myfolder2=file.path("D:", "baji", "projects","text",str) 
        
        h<-length(data1)
        for(i in 1:h)
        {
                k=0
                if(data1[i]=="10-Q" | data1[i]=="10-K")
                {     
                        url<-"http://www.sec.gov"
                        h<-paste(url,plain.text1[link[i]],sep="")
                        html1 <- getURL(h, followlocation = TRUE)
                        doc1 = htmlParse(html1, asText =TRUE,trim = TRUE)
                        
                        plain.text <- xpathSApply(doc1, "//table//td//a",xmlGetAttr,'href', simplify = TRUE)
                        
                        myfolder=file.path(myfolder2,data1[i] )
                        path<-paste(myfolder,i,".html",sep="")
                        
                        
                        download.file(paste(url,plain.text[1],sep=""), destfile = path )
                        #print(plain.text)
                        print(data1[i])
                        k<-k+1
                }
                
                
        }
        if(k==0)
        {
                print("there are 10-Q and 10-K Files are Not Avaliable ")
        }
        
}