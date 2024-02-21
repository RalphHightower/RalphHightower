BEGIN {
    FS = ":"
    }
{
    for (idx = 3; idx < NF; idx++) {
        #print("DEBUG: idx=%d,٪s:", idx, $idx)
        printf("%s:", $idx)
        }
    printf("%s\n", $NF)
    }