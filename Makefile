NAME=artifacts/phantomjs-v2.11-alpine.tar.bz2
all: $(NAME)

$(NAME):
	docker build -t phantomjs-alpine . && docker run --rm -i -v `pwd`/artifacts:/artifacts phantomjs-alpine:latest cp /root/phantomjs.tar.bz2 /$(NAME)


clean:
	rm phantomjs-v2.11-alpine.tar.bz2

