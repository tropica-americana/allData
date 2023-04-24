#! /bin/bash 

# this script will take disease name as parameter and 
# will the reutrn the ouput 
# step 1 
# taking all the inputs from the user 
input=$*
prompt="describe the disease given in the prompt in terms of these following parameter "
diseaseSymptoms="param 1 -> 3 most common symptoms "
diseaseDifferentiatingRadiologicalFeature="param 2 -> differentiating  radiological feature "
diseaseMostCommonAnatomicalLocations="param 3 -> 3 most common anatomical locations "
diseasePrevalenceAndIncidence=" param 4 -> prevalence and incidence of the disease in accurate or approxiamte terms in one in one lack people "

final_string=" $input $prompt \n $diseaseSymptoms \n $diseaseDifferentiatingRadiologicalFeature \n $diseaseMostCommonAnatomicalLocations \n $diseasePrevalenceAndIncidence"

echo -e  $final_string | pbcopy