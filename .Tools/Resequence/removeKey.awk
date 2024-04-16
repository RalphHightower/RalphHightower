BEGIN {
    FS = ":"
    month["01"] = "January"
    month["02"] = "February"
    month["03"] = "March"
    month["04"] = "April"
    month["05"] = "May"
    month["06"] = "June"
    month["07"] = "July"
    month["08"] = "August"
    month["09"] = "September"
    month["10"] = "October"
    month["11"] = "November"
    month["12"] = "December"
    }
{
    #printf("1DEBUG: NR %d\tNF %d\t%s\n", NR, NF, $0)
    dateTime = $1
    cnt = split(dateTime, dtParts, " ")
    date = ""
    for (idx = 1; idx <= NF; idx++) {
       #printf ("2DEBUG: %d:%s\n", idx, $idx)
       }
    cntD = 0
    if (cnt > 0) {
        cntD = split(dtParts[1], dateParts, "-")
        }
    #printf("3DEBUG: %s %s, %s\n", month[dateParts[2]], dateParts[3], dateParts[1]) 
    if ((cnt > 0) && (cntD > 0))
        date = month[dateParts[2]] " " dateParts[3] ", " dateParts[1]
    else
        date = ""
    for (idx = 3; idx < NF; idx++) {
        #print("8DEBUG: idx=%d,٪s\n", idx, $idx)
        printf("%s:", $idx) # output 
        }
    printf("%s %s |\n", $NF, date)
    }
