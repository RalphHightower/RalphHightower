###### 1). This program grabs the web address from a markdown article link as sort key two.
###### 2. Grabs the domain from the web address and adds the domain in reverse order as key one.
###### Example: bbc.co.uk becomes uk.co.bbc
###### sort by domain groups articles articles within a domain
###### sort by weblink may group articles
###### ==========
###### TODO:
###### 1) Add named capture groups
###### 2) Add parameter passing: &name=value,?name=value
###### 3) Add "go to" named section: #section
###### ==========
BEGIN {
    #printf("| Record # | Domain | URL | Content |\n")
    #printf("|---|---|---|---|\n")

    rgxWebAddr =  "https?://[A-Za-z0-9][a-zA-Z0-9]*(\.[a-zA-Z0-9][a-zA-Z0-9]*)*((/[A-Za-z0-9]|%[0-9A-Fa-f]{2}]*)*)?/"
}
/https?://[A-Za-z0-9][a-zA-Z0-9]*(\.[a-zA-Z0-9][a-zA-Z0-9]*)*((/[A-Za-z0-9]|%[0-9A-Fa-f]{2}]*)*)/ {
    #printf("\n1DEBUG: %d:%s\n", NR, $0)
    row = $0
    domain = ""
    url = ""

    #"http[s]://[^:~]*)"

    ndxWeb = match(row, rgxWebAddr)

    #printf("\n2DEBUG: ndxWeb=%d, RLENGTH=%d\n", ndxWeb, RLENGTH)

    if (ndxWeb > 0)
    {
        if (RLENGTH > 0)
        {
            webUrl = substr(row, ndxWeb, RLENGTH - 1)
            gsub("[#,*| *]", "", webUrl)
            #printf("\n3DEBUG: webUrl=\"%s\"\n", webUrl)
            cntWebParts = split(webUrl, webParts, "/")
            if (0)
            {
                if (cntWebParts > 0)
                {
                    for (ndx = 1; ndx <= cntWebParts; ndx ++)
                    {
                        printf("\n4DEBUG: webParts[%d]='%s'\n", ndx, webParts[ndx])
                    }
                }
            }
            #printf("\n5DEBUG: cntWebParts=%d:webParts[3]=%s\n", cntWebParts, webParts[3])
            cntDomain = split(webParts[3], domainParts, ".")
            #printf("\n6DEBUG: cntDomain=%d\n", cntDomain)
            if (cntDomain > 0)
            {
                domain = ""
                for (ndx = cntDomain; ndx > 0; ndx--)
                {
                    #printf("\n7DEBUG: domainParts[%d]=%s\n", ndx, domainParts[ndx])
                    domain = (ndx < cntDomain ? domain "."  domainParts[ndx] : domain domainParts[ndx])
                }
            }
        }
        # domain:weblink:recordNumber:
        sortKey = sprintf("%s$%s$%d$", domain, webUrl, NR)
        lenSortKey = length(sortKey)

        #printf("\n8DEBUG: length(%s)=%d\n\n", sortKey, length(sortKey))

        printf("%s%d$%s\n", sortKey, lenSortKey, row)
    }
}
