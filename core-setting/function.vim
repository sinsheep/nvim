"------------------function-------------------

"===
"=== CompileRunGcc
"===
nmap <leader>R :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!g++ -Wall % -ggdb -o %<"
        :sp
        :res -15
        :term ./%<
    elseif &filetype == 'cpp'
        set splitbelow
        exec "!g++ -std=c++11 % -Wall -ggdb -o %<"
        :sp
        :res -15
        :term ./%<
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!time java %<"
    elseif &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'python'
        set splitbelow
        :sp
        :term python3 %
    elseif &filetype == 'html'
        " silent! exec "!".g:mkdp_browser." % &"
        exec "Bracey"
        " exec "!google-chrome-stable %"
    elseif &filetype == 'markdown'
        exec "MarkdownPreview"
    elseif &filetype == 'tex'
        silent! exec "VimtexStop"
        silent! exec "VimtexCompile"
    elseif &filetype == 'dart'
        CocCommand flutter.run
    elseif &filetype == 'go'
        set splitbelow
        :sp
        :term go run .
    endif
endfunc

"===
"=== OpenGithubUrl
"===
nmap <leader>gt :call OpenGithubUrl()<cr>
func! OpenGithubUrl()
    let plugLine =getline(".")
    if plugLine[:3]=='Plug'
        let start = match(plugLine,"'")
        let end = match(plugLine,"'",start+1)
        let plugUrl =  strpart(plugLine,start+1,end-6)
        exec ":!google-chrome-stable github.com/".plugUrl
    else
        echo 'not a plug'
    endif
endfunc
