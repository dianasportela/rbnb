# how to merge

After every pull request, on GitHub, is accepted you should:

## 1. save what you were doing on your current branch

```bash
git add .
git commit -m "message"
```

## 2. go to the main branch

```bash
git checkout master
```

## 3. pull all the changes and run any gem or migration changes

```bash
git pull origin master
bundle install
rails db:migrate
```

## 4. go back to your branch and merge with the main (or create a new one)

```bash
git checkout your_branch
git merge master
```
