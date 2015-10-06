#!/bin/bash

# Generate summary files from report
for f in `ls | grep -e '.*report.*\.xml' | grep -vi summary`; do
    xsltproc -o "SUMMARY-$f" summarize.xsl $f
done

# Check for cases where multiple plugin compat results
# xpath 1.609.1-report.xml '//pluginCompatTests/entry[count(list/compatResult) > 1]'