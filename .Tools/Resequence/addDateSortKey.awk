###### Some web links have the date as part of the link address, such as xyz.com/YYYY/MM/DD.
###### This awk program gets the date and adds it as a sort field: YYYY-MM-DD
function printEnvironment() {
    for (key in ENVIRON) {
        printf("ENVIRON[%s]=%s\n", key, ENVIRON[key])
        }
    }
function padLeft(twoDigit)
{  
    zeroPad = twoDigit 
    if (length(zeroPad) == 1)
        zeroPad = "0" twoDigit 
    return(zeroPad)
    }
function addKey(line)
{
    posDate = match($0, rgxYYYYMMDD)
    printf("1DEBUG: RSTART=%d\n", RSTART)
    if (RSTART > 0) {
        date = substr(line, RSTART + 1, RLENGTH - 1)
        sep = substr(line, RSTART, 1)
        cntFields = split(date, dateParts, sep)
        dateKey = dateParts[1] "-" padLeft(dateParts[2]) "-" padLeft(dateParts[3])
        #printf("2DEBUG: dateKey=%s\n", dateKey)
        }
    }
BEGIN {
    #shell: sort -fut\[ <QuickNote.md | awk -f addSortKey.awk | sort -t: +0r -1 +1nr -2 | tee sort.md
    rgxYYYYMMDD = "[-/]20[0-9][0-9][-/]([1-9]|[01][0-9])[-/]([1-9]|[0-3][0-9])/"
    rgxYYYYMM = "[-/]20[0-9][0-9][-/]([1-9]|[01][0-9])[-/]"
    rgxYYYY = "[-/]20[0-9][0-9][-/]"
    rgxDates[8] = rgxYYYYMMDD 
    rgxDates[6] = rgxYYYYMM
    rgxDates[4] = rgxYYYY
    }
{   dateKey = "" 
    #printf("3DEBUG: NR=%d,%s\n", NR, $0)
    for (idx = 8; (idx >= 4) && (dateKey == ""); idx -= 2) 
    {
        #printf("4DEBUG: rgxDates[%d]=\"%s\"\n", idx, rgxDates[idx])
        rgx = rgxDates[idx]
        posDate = match($0, rgx)
        rstart = RSTART
        rlength = RLENGTH 
        if (rstart > 0) {
            #printf("5DEBUG: RSTART=%d\tRLENGTH=%d\tposDate=%d\n", rstart, rlength, posDate)
            date = substr($0, rstart + 1, rlength - 1)
            sep = substr($0, rstart, 1)
            if (index(date, "-") > 0)
                sep = "-"
            cntFields = split(date, dateParts, sep)
            for (fld = 1; fld <= NF ; fld++) {
                lenPart = length(dateParts[fld])
                trimFld = substr(dateParts[fld], lenPart, 1)
                if (index("/-", lenPart) > 0)
                    dateParts[fld] = substr(trimFld, 1  lenPart - 1)
                #printf("\n6DEBUG split: %d, %s, sep=%s\n", fld, dateParts[fld], sep)
                }
            if (idx == 8) {
                dateKey = dateParts[1] "-" padLeft(dateParts[2]) "-" padLeft(dateParts[3])
                #printf("\n7DEBUG: idx=%d, dateKey=%s, NR=%d, %s\n\n", idx  dateKey, NR, $0)
                }
            else if (idx ==6) {
                dateKey = dateParts[1] "-" padLeft(dateParts[2]) "-15"
                #printf("\n8DEBUG: idx=%d, dateKey=%s, NR=%d, %s\n\n", idx  dateKey, NR, $0)
                }
            else if (idx == 4) {
                dateKey = substr(dateParts[1], 1, length(dateParts[1] - 1)) "-06-30"
                #printf("\n9DEBUG: idx=%d, dateKey=%s, NR=%d, %s\n\n", idx  dateKey, NR, $0)
                }
            else {
                dateKey = ""
                }
            #printf("10DEBUG: dateKey=%s\n", dateKey)
            }
        }
    printf("%s:%d:%s\n", dateKey, NR, $0)
}
