Card API - Rubyconf Brasil 2014
===============================


Este projeto é a base de minha palestra (Eduardo Mourão) na Rubyconf Brasil 2014.

Slides:

https://speakerdeck.com/eduardordm/como-montar-sua-propria-empresa-de-cartoes-de-credito

https://github.com/eduardordm/cardapi/blob/master/rubyconf2014_public.pdf


## O que é


Um rails engine com uma API simples que simula transações entre e-wallets (bitcoins, etc) e uma aplicação dummy que utiliza esse engine.


## Como


Utiliza a estrutura de serviços e reduz drasticamente o aclopamento entre a aplicação e o framework e também entre partes da própria aplicação. Não foram utilizadas nenhuma ferramenta de injeção ou redução de cross-cutting concerns.

Apesar de utilizar idéias como microservices e clean architecture, nenhuma delas foram implementadas forma pura, mas em forma simples.

## Rodando

Rode a aplicação e execute a API.

Exemplo:

    curl  http://127.0.0.1:3000/cardapi/transactions \
       -u cardapi: \
       -d "transaction[amount]=100" \
       -d "transaction[source]=1BPVdMzV5UnmQ6rnbsH5NiJSBgefmSQGMr" \
       -d "transaction[destination]=1BYNK9AfpA2epfMBnBHTke8oc3CDLTuSEy

    {"id":7,"amount":"100.0","destination":"1BYNK9AfpA2epfMBnBHTke8oc3CDLTuSEy","source":"1BPVdMzV5UnmQ6rnbsH5NiJSBgefmSQGMr","txid":"79S7gqGv8nGRfJr1qesEFb4tlENhqmGa5MroTndFgXdvYNc="}

## Objetivo deste tipo de estrutura

- Reduzir carga cognitiva
- Tornar tudo mais testável ao reduzir acoplamento com a framework
- Facilitar exposição de APIs a outros meios de transporte
- Facilita inserção de novas pessoas ao projeto
- Torna sua vida melhor


## Como facilitar mais

O problema deste tipo de estrutura é que ele gera uma quantidade razoável de artefatos inúteis ao inicio do projeto. Isso pode ser considerado um contratempo para alguns. Para tornar esse tipo de estrutura mais fácil, você pode escrever rapidinho um generator que gera os serviços, etc, para operações que, hoje, são apenas CRUDs mesmo. Eu pessoalmente adoros generators e voce deveria gostar tambem, ver as coisas ficando prontas rapidamente é animador.



## Idéias



> Jim Weirich on Decoupling from Rails
https://www.youtube.com/watch?v=tg5RFeSfBM4

-------

> Spring-data
http://projects.spring.io/spring-data/

--------
> Clean Architecture
http://blog.8thlight.com/uncle-bob/2012/08/13/the-clean-architecture.html




