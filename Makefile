local:
	hexo server

deploy:
	rm -rf public/*
	hexo generate
	git add .
	git commit -m "update"
	git push
