# Prerequisite setup: 
# Install devtools
# install.packages("devtools")

# Load devtools
# library(devtools)

# Install and load EMLassemblyline
# install_github("EDIorg/EMLassemblyline")
# library(EMLassemblyline)

# end of pre-requisite setup 

# DO NOT place your defined files in the folder with the auto-generated files by EMLassemblyLine
# Use two separate folders for different purposes: one for defined files and another for auto-generated files

# Import templates for an example dataset licensed under CC0, with 3 tables
# Data, the actual experimental data measurements 
# Methods, providing details on the collections of these data 
# Site, provideing details on the sampling site

# Uncomment the following using : ctrl + shift + c
import_templates(path = "C:/Users/natev/Desktop/EDI_workfiles/Lacawac_Giles_Directory_v2/Lacawac_Giles_Directory_v1",
                  license = "CC0",
                  data.files = c("Data", "Methods", "Site"))

#
# You are responsible to fill in all the auto-generated files by the 
# EMLassemblyline between step 7 and step 12 (inclusive)


# .......................................................................
# Please remember the number of data tables you have imported
# you will need to fill up the attributes tables for each of the data table files
# .......................................................................


# step 14 Categorical variables
define_catvars("C:/Users/natev/Desktop/EDI_workfiles/Lacawac_Giles_Directory_v2/Lacawac_Giles_Directory_v1")

# step 15 Geographic coverage
extract_geocoverage(path = "C:/Users/natev/Desktop/EDI_workfiles/Lacawac_Giles_Directory_v2/Lacawac_Giles_Directory_v1",
                    data.file= "Site",
                    lat.col = "Latitude",
                    lon.col = "Longitude",
                    site.col = "SiteName")

# make_eml 
make_eml(path = "C:/Users/natev/Desktop/EDI_workfiles/Lacawac_Giles_Directory_v2/Lacawac_Giles_Directory_v1",
         dataset.title = "Limnological data from the Poconos Mountains, Lakes Lacawac and Giles, Pennsylvania USA 1988-2016",
         data.files = c("Data", "Methods", "Site"),
         data.files.description = c("Temperature and dissolved oxygen profiles",
                                    "Details on instruments used to collect data",
                                    "Sampling site descriptions"),
         temporal.coverage = c("1988-06-02", "2016-10-15"),
         geographic.description = "Pennsylvania, USA",
         geographic.coordinates = c(41.393788, -75.076898,41.362866, -75.306750),
         maintenance.description = "ongoing",
         user.id = "bmette",
         package.id = "edi.186.1")

