#! /bin/bash 

INPUT=$@ ;
PROMPT="--prompt = $INPUT -- describe the structure in the prompt following the algorithms given below and also take in to account 
that the course of the structure if asked should be described in great detail  \n" ; 

PARAMSOFARTERIES="
if the structure is an artery then the following should be included
Location and Course
Branches
Anastomoses
Relations: 
Clinical Relevance:
"  
PARAMOFNERVES="
if the structure is a nerve then the following should be included
origin 
course 
branches 
muscles of the body supplies along with the function of each of the muscle supplied 
sensory or motor innvervation if any 
clinical releavnce "

PARAMOFMUSCLES=" if the structure is a muscle then the following should be included
origin 
insertion
function 
nerve supply 
course 
important landmarks and relations
clinical relevance
" 
PARAMOFBONES="
if the structure is a bone then the following should be included
bony landmarks and bony prominences 
important structures associated with each of the bony prominences and 
each structure's origin and insertion should be described 
important ligaments and tendons associated with each of the bony prominences
anatomical description of each of the landmarks 
important pathologies associated for example head of the humerus is the most common site of fracture in the upper limb and also 
a common site of shoulder dislocation 
"  
PARAMOFORGANS="
if the structure is an organ then the following should be included
location
shape
size
relations
blood supply
nerve supply
lymphatic drainage
clinical relevance
" ; 
PARAMOFANYOTHERSTRUCTURE="
if the structure is any other structure then 
the similar pattern should be used to describe the structure "

anatomicalstructure=" please use the following 
parameters to describe the anatomical struccture 1. level of occurence in the axial plane of ct and mri 
2. strctures related to the structure in the anterior and posterior locations in the axial plane of ct and mri
3. characterstic features and appearence on mri and ct 
4. clinical significance of the structure
5. also describe the anatomical heirarchy of the structure "
# copy all the above variables in to a single string seperated by \n 

PARAMS="$PROMPT \n $PARAMSOFARTERIES \n $PARAMOFNERVES \n $PARAMOFMUSCLES \n $PARAMOFBONES \n $PARAMOFORGANS \n $PARAMOFANYOTHERSTRUCTURE 
\n $anatomicalstructure" ;

# copy the params on the clipboard 

echo $PARAMS | pbcopy ;