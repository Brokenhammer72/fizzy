symbol(){
	echo "%{$FG[123]%}%B>%b%{$reset_color%}"
}
username(){
	echo "%{$FG[027]%}%n %{$reset_color%}" 	
}
dir(){
	echo "%{$FG[213]%}%0~/%{$reset_color%}"
}
fizzy_status(){
	echo "%(?.$(checkmark).%{$fg[red]%}$(cross)%f)"
}
checkmark(){
	echo "%{$fg[green]%}%B✔%b%{$reset_color%}"
}
cross(){
	echo "%{$fg[red]%}%B✘%b%{$reset_color%}"
}
Psymbol(){
	echo "%{$FG[158]%}%B↩️%b%{$reset_color%}"
}

current_time() {
	echo "%{$FG[123]%}%T%{$reset_color%}"
}

git_setting(){
	echo "%{$FG[121]%}$(git_prompt_info)%{$reset_color%}"
}

ZSH_THEME_GIT_PROMPT_PREFIX="["
ZSH_THEME_GIT_PROMPT_SUFFIX="]"
ZSH_THEME_GIT_PROMPT_DIRTY="✨"
ZSH_THEME_GIT_PROMPT_CLEAN=""





RPROMPT='$(fizzy_status) $(current_time)'
PROMPT=' $(dir) $(git_setting)
  $(symbol) '


