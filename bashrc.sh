parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(git::\1)/'
}

#PS1="\u: \W \$(parse_git_branch)$\n"
#PS1="\[\e]0;\w\a\]\n\[\e[32m\]\u \[\e[33m\]\w\[\e[0m\] \$(parse_git_branch) \n\$ "
PS1="\[\e]0;\w\a\]\n\[\e[32m\]\u \[\e[33m\]\w\[\e[0m\] \$(parse_git_branch) \$ "