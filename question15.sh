git fetch origin branch1
git checkout main
git merge origin/branch1

git add .
git commit -m "Merged branch1 into main"
cp $(git diff --name-only --diff-filter=U) ~/Desktop/StudyFile/Semester1/FCS\ B/Week2Practice/
