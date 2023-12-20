# cv

My professional journey in LaTeX! 📄✨ This repo contains the source code for my CV, styled with LaTeX for a sleek and professional look. Feel free to check it out and connect! 🚀

## Running the project

To run the project, you need to have a LaTeX compiler installed or like me, you can use an texlive docker image to compile the project.

```bash
docker run --rm \
       --volume "$(pwd):/workdir" \
       --user $(id -u):$(id -g) \
       texlive/texlive:latest \
       pdflatex -output-directory=./build main.tex
```

> **Important**: You need to have the `build` folder created before running the command above. Do not worry, the folder is already ignored by git.

### Local development

If you want to develop locally, you need to install:

- [TeX Live](https://www.tug.org/texlive/) - A TeX distribution to compile the project. (`sudo apt install texlive`)
- Indentation plugin for your editor of choice. (`sudo apt install texlive-extra-utils`)
- Fontawesome package for LaTeX. (`sudo apt install texlive-fonts-extra`)
