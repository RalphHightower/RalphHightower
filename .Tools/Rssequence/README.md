# Sorts Markdown by date fields in url, and by record number 

## Primary Awk Programs 

### addSortKey 

Looks for date fields either separated by slash (/), or by dash (-). Dates that I've encountered have been YYYY-MM-DD

Adds the date field separated by dashes, line number, with colons (:) delimiting from the record to sort.

### Sort process 

To reverse sort:
`sort -ft: +0r -1 +1nr -2 +2`

### removeSortKey

Removes the date key, and the line number key.

## Utility Functions 

### httpAdd

Adds the url in the Markdown as a sort key to eliminate duplicates 

### sorting

`sort -ut\@ -0 +1`

</details>

### httpRemore

Removes the url sort key

