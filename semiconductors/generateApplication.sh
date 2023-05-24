
#!/bin/bash 

# checking if the first input is empty 

if [[ $1 = "" ]] 
then 
    DATA=$(xclip -selection clipboard -o)  
   
else 
    DATA="$@" 
fi


PROMPT1="from the data given in the prompt "  

PROMPT2="--> 
when ever i use --- that means i am using a variable that  should be extracted from the text in the prompt .
write a message to the professor .
dear professor's name 

-- content  -- 
this is sachin jain , 
i would like to volunteer for a research position under you , 
i would love to help you to improve the ---TECHNOLOGYPROFESSORCURRENTLYWORKINGON (write this line only if yhe technology is provided in the prompt )  
 i would love to be a part of journey towards advancinng medical science . 
your help for getting me into radiology residency as an IMG  will be very much appreciated  . 

below is my CV for having a further look into my skills if my application intersts you . thanks for your time . 
thanking you 
---NAMEOFTHEPROFESSOR 
" ; 
echo  "$PROMPT1 \n$DATA \n$PROMPT2" | xclip -selection clipboard
