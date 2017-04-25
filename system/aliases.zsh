# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`

alias be='bundle exec'
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display

#HTOP=`which htop`
#alias htop='sudo $HTOP'

alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
alias show_options='shopt'                  # show_options: display bash options settings
alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
alias DT='tee ~/Desktop/terminalOut.txt'    # DT:           Pipe content to file on MacOS Desktop

alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'
alias ns='networksetup'
alias dl='diskutil'
alias p8='ping 8.8.8.8'
alias p68='ping6 2001:4860:4860::8888'
alias pow2="ruby -e'1_000_000.times{|n|puts 2**n}'"
alias rsbcl="rlwrap sbcl"
alias cons="bin/console"
alias notrash="xattr -d -r com.apple.quarantine"

alias rpi_ips="arp -a | grep b8:27:eb | grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'"
eval "$(thefuck --alias)"
eval "$(thefuck --alias please)"
eval "$(thefuck --alias shit!)"
