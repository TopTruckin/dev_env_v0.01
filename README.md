# Containerized Development Environment for Cloudflare Workers
This repository provides a Docker-based development environment for working on multiple Cloudflare Workers projects. It allows you to have an isolated and consistent environment for developing, testing, and deploying your Cloudflare Workers within a Docker container.

## Prerequisites
Before you can use this development environment, ensure that you have the following prerequisites installed on your machine:

Docker: Install Docker

## Getting Started
Follow the steps below to set up and use the containerized development environment:

1. Clone this repository to your local machine:
```console
git clone https://github.com/TopTruckin/dev_env_v0.01.git
```
2. Change directories into the newly cloned repository.

3. Build the Docker image:

```console
docker build -t my-worker-dev .
```

4. Run the Docker container:

```console
docker run -it -v $(pwd):/app my-worker-dev
```

5. Inside the container, you will be in the **/app** directory. This is the working directory where you can find your Cloudflare Workers projects.

6. Each Cloudflare Workers project can be organized within its own directory. You can navigate to the respective project directory and make modifications specific to that project.

7. Install dependencies, configure environment variables, and use any project-specific commands necessary for each worker project.

8. To access the container's shell from another terminal window, use the following command:

```console
docker exec -it <container_id> sh
```

> Replace **'<container_id>'** with the actual container ID. You can find the container ID by running **'docker ps'**.

9. Test and debug your Cloudflare Workers projects within the container.

10. When you're ready to deploy your workers, follow the deployment instructions specific to each project.

## Included Tools and Configuration
* Node.js: The container is based on the official Node.js image and comes with Node.js and npm pre-installed.

* Cloudflare Workers CLI (Wrangler): The container includes the globally installed **'@cloudflare/wrangler'** command-line tool for managing and deploying Cloudflare Workers projects. You can use the **'wrangler'** command within the container to interact with your Cloudflare Workers.

## Project Structure
The containerized development environment expects your Cloudflare Workers projects to be organized within the **'/app'** directory. Each worker project can be placed within its own subdirectory.

You are free to customize the project structure and organization within the container as per your project's requirements.

## License
This repository is licensed under the MIT License.
