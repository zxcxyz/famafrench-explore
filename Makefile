publish:
	jupyter-book build .
	ghp-import -n -p -f _build/html

req:
	python3 -m pip install -r requirements.txt

activate:
	pyenv activate famafrench-explore

create-venv:
	pyenv virtualenv 3.10 famafrench-explore

pyenv:
	curl https://pyenv.run | bash