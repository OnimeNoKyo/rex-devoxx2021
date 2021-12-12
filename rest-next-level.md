# REST next level : Ecrire des APIs web orientées métier by Julien TOPCU

## Track(s): Architecture, Performance et Securité

## Tag(s): DDD | HATEOAS | business value | REST

## Links [description][talk-description] | [video][talk-video]

![intro](rest-next-level-1.png)

- Probleme de perte sens métier
  - Tendance à mapper l'exprissivité du domaine (comment ? quoi ?) sur HTTP
    - pour faire du "REST"
    ![map-to-rest](./rest-next-level-2.png)
    - alors que le besoin
    ![map-to-rest](./rest-next-level-3.png)
    - REST >> gerer le cycle vie d'une ressource

- Ramener de l'intention métier dans les APIs REST
  - e.g Booking >> Rebooking
  ![rebooking](./rest-next-level-4.png)
- Nouns vs Verbs
  - n'est pas décrit par Roy Fieldings
  ![nouns-vs-verbs](./rest-next-level-5.png)
  - les contraintes de REST
    - URL unique
    - Verbe ne doit pas contrarié le sens du verbe HTTP
- Le client (consommateur) ne doit pas connaitre la structure de la requête HTTP
  - i.e pas relié le sens métier à l'URI
  ![bad-design](./rest-next-level-6.png)
- Modèle Anémique de la POO >> perte d'encapsulation
  - on le reproduit en REST >> on désencapsule la logique métier pour retourner le résultat (JSON)

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

  - utiliser les sous resources pour représenter l'intention métier

    ```bash
    # Mise à jour place dans le train
    POST /searches/{id}/spaceTrains/{numbers}/fares/{code}/select
    ```

- APIs anémique en terme de workflow
  - ordre des appels >> implementer dans le(s) consommateur(s)
  ![workflow](./rest-next-level-9.png)
  - Modèle de maturité de Richardson >> Hypermedia Level 3 >> HATEOAS
  ![workflow-2](./rest-next-level-10.png)
  - Le nom des liens portent la sémantic

## Ce que nous retenons

- compréhension limité du REST(ish) qui rend les APIs CRUD (e.g map semantic métier avec verbe HTTP)
- face à des devs l'approche design n'est pas abordé de la même façon
![final](./rest-next-level-11.png)

[talk-description]: https://cfp.devoxx.fr/2021/talk/YPZ-7990/REST_next_level_:__Ecrire_des_APIs_web_orientees_metier.html
[talk-video]: https://youtu.be/7qqzqse1hgc