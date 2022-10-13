# run this from inside the worktree you want to branch off 
git worktree add -b $1 ../$1 && cd ../$1 && cp ../.env.development ./.env.development && yarn
