local:
	hexo server

deploy: rebuild release

rebuild:
	hexo clean
	hexo generate
	echo "www.fergusfettes.com" > public/CNAME
	rm -rf docs
	mv public docs

release:
	git add .
	git commit -m "update"
	git push
