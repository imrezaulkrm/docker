# Jenkins Docker Image with Port 9090

This Dockerfile allows you to create a Docker image for running Jenkins with a customized port (9090) for the Jenkins web UI. It's based on the official Jenkins LTS (Long Term Support) image.

## Prerequisites

Before using this Dockerfile, ensure you have Docker installed on your system. You can download Docker for your specific operating system from the [official Docker website](https://www.docker.com/get-started).

## Getting Started

To build and run Jenkins with this Dockerfile, follow these steps:

1. Clone or download this repository to your local machine.

2. Place the `Dockerfile` and `plugins.txt` files in the same directory.

3. Customize the `plugins.txt` file to list the Jenkins plugins you want to install (if needed). Each plugin should be on a separate line, and you can specify the version if required.

4. Open a terminal and navigate to the directory containing the `Dockerfile` and `plugins.txt` files.

5. Build the Docker image using the following command, replacing `my-jenkins-image` with your desired image name:

   ```bash
   docker build -t my-jenkins-image .

6. After the image is built successfully, you can run a Jenkins container with the following command, specifying the port mapping and container name as desired:
    ```bash
	docker run -d -p 9090:9090 -p 50000:50000 --name my-jenkins-container -v jenkins_home:/var/jenkins_home my-jenkins-image

7. Access the Jenkins web UI by opening a web browser and navigating to `http://localhost:9090` . Use the initial administrator password (found inside the container at /var/jenkins_home/secrets/initialAdminPassword) to unlock Jenkins during the setup.

8. You can stop and remove the Jenkins container when you're done:

     ```bash
	docker stop my-jenkins-container
	docker rm my-jenkins-container

# Configuration

The `Dockerfile` includes commands to set up Jenkins with custom configurations, including disabling the setup wizard and specifying the port as 9090.

You can customize the `plugins.txt` file to install additional Jenkins plugins according to your requirements.

The Docker image uses volumes to persist Jenkins configuration and job data. The data is stored in the `jenkins_home` volume, which is mounted to `/var/jenkins_home` in the container.

# License

This project is licensed under the MIT License. 	
