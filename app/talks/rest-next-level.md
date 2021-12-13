## REST next level : Ecrire des APIs web orientées métier

### by Julien TOPCU

#### Tag(s): DDD | HATEOAS | business value | REST

#### Links [description](https://cfp.devoxx.fr/2021/talk/YPZ-7990/REST_next_level_:__Ecrire_des_APIs_web_orientees_metier.html) | [video](https://youtu.be/7qqzqse1hgc)

--

![intro](app/talks/assets/rest-next-level-1.png)

--

## perte sens métier dans les APIs

![map-to-rest](app/talks/assets/rest-next-level-2.png) <!-- .element: class="fragment semi-fade-out" height="300" width="400" -->
![map-to-rest](app/talks/assets/rest-next-level-3.png) <!-- .element: class="fragment fade-left" height="300" width="400" -->

Notes:

- Tendance à mapper l'exprissivité du domaine (comment ? quoi ?) sur HTTP
  - alors que le besoin
  - REST >> gerer le cycle vie d'une ressource

--

## + intention métier dans les APIs REST

![rebooking](app/talks/assets/rest-next-level-4.png)

Notes:

- e.g Booking >> Rebooking

--

## Nouns vs Verbs >> faux débats

  ![nouns-vs-verbs](app/talks/assets/rest-next-level-5.png)

Notes:

- n'est pas décrit par Roy Fieldings
- les contraintes de REST
  - URL unique
  - Verbe ne doit pas contrarié le sens du verbe HTTP

--

## Logique métier chez le consommateur

![bad-design](app/talks/assets/rest-next-level-6.png)

Notes:

- Le client (consommateur) ne doit pas connaitre la structure de la requête HTTP
  - i.e pas relié le sens métier à l'URI

--

## Modèle Anémique de la POO >> perte d'encapsulation

```bash
# Mise à jour place dans le train
PATCH /searches/{id}/selection
[
    {
        "op": "add",
        "path": "/selectedSpaceTrains/-",
        "value": {"trainNumber": "MOON421", "fare": "FIRST"}
    }
]
```

Notes:

- on le reproduit en REST
- on désencapsule la logique métier pour retourner le résultat (JSON)

--

## Sous Ressources

```bash
# Mise à jour place dans le train
POST /searches/{id}/spaceTrains/{numbers}/fares/{code}/select
```

Notes:

- utiliser les sous resources pour représenter l'intention métier

--

## APIs anémique en terme de workflow

![workflow](app/talks/assets/rest-next-level-9.png) <!-- .element: class="fragment semi-fade-out" height="300" width="400" -->
![workflow-2](app/talks/assets/rest-next-level-10.png) <!-- .element: class="fragment fade-left" height="300" width="400" -->

Notes:

- ordre des appels >> implementer dans le(s) consommateur(s)
- Modèle de maturité de Richardson >> Hypermedia Level 3 >> HATEOAS
- Le nom des liens portent la sémantic

--

## Ce que nous retenons

![final](app/talks/assets/rest-next-level-11.png)

Notes:

- compréhension limité du REST(ish) qui rend les APIs CRUD (e.g map semantic métier avec verbe HTTP)
- face à des devs l'approche design n'est pas abordé de la même façon

[talk-description]: https://cfp.devoxx.fr/2021/talk/YPZ-7990/REST_next_level_:__Ecrire_des_APIs_web_orientees_metier.html
[talk-video]: https://youtu.be/7qqzqse1hgc