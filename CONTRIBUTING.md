# Contributing

## Use of aider for assistance

We use [`aider`](https://aider.chat/) to help facilitate adding behavior to our API clients. `aider` uses conventional commits when it makes changes, which our auto semantic versioning in `ci.yml` pairs with nicely.

## Publishing a new commit

To publish a new version of this tool:

1. grab the latest git tag from main (list them with `git tag`)
2. run the github CI [publish.yml](.github/workflows/publish.yml), and pass the git tag version you want to publish.

It will:

* Automatically create a github release for that git tag
* Bump the version in the mix.exs file
* Create a github release for that version

Remember to update the README.md documentation with the latest version (manual, for now, due to technical difficulties getting this to auto update)