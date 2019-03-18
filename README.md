# This repo probably should have been a blog post?

Enforced, opinionated language formatting is the best thing since sliced bread. Arguing, debating and changing formatting semantics is whatever the opposite of sliced bread is.

Don’t get me wrong however — code formatting _is_ important — it’s the debating of it that’s not. Everyone will have their own personal preferences anyway, none of which really matter. Better to give up and make a machine do it.

One of the first things I ever do for something I’m hacking on is wire up some tools to mean that I never have to think about this stuff ever again. In a team this multiplies.

This repo is how I usually configure things, it’s nothing special but it works well. To be honest most of my motivation for putting this here is so that I don’t have to keep digging it out the last project I worked on...

Here’s what it does;

- Support for arbitrary formatters — it’s just shell.
- Support for formatting sub-paths — it’s also just shell.
- Code formatting via a Git pre-commit hook — ugh, javascript.
