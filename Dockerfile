# Select the alping base
FROM golang:1.7-alpine
ADD . /home
# Make /home the working directory
WORKDIR /home
CMD ["go","run","sample.go"]
