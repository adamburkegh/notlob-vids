#!/usr/bin/env bash
# Project entry point: puts the nvids venv first on PATH, then runs one task.
#   ./run.sh env      reinstall dependencies: pyproject.toml, plus the
#                     TypeScript toolchain of reference projects whose
#                     claims the renderer runs
#   ./run.sh test     notlob test
#   ./run.sh render   notlob run the teaser (renders to media/)
#   ./run.sh frames   contact sheets of every rendered video (media/frames/)
set -euo pipefail
cd "$(dirname "$0")"
# The user's own notlob (editable install), captured before the venv's copy
# -- installed so modules can import notlob.parser -- shadows it on PATH.
NOTLOB="$(command -v notlob)"
export PATH="$PWD/nvids/Scripts:$PWD/nvids/bin:$PATH"

# The notlob project root is src/ (where binding.lob lives), so that
# ref-projects/ -- a sibling -- is never discovered as part of it.
case "${1:-}" in
  env)    python -m pip install --group render
          npm ci --prefix ref-projects/pn-chomper ;;
  test)   cd src && "$NOTLOB" test ;;
  render) cd src && "$NOTLOB" run teaser.lob ;;
  frames) cd src && "$NOTLOB" run review.lob ;;
  *)      echo "usage: ./run.sh env|test|render|frames" >&2; exit 2 ;;
esac
