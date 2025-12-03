# 💤 LazyVim for Leninner

This config is a [devaslife youtube video extension](https://www.youtube.com/watch?v=fFHlfbKVi30&t=976s) customized for my personal use. Feel free to use it.

## 📚 Vim Tutorial

To start the built-in Vim tutorial, run:
```bash
:Tutor
```

Or from the command line:
```bash
nvim +Tutor
```

## ⌨️ Common Vim Commands

### Movement

| Command            | Action                     |
| ------------------ | -------------------------- |
| `h`, `j`, `k`, `l` | Move left, down, up, right |
| `w`                | Move forward one word      |
| `b`                | Move backward one word     |
| `e`                | Move to end of word        |
| `0`                | Move to beginning of line  |
| `$`                | Move to end of line        |
| `gg`               | Move to beginning of file  |
| `G`                | Move to end of file        |
| `{`                | Move to previous paragraph |
| `}`                | Move to next paragraph     |
| `H`                | Move to top of screen      |
| `M`                | Move to middle of screen   |
| `L`                | Move to bottom of screen   |
| `Ctrl+u`           | Move up half screen        |
| `Ctrl+d`           | Move down half screen      |
| `Ctrl+f`           | Move forward one screen    |
| `Ctrl+b`           | Move backward one screen   |

### Editing

| Command  | Action                         |
| -------- | ------------------------------ |
| `i`      | Insert before cursor           |
| `a`      | Insert after cursor            |
| `I`      | Insert at beginning of line    |
| `A`      | Insert at end of line          |
| `o`      | Open new line below            |
| `O`      | Open new line above            |
| `x`      | Delete character under cursor  |
| `X`      | Delete character before cursor |
| `dd`     | Delete entire line             |
| `dw`     | Delete word                    |
| `D`      | Delete to end of line          |
| `yy`     | Yank (copy) line               |
| `yw`     | Yank word                      |
| `y$`     | Yank to end of line            |
| `p`      | Paste after cursor             |
| `P`      | Paste before cursor            |
| `u`      | Undo                           |
| `Ctrl+r` | Redo                           |
| `.`      | Repeat last command            |

### Visual Mode

| Command  | Action                        |
| -------- | ----------------------------- |
| `v`      | Enter visual mode (character) |
| `V`      | Enter visual mode (line)      |
| `Ctrl+v` | Enter visual block mode       |
| `>`      | Indent selection              |
| `<`      | Unindent selection            |

### Search and Replace

| Command          | Action                            |
| ---------------- | --------------------------------- |
| `/pattern`       | Search forward                    |
| `?pattern`       | Search backward                   |
| `n`              | Next match                        |
| `N`              | Previous match                    |
| `*`              | Search word under cursor forward  |
| `#`              | Search word under cursor backward |
| `:%s/old/new/g`  | Replace all occurrences           |
| `:%s/old/new/gc` | Replace with confirmation         |

### File Operations

| Command       | Action                |
| ------------- | --------------------- |
| `:w`          | Save file             |
| `:wq`         | Save and quit         |
| `:q`          | Quit                  |
| `:q!`         | Quit without saving   |
| `:e filename` | Edit file             |
| `:r filename` | Read file into buffer |
| `:w filename` | Write to file         |

### Windows and Buffers

| Command            | Action                    |
| ------------------ | ------------------------- |
| `:split` or `:sp`  | Split window horizontally |
| `:vsplit` or `:vs` | Split window vertically   |
| `Ctrl+w h`         | Move to left window       |
| `Ctrl+w j`         | Move to bottom window     |
| `Ctrl+w k`         | Move to top window        |
| `Ctrl+w l`         | Move to right window      |
| `Ctrl+w =`         | Equalize window sizes     |
| `Ctrl+w +`         | Increase window height    |
| `Ctrl+w -`         | Decrease window height    |
| `:bnext` or `:bn`  | Next buffer               |
| `:bprev` or `:bp`  | Previous buffer           |
| `:bd`              | Delete buffer             |
| `:ls`              | List buffers              |

### Tabs

| Command            | Action       |
| ------------------ | ------------ |
| `:tabnew`          | New tab      |
| `:tabclose`        | Close tab    |
| `:tabnext` or `gt` | Next tab     |
| `:tabprev` or `gT` | Previous tab |
| `:tabfirst`        | First tab    |
| `:tablast`         | Last tab     |

### Marks

| Command  | Action                             |
| -------- | ---------------------------------- |
| `ma`     | Set mark 'a'                       |
| `'a`     | Jump to mark 'a'                   |
| `` `a``  | Jump to exact position of mark 'a' |
| `:marks` | List all marks                     |

### Macros

| Command | Action                    |
| ------- | ------------------------- |
| `qa`    | Start recording macro 'a' |
| `q`     | Stop recording            |
| `@a`    | Execute macro 'a'         |
| `@@`    | Repeat last macro         |

### Numbers and Repetition

| Command | Action               |
| ------- | -------------------- |
| `3dd`   | Delete 3 lines       |
| `5j`    | Move down 5 lines    |
| `2w`    | Move forward 2 words |
| `10x`   | Delete 10 characters |

### Text Objects

| Command | Action                     |
| ------- | -------------------------- |
| `diw`   | Delete inner word          |
| `daw`   | Delete a word (with space) |
| `di"`   | Delete inside quotes       |
| `da"`   | Delete around quotes       |
| `ci"`   | Change inside quotes       |
| `ca"`   | Change around quotes       |
| `yi(`   | Yank inside parentheses    |
| `ya(`   | Yank around parentheses    |

### Advanced

| Command                   | Action                            |
| ------------------------- | --------------------------------- |
| `:%norm command`          | Execute command on all lines      |
| `:g/pattern/d`            | Delete lines matching pattern     |
| `:g/pattern/norm command` | Execute command on matching lines |
| `Ctrl+o`                  | Jump back in jump list            |
| `Ctrl+i`                  | Jump forward in jump list         |
| `:jumps`                  | Show jump list                    |
| `:changes`                | Show change list                  |

## 🎯 LazyVim Specific Keymaps

### Leader Key
The default leader key is `<Space>`. Press `<Space>` and wait for the keymap hints.

### Common LazyVim Shortcuts

| Keymap       | Action                      |
| ------------ | --------------------------- |
| `<leader>ff` | Find files                  |
| `<leader>fg` | Live grep                   |
| `<leader>fb` | Find buffers                |
| `<leader>fh` | Find help                   |
| `<leader>ft` | Find themes                 |
| `<leader>fk` | Find keymaps                |
| `<leader>f/` | Find in current file        |
| `<leader>q`  | Quit                        |
| `<leader>w`  | Save                        |
| `<leader>e`  | Toggle file explorer        |
| `<leader>h`  | Toggle harpoon menu         |
| `<leader>a`  | Add file to harpoon         |
| `<C-h>`      | Jump to harpoon mark 1      |
| `<C-t>`      | Jump to harpoon mark 2      |
| `<C-n>`      | Jump to harpoon mark 3      |
| `<C-s>`      | Jump to harpoon mark 4      |
| `-`          | Open parent directory (Oil) |
| `<leader>to` | Open new tab                |
| `<leader>tc` | Close tab                   |

## 🔧 Custom Keymaps

- `H` - Move to beginning of line
- `L` - Move to end of line
- `<C-a>` - Select all
- `<A-j>` / `<A-down>` - Move line down
- `<A-k>` / `<A-up>` - Move line up
- `<C-u>` - Move up half screen (centered)
- `<C-d>` - Move down half screen (centered)

## 📖 Learning Resources

- Run `:Tutor` for the built-in Vim tutorial
- [Vim Adventures](https://vim-adventures.com/) - Interactive game
- [Open Vim](https://www.openvim.com/) - Interactive tutorial
- [Vim Cheat Sheet](https://vim.rtorr.com/)
