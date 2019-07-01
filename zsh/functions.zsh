mcd () { mkdir -p "$1" && cd "$1"; }        # mcd:          Makes new Dir and jumps inside
trash () { command mv "$@" ~/.Trash ; }     # trash:        Moves a file to the MacOS trash
ql () { qlmanage -p "$*" >& /dev/null; }    # ql:           Opens any file in MacOS Quicklook Preview
findPid () { lsof -t -c "$@" ; }

pmate () {
  mate `which $1`
}

pvi () {
  vim `which $1`
}
alias pvim=pvi

m4r () {
  mkdir -p ~/tmp/Ringtones
  fixed=`basename "$1" | sed "s/^[0-9]* //"`
  base_name="${fixed%.*}"
  output="output-$RANDOM.m4a"
  ffmpeg -i "$1" -vn -c:a libfdk_aac -b:a 128k -ss ${2-0} -t ${3-29.9} ~/tmp/Ringtones/$output
  mv ~/tmp/Ringtones/$output ~/tmp/Ringtones/"$base_name.m4r"
}

1080p(){ convert $1 -resize 1920x1080 -strip -quality 75 -gravity center -crop 1920x1080+0+${2-0} -level 0,${3-100}% changed/"${fixed%.*}.jpg"; }

header_image(){ convert $1 -resize 1900x -strip -quality 75 -gravity center -crop 1900x900+0+${2-0} -level 0,${3-100}% changed/$1; }
