## Istio, le meilleur ami de votre cluster K8S ❤️

### by Kevin DAVIN

#### Tag(s): Kubernetes | Google Cloud Platform | Cloud Ecosystems

#### Links [description](https://cfp.devoxx.fr/2021/talk/TAB-3486/Istio,_le_meilleur_ami_de_votre_cluster_K8S_%E2%9D%A4%EF%B8%8F.html) | [video](https://cfp.devoxx.fr/2021/talk/DLZ-7236/Design_de_persuasion_:_De_la_seduction_a_l'engagement_.html)

--

### Monolith >> Microservices
- use Docker
- gestion avec Kubernetes
![aws-microservices](app/talks/assets/istio-ami-cluster-k8s-1.png)

--

### Istio
- OpenSource (IBM, Google, Lyft)
- simplifier la vie Devs et des Ops
- projet jeune

--

### Architecture (service mesh)

  ![architecture-1](app/talks/assets/istio-ami-cluster-k8s-2.png) <!-- .element: width="450" height="450" -->
  ![architecture-2](app/talks/assets/istio-ami-cluster-k8s-7.png) <!-- .element: width="450" height="450" -->

--

## Data Plane

Gestion de la communication via Proxy  
  ![data-plane-1](app/talks/assets/istio-ami-cluster-k8s-3.png) <!-- .element: width="450" height="450" -->
  ![data-plane-2](app/talks/assets/istio-ami-cluster-k8s-4.png) <!-- .element: width="450" height="450" -->

--

## Control Plane

"Base de donnée" qui contient les règles de pilotage du trafic  
  ![control-plane-1](app/talks/assets/istio-ami-cluster-k8s-5.png) <!-- .element: width="450" height="450" -->
  ![control-plane-2](app/talks/assets/istio-ami-cluster-k8s-6.png) <!-- .element: width="450" height="450" -->

--

## Observability

- Jaeger >> debug network
- Kiali >> vision des workloads en provenance des pods
- Grafana

--

## Connect

- virtual service >> manière dont sort la requête http (routage out)
- destination rule >> manière dont entre une requete http (routage in)
- service entry >> mock des services externe ?
- gateway

--

## Control

- traffic mirroring >> testing in production :s
  - fire & forget
  - attention si insert dans DB  
 ![traffic-mirroring](app/talks/assets/istio-ami-cluster-k8s-8.png)

--

- canary deployment >> deployer pour 1/n users
  - plus de fire forget  
 ![canary-deployment](app/talks/assets/istio-ami-cluster-k8s-9.png)

--

- traffic splitting

--

## Ce que nous retenons

- Livrer rapidement, sereinement, en plusieurs étapes (cf Control)

[talk-description]: https://cfp.devoxx.fr/2021/talk/TAB-3486/Istio,_le_meilleur_ami_de_votre_cluster_K8S_%E2%9D%A4%EF%B8%8F.html
[talk-video]: https://cfp.devoxx.fr/2021/talk/DLZ-7236/Design_de_persuasion_:_De_la_seduction_a_l'engagement_.html