#!/usr/bin/env bash
# Install the dial-legal pre-push hook into this checkout's git-dir.
#
# A submodule's GIT_DIR is `<parent>/.git/modules/legal/`, not `legal/.git/`
# (which is a file pointing there). So the hook needs to live in the real
# git-dir, not under the working tree.
#
# Run once after `git submodule update --init` (or `git clone`):
#   cd legal && ./setup-hooks.sh

set -euo pipefail

cd "$(dirname "$0")"

GIT_DIR="$(git rev-parse --git-dir)"
mkdir -p "$GIT_DIR/hooks"

HOOK_DEST="$GIT_DIR/hooks/pre-push"
HOOK_SRC_ABS="$(pwd)/hooks/pre-push"
# Build a path from HOOK_DEST's directory back to HOOK_SRC_ABS so the
# install survives the dial repo being moved.
HOOK_DEST_DIR="$(cd "$(dirname "$HOOK_DEST")" && pwd)"
RELATIVE_SRC="$(python3 -c "import os,sys; print(os.path.relpath(sys.argv[1], sys.argv[2]))" "$HOOK_SRC_ABS" "$HOOK_DEST_DIR")"

ln -sf "$RELATIVE_SRC" "$HOOK_DEST"

echo "✓ pre-push hook installed at $HOOK_DEST"
echo "  → $(readlink "$HOOK_DEST")"
