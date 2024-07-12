###### Companion to addWebSortKey to remove sort keys
BEGIN {
    FS = "~"
    DOMAIN = 1
    WEBURL = 2
    RECNUM=3
    REMAINDER = 4
    }
{
    if (1)
    {
        printf("\n1DEBUG: length(%s)=%d\n\n", $0, length($0))
        for (ndx = 1; ndx <= NF; ndx++)
            printf("2DEBUG: $%s=%s\n", ndx, $ndx)
        printf("3DEBUG: length(%s)=%d\n", $REMAINDER, length($REMAINDER))
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
     
    chopRight = $REMAINDER 
    row = substr($0, $REMAINDER + remainder + length($REMAINDER))
    printf("3DEBUG: remainder=%d\n\n", remainder) 
        
    printf("4DEBUG: length(%s)=%d\n", row, length(row))
    if ((length($0) > 0) && (index($0, "DEBUG") == 0))
        printf("%s%s\n", duplicate, row)
    }
