build:
	docker build --force-rm --no-cache --pull --rm=true -t cpp17 .

push:
	docker tag cpp17:latest nathandane/cpp17:latest
	docker push nathandane/cpp17:latest