###### @RalphHightower 2024-08-12
###### Counts characters in a line (excludes .md extension)
{ printf("%d:%s\n", length($0), $0) }