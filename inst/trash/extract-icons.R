css0 <- readLines("metro-icons.css")
css <- css0[grep("before \\{$", css0)]
icons <- sub("^\\.mif-(.*?)\\:before \\{$", "\\1", css)

quotedicons <- paste0("\"", sort(icons), "\",")
writeLines(quotedicons, "iconsvector.txt")
