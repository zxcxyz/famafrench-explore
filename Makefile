publish:
	rm -rf _build/
	jupyter-book build .
	ghp-import -n -p -o -f -m "Update GitHub Pages" _build/html

req:
	python3 -m pip install -r requirements.txt

activate:
	pyenv activate famafrench-explore

create-venv:
	pyenv virtualenv 3.10 famafrench-explore

pyenv:
	curl https://pyenv.run | bash

jt: 
	python /home/kirill/.pyenv/versions/3.10/envs/famafrench-explore/bin/jt -l

	# select theme
	python /home/kirill/.pyenv/versions/3.10/envs/famafrench-explore/bin/jt -t jt -t monokai -f fira -fs 14 -cellw 100%

	# todo fix themes
	https://randlow.github.io/posts/finance-economics/pandas-datareader-KF/

run:
	pipenv run jupyter notebook