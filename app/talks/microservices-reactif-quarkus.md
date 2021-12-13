## Microservices réactifs avec Quarkus

### by Clement ESCOFFIER & Stéphane ÉPARDAUD

#### Tag(s): Reactive Manifesto | Reactive Programming | Reactive Streams | Reactive eXtensions API

#### Links [description](https://cfp.devoxx.fr/2021/talk/JSM-3414/Microservices_reactifs_avec_Quarkus.html) | [video](https://youtu.be/EKOMi0u4Q2A)

--

## Ce que Quarkus cherche à résoudre

![distributed systems](app/talks/assets/microservices-reactif-quarkus_1.png)

Notes:

- benefices migration imperative >> reactive
- gérer les contraintes actuelles vs les contraintes << 25 ans
  - distributed systems
    - stimuli via des I/O
    - comment construire de meilleur systemes distribués >> définir un style Architectural >> Reactive ?

--

## Le plus de Quarkus

![features](app/talks/assets/microservices-reactif-quarkus_2.png)

Notes:

- Async Message Passing
  - Elasticity
    - Resilience
      - Responsive >> repondre dans un tps acceptable et efficace
- livraison de valeur en production
  - agilité dans la livraison du produit

--

## du monolith vers ... ?

![monolith-to](app/talks/assets/microservices-reactif-quarkus_3.png)

Notes:

- probleme Java dans Container
  - gestion de la mémoire dans le container
    - reduction RAM utilisé ?
      - Quarkus + JVM +
      - Quarkus + GraalVM ++
      - Cloud Native +-

--

## Quarkus est

![config](app/talks/assets/microservices-reactif-quarkus_4.png)

Notes:

- Quarkus est
  - basé sur des Frameworks & Standards
  - effectue des changement au build time >> reduction du tps au runtime
  - basé sur core reactive

--

## Demo Cheese Store

![demo](app/talks/assets/microservices-reactif-quarkus_5.png)

Notes:

- Blocking / Imperative
- RESTEasy / Reactive
- Hibernate / Reactive
- Reactive REST Client
- Fault Tolerance
- Kafka

--

### Ce que nous retenons

- evolution des usages depuis + 25 ans (IOT, work from home ...)
  - systèmes distribués plus complexes, plus de contraintes
  - l'approche Reactive est à privilégié car répond à certaines de ces contraintes
  - Quarkus s'inscrit dans cette philosophie (+/- 3 ans)
    - la migration (imperative >> reactive) est possible
    - build Native n'est pas toujours une solution

[talk-description]: https://cfp.devoxx.fr/2021/talk/JSM-3414/Microservices_reactifs_avec_Quarkus.html
[talk-video]: https://youtu.be/EKOMi0u4Q2A
