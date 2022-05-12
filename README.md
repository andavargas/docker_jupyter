# docker_jupyter

This repo is a barebones scaffold for running a Jupyter environment with Docker. It significantly reduces the time and complexity for a Python programmer to get working with data because it automates, with scripts and a Dockerfile, many of the steps you would have to figure out and run yourself. Additionally, the use of Docker completely eliminates the need for Python environments, which are a well-known PitA that, if you use Docker, you will never have to use again.

# Getting set up

## Prerequisites

1. Docker installed on your machine (https://docs.docker.com/engine/install/)
2. git installed on your machine (https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
3. this repo cloned to your machine (https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository)

The prerequisites are easiest to set up on MacOS. Windows may require installation of a program called Git Bash and adding permissions to your Windows user so you can use Docker. Note that Git Bash can help you with passwords / personal access tokens, help which you won't have on MacOS. I have not tested on Linux, but it should be very similar to MacOS.

After fulfilling the prerequisites:

## MacOS

1. open Terminal.app, `cd` (navigate) into wherever you cloned the repo, and run `bash run_build_docker_mac.sh`
2. copy the URL that appears at the bottom (something like "http://127.0.0.1:8888/?token=tOkEn") and paste it into your web browser

## Windows

1. Open cmd.exe, `cd` (navigate) into wherever you cloned the repo, and run `run_build_docker_win.bat`
3. copy the URL that appears at the bottom (something like "http://127.0.0.1:8888/?token=tOkEn") and paste it into your web browser

# What's going on?

This set-up creates a small virtual computer (a "container") managed by Docker that Python and Jupyter get installed into. It makes one connection with a port, allowing your web browser to access inside the container, and another connection with a volume, allowing Jupyter to read and write files in the `workdir` directory on your hard drive. Except for these explicit connections, the container is totally isolated from your operating system and hard drive.

# Working with docker_jupyter

## Where to put stuff

If you want to access files from the Jupyter notebook in your browser, add them to the workdir or workdir/files directories that are wherever you cloned the repo to. If you want to write a file from inside the Jupyter notebook, be sure to save it to the workdir or workdir/files directories, because if you save it anywhere else it won't get copied to your hard drive (it'll stay trapped in the container).

## Upgrading or installing new packages

If you want to use additional Python packages, add them to the requirements.txt, add import statements at the top of your Jupyter notebook, and re-run the `run_build_docker` script. If you want to upgrade a package, upgrade its number in requirements.txt and re-run the `run_build_docker` script.

## Upgrading Python

If you want to upgrade Python, upgrade the number at the top of the Dockerfile (check that whatever you get actually exists on hub.docker.com because that is where it gets pulled from), and re-run the `run_build_docker` script.

## Monitoring and cleaning up

You can use Docker Desktop to see whether your container is running. You can use other Docker Desktop tools for more advanced operations like opening a shell into your container. If you use this repo a lot, over time you may accumulate a lot of old Docker images and containers that take up a lot of hard drive space, and you can stop and/or delete them in Docker Desktop.
