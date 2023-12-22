local current_dir='%{$fg_bold[red]%}[%{$reset_color%}%~% %{$fg_bold[red]%}]%{$reset_color%}'
local git_branch='$()%{$reset_color%}'


PROMPT="[0xsh1n@termux]-%[%(5~|%-1~/…/%2~|%4~)]${git_branch}[%(5~|%-1~/…/%2~|%4~)] "


ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="] %{$reset_color%}"
