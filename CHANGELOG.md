# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.2.0] - 2026-09-18

## [1.1.0] - 2026-09-14

### Changed

- Rewrote the core chat-hiding mechanism to use Arma's native `showChat` command instead of the previous per-frame `clearRadio` handler workaround, and to wait for the chat display to actually exist before applying it on join. Chat is still hidden by default in multiplayer, same as before — this changes how it's implemented, not the default behavior.

### Fixed

- Fixed the toggle logic checking `isNil` against the wrong value (the handler's contents instead of its variable name), which could leave the old per-frame handler running when toggling chat back on

## [1.0.0] - 2026-08-13

### Added

- Initial release: hide chat on multiplayer servers, toggled with a configurable key-press

[Unreleased]: https://github.com/TacticalTrainingTeam/clear-hud-rewrite/compare/v1.2.0...HEAD
[1.2.0]: https://github.com/TacticalTrainingTeam/clear-hud-rewrite/compare/v1.1.0...v1.2.0
[1.1.0]: https://github.com/TacticalTrainingTeam/clear-hud-rewrite/compare/v1.0.0...v1.1.0
[1.0.0]: https://github.com/TacticalTrainingTeam/clear-hud-rewrite/releases/tag/v1.0.0
