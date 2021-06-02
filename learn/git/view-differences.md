

### 当前状态

test1 文件被修改了两次，状态分别是 staged unstaged (区别就是 staged 的状态是 git add 之后的)

```
➜  git-test git:(main) ✗ gs
On branch main
Your branch is behind 'origin/main' by 1 commit, and can be fast-forwarded.
  (use "git pull" to update your local branch)

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
	new file:   test1

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
	modified:   test1
```

cat test1

```
➜  git-test git:(main) ✗ cat test1  

222
```


### git diff 


Displays the differences between unstaged changes and the last commit

*unstaged* vs *the last commit*

```
➜  git-test git:(main) ✗ git diff test1
diff --git a/test1 b/test1
index f9d5850..9f8bea8 100644
--- a/test1
+++ b/test1
@@ -1,2 +1,2 @@
 
-1111
+222
```

### git diff --staged 

*staged* vs *the last commit*

```
➜  git-test git:(main) ✗ git diff --staged test1
diff --git a/test1 b/test1
new file mode 100644
index 0000000..f9d5850
--- /dev/null
+++ b/test1
@@ -0,0 +1,2 @@
+
+1111
(END)
```

### 总结

身边很多人都是用的 idea 。。。那么看本篇就没啥用了。。。（严重鄙视用 idea 的 🙄️）



