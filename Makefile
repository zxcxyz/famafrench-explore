publish:
  jupyter-book build .
	ghp-import -n -p -f _build/html

requirements:
	pip install -r requirements.txt