# we need the BUILD site in docs, but mkdoc uses it for its sources usually.
# So we store the actual sources in mkdocs, then before building override docs, then rename the outcome to docs.
rm -rf docs
cp -rv mkdocs docs
mkdocs build
# at this point the github pages content is in a directory called "site"
rm -rf docs
mv site docs
# Now we have what we want: the html / github pages sources in docs, the mkdocs markdowns in mkdocs
git add .
git commit -m "-"
git push

