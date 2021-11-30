# Feedbacks Devoxx 2021

## Content

- [Design de persuasion : De la séduction à l'engagement by Estelle Landry](./design-de-persuasion.md)
- [Microservices réactifs avec Quarkus by Clement ESCOFFIER & Stéphane ÉPARDAUD](./microservices-reactif-quarkus.md)
- Profiling et monitoring avec le JDK by Jean-Michel DOUDOUX
- Dockerfile - Les bonnes pratiques by Guillaume LOURS & Jérémie DROUET
- Istio, le meilleur ami de votre cluster K8S ❤️ by Kevin DAVIN
- Les Méthodes Synthétiques Rêvent-elles à des Switch Expressions Électriques ? by José PAUMARD & Remi FORAX
- Choreography vs Orchestration in serverless microservices by Guillaume LAFORGE
- Sécuriser ses applications Quarkus by Sebastien BLANC
- Tips pour combattre le syndrome de l'imposteur by Auélie VACHE
- Migrer une « vraie application du monde réel » vers Quarkus. Comment ? Mais surtout pourquoi ? by Clement ESCOFFIER
- Lis mon code, ou pourquoi c’est important d’écrire du code lisible by Diana ORTEGA
- REST next level :  Ecrire des APIs web orientées métier by Julien TOPÇU
- OpenAPI Generator : 4000 étoiles sur GitHub et des spaghettis by Jérémie BRESSON

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
