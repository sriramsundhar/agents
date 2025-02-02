# Mongo DB

## Run Mongodb Locally

- Login with docker credentials to pull docker images
- ```sh
  docker login
  ```
- ```sh
  docker compose up
  ```

## Create Backup from Scratch

- Export DB credentials (get from bitwarden name `staging mongo readonly`)
  ```sh
    EXPORT MONGO_DB_USER_NAME=$$$
    EXPORT MONGO_DB_PASSWORD=$$$
  ```
- Back up from staging
  ```sh
    ./scrits/backup.sh
  ```
- Build Docker image
  ```sh
    docker build .
  ```
