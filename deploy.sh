rm -rf docs
cp -rv mkdocs docs
mkdocs build
rm -rf docs
mv site docs

