# Shell Configuration Templates

Git-aware shell prompts for bash and tcsh/csh.

## Features

- Colored prompt showing user, host, and current directory
- Git branch name in parentheses when inside a repo
- Asterisk `*` indicator when there are uncommitted changes
- Common aliases (ll, h, etc.)

## Prompt Preview
```
[user@hostname:~/projects/myrepo] (main)*$
```

## Installation

### Bash (macOS, Linux)
```bash
cp bash_profile ~/.bash_profile
source ~/.bash_profile
```

### tcsh/csh (Linux, macOS)
```bash
cp git_prompt.sh ~/.git_prompt.sh
chmod +x ~/.git_prompt.sh
cp cshrc ~/.cshrc
source ~/.cshrc
```

## Color Scheme

| Element    | Color   |
|------------|---------|
| Brackets   | Green   |
| Username   | Magenta |
| @          | Yellow  |
| Hostname   | Green   |
| Path       | Cyan    |
| Git info   | Yellow  |

## Notes

- The tcsh prompt uses a helper script (`git_prompt.sh`) because tcsh doesn't support command substitution directly in the prompt
- The helper script uses POSIX sh, so it works on any Unix-like system
- For Linux systems, you may want to enable `LS_COLORS` for colored directory listings (see comments in cshrc)

## Customization

### Use full path instead of ~/

In cshrc, change `%~` to `%/` in both prompt lines.

### Change colors

Edit the color variables at the top of each file. Color codes:
- 31=red, 32=green, 33=yellow, 34=blue, 35=magenta, 36=cyan, 37=white
- Add `1;` prefix for bold (e.g., `1;33` = bold yellow)

## License

MIT