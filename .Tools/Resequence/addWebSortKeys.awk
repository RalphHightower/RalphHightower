###### 1). This program grabs the web address from a markdown article link as sort key two.
###### 2. Grabs the domain from the web address and adds the domain in reverse order as key one.
###### Example: bbc.co.uk becomes uk.co.bbc
###### sort by domain groups articles articles within a domain
###### sort by weblink may group articles
#BEGIN {
#    #rgxWebAddr = /(https?):\/\/([-.A-Za-z0-9])[.][a-zA-Z]{2,}(\/[-._/A-Za-z0-9 ]|%[0-9A-Fa-f]{2})/
#}
{

    found = match($0, "https?://[-!$%&'*+,./;<=>@_~A-Za-z0-9?]*")
    
    #printf("100DEBUG: RSTART=%d\tRLENGTH=%d\n", RSTART, RLENGTH)
    if ((RSTART > 0) && (RLENGTH > 0))
    {
        row = $0
            
        #printf("00DEBUG: %d:%s\tlength=%d\n", NR, $0, length($0))
        webUrl = substr($0, RSTART, RLENGTH)
            
        #printf("30DEBUG: substr(%s, %d, %d)='%s'\n", $0, RSTART,  RLENGTH, webUrl)

        cntParts = split(webUrl, webParts, "/")
        #printf("50DEBUG: cntParts=%d:%s\n", cntParts, webUrl)
        if (cntParts > 0)
        {
            if (0)
            {
                for (ndx = 1; ndx <= cntParts; ndx ++)
                {
                    printf("40DEBUG: webParts[%d]=%s\n", ndx, webParts[ndx])
                }
            }
            domain = ""
            cntDomain = split(webParts[3], domainParts, ".")
            #printf("55DEBUG: %s:cntDomain=%d\n", webParts[3], cntDomain)
            if (cntDomain > 0)
            {
                for (ndx = cntDomain; ndx > 0; ndx--)
                {
                    #printf("60DEBUG: domainParts[%d]=%s\n", ndx, domainParts[ndx])
                    domain = domain domainParts[ndx] (ndx > 1 ? "." : "")
                }
            }
            recNum = sprintf("%d", $NR)
            #printf("80DEBUG: \nlength(%s)=%d\nlength(%s)=%d\nlength(%s)=%d\n", domain, length(domain), webUrl, length(webUrl), NR, length(NR))
            # domain$weblink$recordNumber$substr$
            sortKey = sprintf("%s$%s$%d$", domain, webUrl, NR)
            lenSortKey = length(sortKey)
        
            #printf("\n90DEBUG: length(%s)=%d\n", sortKey, lenSortKey)
        
            printf("%s%d$%s\n", sortKey, lenSortKey, row)
        }
    }
}
