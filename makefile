run:
	docker run -it --rm -v "${shell pwd}":/usr/src/app -p "4000:4000" starefossen/github-pages

rebuild-commit:
	git commit -m 'Rebuild pages' --allow-empty