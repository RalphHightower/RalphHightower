###### @RalphHightower 2024-08-23
###### shows those markdown lines in table rows where bold, or non-bold lines aren't paired.
###### awk field separator is the pipe symbol '|'
###### | Event | Date |
###### |-------|-------|
###### | **$2** | **$3** |
######
###### Output is record number and the string of that record. 
######
BEGIN {
    FS = "|"
    EVENT = 2
    DATE = 3
    EDITS =0
}
{
    if (NF >= 4) {
        evt = index($EVENT, "**")
        dt = index($DATE, "**")
        debug = evt + dt
        debug = 0
        if (debug > 0)
            printf("%d:%d:%d:%s\n", NR, evt, dt, $0)
        if ((((evt > 0) && (dt == 0)) || ((evt == 0) && (dt > 0)))) {
            EDITS ++
            printf("%d:%s\n", NR, $0)
            }
        }
    }
END {
    printf("%d lines need formatting\n", EDITS)
    }