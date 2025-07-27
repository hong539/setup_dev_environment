#!/usr/bin/env bash
set -euxo pipefail

MARKDOWN_FILE_PATH=$1
NOTES_TITLE=$2
MARKDOWN_FILE="${MARKDOWN_FILE_PATH}/${NOTES_TITLE}.md"

mkdir -p "$MARKDOWN_FILE_PATH"

cat > "$MARKDOWN_FILE" <<EOF
# ${NOTES_TITLE}

## Tools/Guides/Tips/misc...

EOF

echo "Markdown notes created at: $MARKDOWN_FILE"