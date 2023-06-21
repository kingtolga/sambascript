#!/usr/bin/env bash

# Tolga Erok - 21/6/2023 
# git remote add origin https://github.com/tolgaerok/Linux-Tweaks-And-Scripts.git
# git merge --allow-unrelated-histories origin/main --strategy=ours

# Define color codes
YELLOW='\033[1;33m'
NC='\033[0m' # No color

echo -e "${YELLOW}\nEXECUTING GITHUB PUSH\n${NC}"

# Echo and execute each command with blue color
while IFS= read -r cmd; do
  echo -e "\e[34m${cmd}\e[0m"
  eval "${cmd}"
done <<EOF
 git init
 git commit -m "Commit Update" 
 git config --global http.postBuffer 524288000
 git config --global core.compression 1
 git checkout main
 git add .
 git commit -m "Updated" 
 git branch -M main
 git push -u origin main
EOF

# Echo completion message in yellow
echo -e "${YELLOW}\nScript execution completed.${NC}"
