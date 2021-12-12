# Feedbacks Devoxx 2021

## 1 How to Install

### 1.1 With Docker

#### 1.1.1 Prerequisite

- Docker
- Docker Compose

#### 1.1.2 Build & Run

```sh
docker-compose up
```

Then navigate to http://localhost:8000

### 1.2 Without Docker

#### 1.2.1 Prerequisite

- Git
- Node v14

#### 1.2.2 Unix (shell)

```sh
.\build.sh
```

You can also provide a proxy configuration

```sh
.\build.sh http://login:password@myproxy:8080
```

#### 1.2.3 Windows (cmd)

```sh
build.bat
```

you can also provide a proxy configuration

```sh
build.bat http://login:password@myproxy:8080
```

#### 1.2.4 Run

Finally you need to start your local server using npm

```sh
npm start
```

Then navigate to http://localhost:8000

## authors

[IANNI Aurelien](https://github.com/OnimeNoKyo)
