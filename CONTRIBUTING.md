# Contributing

## Use of aider for assistance

We use aider to help facilitate making new modules here. It uses conventional commits, which our auto semantic versioning in CI pairs with nicely.

## Publishing a new commit

To publish a new version of this tool, run the github CI [publish.yml](.github/workflows/publish.yml).

It will:

* Automatically create a new version based the conventional commits since your last release.
* Bump the version in the README.md and mix.exs file
* Create a github release for that version