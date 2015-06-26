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
        plain.text11 <- xpathSApply(doc, "//table//td[2]", simplify = TRUE,xmlValue)
        data1<-plain.text2
        data2<-plain.text11
        print(data1)
        if(length(data1)==0)
        {
                print("Please Enter the Company Name Correctly")
        }
        else
        {
                myfolder1=file.path("D:", "baji", "projects","text",str )
                dir.create(myfolder1)
                myfolder2=file.path("D:", "baji", "projects","text",str) 
                if(regexpr("000", data1[1])!=1)
                { 
                        data1<-plain.text2[c(-1,-2)]
                        
                        plain.text1 <- xpathSApply(doc, "//table//td//a",xmlGetAttr,'href', simplify = TRUE)
                        link<-grep(".htm",plain.text1)
                        
                        MainFile(url,myfolder2,doc)
                }
                else
                {
                        print(data2)
                        compn<-readline(prompt="Enter The Company Name:") 
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
                                plain.text4 <- xpathSApply(doc, "//table//td//a",xmlGetAttr,'href', simplify = TRUE)
                                link<-grep(".htm",plain.text4)
                                
                                MainFile(url,myfolder2,doc)
                        }
                }
        }
}

MainFile<-function(url,myfolder2,doc)
{
        str4<-"http://www.sec.gov/cgi-bin/browse-edgar?action=getcompany&CIK="
        str5<-"&type="
        str6<-"&dateb="
        str7<-"&owner=exclude&count=100"
        k<-0
        ##CIK NUMBER
        plain.text10 <- xpathSApply(doc, "//div//span//a",xmlValue, simplify = TRUE)
        data10<- gsub("[a-zA-Z() ]","",plain.text10)
        
        print("1.Do you Want Search According To File...")
        print("2.Do You Want To Search According To File AND ReQuired Date...")
        option<-readline(prompt="Enter Your Option:")
        switch(option,
               "1"={
                       file1<-readline(prompt="Enter The File To be download:") 
                       url<-paste(str4,data10,str5,file1,str6,str7,sep = "")
                       k<-k+1
               },
               "2"={
                       file1<-readline(prompt="Enter The File To be download:") 
                       date<-readline(prompt="Enter Required Date(YYYY-mm-dd):")
                       date<-gsub("[-]","",date)
                       url<-paste(str4,data10,str5,file1,str6,date,str7,sep = "")
                       k<-k+1
               },
               stop("Enter something that switches me!"))
        html1 <- getURL(url, followlocation = TRUE)
        doc1 = htmlParse(html1, asText =TRUE,trim = TRUE)
        
        plain.text2 <- xpathSApply(doc1, "//table//td//a",xmlGetAttr,'href', simplify = TRUE)
        link1<-grep(".htm",plain.text2)
        print(link1)
        plain.text <- xpathSApply(doc1, "//table//td[4]",xmlValue,simplify = TRUE)
        #plain.text <- xpathSApply(doc1, "//table//td[4]",xmlValue,simplify = TRUE)
        data11<-plain.text
        if(length(data11)==0)
        {
                print("There is No Data Found With This Requirement..")
        }
        else
        {       
                print(data11[-1]) 
                data11<-data11[-1]
                print("1.Do You Want To DownLoad Single File:")
                print("2.Do You want To Download Multiple Files In same Year..")
                
                option2<-readline(prompt="Enter Your Option:") 
                switch(option2,
                       "1"={
                               compn<-readline(prompt="Enter The File To be download:")
                               file12<-NULL
                       },
                       
                       "2"={
                               compn<-readline(prompt="Enter The File To be download:")
                               file12<-grep(compn,data11,ignore.case = TRUE)
                       },
                       stop("Enter something that switches me!"))
                n<-length(file12)
                h<-length(data11)
                for(i in 1:h)
                {
                        for(j in 1:n)
                        {
                                if((data11[i]==compn|data11[i]==compn) || data11[file12[j]]==data11[i])
                                {
                                        url<-"http://www.sec.gov"
                                        h<-paste(url,plain.text2[link1[i]],sep="")
                                        html1 <- getURL(h, followlocation = TRUE)
                                        doc2 = htmlParse(html1, asText =TRUE,trim = TRUE)
                                        
                                        plain.text <- xpathSApply(doc2, "//table//td//a",xmlGetAttr,'href', simplify = TRUE)
                                        
                                        myfolder=file.path(myfolder2,data11[i] )
                                        path<-paste(myfolder,i,".html",sep="")
                                        
                                        download.file(paste(url,plain.text[1],sep=""), destfile = path,method = "auto")
                                        #print(plain.text)
                                        print(data11[i])
                                } 
                        }
                }
                if(k==0)
                {
                        print("there are 10-Q and 10-K Files are Not Avaliable ")
                }
        }
}

