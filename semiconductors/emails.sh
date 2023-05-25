#! /bin/bash 

NAMEOFTHEPROFESSOR=$@

FORMAT="Dear Professor $NAMEOFTHEPROFESSOR,

I hope this message finds you well.

This is Sachin Jain, and I am writing to express my interest in volunteering for a research position under your guidance in the field of radiology.

Furthermore, I am aiming for a radiology residency as an International Medical Graduate (IMG). Your guidance and assistance in this process would be invaluable and greatly appreciated.

Please find my CV attached below, which further details my academic qualifications and skills that I believe would be beneficial for your research. If my application interests you, I would be delighted to discuss this opportunity further.

Thank you for your time and consideration. I am looking forward to the possibility of working with you.

Best regards,
Sachin Jain

"
echo "$FORMAT" | xclip -selection clipboard 