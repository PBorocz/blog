# [just](https://github.com/casey/just "Just") vs. Makefiles

After spending **another** 10 minutes trying to figure out more Makefile idiosyncrasies just to try and automate (and document) both oft and seldom issued commands, I recently found and decided to give [just](https://github.com/casey/just "Just") a try. Took less than 10 minutes to understanding what was necessary to change from my Makefile to a *justfile*.

**TL;DR;** -> Why has it taken me so long to find this! If you don't need to worry about dependencies, unreservedly recommended.

### My Previous Site's `justfile`

Here is the automation file that I used to build my previous site with [Hugo](https://gohugo.io "Hugo"):

``` make

# Yes, you can have local variables..
CONTENT    := justfile_directory() + "/content"
DEPLOY     := justfile_directory() + "/deploy"
COMMIT_TAG := `date "+%Y-%m-%dT%H:%M:%S"`


# This list of available targets
default:
    @just --list

# Build local content *and* deploy to public github repo.
deploy: build push

# Build local content to public directory.
build:
	@echo "Generating site..."
	@cd {{CONTENT}} && hugo --quiet --minify --gc --cleanDestinationDir -d {{DEPLOY}}
	@cp {{CONTENT}}/CNAME {{DEPLOY}}

# Commit current version of local public directory and push to github.
push:
	@echo "Committing and pushing to github..."
	@cd {{DEPLOY}} && git add --all .                1>git.log  2>git.err
	@cd {{DEPLOY}} && git commit -m "{{COMMIT_TAG}}" 1>>git.log 2>>git.err
	@cd {{DEPLOY}} && git push -u origin main        1>>git.log 2>>git.err

# Run a local server (including drafts).
server:
	@cd {{CONTENT}} && hugo server --buildDrafts --disableFastRender
```

I find this clean, easy to understand and it automagically introspects the file to give docs:

``` bash
$ just
Available recipes:
    build   # Build local content to public directory.
    default # This list of available targets
    deploy  # Build local content *and* deploy to public github repo.
    push    # Commit current version of local public directory and push to github.
    server  # Run a local server (including drafts).
$ just build
  ...
```

**...no more `PHONY`'s!**

Now, obviously, since you're reading this in github, you can tell I don't use Hugo anymore and the need to do all the rigamorale above is one reason why!

Keywords: software, cli, command-line, make
