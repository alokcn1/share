export ACCOUNT=account
export SOURCE=https://raw.githubusercontent.com/alokcn1/share/master/
export TARGET=target

function inject() {
  RC=${1}
  shift
  . /dev/stdin <<EOF
`curl ${SOURCE}${RC} 2>/dev/null`
EOF
}

inject rc
"$@"