(cd pt_BR; git clean -f -d)
(cd pt_BR; git checkout .)

(cd pt_BR; git reset  --hard )
(cd pt_BR; git pull --rebase )
(cd pt_BR; git rebase --skip )

(cd doc-base; git pull)
(cd en;       git pull)
(cd pt_BR;    git pull)

(cd pt_BR; git status)
