###### 1). This program grabs the web address from a markdown article link as sort key two.
###### 2. Grabs the domain from the web address and adds the domain in reverse order as key one.
###### Example: bbc.co.uk becomes uk.co.bbc
###### sort by domain groups articles articles within a domain
###### sort by weblink may group articles
#BEGIN {
#    #rgxWebAddr = /(https?):\/\/([-.A-Za-z0-9])[.][a-zA-Z]{2,}(\/[-._/A-Za-z0-9 ]|%[0-9A-Fa-f]{2})/
#}
{


    found = match($0, "https?://[-./%$#@A-Za-z0-9]*")

    #printf("\n\n100DEBUG: RSTART=%d\tRLENGTH=%d\n\n", RSTART, RLENGTH)

    if ((RSTART > 0) && (RLENGTH > 0))
    {
        #printf("00DEBUG: %d:%s\tlength=%d\n", NR, $0, length($0))
        webUrl = substr($0, RSTART, RLENGTH)

        #printf("\n\n30DEBUG: substr(%s, %d, %d)=\n'%s'\n\n", $0, RSTART,  RLENGTH, webUrl)

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
            #printf("55DEBUG: cntDomain=%d\n", cntDomain)
            if (cntDomain > 0)
            {
                for (ndx = cntDomain; ndx > 0; ndx--)
                {
                    #printf("60DEBUG: domainParts[%d]=%s\n", ndx, domainParts[ndx])
                    domain = domain domainParts[ndx] (ndx > 1 ? "." : "")
            printf("%s$%s$%d$%s\n", domain, webUrl, NR, $0)
                }
            }
        }
    }
}
