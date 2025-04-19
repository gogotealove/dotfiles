# Terminal 設定
export TERM=xterm-256color

# 履歴設定
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

# 言語設定 (root の場合は C)
export LANG=ja_JP.UTF-8
[[ $UID -eq 0 ]] && export LANG=C

# キーバインドを Vi モードに設定
bindkey -v

# プロンプトの設定
autoload -U colors && colors
PROMPT='%F{cyan}%n@%m%f:%F{blue}%~%f %# '

# 補完の有効化
autoload -U compinit && compinit

# 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# 補完候補を一覧表示したとき、Tabや矢印で選択できるようにする
zstyle ':completion:*:default' menu select=1

# エイリアス設定
alias l="ls --color=auto"
alias ls="ls --color=auto"
alias la="ls -A"
alias ll="ls -lh"
alias lla="ll -A"
alias grep="grep --color=auto"
alias ...='cd ../..'
alias ....='cd ../../..'

# エイリアスを拡張する
setopt ALIASES

# ヒストリのオプション
setopt APPEND_HISTORY       # コマンド終了順で履歴を保存
setopt HIST_IGNORE_SPACE    # スペースで始まるコマンドを履歴に保存しない
setopt HIST_REDUCE_BLANKS   # 不要な空白を削除して保存
setopt HIST_VERIFY          # 実行前に履歴展開を確認

# 自動ディレクトリ移動
setopt AUTO_CD

# コマンド補完時にリストアップ
setopt AUTO_LIST

# リスト表示の際の整列
setopt LIST_PACKED
setopt LIST_ROWS_FIRST

# リダイレクト設定
setopt NO_CLOBBER           # ">" のリダイレクトで既存ファイルを上書きしない

# スペルミスを訂正
setopt CORRECT

# 見やすい ls のカラー設定
export LS_COLORS="di=36;49:ln=35;49:so=32;49:pi=33;47:ex=31;49:bd=34;46:cd=34;47"

# Zsh Line Editor (ZLE) の設定
setopt ZLE
setopt PROMPT_SUBST

# 快適な開発のためのオプション
setopt AUTO_MENU            # 自動メニュー補完
setopt UNSET                # 空の変数を空白として扱う
setopt FLOW_CONTROL         # Ctrl+S/Q のフロー制御を無効化
setopt TRANSIENT_RPROMPT    # コマンド実行後に右プロンプトを削除

. "$HOME/.local/bin/env"

# =============================================================================
# for AtCoder
# =============================================================================
ATCODER_DIR=~/dev/atcoder
atcoder_abc() {
  cd "$ATCODER_DIR/ABC/abc$1/a" && code main.py
}
alias abc=atcoder_abc
