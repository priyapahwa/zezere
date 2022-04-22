<p align="center">
  
  <h2 align="center">ZEZERE</h2>

  <p align="center">
    Official Codebase
    <br>
    <a href="https://github.com/fedora-iot/zezere/issues">Report Bug</a>
    ·
    <a href="https://github.com/fedora-iot/zezere/issues">Request Feature</a>
  </p>
</p>
<br>
<p align="center">
  <a href="https://github.com/fedora-iot/zezere/graphs/contributors">
    <img alt="Contributors" src="https://img.shields.io/github/contributors/fedora-iot/zezere.svg?style=for-the-badge" style="max-width:100%;">
  </a>
  <a href="https://github.com/fedora-iot/zezere/network/members">
    <img alt="Forks" src="https://img.shields.io/github/forks/fedora-iot/zezere.svg?style=for-the-badge" style="max-width:100%;">
  </a>
  <a  href="https://github.com/fedora-iot/zezere/stargazers">
    <img alt="Stargazers" src="https://img.shields.io/github/stars/fedora-iot/zezere.svg?style=for-the-badge" style="max-width:100%;">
  </a>
  <a href="https://github.com/fedora-iot/zezere/issues">
    <img alt="Issues" src="https://img.shields.io/github/issues/fedora-iot/zezere.svg?style=for-the-badge" style="max-width:100%;">
  </a>
</p>

## 📝 General Overview 

This file contains the developer guidelines to set up **Fedora Zezere** for Debian-based Linux distributions.

## ⚙️ Set-Up and Usage
   ### For Linux (Debian) users:

- To clone the zezere repository of the project:
    ```
    git clone https://github.com/fedora-iot/zezere.git .
    ```

- To set-up the virtual environment of the project:
  ```
  make virtualenv
  ```

- To install the base-dependencies and wsgi configurations of the project:
  ```
  make dev
  ```
 - To install other requirements of the project:  
    ```
    make install
    ```  
 - To configure default zezere-manage tool of the project:  
    ```
    make zezere
    ```  
- To modify the configurations of `zezere.conf` file, manually set:
    ```
    secret_key = <key generated in .env file>
    allowed_host = *
    auth_method = local
    ``` 

- To apply the database migrations and collect staticfiles of the project:
    ```
    make migrate
    ```
- To create the superuser of the project:
    ```
    make superuser
    ```

- To run the project on the localhost:
    ```
    make run
    ```
***Note:*** _As of now, `zezere.conf` file modifications are supposed to be done manually, however, the work is in progress to invoke them by `make` commands_

