# Testes Automatizados

Automação

## PRÉ-REQUISITOS

*   Java 1.8 SDK
*   Maven 3.5.*
*   Plugin do Cucumber
*   Plugin do Gherkin

## ESTRUTURA DO PROJETO

| Diretório                    	| finalidade       	                                                                                        | 
|------------------------------	|---------------------------------------------------------------------------------------------------------- |
| src\main\features         	| Funcionalidade e cenários de teste escritos em linguagem DSL (Gherkin language)                        	|   
| src\test\java\runner         	| Método principal que inicia os testes via cucumber                                                      	|
| src\test\java\gherkin\hooks   | Métodos que executam antes e depois de cada teste (@Before, @After)                                   	|
| src\test\java\gherkin\steps   | Local onde deve ser criado as classes que representam os steps definition do cucumber                    	|

  
## EXECUTANDO OS TESTES

```

 
Excutar o teste via maven:

           mvn clean verify -Dcucumber.options="--tags @ALL"

Caminho do report gerado
        target\generated-report\index.html
            
        
```