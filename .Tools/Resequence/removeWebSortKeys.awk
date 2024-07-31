###### Companion to addWebSortKey to remove sort keys
BEGIN {
    FS = "$"
    DOMAIN = 1
    WEBURL = 2
    RECNUM=3
    REMAINDER = 4
    OUTPUT = 5
    }
{
    duplicate = ""
    if (NR == 1)
    {
        priorUrl = $WEBURL
        duplicate = ""
    }
    else
    {
        if (priorUrl == $WEBURL)
            duplicate = "+"
        priorUrl = $WEBURL 
    }
    
    if (0) #0 for no debug statements, 1 for DEBUG 
    {
        printf("10DEBUG: $0 length(%s)=%d\n", $0, length($0))
        printf("20DEBUG: REMAINDER length(%s)=%d\n", $REMAINDER, length($REMAINDER))
        for (ndx = 1; ndx <= NF; ndx++)
            printf("30DEBUG: $%s=%s\n", ndx, $ndx)
    }
    
    chopRight = $REMAINDER + length($REMAINDER) + 2
    #printf("40DEBUG: chopRight=%d\n", chopRight) 
    #printf("50DEBUG: substr('%s', %d)=%s\n", $0, chopRight, row)
    row = substr($0, chopRight)
    
    #printf("duplicate:%s.\n", duplicate)
    
    #printf("60DEBUG: length(%s)=%d\n", row, length(row))
    if ((length($0) > 0) && (index($0, "DEBUG") == 0))
        printf("%s%s\n", duplicate, row)
    }
