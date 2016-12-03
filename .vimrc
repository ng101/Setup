syntax on                                                                        
filetype indent on                                                               
set shiftwidth=4                                                                 
set expandtab                                                                    
set nu  " line number                                                            
                                                                                 
" 80 char limit                                                                  
set colorcolumn=81                                                               
                                                                                 
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
                                                                                 
Plugin 'Valloric/YouCompleteMe'                                                  
Plugin 'tmhedberg/SimpylFold'                                                    
                                                                                 
" All of your Plugins must be added before the following line                    
call vundle#end()            " required                                          
filetype plugin indent on    " required                                          
                                                                                 
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
