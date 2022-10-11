git worktree add -b $1 ../$1 && cd ../$1 && cp ../.env.development ./.env.development && yarn
