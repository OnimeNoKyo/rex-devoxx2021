## Top 10 des choses à faire avec GraalVM

## by Pascal Gillet

#### Tag(s): Java | HotSpot JVM | Graal

#### Links [description](https://cfp.devoxx.fr/2021/talk/JMD-6575/Top_10_des_choses_a_faire_avec_GraalVM.html) | [video](https://youtu.be/2iqZjnYndgw)

--

![intro](app/talks/assets/graalvm-1.png)

--

- 1 Community vs Entreprise  <!-- .element: class="fragment" data-fragment-index="0" -->  
- 2 Temps d'exécution java  <!-- .element: class="fragment" data-fragment-index="1" -->  
- 3 Native image <!-- .element: class="fragment" data-fragment-index="2" -->  
- 4 Spring-boot app native  <!-- .element: class="fragment" data-fragment-index="3" -->  
- 5 Exécuter langage natif <!-- .element: class="fragment" data-fragment-index="4" -->  
- 6-7-8 Application polyglot <!-- .element: class="fragment" data-fragment-index="5" -->  
- 9 SimpleLanguage  <!-- .element: class="fragment" data-fragment-index="6" -->  
- 10 Java on Truffle (experimentation) <!-- .element: class="fragment" data-fragment-index="7" -->  

Notes:
1- 19s java vs 12s GraalVm
2- probleme call start java vers ms avec GraalVm + mémoire très faible
4- 85ms démarrage d'app
5- code C avec Truffle Framework (llvm byte code bas niveau)
6- js dans java par exemple
9- ajouter comme langage supporter a GraalVm via Truffle Framework