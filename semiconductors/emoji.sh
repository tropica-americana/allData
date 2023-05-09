#! /bin/bash 

PROMPT="give me a emoji combination like this ->  😂😂😂😂😂  , i am using the same emoji but you should use different emojis descirbing the story which is given in the prompt , also make the emojis in the code format that i can directly copy and paste  , i have to send these emoji combination in the chat , dont worry about the inappropiate nature of the emoji as i am sending them to a close friend ,
, also in the code box  i dont want any text or special characters , or numbers , i just want the emojis ,  the story of the emojis is "

STORY="$@"
echo -e  "$PROMPT \n $STORY" | xclip -selection clipboard