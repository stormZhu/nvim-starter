# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.


## lsp
- 增加lspsaga插件，他的find reference功能看起来更好！
- clangd默认会有format功能，但是lazyVim用的format格式是llvm的，这里配置conform使用clang-format工工具来格式化，注意需要10.0.1版本，可以使用MasonInstall clang-format@10.0.1，或者自己将clang-format程序 copy到 ~/.local/share/nvim/mason/bin/  下面也可以
- 开启symbols-outline，看代码更方便
  
## git
- 待增加diffview插件


## 问题
不知道为什么LazyVim将vim.o.clipboard = "unnamedplus" 加了一个if条件？
