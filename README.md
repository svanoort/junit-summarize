# junit-summarize
Summarize junit result.xml from Jenkins plugin compat tester for comparison

Converts JUnit plugin-compat-tester results from jenkins to a shortened, sorted format by plugin name and result for easy diffs

usage:
install xsltproc

command:
sh summarize.sh \<junit-result-file.xml\>

Output will be SUMMARY-$filename.xml with the plugin name and result.  These results can easily be diff'd against each other.
