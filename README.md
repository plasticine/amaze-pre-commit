# This repo probably should have been a blog post?

Enforced, opinionated language formatting is the best thing since sliced bread. Arguing, debating and changing formatting semantics is whatever the opposite of sliced bread is.

Don’t get me wrong however — code formatting _is_ important — it’s the debating of it that’s not. Everyone will have their own personal preferences anyway, none of which really matter. Better to give up and make a machine do it.

One of the first things I ever do for something I’m hacking on is wire up some tools to mean that I never have to think about this stuff ever again. In a team this multiplies.

This repo is how I usually configure things, it’s nothing special but it works well. To be honest most of my motivation for putting this here is so that I don’t have to keep digging it out the last project I worked on...

Here’s what it does;

- Support for arbitrary formatters — it’s just shell.
- Support for formatting sub-paths — it’s also just shell.
- Code formatting via a Git pre-commit hook — ugh, javascript.

## Setup

#### Configure the pre-commit hook (you want this as a part of your project bootstrap so everyone gets it)

```shell
make .git/hooks/pre-commit
```

#### Configure the paths you want to lint in `package.json` in the root of your project

Each subpath is responsible for configuring it’s formatting. The JS project will probably use prettier, and for actually civilised lanuages like Go or Elixir you can just directly use their toolchain — whatever. Basically all that `script/format` does is change path into the subdir and runs the command you gave it.

These paths will be formatted in parallel so it shouldn’t slow down your commit speed too much.

https://github.com/plasticine/amaze-pre-commit/blob/9c0b328c3d7bea31d134d94f695b7feb12121085/package.json#L4-L17

```js
{
  "services/js-project/**/*.{js,jsx,json,css}": [
    "script/format 'services/js-project' 'yarn format'",
    "git add"
  ],
  "services/elixir-projec/**/*.{ex,exs}": [
    "script/format 'services/elixir-project' 'mix format'",
    "git add"
  ],
  "services/go-project/**/*.{go}": [
    "script/format 'services/go-project' 'go fmt'",
    "git add"
  ]
}
```

***

Thankyou for reading my blog post, have a GIF.

![fYEuw](https://user-images.githubusercontent.com/18076/54566872-35014880-4a26-11e9-8f2c-9cadab2bd035.gif)

