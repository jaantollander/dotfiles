#compdef tldr

# AUTOMATCALLY GENERATED by `shtab`

_shtab_tldr_options_=(
  "(- :)"{-h,--help}"[show this help message and exit]"
  "(- :)"{-v,--version}"[show program\'s version number and exit]"
  "--search[Search for a specific command from a query]:search:"
  {-u,--update_cache}"[Update the local cache of pages and exit]"
  {-p,--platform}"[Override the operating system \[linux, osx, sunos, windows, common\]]:platform:(linux osx sunos windows common)"
  {-l,--list}"[List all available commands for operating system]"
  {-s,--source}"[Override the default page source]:source:"
  {-c,--color}"[Override color stripping]"
  {-r,--render}"[Render local markdown files]"
  {-L,--language}"[Override the default language]:language:"
  {-m,--markdown}"[Just print the plain page file.]"
  "--print-completion[print shell completion script]:print_completion:(bash zsh tcsh)"
)

_shtab_tldr_commands_() {
  local _commands=(
    
  )

  _describe 'tldr commands' _commands
}


# Custom Preamble
shtab_tldr_cmd_list(){
          _describe 'command' "($("/usr/bin/python" -m tldr --list | sed 's/\W/ /g'))"
        }
# End Custom Preamble

typeset -A opt_args
local context state line curcontext="$curcontext"

_arguments \
  $_shtab_tldr_options_ \
  "(*)::command to lookup:shtab_tldr_cmd_list" \
  ': :_shtab_tldr_commands_' \
  '*::args:->args'

case $words[1] in
  
esac
