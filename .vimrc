syntax on                                                                        
filetype indent on                                                               
set shiftwidth=2                                                                 
set expandtab 
set tabstop=2
set nu  " line number                                                            
                                                                                 
" 80 char limit                                                                  
set colorcolumn=121                                                              
                                                                                 
set nocompatible              " required                                         
filetype off                  " required                                         
                                                                                 
" set the runtime path to include Vundle and initialize                          
set rtp+=~/.vim/bundle/Vundle.vim                                                
call vundle#begin()                                                              
                                                                                 
" alternatively, pass a path where Vundle should install plugins                 
"call vundle#begin('~/some/path/here')                                           
                                                                                 
" let Vundle manage Vundle, required                                             
Plugin 'gmarik/Vundle.vim'                                                       
                                                                                 
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
                                                                                 
" Plugin 'Valloric/YouCompleteMe'                                                  
Plugin 'tmhedberg/SimpylFold'                                                    

Plugin 'nvie/vim-flake8'
                                                                                 
" All of your Plugins must be added before the following line                    
call vundle#end()            " required                                          
filetype plugin indent on    " required                                          
                                                                                 
autocmd BufWritePost *.py call Flake8()

" map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
