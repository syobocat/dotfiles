local opt = vim.opt
opt.ambiwidth = "double" -- CJK文字を2byteとして扱う
opt.breakindent = true -- 改行後にインデントを維持
opt.browsedir = "current" -- ファイルブラウザのデフォルトを現在のファイルのディレクトリに
opt.clipboard = "unnamedplus" -- システムのクリップボード (よくわかってない)
opt.completeopt = "menu,preview,noinsert" -- 補完候補を表示、詳細を提供、選択するまで挿入しない

