#!/usr/bin/env bash

set -e

git clone --recursive  https://github.com/sumneko/lua-language-server .

cd 3rd/luamake
ninja -f ninja/linux.ninja
cd ../../
3rd/luamake/luamake rebuild

cat <<EOF >sumneko-lua-lsp
#!/usr/bin/env lua

DIR=\$(cd \$(dirname \$0); pwd)

\$DIR/bin/Linux/lua-language-server -E \$DIR/main.lua
EOF

chmod +x sumneko-lua-lsp
