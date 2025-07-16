# Contributing to FiveM Build

Thank you for your interest in contributing to the FiveM Build project! This document provides guidelines for contributing to this project.

## Commit Message Guidelines

We follow the [Conventional Commits](https://www.conventionalcommits.org/) specification for commit messages. This ensures a clean and readable git history.

### Commit Message Format

```
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```

### Types

- **feat**: A new feature
- **fix**: A bug fix
- **docs**: Documentation only changes
- **style**: Changes that do not affect the meaning of the code (white-space, formatting, etc)
- **refactor**: A code change that neither fixes a bug nor adds a feature
- **perf**: A code change that improves performance
- **test**: Adding missing tests or correcting existing tests
- **chore**: Changes to the build process or auxiliary tools

### Examples

```
feat: add VPS installation script for FiveM server

Add comprehensive installation script for setting up FiveM server
on Debian/Ubuntu VPS with all required packages and configurations.

Closes #123
```

```
fix: resolve SSH configuration issue in install script

The SSH configuration was not being properly updated. This fix
ensures the PermitRootLogin setting is correctly modified.

Fixes #456
```

## Development Workflow

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Make your changes
4. Commit your changes using the conventional commit format
5. Push to the branch (`git push origin feature/amazing-feature`)
6. Open a Pull Request

## Code Style

- Use clear and descriptive variable names
- Add comments to explain complex logic
- Follow the existing code style and formatting
- Test your changes before submitting

## Language

All commit messages, documentation, and code comments should be written in **English**.

## Questions?

If you have any questions about contributing, please open an issue or contact the maintainers. 