###### Companion to addWebSortKey to remove sort keys
BEGIN {
    FS = "$"
    DOMAIN = 1
    WEBURL = 2
    RECNUM=3
    SUBSTR_ROW = 4
    }
{
    if (0)
    {
        printf("DEBUG: %d:%s\n", length ($0), $0)
        for (ndx = 1; ndx <= NF; ndx++)
            printf("\n10DEBUG: $%d='%s'\n", ndx, $ndx)
        printf("29DEBUG: SUBSTR_ROW=%d\n", $SUBSTR_ROW)
        printf("%d:%d\n", length($SUBSTR_ROW), $SUBSTR_ROW)
    }
        
    if ((length($0) > 0) && (index($0, "DEBUG") == 0))
        printf("%s\n", substr($0, $SUBSTR_ROW + length($SUBSTR_ROW) + 2))
    }
