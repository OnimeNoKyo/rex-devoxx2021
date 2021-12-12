# Les Méthodes Synthétiques Rêvent-elles à des Switch Expressions Électriques ? by José PAUMARD & Remi FORAX

## Track(s): Java, JVM

## Tag(s): Java | Java Language | API

## Links [description][talk-description] | [video][talk-video]

- Documentation >> http://dev.java
- new release cadence
  - grâce à l'openJdk
  - LTS >> tous les 2 ans (to be confirm)
    - risque != de versions dans l'ecosystem (en fonction des libs)

- Nouveautés APIs
  - List class
    - step by step evolution Java cherche à migrer vers de l'utilisation d'immutable

      ```java
          var listOf = List.of("one", "two", "three");
          listOf.add("four"); // Compilation Error
          var listOfWithNull = List.of("one", "two", "three", null); // Compilation Error
          var copyOf = List.copyOf(arrayList);
          copyOf.add("four"); // Compilation Error
      ```

  - Stream
    - Eviter les effets de bords (ex .map())
      - car optimisation de peek() puis size() et limit()
      - n'execute plus les lambdas si les caractéristiques du Stream permettent une optimisation
    - MapMulti()

      ```java
      var ints = """
                    1
                    2
                    test
                    3
                 """
      ints.lines()
            .map(Integer:parseInt)
            .toList();
      // Number Format Exception

      ints.flatMap(
              s-> {
                try {
                  return Stream.of(Integer.parseInt(s));
                } catch (NumberFormatException nfe) {
                  return Stream.empty();
                }
              })
            .toList();
      // ok mais création d'un stream

      ints.mapMulti(
              s-> {
                try {
                  return stream.accept(Integer.parseInt(s));
                } catch (NumberFormatException nfe) {
                }
              })
      // pas de creation de stream intermediaire
      ```

- Nouveauté Language
  - String class
    - String block
      - à venir interpolation dans string

    ```java
      var String blocks = """
                            mon
                            string
                            block
                          """
    ```

  - Record
    - Java 14
    - classe finale (comme une enumeration)
    - compilateur génère
      - constructeur canonique
      - accesseurs

    ```java
      record Point(int x, int y) {}
    ```

  - Sealed Type
    - Java 17

    ```java
    sealed interface Vehicle permits Bus, Car {}
    record Bus() implements Vehicle {}
    record Car() implements Vehicle {}
    ```

  - Pattern Matching
    - specifier des opérations sur des types pré-existant (que l'on maintient ou pas)
    - Visitor Pattern
      - peut etre ecrit plus simplement
      - dépend du language
      - nécéssite un switch exhaustive (sans "default" )

    ```java
    int seats = 3;
    String type;
    switch(seats) {
      case 1 -> type = "small";
      case 2, 3 -> {
        int s = seats;
        type = "medium " + s;
      }
      default -> {
        String s = "debug";
        type = "big";
      }
    }
    System.out.println(type);
    ```

## Ce que nous retenons

- Des evolutions entre 11 et 17, plus étudier, moins brutales
  - Un ecosysteme riche, qu'il faut eviter de boulversé, sous peine de perte de l'adhésion, par des releases trop fréquentes.
  - Mais ne pas reproduire les écarts entre les versions 5 > 6 > 7 > 8

[talk-description]: https://cfp.devoxx.fr/2021/talk/HGE-1930/Les_Methodes_Synthetiques_Revent-elles_a_des_Switch_Expressions_Electriques_%3F.html
[talk-video]: https://youtu.be/QF73kLY9l14