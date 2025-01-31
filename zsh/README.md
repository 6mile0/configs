# Setup zsh

## 手順
### 1. 実行権限を付与
```bash
$ cd configs/zsh
$ chmod +x setup_zsh.sh config_zsh.zsh
```
### 2. zshとoh-my-zshのインストール
```bash
$ ./setup_zsh.sh
```
### 3. zshの設定
```bash
$ ./config_zsh.zsh
```

### インストールされるもの
- packages
    - git
    - curl
    - zsh (macOSの場合はデフォルトでインストール済み)
- frameworks
    - oh-my-zsh
- plugins
    - zsh-syntax-highlighting
    - zsh-completions
    - powerlevel10k
