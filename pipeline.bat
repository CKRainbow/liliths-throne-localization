git submodule init
git submodule update

:: if the submodule folder "liliths-throne-public" exists, discard all the changes to it
if exist liliths-throne-public (
	git submodule foreach git reset --hard
	git submodule foreach git clean -df
)

python ./main.py --no-update-repo
