rm -rf docs
cp -rv mkdocs docs
mkdocs build
git add .
git commit -m "-"
rm -rf docs
mv site docs

