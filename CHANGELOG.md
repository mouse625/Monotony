# Changelog

## v2.1.1

### Updated

- The CHANGELOG.md file (this one)

### Fixed

- Fixed the disabling of horizontal movement when colliding with the side of a platform
- Fixed the bug (present for a year) where colliding with the side of a platform would teleport you to the top
- Fixed some redundancies in the achievements and button classes (unused sections)

## v2.1.0

### Added

- Mass anchoring to various positional checkpoints to fully support various aspect ratios
- Dynamic achievement positioning
- More credits images (with the old ones being updated too) as part of Stardance

### Updated

- The CHANGELOG.md file (this one)
- Improved cursor transitions between display states
- Quadratic instead of linear lerping for easing during transitions
- Removal of the back button (functionality replaced by the escape key)
- Improved fade function for a greater range of transition speeds
- Dyanmic title and subtitle heights for appropriate centring
- Revamped how levels were drew in preparation of upcoming features (stopped exponential growth of the number of lines)
- Updated the tutorial

### Fixed

- Button rendering bugs (didn't appear in previous versions but might as well have fixed the root cause)
- Fixed how collisions with the sides of platforms functioned
- Added consistency in structure, syntax and naming conventions

## v2.0.0

### Added

- A CHANGELOG.md file (this one)
- settings.json for VSCode file nesting
- All the blur sections to the images folder (to function as a default seed, an upcoming feature)

### Updated

- .gitignore since settings.json sits in the .vscode folder
- README.md (formatting and content since the extension change changes how installs the codebase version)
- Removed blurs as a separate program (aforementioned upcoming feature)
- Removed the need to generate symlinks (replaced by file nesting)
- Ensured higher pixel density for high DPI screens

### Fixed

- Removed the redundant main folder since the source folder now only contains one program
- Removed the sky "gradient" and replaced it with a solid colour
- Removed the finicky masks in several locations
- Fixed the data import paths due to the removal of the main folder
- Fixed the achievements having overlapping coordinates
- Fixed various other typos in the coordinates of a multitude of sprites
- Fixed the malfunctioning exit button
- Restructured the code and optimised several 
    - Matched the declaration-initialisation order
    - Automation of using the next section
    - Improved the structure of several classes to prevent bugs caused by future restructurings

## v1.0.0

### Added

- Initial release

---
