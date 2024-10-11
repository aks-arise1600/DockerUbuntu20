# DockerUbuntu20

Example to build Docker image that contain base ubuntu 20.04 , Docker Conatainer with shared folder.


## Build and Run

1. build
		sudo docker build -t custom_image_ubuntu20:v1.0 .
		
* verify

		sudo docker images
		
2. First run and container set

		sudo docker run -it --name system001 -h system1  custom_image_ubuntu20:v1.0
		
or share folder

		mkdir share_data
		sudo docker run -it --name system001 -h system1 -v $(pwd)/share_data:/share_data custom_image_ubuntu20:v1.0
		
* to exit from container type
		
		exit
				
* verify

		sudo docker ps -a
		
3. Restart conatiner

		sudo docker start -i system001
		
		
## List of conatiners or image

1. conatiner

		sudo docker ps -a
		sudo docker containers ls -a
		
2. images

		sudo docker images
		
## delete conatiners or image

1. conatiner delete

		sudo docker container rm <conatiner-id>
		
2. image delete

		sudo docker image rm <image-id>
		
		
		
		
