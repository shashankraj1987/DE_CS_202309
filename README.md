
# DE_CS_202309

Deloitte Case study (Shashank Raj)

## Folder Structure: 

- The solution is divided into 5 folders. 
- **Case_Study_202309_Data**: Contains the raw data, which will be provided from Source
- **Final Codes**: Contains the codes to generate the Master Data from the files and the combine them. 
- **Master Data**: Contains the Final Master Data generated from the codes. 
- **Misc Files**: COntains the High level system architecture and the Database Dump from Postgresql 16.0. This can be directly imported into a Postgresql Database to look at the output. 
- **Solution**: Contains the 6 Deliverables requested from the quiz. 

## Running the Python Codes:
- The **Final Codes** folder contains the requirements.txt file which can be run in a self-contained environment to install the dependencies for running this script. 
- The file **env.txt** contains the location for the files needed to run the script. 
- The variables starting with **gen_mstr_data** corresponds to the *Gen_Master_Data.ipynb* and **data_iss_** corresponds to the *Data_issues.ipynb* file. 
- The *Gen_Master_Data* script lacks any error handling or logging at the moment, due to time limit for this project but that can definately added in the Production code. 

## Master Data: 
- **Most Important Thing** to note about the master data is that for the Product IDs that have duplicated entries, namely 

[*FUR-FU-10004091*,
 *FUR-FU-10001473*,
 *FUR-BO-10002213*,
 *FUR-FU-10004017*,
 *FUR-CH-10001146*]

have been removed from the file. This is done as it was causing data inconsistency issues, which has been highlighted in the Data inconsistency file. 

- *Obviously* this could be dealt with in a different way after consulting with the client/ASME.

- The rest of the data has been processed sans the above product codes.

- The python code contains the logic for **Location_ID** and **shipment_id** which made sense to me, which again, could be changed after discussing with the ASME/Business. 

## Finally

- There is certainly a lot of scope for improvement here, when working on the actual project, however, I hope this gives a fair understanding of my skills and Business acumen. 

- I have tried to explain as much here and rest can be discussed over a call. 

*Thanks and Regards,*

Shashank Raj. 

