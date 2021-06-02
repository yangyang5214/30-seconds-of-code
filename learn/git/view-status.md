
### git status --sb

```
# git status --help
OPTIONS
       -s, --short
           Give the output in the short-format.

       -b, --branch
           Show the branch and tracking info even in short-format.
```

效果

```
➜  git git:(master) ✗ gs    
On branch master
Your branch is up to date with 'origin/master'.

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	view-status.md

nothing added to commit but untracked files present (use "git add" to track)


➜  git git:(master) ✗ gs -sb
## master...origin/master
?? view-status.md


➜  git git:(master) ✗ alias gs
gs='git status'
```