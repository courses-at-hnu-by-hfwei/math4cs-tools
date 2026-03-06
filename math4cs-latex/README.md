## 概述 | Overview

基于 LaTeX 编写的《计算机数学符号手册（中文）》

LaTeX-based Chinese handbook of mathematical symbols for the `math4cs` course.

手册覆盖的主题包括：
The handbook covers topics including:

- 命题逻辑 / propositional logic
- 一阶谓词逻辑 / first-order predicate logic
- 集合论 / set theory
- 关系与偏序 / relations and partial orders
- 函数 / functions
- 图论 / graph theory
- 群论 / group theory
- 组合数学 / combinatorics
- 数论 / number theory
- 微积分 / calculus
- 线性代数 / linear algebra
- 算法复杂度 / algorithm complexity
- 常用数学字体 / common math fonts

生成的 PDF 目前具有如下特性：
The generated PDF currently provides:

- 可点击目录 / a clickable contents page
- 彩色链接 / colored links
- 符号索引 / a symbol index
- 每节另起一页 / per-section page breaks

## 仓库结构 | Repository structure

- [math4cs-latex](math4cs-latex)
  - [math4cs-symbol-handbook-cn.tex](math4cs-latex/math4cs-symbol-handbook-cn.tex): 主文档源文件 / main source file
  - [math4cs-index.ist](math4cs-latex/math4cs-index.ist): 自定义 MakeIndex 样式 / custom MakeIndex style
  - [build-win.bat](math4cs-latex/build-win.bat): Windows 构建脚本 / Windows build script
  - [build-linux.sh](math4cs-latex/build-linux.sh): Linux 构建脚本 / Linux build script
  - [build-macos.sh](math4cs-latex/build-macos.sh): macOS 构建脚本 / macOS build script

## 环境要求 | Requirements

编译该手册需要安装包含下列工具或宏包的 TeX 发行版：
To build the handbook, install a TeX distribution that includes at least:

- `xelatex`
- `makeindex`
- `ctex`
- `amsmath`, `amssymb`, `mathtools`
- `hyperref`
- `xcolor`
- `longtable`
- `booktabs`

推荐使用：
Recommended distributions:

- Windows：TeX Live 或 MiKTeX / TeX Live or MiKTeX
- Linux：TeX Live
- macOS：MacTeX 或 TeX Live / MacTeX or TeX Live

## 编译方法 | Build

所有构建脚本都会先清理常见辅助文件，然后按以下顺序执行：
All build scripts first remove common auxiliary files, then run:

1. `xelatex`
2. `makeindex -s math4cs-index.ist`
3. `xelatex`
4. `xelatex`

### Windows

进入 [math4cs-latex](math4cs-latex) 目录后运行：
From [math4cs-latex](math4cs-latex), run:

- [build-win.bat](math4cs-latex/build-win.bat)

### Linux

进入 [math4cs-latex](math4cs-latex) 目录后运行：
From [math4cs-latex](math4cs-latex), run:

- `bash build-linux.sh`

### macOS

进入 [math4cs-latex](math4cs-latex) 目录后运行：
From [math4cs-latex](math4cs-latex), run:

- `bash build-macos.sh`

## 输出文件 | Output

生成的 PDF 文件位于：
The generated PDF is located at:

- [math4cs-latex/math4cs-symbol-handbook-cn.pdf](math4cs-latex/math4cs-symbol-handbook-cn.pdf)

## 手册特性 | Features of the handbook

- 使用 `ctexart` 排版中文文档 / Chinese typesetting via `ctexart`
- 手工制作且可点击的目录页 / a manual clickable contents page
- 为文中链接、目录链接、索引页码链接设置颜色 / colored internal links, contents links, and index page-number links
- 使用 `\syms` 自动生成符号索引 / custom symbol indexing via `\syms`
- 使用自定义 MakeIndex 样式优化索引间距 / custom MakeIndex style for cleaner index spacing
- 每个 `section` 单独起页 / each `section` starts on a new page

## 注意事项 | Notes

- 不要对 `.idx` 文件运行 `xelatex`。 / Do not run `xelatex` on the `.idx` file.
- 应使用 `makeindex` 处理索引文件。 / Use `makeindex` for the generated index file.
- 如果交叉引用或索引内容未更新，请使用提供的构建脚本重新完整编译。 / If cross-references or index entries look outdated, rebuild with the provided scripts instead of running a single manual `xelatex` command.

## 许可证 | License

参见 [LICENSE](LICENSE)。
See [LICENSE](LICENSE).