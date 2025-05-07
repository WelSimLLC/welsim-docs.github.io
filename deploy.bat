RMDIR /S /Q site
git pull
mkdocs gh-deploy --clean

cat docs.welsim.com > CNAME
git add .
git commit -a -m "add CNAME file"
git push origin gh-pages