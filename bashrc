export ACCOUNT=account
export SOURCE=https://raw.githubusercontent.com/alokcn1/share/master/
export TARGET=target

function inject() {
  . /dev/stdin <<EOF
`curl ${SOURCE}${1} 2>/dev/null`
EOF
}

inject rc
