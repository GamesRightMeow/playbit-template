# Playbit template

This is a template project for [Playbit](https://github.com/GamesRightMeow/playbit) which helps you get started building cross-platform Lua games for [Playdate](https://play.date/) and [Love2d](https://love2d.org/).

For more information, refer to the [Playbit docs](https://github.com/GamesRightMeow/playbit/blob/main/docs/readme.md).

# Usage

1. [Create your own repository from this template](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template).

1. [Clone your repository](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository).

1. Init and checkout submodules.
    ```
    git submodule update --init --recursive`
    ```

1. Update Playbit to latest version .
    ```
    cd playbit
    git checkout main
    git pull
    cd ..
    git commit -am "Updated playbit"
    ```