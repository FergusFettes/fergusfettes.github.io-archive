local:
	hexo server

deploy:
	hexo clean
	hexo generate
	echo "www.fergusfettes.com" > public/CNAME
	git add .
	git commit -m "update"
	git push
