# Define variables
IMAGE_NAME := task4
CONTAINER_NAME := mlopstask4

# Default target
all: build run

# Target to build Docker image
build:
    docker build -t $(IMAGE_NAME) .

# Target to run Docker container
run:
    docker run -d --name $(CONTAINER_NAME) $(IMAGE_NAME)

# Target to stop Docker container
stop:
    docker stop $(CONTAINER_NAME)

# Target to remove Docker container
rm:
    docker rm $(CONTAINER_NAME)

# Target to clean up generated files
clean:
    $(MAKE) stop
    $(MAKE) rm

# Target to display logs of Docker container
logs:
    docker logs $(CONTAINER_NAME)
