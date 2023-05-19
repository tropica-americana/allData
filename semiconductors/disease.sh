#! /bin/bash 

# this script will take disease name as parameter and 
# will the reutrn the ouput 
# step 1 
# taking all the inputs from the user 
input=$*
prompt="describe the disease given in the prompt in terms of these 
following parameters , also please present the answer in presentable table format  "
diseaseSymptoms="param 1 is 3 most common symptoms "
diseaseDifferentiatingRadiologicalFeature="param 2 is differentiating  
radiological feature "
diseaseMostCommonAnatomicalLocations="param 3 detailed anatomical and radiological dicription of the disease "
diseasePrevalenceAndIncidence=" param 4 is prevalence and incidence of the 
disease in accurate or approxiamte terms in one in one lack people "

final_string=" $input $prompt \n $diseaseSymptoms \n $diseaseDifferentiatingRadiologicalFeature \n $diseaseMostCommonAnatomicalLocations \n $diseasePrevalenceAndIncidence \n $anatomicalstructure"

echo -e  $final_string | xclip -selection clipboard
