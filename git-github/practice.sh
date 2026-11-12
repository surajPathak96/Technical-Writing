#!/usr/bin/env bash
# Rehearsal script: runs the commands from the Git/GitHub lecture in a throw-away
# folder. A local "bare" repository plays the role of GitHub, so no network or
# token is needed. Run:  bash practice.sh
# Press Enter between steps to see each result.

set -e
step() { echo; echo "=================== $1"; read -r -p "(Enter to run) " _; }
run()  { echo "\$ $*"; "$@"; }

WORK=$(mktemp -d)
echo "Practice area: $WORK"
cd "$WORK"
git init --bare -q -b main remote.git            # stands in for GitHub

step "1. Create and initialise a repository"
run mkdir calculator
cd calculator
run git init -b main
git config user.name "Practice User"
git config user.email "practice@example.com"

step "2. Create a file, status, stage, commit, log"
echo 'print("Calculator")' > main.py
run git status
run git add main.py
run git status
run git commit -m "Add initial calculator"
run git log --oneline

step "3. diff, diff --staged, diff HEAD, ls-files"
echo 'print("Sum:", 10 + 5)' >> main.py
run git diff
run git add main.py
run git diff --staged
echo 'print("extra")' >> main.py
run git diff HEAD
run git ls-files

step "4. .gitignore"
printf '__pycache__/\n*.pyc\n.env\n*.log\ndata/\n' > .gitignore
touch debug.log
run git status --short

step "5. Unstage and discard (restore)"
run git restore --staged main.py
run git status --short
run git restore main.py                 # discards the unstaged edit
run git status --short

step "6. Commit again, then revert a commit"
echo 'print("Difference:", 10 - 5)' >> main.py
git add main.py .gitignore
run git commit -m "Add subtraction"
run git log --oneline
run git revert --no-edit HEAD
run git log --oneline

step "7. Rename and remove files (mv, rm)"
echo "temp" > old.py
git add old.py && git commit -qm "Add old.py"
run git mv old.py new.py
run git commit -m "Rename old.py to new.py"
run git rm new.py
run git commit -m "Remove new.py"

step "8. Remote: add, -v, branch -M, push -u"
run git remote add origin "$WORK/remote.git"
run git remote -v
run git branch -M main
run git push -u origin main

step "9. Branches: branch, switch, switch -c"
run git branch feature-login
run git branch
run git switch feature-login
echo 'print("login")' > login.py
git add login.py && git commit -qm "Add login feature"
run git switch main
run git switch -c feature-subtraction
echo 'print("sub")' > sub.py
git add sub.py && git commit -qm "Add subtraction feature"
run git push -u origin feature-subtraction

step "10. Merge"
run git switch main
run git merge feature-login
run git log --oneline --graph --all

step "11. Merge conflict"
run git switch -c conflict-a
echo 'result = 10' > conflict.txt
git add conflict.txt && git commit -qm "result = 10"
run git switch main
git switch -c conflict-b -q
echo 'result = 20' > conflict.txt
git add conflict.txt && git commit -qm "result = 20"
git merge conflict-a || true
echo "--- file with conflict markers:"
cat conflict.txt
echo 'result = 30' > conflict.txt
run git add conflict.txt
run git commit -m "Resolve conflict"
git switch -q main

step "12. Clone, fetch, pull"
cd "$WORK"
run git clone "$WORK/remote.git" copy
git -C copy config user.name "Practice User"
git -C copy config user.email "practice@example.com"
cd calculator
git switch -q main
echo 'print("new remote work")' > remote_change.py
git add remote_change.py && git commit -qm "Remote change" && git push -q origin main
cd ../copy
run git fetch origin
run git log --oneline origin/main -3
run git pull origin main

step "13. Tags"
run git tag -a v1.0.0 -m "Version 1.0.0"
run git tag
run git show v1.0.0 --stat
run git push origin v1.0.0

step "14. Rebase"
git switch -q -c rebase-demo
echo 'feature' > rb.txt && git add rb.txt && git commit -qm "Feature commit"
git switch -q main
echo 'main change' > mc.txt && git add mc.txt && git commit -qm "Main commit"
git switch -q rebase-demo
run git rebase main
run git log --oneline --graph

echo; echo "Done. Practice area was: $WORK"
