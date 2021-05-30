
### 看文档

```shell
$ git stash --help

apply [--index] [-q|--quiet] [<stash>]
   Like pop, but do not remove the state from the stash list. Unlike pop, <stash> may be any commit that looks like a commit created by stash push or stash create.
   
# 说的很明白了 Like pop, but do not remove the state from the stash list
```

### 测试

```shell
# 查看 stash 状态
$ git stash list
stash@{0}: WIP on master: 6484927 update deploy.sh

# apply stash
$ git stash apply 0
On branch master
Your branch is up to date with 'origin/master'.

Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

	new file:   test.sh
	
# 再次查看状态  stash{0} 还在
$ git stash list
stash@{0}: WIP on master: 6484927 update deploy.sh
```
