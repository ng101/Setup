## OSX settings                                                                                                          
alias ll='ls -l'                                                                                                         
alias python='python3'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                                                                                                                                                                      
                                                                                                                         
function parse_git_dirty {                                                                                                  
  [[ $(git status --porcelain 2> /dev/null | tail -n1) != "" ]] && echo "*"                                                 
}                                                                                                                           
                                                                                                                            
parse_git_branch() {                                                                                                        
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"                                       
}                                                                                                                           
                                                                                                                            
export PS1="\u@\h:\w\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $                                                 
                                                                                                                            
