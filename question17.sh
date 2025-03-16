git checkout -b branch1
mv dir1/dir2/foo dir1/foo
mv dir3/bar_copy dir3/bar
rm -rf dir1/dir2
touch newfile1
git add .
git commit -m "Setup branch1 structure"
git checkout main
git checkout -b branch2
mv dir1/dir2/foo dir1/dir2/foo_modified
mkdir dir1/dir3
touch dir1/dir3/newfile2
git add .
git commit -m "Setup branch2 structure"
