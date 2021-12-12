# Profiling et monitoring avec le JDK by Jean-Michel DOUDOUX

## Track(s): Java, JVM

## Tag(s): JVM | monitoring | Flight Recorder

## Links [description][talk-description] | [video][talk-video]

![title-slide](profiling-monitoring-jdk-2.png)

- JVM ++ de l ecosysteme Java
  - PRO
    - execute byte code ou native
    - gestion memoire (garbage collector)
    - optimiser les performances (Just In Time)
    - gere interaction avec systeme hote (I/O, threads)
  - CONS
    - black box
    - besoin outillage pour diagnostic

- Profiling et Monitoring
  - Commercial
  - outils du JDK
    - JConsole
    - JVisualVM
  - Open Source
    - Arthas

- JFR & JMC
  - JDK Flight Recorder
    - collecte des evenements (système ou application)
    - inclus dans la JVM (faible besoin en ressource)
    - Java > 11 en OpenSource

      ```shell
      -XX:+UnlockCommercialFeatures -XX:+FlightRecorder
      ```

    - Recordings et Events
      - Instant Event | Duration Event | Timed Event | Requestable Event
    - lecture des records || events via JCMD || JMC
  - JDK Mission Control
    - Java > 11 en OpenSource
    - manipuler le JFR

- utilisation de JFR par JUnit 5 (5.7)
  - profite du faible overhead
- JfrUnit
  - des tests qui s'appuie sur les evenements JFR pour assert
  ![assert-jfrunit](profiling-monitoring-jdk-1.png)

## Ce que nous retenons

- JVM offre toujours plus d'outils
  - fiables et peu consommateurs en ressources (vs outils externe)
- Profiling et Monitoring
  - des APIs pour emettre / streamer nos propres events (>14)

[talk-description]: https://cfp.devoxx.fr/2021/talk/JSM-3414/Microservices_reactifs_avec_Quarkus.html
[talk-video]: https://youtu.be/EKOMi0u4Q2A