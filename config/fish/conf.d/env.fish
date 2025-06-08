
set -x JAVA_HOME "/usr/lib/jvm/java-21-amazon-corretto"
set -x PATH "$JAVA_HOME/bin" "$PATH"

set -x BUN_INSTALL "$HOME/.bun"
set -x PATH "$BUN_INSTALL/bin" "$PATH"
