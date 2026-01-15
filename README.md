# Machine Learning Container

A Linux container for data science 

**In VS Code, make sure you have the Dev Containers extension installed. When you open this repo in VS Code, it should automatically notice that it's a conatiner, and offer to reopen inside the container and build it.**

## Git Basics

| Category               | Command             | Example                                           | What it Does                                |
| ---------------------- | ------------------- | ------------------------------------------------- | ------------------------------------------- |
| **Help**               | `git help`          | `git help commit`                                 | Opens help for a command                    |
| **Setup (Once)**       | `git config`        | `git config --global user.name "Alex"`            | Sets your Git username                      |
|                        | `git config`        | `git config --global user.email "alex@email.com"` | Sets your Git email                         |
| **Starting a Repo**    | `git clone`         | `git clone https://repo.url/project.git`          | Copies a remote repo to your machine        |
|                        | `git init`          | `git init`                                        | Creates a new Git repo locally              |
| **Checking State**     | `git status`        | `git status`                                      | Shows modified, staged, and untracked files |
|                        | `git log`           | `git log`                                         | Shows commit history                        |
| **Staging Changes**    | `git add`           | `git add file.c`                                  | Stages a file                               |
|                        | `git add .`         | `git add .`                                       | Stages all changes                          |
| **Committing**         | `git commit`        | `git commit -m "Add main function"`               | Saves staged changes                        |
| **Branches**           | `git branch`        | `git branch`                                      | Lists local branches                        |
|                        | `git branch`        | `git branch <branch name>`                        | Creates a new branch                        |
|                        | `git checkout`      | `git checkout <branch name>`                      | Switches branches                           |
| **Syncing your copy**  | `git pull --rebase` | `git pull --rebase`                               | Updates your branch without messy merges    |
| **Uploading Work**     | `git push`          | `git push origin <branch name>`                   | Pushes your branch to the remote repo       |
| **Remote Info**        | `git remote -v`     | `git remote -v`                                   | Shows remote repo URLs                      |

## Linux Basics

| Category            | Command    | Example                | What it Does                          |
| ------------------- | ---------- | ---------------------- | ------------------------------------- |
| **Getting Help**    | `man`      | `man ls`               | Shows the manual (help) for a command |
|                     | `--help`   | `ls --help`            | Quick help summary for a command      |
| **Navigation**      | `pwd`      | `pwd`                  | Prints current directory              |
|                     | `ls`       | `ls`                   | Lists files and folders               |
|                     | `ls -l`    | `ls -l`                | Lists files with details              |
|                     | `ls -a`    | `ls -a`                | Shows hidden files                    |
|                     | `cd`       | `cd Documents`         | Changes directory                     | 
|                     | `cd ..`    | `cd ..`                | Goes up one directory                 | 
|                     | `cd ~`     | `cd ~`                 | Goes to home directory                | 
| **Files & Folders** | `touch`    | `touch file.txt`       | Creates an empty file                 | 
|                     | `mkdir`    | `mkdir projects`       | Creates a directory                   | 
|                     | `rm`       | `rm file.txt`          | Deletes a file                        | 
|                     | `rm -r`    | `rm -r folder`         | Deletes a folder (recursive)          | 
|                     | `cp`       | `cp a.txt b.txt`       | Copies files                          | 
|                     | `cp -r`    | `cp -r src dst`        | Copies folders                        | 
|                     | `mv`       | `mv old.txt new.txt`   | Moves or renames files                | 
| **Disk & System**   | `top`      | `top`                  | Shows running processes               | 
|                     | `ps`       | `ps aux`               | Lists processes                       | 
| **Archives**        | `tar`      | `tar -xvf file.tar`    | Extracts tar archive                  | 
|                     | `zip`      | `zip a.zip file.txt`   | Creates zip archive                   | 
|                     | `unzip`    | `unzip a.zip`          | Extracts zip archive                  | 
| **Shortcuts**       | `Ctrl + C` | —                      | Stops a running command               | 
|                     | `Ctrl + D` | —                      | Logs out / ends input                 | 
|                     | `↑` / `↓`  | —                      | Command history                       | 
| **Superuser**       | `sudo`     | `sudo apt update`      | Runs command as admin                 | 



## Docker Basics

| Category             | Command               | Example                            | What it Does                        |
| -------------------- | --------------------- | ---------------------------------- | ----------------------------------- |
| **Help**             | `docker help`         | `docker help run`                  | Shows help for Docker commands      |
| **Checking Docker**  | `docker --version`    | `docker --version`                 | Confirms Docker is installed        |
|                      | `docker info`         | `docker info`                      | Shows Docker system info            |
| **Images**           | `docker images`       | `docker images`                    | Lists downloaded images             |
|                      | `docker pull`         | `docker pull python:3.11`          | Downloads an image from Docker Hub  |
|                      | `docker rmi`          | `docker rmi image_id`              | Deletes an image                    |
| **Containers**       | `docker ps`           | `docker ps`                        | Lists running containers            |
|                      | `docker ps -a`        | `docker ps -a`                     | Lists all containers                |
|                      | `docker run`          | `docker run python:3.11`           | Creates and runs a container        |
|                      | `docker run -it`      | `docker run -it ubuntu bash`       | Runs container interactively        |
|                      | `docker stop`         | `docker stop container_id`         | Stops a running container           |
|                      | `docker rm`           | `docker rm container_id`           | Deletes a container                 |
| **Running Programs** | `docker run --rm`     | `docker run --rm hello-world`      | Runs container and auto-deletes it  |
| **Building Images**  | `docker build`        | `docker build -t myapp .`          | Builds image from Dockerfile        |
| **Cleanup**          | `docker system prune` | `docker system prune`              | Deletes unused Docker data          |



## Installing Software

| Tool      | Installs          | Used For                            | Example                               | What it Does            |
| --------- | ----------------- | ----------------------------------- | -----------------------------------   | ----------------------- |
| **apt**   | System packages   | Linux tools, compilers, system libs | `sudo apt install git`                | Linux-wide install      |
|           |                   |                                     | `sudo apt update`                     | Run before installing   |
|           |                   |                                     | `sudo apt upgrade`                    | Updates system packages |
| **pip**   | Python packages   | Python libraries                    | `pip install numpy`                   | Python-only             |
|           |                   |                                     | `pip install -r requirements.txt`     | Installs project deps   |
|           |                   |                                     | `pip uninstall numpy`                 | Removes package         |
| **conda** | Packages + Python | Data science & ML stacks            | `conda install numpy`                 | Handles non-Python deps |
|           |                   |                                     | `conda create -n new_env`             | Creates environment     |
|           |                   |                                     | `conda activate new_env`              | Activates environment   |
