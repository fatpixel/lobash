# Changelog

All notable changes to this project will be documented in this file.

The format is inspired by [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## Change Types

- Add: New features.
- Fix: Bug fixes.
- Change: Changes in existing functionality.
- Breaking Change: Changes which incompatible with previous version in existing functionality
- Deprecate: Features soon-to-be removed.
- Remove: Features removed now.
- Security: In case of vulnerabilities.
- Doc: Documentation changes.

## [Unreleased]

[Full Changes](https://github.com/adoyle-h/lobash/compare/master...develop)

## [v0.2.0] - 2019-07-07 15:26:01 +0800

### Fix

- l.array_include should return false when get empty array.
- `l.split 'abc' target 'abc'` not work as expected.
- l.cur_function_name: wrong function name in dist.
- l.trace_stack should not show self function in stack in dist.
- Only active inherit_errexit when it is supported in Bash.
- l.count_files: wrong counts when spaces in file paths

### Add

- Add new modules: ask_input, echo_screen, with_ifs
- bin/lobash add new sub-commands: mods, meta, help, github
- Add colored output and interactive prompts for build script

### Change

- Support Bash 4.0+. The shell option inherit_errexit is not required. Some modules are not supported in lower version Bash.

### Doc

- Change file structure of "module usages" and show more metadatas. Now you can see what Bash version each module supported.

[Full Changes](https://github.com/adoyle-h/lobash/compare/v0.1.0...v0.2.0)

## [v0.1.0] - 2019-07-01 23:46:15 +0800

First release! It works in Bash 4.4+.

[Full Changes](https://github.com/adoyle-h/lobash/compare/c8826ac...v0.1.0)

### Add

<!-- links -->

[v0.2.0]: https://github.com/adoyle-h/lobash/tree/v0.2.0
[v0.1.0]: https://github.com/adoyle-h/lobash/tree/v0.1.0