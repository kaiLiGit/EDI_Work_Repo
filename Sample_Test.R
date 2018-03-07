# Package ID: edi.8.5 Cataloging System:https://pasta.edirepository.org.
# Data set title: Global Lake Ecological Observatory Network: Long term chloride concentration from 529 			lakes and reservoirs around North America and Europe: 1940-2016.
# Data set creator:  Hilary Dugan - University of Wisconsin-Madison 
# Data set creator:  Sarah Bartlett - University of Wisconsin-Milwaukee 
# Data set creator:  Samantha Burke - University of Waterloo 
# Data set creator:  Jonathan Doubek - Virginia Tech 
# Data set creator:  Flora Krivak-Tetley - Dartmouth College 
# Data set creator:  Nicholas Skaff - Department of Fisheries and Wildlife; Michigan State
University 
# Data set creator:  Jamie Summers - Queen’s University 
# Contact:  Hilary Dugan -  University of Wisconsin-Madison  - hilarydugan@gmail.com
# Stylesheet for metadata conversion into program: John H. Porter, Univ. Virginia, jporter@virginia.edu 

infile1  <- "https://pasta.lternet.edu/package/data/eml/edi/8/5/48fc1f572d5250de8236935396c910d0" 
infile1 <- sub("^https","http",infile1) 
dt1 <-read.csv(infile1,header=F 
               ,skip=1
               ,sep=","  
               , col.names=c(
                 "SALT_ID",     
                 "FileName",     
                 "Common.Name",     
                 "Station",     
                 "Sample.Date",     
                 "Sample.Depth",     
                 "Chloride",     
                 "Decimal.Date",     
                 "Std.Chloride",     
                 "Integrated.Depth"    ), check.names=TRUE)


# Fix any interval or ratio columns mistakenly read in as nominal and nominal columns read as numeric or dates read as strings

if (class(dt1$SALT_ID)=="factor") dt1$SALT_ID <-as.numeric(levels(dt1$SALT_ID))[as.integer(dt1$SALT_ID) ]
if (class(dt1$FileName)!="factor") dt1$FileName<- as.factor(dt1$FileName)
if (class(dt1$Common.Name)!="factor") dt1$Common.Name<- as.factor(dt1$Common.Name)
if (class(dt1$Station)!="factor") dt1$Station<- as.factor(dt1$Station)                                   
# attempting to convert dt1$Sample.Date dateTime string to R date structure (date or POSIXct)                                
tmpDateFormat<-"%Y-%m-%d"
dt1$Sample.Date<-as.Date(dt1$Sample.Date,format=tmpDateFormat)
rm(tmpDateFormat) 
if (class(dt1$Sample.Depth)=="factor") dt1$Sample.Depth <-as.numeric(levels(dt1$Sample.Depth))[as.integer(dt1$Sample.Depth) ]
if (class(dt1$Chloride)=="factor") dt1$Chloride <-as.numeric(levels(dt1$Chloride))[as.integer(dt1$Chloride) ]
if (class(dt1$Decimal.Date)=="factor") dt1$Decimal.Date <-as.numeric(levels(dt1$Decimal.Date))[as.integer(dt1$Decimal.Date) ]
if (class(dt1$Std.Chloride)=="factor") dt1$Std.Chloride <-as.numeric(levels(dt1$Std.Chloride))[as.integer(dt1$Std.Chloride) ]
if (class(dt1$Integrated.Depth)!="factor") dt1$Integrated.Depth<- as.factor(dt1$Integrated.Depth)

# Here is the structure of the input data frame:
str(dt1)                            
attach(dt1)                            
# The analyses below are basic descriptions of the variables. After testing, they should be replaced.                 

summary(SALT_ID)
summary(FileName)
summary(Common.Name)
summary(Station)
summary(Sample.Date)
summary(Sample.Depth)
summary(Chloride)
summary(Decimal.Date)
summary(Std.Chloride)
summary(Integrated.Depth) 
detach(dt1)               


infile2  <- "https://pasta.lternet.edu/package/data/eml/edi/8/5/f4fe42405b2c24795bdd17cca67a0a2f" 
infile2 <- sub("^https","http",infile2) 
dt2 <-read.csv(infile2,header=F 
               ,skip=1
               ,sep=","  
               , col.names=c(
                 "SALT_ID",     
                 "FileName",     
                 "Common.Name",     
                 "Latitude",     
                 "Longitude",     
                 "Continent",     
                 "Country",     
                 "State",     
                 "Ecoregion",     
                 "Area.km2",     
                 "Depth.m",     
                 "LakeType",     
                 "YearMin",     
                 "YearMax",     
                 "MeanCl.mgL",     
                 "YearsTotal",     
                 "OutliersRemoved",     
                 "ShapefileMethod",     
                 "CoastDist.km",     
                 "WetDryDep",     
                 "Precip.mm",     
                 "TempJan",     
                 "TempFeb",     
                 "TempMar",     
                 "TempApr",     
                 "TempMay",     
                 "TempJun",     
                 "TempJul",     
                 "TempAug",     
                 "TempSep",     
                 "TempOct",     
                 "TempNov",     
                 "TempDec",     
                 "RoadDensity100",     
                 "RoadDensity200",     
                 "RoadDensity300",     
                 "RoadDensity400",     
                 "RoadDensity500",     
                 "RoadDensity1000",     
                 "RoadDensity1500",     
                 "LandImperviousBin100",     
                 "LandImperviousBin200",     
                 "LandImperviousBin300",     
                 "LandImperviousBin400",     
                 "LandImperviousBin500",     
                 "LandImperviousBin1000",     
                 "LandImperviousBin1500",     
                 "LandImperviousPer100",     
                 "LandImperviousPer200",     
                 "LandImperviousPer300",     
                 "LandImperviousPer400",     
                 "LandImperviousPer500",     
                 "LandImperviousPer1000",     
                 "LandImperviousPer1500"    ), check.names=TRUE)


# Fix any interval or ratio columns mistakenly read in as nominal and nominal columns read as numeric or dates read as strings

if (class(dt2$SALT_ID)=="factor") dt2$SALT_ID <-as.numeric(levels(dt2$SALT_ID))[as.integer(dt2$SALT_ID) ]
if (class(dt2$FileName)!="factor") dt2$FileName<- as.factor(dt2$FileName)
if (class(dt2$Common.Name)!="factor") dt2$Common.Name<- as.factor(dt2$Common.Name)
if (class(dt2$Latitude)=="factor") dt2$Latitude <-as.numeric(levels(dt2$Latitude))[as.integer(dt2$Latitude) ]
if (class(dt2$Longitude)=="factor") dt2$Longitude <-as.numeric(levels(dt2$Longitude))[as.integer(dt2$Longitude) ]
if (class(dt2$Continent)!="factor") dt2$Continent<- as.factor(dt2$Continent)
if (class(dt2$Country)!="factor") dt2$Country<- as.factor(dt2$Country)
if (class(dt2$State)!="factor") dt2$State<- as.factor(dt2$State)
if (class(dt2$Ecoregion)!="factor") dt2$Ecoregion<- as.factor(dt2$Ecoregion)
if (class(dt2$Area.km2)=="factor") dt2$Area.km2 <-as.numeric(levels(dt2$Area.km2))[as.integer(dt2$Area.km2) ]
if (class(dt2$Depth.m)=="factor") dt2$Depth.m <-as.numeric(levels(dt2$Depth.m))[as.integer(dt2$Depth.m) ]
if (class(dt2$LakeType)!="factor") dt2$LakeType<- as.factor(dt2$LakeType)
if (class(dt2$YearMin)=="factor") dt2$YearMin <-as.numeric(levels(dt2$YearMin))[as.integer(dt2$YearMin) ]
if (class(dt2$YearMax)=="factor") dt2$YearMax <-as.numeric(levels(dt2$YearMax))[as.integer(dt2$YearMax) ]
if (class(dt2$MeanCl.mgL)=="factor") dt2$MeanCl.mgL <-as.numeric(levels(dt2$MeanCl.mgL))[as.integer(dt2$MeanCl.mgL) ]
if (class(dt2$YearsTotal)=="factor") dt2$YearsTotal <-as.numeric(levels(dt2$YearsTotal))[as.integer(dt2$YearsTotal) ]
if (class(dt2$OutliersRemoved)=="factor") dt2$OutliersRemoved <-as.numeric(levels(dt2$OutliersRemoved))[as.integer(dt2$OutliersRemoved) ]
if (class(dt2$ShapefileMethod)!="factor") dt2$ShapefileMethod<- as.factor(dt2$ShapefileMethod)
if (class(dt2$CoastDist.km)=="factor") dt2$CoastDist.km <-as.numeric(levels(dt2$CoastDist.km))[as.integer(dt2$CoastDist.km) ]
if (class(dt2$WetDryDep)=="factor") dt2$WetDryDep <-as.numeric(levels(dt2$WetDryDep))[as.integer(dt2$WetDryDep) ]
if (class(dt2$Precip.mm)=="factor") dt2$Precip.mm <-as.numeric(levels(dt2$Precip.mm))[as.integer(dt2$Precip.mm) ]
if (class(dt2$TempJan)=="factor") dt2$TempJan <-as.numeric(levels(dt2$TempJan))[as.integer(dt2$TempJan) ]
if (class(dt2$TempFeb)=="factor") dt2$TempFeb <-as.numeric(levels(dt2$TempFeb))[as.integer(dt2$TempFeb) ]
if (class(dt2$TempMar)=="factor") dt2$TempMar <-as.numeric(levels(dt2$TempMar))[as.integer(dt2$TempMar) ]
if (class(dt2$TempApr)=="factor") dt2$TempApr <-as.numeric(levels(dt2$TempApr))[as.integer(dt2$TempApr) ]
if (class(dt2$TempMay)=="factor") dt2$TempMay <-as.numeric(levels(dt2$TempMay))[as.integer(dt2$TempMay) ]
if (class(dt2$TempJun)=="factor") dt2$TempJun <-as.numeric(levels(dt2$TempJun))[as.integer(dt2$TempJun) ]
if (class(dt2$TempJul)=="factor") dt2$TempJul <-as.numeric(levels(dt2$TempJul))[as.integer(dt2$TempJul) ]
if (class(dt2$TempAug)=="factor") dt2$TempAug <-as.numeric(levels(dt2$TempAug))[as.integer(dt2$TempAug) ]
if (class(dt2$TempSep)=="factor") dt2$TempSep <-as.numeric(levels(dt2$TempSep))[as.integer(dt2$TempSep) ]
if (class(dt2$TempOct)=="factor") dt2$TempOct <-as.numeric(levels(dt2$TempOct))[as.integer(dt2$TempOct) ]
if (class(dt2$TempNov)=="factor") dt2$TempNov <-as.numeric(levels(dt2$TempNov))[as.integer(dt2$TempNov) ]
if (class(dt2$TempDec)=="factor") dt2$TempDec <-as.numeric(levels(dt2$TempDec))[as.integer(dt2$TempDec) ]
if (class(dt2$RoadDensity100)=="factor") dt2$RoadDensity100 <-as.numeric(levels(dt2$RoadDensity100))[as.integer(dt2$RoadDensity100) ]
if (class(dt2$RoadDensity200)=="factor") dt2$RoadDensity200 <-as.numeric(levels(dt2$RoadDensity200))[as.integer(dt2$RoadDensity200) ]
if (class(dt2$RoadDensity300)=="factor") dt2$RoadDensity300 <-as.numeric(levels(dt2$RoadDensity300))[as.integer(dt2$RoadDensity300) ]
if (class(dt2$RoadDensity400)=="factor") dt2$RoadDensity400 <-as.numeric(levels(dt2$RoadDensity400))[as.integer(dt2$RoadDensity400) ]
if (class(dt2$RoadDensity500)=="factor") dt2$RoadDensity500 <-as.numeric(levels(dt2$RoadDensity500))[as.integer(dt2$RoadDensity500) ]
if (class(dt2$RoadDensity1000)=="factor") dt2$RoadDensity1000 <-as.numeric(levels(dt2$RoadDensity1000))[as.integer(dt2$RoadDensity1000) ]
if (class(dt2$RoadDensity1500)=="factor") dt2$RoadDensity1500 <-as.numeric(levels(dt2$RoadDensity1500))[as.integer(dt2$RoadDensity1500) ]
if (class(dt2$LandImperviousBin100)=="factor") dt2$LandImperviousBin100 <-as.numeric(levels(dt2$LandImperviousBin100))[as.integer(dt2$LandImperviousBin100) ]
if (class(dt2$LandImperviousBin200)=="factor") dt2$LandImperviousBin200 <-as.numeric(levels(dt2$LandImperviousBin200))[as.integer(dt2$LandImperviousBin200) ]
if (class(dt2$LandImperviousBin300)=="factor") dt2$LandImperviousBin300 <-as.numeric(levels(dt2$LandImperviousBin300))[as.integer(dt2$LandImperviousBin300) ]
if (class(dt2$LandImperviousBin400)=="factor") dt2$LandImperviousBin400 <-as.numeric(levels(dt2$LandImperviousBin400))[as.integer(dt2$LandImperviousBin400) ]
if (class(dt2$LandImperviousBin500)=="factor") dt2$LandImperviousBin500 <-as.numeric(levels(dt2$LandImperviousBin500))[as.integer(dt2$LandImperviousBin500) ]
if (class(dt2$LandImperviousBin1000)=="factor") dt2$LandImperviousBin1000 <-as.numeric(levels(dt2$LandImperviousBin1000))[as.integer(dt2$LandImperviousBin1000) ]
if (class(dt2$LandImperviousBin1500)=="factor") dt2$LandImperviousBin1500 <-as.numeric(levels(dt2$LandImperviousBin1500))[as.integer(dt2$LandImperviousBin1500) ]
if (class(dt2$LandImperviousPer100)=="factor") dt2$LandImperviousPer100 <-as.numeric(levels(dt2$LandImperviousPer100))[as.integer(dt2$LandImperviousPer100) ]
if (class(dt2$LandImperviousPer200)=="factor") dt2$LandImperviousPer200 <-as.numeric(levels(dt2$LandImperviousPer200))[as.integer(dt2$LandImperviousPer200) ]
if (class(dt2$LandImperviousPer300)=="factor") dt2$LandImperviousPer300 <-as.numeric(levels(dt2$LandImperviousPer300))[as.integer(dt2$LandImperviousPer300) ]
if (class(dt2$LandImperviousPer400)=="factor") dt2$LandImperviousPer400 <-as.numeric(levels(dt2$LandImperviousPer400))[as.integer(dt2$LandImperviousPer400) ]
if (class(dt2$LandImperviousPer500)=="factor") dt2$LandImperviousPer500 <-as.numeric(levels(dt2$LandImperviousPer500))[as.integer(dt2$LandImperviousPer500) ]
if (class(dt2$LandImperviousPer1000)=="factor") dt2$LandImperviousPer1000 <-as.numeric(levels(dt2$LandImperviousPer1000))[as.integer(dt2$LandImperviousPer1000) ]
if (class(dt2$LandImperviousPer1500)=="factor") dt2$LandImperviousPer1500 <-as.numeric(levels(dt2$LandImperviousPer1500))[as.integer(dt2$LandImperviousPer1500) ]

# Here is the structure of the input data frame:
str(dt2)                            
attach(dt2)                            
# The analyses below are basic descriptions of the variables. After testing, they should be replaced.                 

summary(SALT_ID)
summary(FileName)
summary(Common.Name)
summary(Latitude)
summary(Longitude)
summary(Continent)
summary(Country)
summary(State)
summary(Ecoregion)
summary(Area.km2)
summary(Depth.m)
summary(LakeType)
summary(YearMin)
summary(YearMax)
summary(MeanCl.mgL)
summary(YearsTotal)
summary(OutliersRemoved)
summary(ShapefileMethod)
summary(CoastDist.km)
summary(WetDryDep)
summary(Precip.mm)
summary(TempJan)
summary(TempFeb)
summary(TempMar)
summary(TempApr)
summary(TempMay)
summary(TempJun)
summary(TempJul)
summary(TempAug)
summary(TempSep)
summary(TempOct)
summary(TempNov)
summary(TempDec)
summary(RoadDensity100)
summary(RoadDensity200)
summary(RoadDensity300)
summary(RoadDensity400)
summary(RoadDensity500)
summary(RoadDensity1000)
summary(RoadDensity1500)
summary(LandImperviousBin100)
summary(LandImperviousBin200)
summary(LandImperviousBin300)
summary(LandImperviousBin400)
summary(LandImperviousBin500)
summary(LandImperviousBin1000)
summary(LandImperviousBin1500)
summary(LandImperviousPer100)
summary(LandImperviousPer200)
summary(LandImperviousPer300)
summary(LandImperviousPer400)
summary(LandImperviousPer500)
summary(LandImperviousPer1000)
summary(LandImperviousPer1500) 
detach(dt2)               





