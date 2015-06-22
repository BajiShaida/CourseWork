library(RCurl)
library(XML)
library(qdapRegex)
library(raster)
url<-"http://www.sec.gov/cgi-bin/browse-edgar?company=microsoft&owner=exclude&action=getcompany"
html <- getURL(url, followlocation = TRUE)  
doc = htmlParse(html, asText =TRUE,trim = TRUE)
plain.text2 <- xpathSApply(doc, "//table//td[2]", simplify = TRUE,xmlValue)
plain.text3 <- xpathSApply(doc, "//table//td[1]", simplify = TRUE,xmlValue)
plain.text1 <- xpathSApply(doc, "//table//td//a",xmlGetAttr,'href', simplify = TRUE)
data1<-substring(plain.text2,0,23)
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
        cmp<-gsub("[[:space:]]", "+", str)
        str1<-"http://www.sec.gov/cgi-bin/browse-edgar?company="
        str2<-"&owner=exclude&action=getcompany"
        
        
        url<-paste(str1,cmp,str2,sep="")
        html <- getURL(url, followlocation = TRUE)  
        doc = htmlParse(html, asText =TRUE,trim = TRUE)
        
        #getting the tabler Elements.
        plain.text2 <- xpathSApply(doc, "//table//td[1]", simplify = TRUE,xmlValue)
        data1<-plain.text2[c(-1,-2)]
        print(data1)
        
        ##getting the href Links for the tabler Elements.
        plain.text1 <- xpathSApply(doc, "//table//td//a",xmlGetAttr,'href', simplify = TRUE)
        link<-grep(".htm",plain.text1)
        
        #Creating The Directory With company Name.
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
                        
                        #Providing the Path For storing the Files.
                        myfolder=file.path(myfolder2,data1[i] )
                        path<-paste(myfolder,i,".html",sep="")
                        
                        #downloading the Files.
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


##Another Way To Doing the Repiting the Function.

company<-function()
{
        library(RCurl)
        library(XML)
        library(qdapRegex)
        library(raster)
        
        str<-readline(prompt="Enter The Company Name:") 
        cmp<-gsub("[[:space:]]", "+", str)
        str1<-"http://www.sec.gov/cgi-bin/browse-edgar?company="
        str2<-"&owner=exclude&action=getcompany"
        
        
        url<-paste(str1,cmp,str2,sep="")
        html <- getURL(url, followlocation = TRUE)  
        doc = htmlParse(html, asText =TRUE,trim = TRUE)
        
        plain.text2 <- xpathSApply(doc, "//table//td[1]", simplify = TRUE,xmlValue)
        data1<-plain.text2[c(-1,-2)]
        print(data1)
        if(length(data1)==0)
        {
                print("Please Enter the Company Name Correctly")
        }
        else
        {
                file1<-readline(prompt="Enter The File To be download:") 
                
                plain.text1 <- xpathSApply(doc, "//table//td//a",xmlGetAttr,'href', simplify = TRUE)
                link<-grep(".htm",plain.text1)
                
                myfolder1=file.path("D:", "baji", "projects","text",str )
                dir.create(myfolder1)
                myfolder2=file.path("D:", "baji", "projects","text",str) 
                
                h<-length(data1)
                k<-0
                for(i in 1:h)
                {
                        if(data1[i]==file1 | data1[i]==file1)
                        {     
                                url<-"http://www.sec.gov"
                                h<-paste(url,plain.text1[link[i]],sep="")
                                html1 <- getURL(h, followlocation = TRUE)
                                doc1 = htmlParse(html1, asText =TRUE,trim = TRUE)
                                
                                plain.text <- xpathSApply(doc1, "//table//td//a",xmlGetAttr,'href', simplify = TRUE)
                                
                                myfolder=file.path(myfolder2,data1[i] )
                                path<-paste(myfolder,i,".html",sep="")
                                
                                
                                download.file(paste(url,plain.text[1],sep=""), destfile = path,method = "auto")
                                #print(plain.text)
                                print(data1[i])
                                k<-k+1
                                
                        }
                        
                }
                choose<-readline(prompt="Do You Want To Continue.(Yes/No):")  
                if(choose=="Yes" | choose=="yes")
                {
                        company()
                }
                else
                {
                        break   
                }
                if(k==0)
                {
                        print("there are 10-Q and 10-K Files are Not Avaliable ")
                }
        }
}

###Anpther Way Of Finding or Downloading the Files.

company<-function()
{
        library(RCurl)
        library(XML)
        library(qdapRegex)
        library(raster)
        
        str<-readline(prompt="Enter The Company Name:") 
        cmp<-gsub("[[:space:]]", "+", str)
        str1<-"http://www.sec.gov/cgi-bin/browse-edgar?company="
        str2<-"&owner=exclude&action=getcompany"
        
        url<-paste(str1,cmp,str2,sep="")
        html <- getURL(url, followlocation = TRUE)  
        doc = htmlParse(html, asText =TRUE,trim = TRUE)
        
        plain.text2 <- xpathSApply(doc, "//table//td[1]", simplify = TRUE,xmlValue)
        plain.txt <- xpathSApply(doc, "//table//td[2]", simplify = TRUE,xmlValue)
        data2<-plain.txt
        data1<-plain.text2
        print(data1)
        if(length(data1)==0)
        {
                print("Please Enter the Company Name Correctly")
        }
        else
        {
                plain.text1 <- xpathSApply(doc, "//table//td//a",xmlGetAttr,'href', simplify = TRUE)
                link<-grep(".htm",plain.text1)
                
                myfolder1=file.path("D:", "baji", "projects","text",str )
                dir.create(myfolder1)
                myfolder2=file.path("D:", "baji", "projects","text",str) 
                
                h<-length(data1)
                k<-0
                if(regexpr("000", data1)!=1)
                {
                        compn<-readline(prompt="Enter The File To be download:") 
                        for(i in 1:h)
                        {
                                data1<-plain.text2[c(-1,-2)]
                                if(data1[i]==compn | data1[i]==compn)
                                {
                                        url<-"http://www.sec.gov"
                                        h<-paste(url,plain.text1[link[i]],sep="")
                                        html1 <- getURL(h, followlocation = TRUE)
                                        doc1 = htmlParse(html1, asText =TRUE,trim = TRUE)
                                        
                                        plain.text <- xpathSApply(doc1, "//table//td//a",xmlGetAttr,'href', simplify = TRUE)
                                        
                                        myfolder=file.path(myfolder2,data1[i] )
                                        path<-paste(myfolder,i,".html",sep="")
                                        
                                        download.file(paste(url,plain.text[1],sep=""), destfile = path,method = "auto")
                                        #print(plain.text)
                                        print(data1[i])
                                        k<-k+1   
                                }
                        }
                }     
                else
                {
                        print(data2)
                        compn<-readline(prompt="Enter The File To be download:") 
                        file1<-grep(compn,data2,ignore.case = TRUE)
                        str1<-"http://www.sec.gov/cgi-bin/browse-edgar?action=getcompany&CIK="
                        str2<-"&owner=exclude&count=40&hidefilings=0"
                        url1<-paste(str1,data1[file1],str2,sep="")
                        html <- getURL(url1, followlocation = TRUE)  
                        doc = htmlParse(html, asText =TRUE,trim = TRUE)
                        
                        plain.text3 <- xpathSApply(doc, "//table//td[1]", simplify = TRUE,xmlValue)
                        data3<-plain.text3[c(-1,-2)]
                        print(data3)
                        if( length(data3)==0)
                        {
                                print("there are No Files are There.")
                        }
                        else
                        {
                                file1<-readline(prompt="Enter The File Name:") 
                                
                                plain.text4 <- xpathSApply(doc, "//table//td//a",xmlGetAttr,'href', simplify = TRUE)
                                link<-grep(".htm",plain.text4)
                                w<-length(data3)
                                for(i in 1:w)
                                {
                                        if(data3[i]==file1 | data3[i]==file1)
                                        {
                                                url<-"http://www.sec.gov"
                                                h<-paste(url,plain.text4[link[i]],sep="")
                                                html2 <- getURL(h, followlocation = TRUE)
                                                doc2 = htmlParse(html2, asText =TRUE,trim = TRUE)
                                                
                                                plain.text <- xpathSApply(doc2, "//table//td//a",xmlGetAttr,'href', simplify = TRUE)
                                                
                                                myfolder=file.path(myfolder2,data3[i] )
                                                path<-paste(myfolder,i,".html",sep="")
                                                
                                                download.file(paste(url,plain.text[1],sep=""), destfile = path,method = "auto")
                                                #print(plain.text)
                                                print(data2[i])
                                                k<-k+1
                                        }
                                }
                        }
                        
                }
                if(k==0)
                {
                        print("there are 10-Q and 10-K Files are Not Avaliable ")
                }
        }
}

