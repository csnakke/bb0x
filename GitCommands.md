## Git Commands

* Below can be used if you have created a new repository

```bash
echo "DATA_TO_README" >> README.md   # ONLY USE THIS IF YOU DON'T HAVE README 
git init
git add .
git config --global user.email "you@gmail.com" # Omit `--global` for specific repo
git config --global user.name "csnakke" # Omit `--global` for specific repo
git commit -m "First Commit"
git remote add origin git@github.com:csnakke/<REPO_NAME>.git
git branch -M main
git push -u origin main
```

* Below can be used when you have to push/update the repository

```bash
git remote add origin git@github.com:csnakke/<REPO_NAME>.git
git branch -M main
git push -u origin main
```

> NOTE: Always use the SSH URL to push

* Using SSH Keys to push data

```bash
# Add SSH Keys to SSH Agent
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

ssh -T git@github.com
# OUTPUT: Hi username! You've successfully authenticated...

# Git Push
git branch -M main
git push -u origin main
```

* Check all the keys added to agent

```bash
# List all the keys added to SSH Agent
ssh-add -l

# Remove specific key
ssh-add -d ~/.ssh/id_rsa 

# Remove all the keys
ssh-add -D

# Stop agent process
ssh-agent -k
```
