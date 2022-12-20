source ~/.common_settings

eval "$(jenv init -)"
eval "$(rbenv init -)"
eval "$(jump shell)"

[ -s "/Users/davidedisomma/.scm_breeze/scm_breeze.sh" ] && source "/Users/davidedisomma/.scm_breeze/scm_breeze.sh"
. "$HOME/.cargo/env"
