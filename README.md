# 🕰️ Old laravel versions 

### Description:

This project allows you to create a complete Laravel project with Docker. The project is created in a folder called `project` when you run `docker compose up --build`.

## Features:
- Fully managed development environment with Docker
- Easy to use and install
- Based on the latest version of Laravel

## Requirements 

- Docker 
- Docker Compose
- Git

## Installation 
1. **Clone this repository:**
   ```
   git clone -b laravel/old-versions https://github.com/codediaz/Laravel-Box
   ```
2. **Copy .env.example**
   ```
   cp .env.example .env
   ```
3. **Configure Your Desired Laravel Version in the `.env` File:**

   To ensure compatibility and select the appropriate versions for your project, follow these steps:
   
   - Visit [Docker Hub](https://hub.docker.com/) to find the PHP image compatible with your desired Laravel version.
   - Search for "PHP" and review the tags to select a version that matches the Laravel version you intend to use.
   - Once you've identified the correct PHP image and Laravel version, update the `.env` file in your project directory as follows:
  
     ```
     PHPIMAGE=<php-image-tag>
     LARAVEL_VERSION=<laravel-version>
     ```
   Example for Laravel 5:
     ```
     PHPIMAGE=php:5.6-fpm-alpine
     LARAVEL_VERSION=5.4
     ```
   
   This step ensures that your Docker container will run with the specific versions of PHP and Laravel that your project requires. Adjust the `PHPIMAGE` and `LARAVEL_VERSION` variables as needed to match your project's requirements.

4. **Start the project with Docker Compose:**
    ```
    docker compose up --build
    ```
5. **Access your Laravel application:**
    ```
    http://localhost:8000/
    ```


