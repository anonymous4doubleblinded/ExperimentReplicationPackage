# we need the BUILD site in docs, but mkdoc uses it for its sources usually.
# So we store the actual sources in mkdocs, then before building override docs, then rename the outcome to docs.
rm -rf docs
cp -rv mkdocs docs
mkdocs build
git add .
git commit -m "-"
git push
rm -rf docs
mv site docs

