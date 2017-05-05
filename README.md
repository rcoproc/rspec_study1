# README

Initial Study  with Rspec - Plural Sight 

https://app.pluralsight.com/library/courses/rspec-the-right-way/table-of-contents

by Geoffrey Grosenbach - 3h 11m

- [x] 03-05-2017, Comments Asscociation with tests;
- [x] 03-05-2017, Guard Gem, Database-Clenaer Gem;
- [x] 03-05-2017, Shoulda-Matchers Gem;
- [x] 01-05-2017, Initial Study with Rspec/Capybara;

Things you may want to cover:

* Ruby version

  2.3.0

* Resumo do Curso / Considerações Finais

  - **Dê pequenos passos;**

  - Preste atenção à velocidade e outras métricas;

  - **Construa os testes para seres humanos;**

    Tenha em mente que as pessoas estarão usando seus aplicativos (de alguma forma).

  - **Use Ruby;**

    Tente implementar recursos (em código ou RSpec) com a linguagem Ruby. 

    Somente use as dependências de terceiros quando necessário.

  - **Tente ficar no vermelho o menor tempo possível;**

    Como?

    Escrever expectativas que só precisam de uma pequena quantidade de código de implementação para ser satisfeito.

    Escreva a menor quantidade de código de implementação necessária para satisfazer cada expectativa.

  - **Preste atenção à velocidade e outros resultados;**

    A suite leva significativamente mais tempo para executar do que antes de implementar esse recurso? 

    Isso poderia sinalizar um problema no código de implementação ou nos exemplos.


* Configuration

* Database creation

* Database initialization

* How to run the test suite
  
  rspec spec/lib/wordpress/comments/client_spec.rb

  26 Tests Ok, 1 Pending
  
  ![alt tag](http://i.imgur.com/0MOTkXU.png)

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
