###### Companion to addWebSortKey to remove sort keys
BEGIN {
    FS = "$"
    DOMAIN = 1
    WEBURL = 2
    RECNUM=3
    REMAINDER = 4
    }
{
    if (1) #0 for no debug statements, 1 for DEBUG 
    {
        printf("\n10DEBUG: length(%s)=%d\n\n", $0, length($0))
        for (ndx = 1; ndx <= NF; ndx++)
            printf("20DEBUG: $%s=%s\n", ndx, $ndx)
        printf("30DEBUG: length(%s)=%d\n", $REMAINDER, length($REMAINDER))
    }
    
    duplicate = ""
    if (NR > 1)
    {
        if (priorUrl == $WEBURL)
            duplicate = "$"
        priorUrl = $WEBURL
    }
    else
        priorUrl = $WEBURL
       
    duplicate =""
     
    chopRight = $REMAINDER + 2
    row = substr($0, chopRight)
    printf("40DEBUG: chopRight=%d\n\n", chopRight) 
    printf("50DEBUG: substr('%s', %d)=%s\n\n", $0, chopRight, row)
        
    printf("60DEBUG: length(%s)=%d\n\n", row, length(row))
    if ((length($0) > 0) && (index($0, "DEBUG") == 0))
        printf("%s%s\n", duplicate, row)
    }
