# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

<!--
script_version.hpp is currently at 1.1.0, but only v1.0.0 has ever
been tagged/released. There are real commits since v1.0.0 (bug fixes,
a macro/magic-number cleanup, a refactor), but the commit messages are
too generic to turn into an accurate changelog entry without guessing.
Fill in what actually changed, then either:
  - rename this section to "## [1.1.0] - <date>" if 1.1.0 is about to
    ship, or
  - keep it here and drop MINOR back to what's actually released, if
    it's not ready yet.
hemtt publish's changelog lookup needs an entry whose heading exactly
matches the current version() output -- right now that's "1.1.0", and
there isn't one, so `hemtt publish` will fail with
"No changelog entry found for version 1.1.0" until this is resolved.
-->

## [1.0.0] - 2026-08-13

### Added

- Initial release: hide chat on multiplayer servers, toggled with a configurable key-press

[Unreleased]: https://github.com/TacticalTrainingTeam/clear-hud-rewrite/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/TacticalTrainingTeam/clear-hud-rewrite/releases/tag/v1.0.0
