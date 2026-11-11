🚀 Git & GitHub Notes

A beginner-friendly guide to understanding Git, GitHub, and the essential commands used in version control.

⸻

📌 1. What is Version Control?

Version Control is a system that tracks changes made to files over time. It helps developers maintain different versions of their projects, collaborate with others, and recover previous versions when needed.

Git vs GitHub

Git	GitHub
A version control system.	A cloud-based platform for hosting Git repositories.
Works locally on your computer.	Helps developers collaborate online.
Tracks changes in files.	Allows sharing, reviewing, and managing code.

⸻

📂 2. The Three Areas of Git

Git manages your project using three main areas:

Area	Description
Working Directory	Where you create, edit, and delete files.
Staging Area	Where you prepare changes before committing them.
Repository	Where Git permanently records committed snapshots of your project.

Git Workflow

Working Directory
       |
       | git add
       ▼
  Staging Area
       |
       | git commit
       ▼
   Repository

⸻

⚡ 3. Essential Git Commands

Command	Purpose
git init	Initializes a new Git repository in the current directory.
git status	Shows the current state of files and changes.
git add <file>	Adds changes to the staging area.
git commit -m "message"	Saves staged changes as a commit.
git log --oneline	Displays commit history in a compact format.
git diff	Shows changes that haven’t been staged yet.

Example Workflow

git init
git status
git add .
git commit -m "Initial commit"
git log --oneline

⸻

↩️ 4. Undoing Changes

Sometimes we make mistakes or stage files accidentally. Git provides commands to undo changes.

Command	Purpose
git restore --staged <file>	Removes a file from staging without deleting its changes.
git restore <file>	Discards unstaged changes in a file.
git revert <commit-id>	Creates a new commit that reverses the changes of an earlier commit.

Remember: git restore changes your working state, while git revert safely undoes a commit by creating another commit.

⸻

🌐 5. Working with Remote Repositories

A Remote Repository is a version of your project hosted on platforms like GitHub.

Command	Purpose
git remote add origin <url>	Connects your local repository to a remote repository.
git push -u origin main	Uploads local commits to GitHub and sets the upstream branch.
git clone <url>	Downloads an existing remote repository to your computer.
git fetch	Downloads remote updates without merging them into your current branch.
git pull	Fetches remote changes and integrates them into your current branch.

Typical Remote Workflow

git remote add origin <repository-url>
git push -u origin main
git pull

⸻

🌿 6. Branching in Git

A Branch is an independent line of development that allows developers to work on new features or bug fixes without affecting the main codebase.

Branch Commands

Command	Purpose
git branch	Lists all local branches.
git branch <name>	Creates a new branch.
git switch <branch>	Switches to an existing branch.
git switch -c <name>	Creates a new branch and switches to it.
git merge <branch>	Combines changes from another branch into the current branch.

Example

git switch -c feature-login
# Make changes to your project
git add .
git commit -m "Added login feature"
git switch main
git merge feature-login

Merge Conflicts

A Merge Conflict occurs when Git cannot automatically combine changes from different branches, usually because the same part of a file was modified differently.

To resolve it:

1. Open the file containing the conflict.
2. Decide which changes should be kept.
3. Remove conflict markers.
4. Stage the resolved file.
5. Commit the changes if required.

Pull Requests (PRs)

A Pull Request is a request to merge changes from one branch into another, usually through GitHub.

Pull Requests help developers:

* Review code before merging.
* Discuss proposed changes.
* Identify bugs.
* Collaborate with team members.

⸻

💡 7. Quick Revision

Concept	Remember
Version Control	Tracks changes over time.
Git	Tracks project history locally.
GitHub	Hosts Git repositories online.
git add	Prepare changes.
git commit	Save changes.
git push	Upload changes.
git pull	Get and integrate changes.
Branch	Work independently.
Merge	Combine branches.
Pull Request	Request a code review and merge.

⸻

🎯 Final Thought

Git helps developers track and manage code changes, while GitHub makes collaboration easier.

Learn the workflow, understand the commands, and practice consistently!

⸻

Created for learning and practicing Git & GitHub fundamentals.