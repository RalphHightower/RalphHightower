{
    http = index($0, "http")
    if (http > 0) {
        key = substr($0, http)
        printf("%s@%s\n", key, $0)
        }
    }