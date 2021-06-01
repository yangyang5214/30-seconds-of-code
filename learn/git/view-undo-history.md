

简单总结就是能看到你的所有操作

### git log

```
$ git log

# 只有一个 commit
commit a1f3d25bb0a4dcae378500524acd1368e728da01 (HEAD -> main)
Author: beer <beer5214@126.com>
Date:   Tue Jun 1 18:39:31 2021 +0800

    Initial commit
(END)

```


### git reflog


可以看到本地执行了很多步骤，最后被 reset 到 a1f3d25bb0a4dcae378500524acd1368e728da01 而已

如果 reset 错了，还可以找到对应的 commit_id 还原回去

```
a1f3d25 (HEAD -> main) HEAD@{0}: reset: moving to a1f3d25bb0a4dcae378500524acd1368e728da01
5ca2b4c (origin/main, origin/HEAD) HEAD@{1}: checkout: moving from dev to main
32c8fff (dev) HEAD@{2}: checkout: moving from main to dev
5ca2b4c (origin/main, origin/HEAD) HEAD@{3}: checkout: moving from dev to main
32c8fff (dev) HEAD@{4}: checkout: moving from 32c8fff7ee0361d14ddd7f58c416cb340b6bca60 to dev
32c8fff (dev) HEAD@{5}: commit: add test2 file
5ca2b4c (origin/main, origin/HEAD) HEAD@{6}: checkout: moving from main to 5ca2b4c1dcee2739e90d89f3351655cb29382aa8
5ca2b4c (origin/main, origin/HEAD) HEAD@{7}: commit: add test1 file
a1f3d25 (HEAD -> main) HEAD@{8}: clone: from git@github.com:yangyang5214/git-test.git

```

### 小贴士

摸鱼的时候，千万别说，我改了很多东西，最后执行 reset 丢弃了，执行 git reflog 就尴尬了(摸鱼就摸鱼了)



