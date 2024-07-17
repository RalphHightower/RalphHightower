###### 1). This program grabs the web address from a markdown article link as sort key two.
###### 2. Grabs the domain from the web address and adds the domain in reverse order as key one.
###### Example: bbc.co.uk becomes uk.co.bbc
###### sort by domain groups articles articles within a domain
###### sort by weblink may group articles
BEGIN {
    #printf("~ Record # ~ Domain ~ URL ~ Content ~\n")
    #printf("|---|---|---|---|\n")

    #rgxWebAddr = /(https)://((([A-Za-z]{1,}|([a-zA-Z0-9][a-zA-Z0-9-.]{1,})[.]([a-zA-Z0-9-]){2,})))(([/][a-zA-Z0-9-/.@?]{2,}))/

    rgxDomain = "(https)://((([A-Za-z]{1,}|([a-zA-Z0-9][a-zA-Z0-9-.]{1,})[.]([a-zA-Z0-9-]){2,})))"
    
    rgxPath ="((/[a-zA-Z0-9-/.@?]){2,})"
        #"(https)://(([A-Za-z]{1,}|([a-zA-Z0-9][a-zA-Z0-9-.]{1,})[.]([a-zA-Z0-9-]){2,}))([/][a-zA-Z0-9-/.@?]{2,}*()"
        #"(https)://(([A-Za-z]{1,}|[a-zA-Z0-9])[.][a-zA-Z]{2,})((/[A-Za-z0-9-.]{1,}))*"
    #"https?://[A-Za-z0-9]*.[a-zA-Z0-9]{2-}*/([@0-9-/a-zA-Z.\?])*"
    # 2024-07-16 RMH (https)://(([A-Za-z]{1,}|[a-zA-Z0-9])[.][a-zA-Z]{2,})((/[A-Za-z0-9-.]{1,}))*
}
/\(http[s]:\/\/[^~:]*\)/ {
    printf("\n10DEBUG: %d:%s\n", NR, $0)
    row = $0
    domain = ""
    url = ""

    #"http[s]://[^:~]*)"

    ndxWeb = match(row, rgxWebAddr)
    ndxDomain = match(row, rgxDomaiin)
    ndxPath = match(row, rgxPath)

    #printf("\n20DEBUG: ndxWeb=%d, RLENGTH=%d\n", ndxWeb, RLENGTH)

    if (ndxWeb > 0)
    {
        if (RLENGTH > 0)
        {
            webUrl = substr(row, ndxWeb, RLENGTH - 1)
            gsub("[#,*| *]", "", webUrl)
            printf("\n30DEBUG: webUrl=\"%s\"\n", webUrl)
            cntWebParts = split(webUrl, webParts, "/")
            if (0)
            {
                if (cntWebParts > 0)
                {
                    for (ndx = 1; ndx <= cntWebParts; ndx ++)
                    {
                        printf("\n40DEBUG: webParts[%d]='%s'\n", ndx, webParts[ndx])
                    }
                }
            }
            #printf("\n50DEBUG: cntWebParts=%d:webParts[3]=%s\n", cntWebParts, webParts[3])
            cntDomain = split(webParts[3], domainParts, ".")
            #printf("\n60DEBUG: cntDomain=%d\n", cntDomain)
            if (cntDomain > 0)
            {
                domain = ""
                for (ndx = cntDomain; ndx > 0; ndx--)
                {
                    #printf("\n70DEBUG: domainParts[%d]=%s\n", ndx, domainParts[ndx])
                    domain = (ndx < cntDomain ? domain "."  domainParts[ndx] : domain domainParts[ndx])
                }
            }
        }
        recNum = sprintf("%d", $NR)
        #printf("80DEBUG: \nlength(%s=%d\nlength(%s)=%d\nlength(%s)=%d\n", domain, length(domain), webUrl, length(webUrl), NR, length(NR))
        # domain$weblink$recordNumber$substr$
        sortKey = sprintf("%s$%s$%d$", domain, webUrl, NR)
        lenSortKey = length(sortKey)

        #printf("\n90DEBUG: length(%s)=%d\n\n", sortKey, lenSortKey)

        printf("%s%d$%s\n", sortKey, lenSortKey, row)
    }
}
