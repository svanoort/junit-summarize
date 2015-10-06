# junit-summarize
Summarize junit result.xml for comparison

# Converts JUnit plugin-compat-tester results from jenkins to a shortened, sorted format by plugin name and result for easy diffs

usage:
install xsltproc

command:
sh summarize.sh \<junit-result-file.xml\>