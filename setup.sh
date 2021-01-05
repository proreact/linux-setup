set -ev 

mkdir -p ~/.local/bin;
for f in ~/.dots/setup/*.sh; do  # or wget-*.sh instead of *.sh
  bash "$f" -H || break; 
done

