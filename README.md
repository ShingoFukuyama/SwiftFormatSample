# SwiftFormat Sample

This is a sample project of [SwiftFormat](https://github.com/nicklockwood/SwiftFormat)

:link: [日本語ブログはこちら](https://tech.mirrativ.stream/entry/2022/06/27/060850)

## Environment

* Xcode 13.4
* Swift 5.6

## Directory Tree

```
Project Root
├── BuildTools # Swift Package Manager for swiftformat command
│   ├── Package.swift
│   └── ...
├── GitHooks # git can see this directory for event hooking
│   └── pre-commit # It runs before git commit
├── .swiftformat # config file for SwiftFormat
└── ...
```

This project is using a vanilla shell script file (GitHooks/pre-commit) instead of using [pre-commit command](https://github.com/pre-commit/pre-commit).

Add this setting to hook the file to git actions.

```
$ git config --local core.hooksPath GitHooks
```

The script file runs before git commit, and the commit succeeds if staged changes of swift files meet SwiftFormat rules, otherwise you need to commit it again after changes SwiftFormat generated are staged.
