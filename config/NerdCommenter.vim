"注释配置文件
" <leader>cc 注释
" <leader>cu 解开注释
" <leader>c<space> 加上/解开注释，只能判断。
" <leader>cy 先复制再注解（p可以粘贴）
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/'}, 'html':{'left' :'<!--','right' :'-->'},'java':{'left': '//'},'py':{'left': "//"}}
let g:NERDCustomDelimiters = { 'c': { 'left': '//'}, 'html':{'left' :'<!--','right' :'-->'},'java':{'left': '//'},'py':{'left': "//"},'js':{'left':"//"},'vue':{'left':"<!--",'right':"-->"},'lua':{'left':"--"}}

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1
