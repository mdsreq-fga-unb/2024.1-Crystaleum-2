## Introdução

A ideia principal é que, em continuação ao Crystaleum 1.0, a galáxia terá de ser salva mais uma vez. Em contrapartida, nesta versão, o jogador será o protagonista num cenário de tomadas de decisão em um ambiente de desenvolvimento de software. 

O jogo terá será ambientado num cenário em que o jogador terá de gerenciar o desenvolvimento de um software para salvar seu planeta
Cada etapa do jogo será correspondente a um "desafio-problema", onde o jogador enfrentará um desafio relacionado a gerenciamento de riscos, requisitos e tomadas de decisão do projeto
Os problemas que cada rodada terá, tendo cada fase um tema relacionado para os desafios, serão escolhidos aleatoriamente para o jogador
O jogo terá minigames, em que o cenário será diferente do ambiente do jogo, como em Among us e Crystaleum 1.0

Sistema de pontuação: cada grupo de respostas têm as que dão mais ou menos pontos, assim tem as respostas totalmente erradas, as parcialmente certas, e as mais eficientes
Ao final das 5 fases (3 fases no MVP 1) o jogador será vencedor se sua pontuação superar a pontuação de corte (por exemplo 1000 de xp).


## Backlog

A [tabela abaixo](#requisitos-funcionais) de Requisitos Funcionais abaixo representa o backlog inicial do projeto com seus devidos [critérios de aceitação](#criterios-de-aceitacao), utilizando o framework (Scaled Agile Framework) (SAFe), determinando para cada item o Épico, a Funcionalidade e a História de Usuário (US).

Utilizamos o framework SAFe pois este é um framework que prioriza práticas ágeis. Ele inclui uma orientação estruturada para as posições e responsabilidades do Dono do Produto, Arquitetos de Solução e Engenheiros de Sistema.

Também foram elencados alguns requisitos não funcionais, representados pela [tabela abaixo](#requisitos-nao-funcionais).

Uma breve descrição de cada coluna:

**ID**: identificador do item, serve para facilitar a referenciação.

**Épico**: determina a qual épico o item pertence. 

**Funcionalidade**: Funcionalidade a ser feita.

**US**: História(s) de usuário que compõe(m) a funcionalidade.


### Requisitos Funcionais


|ID | Épico | Funcionalidade | US | Critério(s) de aceitação
| - |------------| ---- | --- | - |
|1| Processo de desenvolvimento | Introdução | **US1** - Eu como usuário, quero uma breve explicação do jogo <br><br> **US2**  Eu como usuário, quero ler uma introdução sobre a fase que vou jogar | 1 |
|2| Processo de desenvolvimento | Primeira pergunta do questionário |**US3** - Eu como usuário, quero ler a característica de um método de desenvolvimento de software aleatório <br><br> **US4** - Eu como usuário quero ser capaz de escolher o método correspondente |  - |
|3| Processo de desenvolvimento | Segunda pergunta do questionário | **US5** - Eu como usuário, quero ler a segunda pergunta do questionário <br><br> **US6** - Eu como usuário, quero escolher um processo de desenvolvimento para um projeto com determinadas características  |  - |
|4| Processo de desenvolvimento | Terceira pergunta do questionário |**US7** - Eu como usuário, quero ler a terceira pergunta do questionário <br><br> **US8** - Eu como usuário, quero escolher um processo de desenvolvimento para um projeto com determinadas características |  - |
|5| Aspectos Humanos | Introdução | **US9** - Eu como usuário, quero ler o título dessa fase para saber do que se trata <br><br> **US10** Eu como usuário, quero ler uma introdução sobre a fase de aspectos humanos  |  2 |
| 6 | Aspectos Humanos | Minigame de organização de equipe | **US11** - Eu como jogador, quero entender a situação atual do projeto fictício | 4 |
| 7 | Aspectos Humanos | Minigame de organização de equipe | **US12** - Eu como jogador, quero ver os possíveis participantes da equipe solucionadora | 5,6 |
| 8 | Aspectos Humanos | Minigame de organização de equipe | **US13** - Eu como jogador, quero escolher os participantes da equipe com base em seus atributos | 7,8 |
| 9 | Aspectos Humanos | Minigame de organização de equipe | **US14** - Eu como jogador, quero ver os atributos da equipe como um todo | 9 |
| 10| Backlog | Introdução | **US15** - Eu como usuário, quero ler uma introdução sobre a fase de backlog <br><br> **US16** - Eu como usuário, quero |  3 |
|11| Backlog | Minigame de backlog | **US17** - Eu como usuário, quero visualizar o backlog do software a ser desenvolvido pela equipe de desenvolvimento da gamificação |  10 |
| 12| Backlog | Minigame de backlog | **US18** - Eu como usuário, quero ordenar o backlog do software a ser desenvolvido pela equipe de desenvolvimento |  11 |
| 13 | Backlog | Minigame de escolha de PBI com modelo ARO | **US19** - Eu como usuário, quero ver uma lista de PBI | 12 |
| 14 | Backlog | Minigame de escolha de PBI com modelo ARO | **US20** - Eu como usuário, quero  identificar os que estão escritos em modelo ARO | 13 |
| 15 | Backlog | Pergunta de backlog com USM | **US21** - Eu como usuário, quero ler a pergunta sobre USM  | 16 |
| 16 | Backlog | Pergunta de backlog com USM | **US22** - Eu como usuário, quero poder marcar uma resposta | 17, 18 |
|17| Final do jogo | Feedback| **US23** - Eu como usuário, quero receber uma pontuação relacionada à exatidão da escolha da alternativa no fim do jogo <br><br> **US24** - Eu como usuário, quero ler um breve texto sobre minha jornada no jogo |  - |
| 18 | Regras de negócio | Minigame de organização de equipe | - | - |
| 19 | Casos de uso | Minigame de elaboração/correção de casos de uso | - | - |

### Critérios de aceitação

| ID | Descrição |
| - | - |
| 1 | O usuário deve ser apresentado à primeira fase com uma tela com um pequeno texto contado pelo personagem do jogo um botão para prosseguir |
| 2 | O usuário deve ser apresentado à fase de aspectos humanos em uma tela com um pequeno texto contado pelo personagem do jogo um botão para prosseguir |
| 3 | O usuário deve ser apresentado à fase de backlog em uma tela com um pequeno texto contado pelo personagem do jogo com um botão para prosseguir|
| 4 | A missão deve apresentar o tempo para a entrega, estabilidade dos requisitos, e disponibilidade do cliente como parâmetros quantificáveis para o usuário |
| 5 | A tela de seleção deve apresentar os personagens disponíveis para se formar uma equipe |
| 6 | O usuário deve conseguir selecionar uma quantidade pré-determinada de personagens, dentre todos que estão no banco de dados |
| 7 | A tela de seleção deve mostrar claramente quais personagens estão selecionados, e quando o usuário pode consolidar a seleção e prosseguir |
| 8 | O usuário deve conseguir consolidar a solução somente após cumprir uma cota pré-determinada, e então prosseguir para fora do minigame|
| 9 | Conforme o usuário escolhe os personagens, a média dos atributos da equipe aparece na tela |
| 10 | Tem que ter 5 US e elas têm que caber na tela |
| 11 |  O usuário tem que ordenar o backlog clicando nas US na ordem correta, da primeira à última |
| 12 |  Devem aparecer 5 PBIs |
| 13 |  Os PBIs selecionados devem ser destacados dos outros |
| 14 |  A pontuação do usuário nesta tarefa será contabilizada para aferição da pontuação final |
| 15 |  A escolha deve ser por clique, eliminando os que não estão em modelo ARO |
| 16 |  Deve aparecer uma pergunta curta com 4 alternativas |
| 17 | A alternativa escolhida tem que estar destacada |
| 18 | Tem que ter um botão de prosseguir |
| 19 | A pontuação final do jogador |
| 20 | Um pequeno texto com o feedback do jogador |




### Requisitos Não Funcionais

|ID | Categoria | Funcionalidade | 
|--| - | ---- |
| 1 | Desempenho |Mínimo de memória: 100 MB |
| 2 | Compatibilidade | O jogo será executado em ambiente offline, com permissão de acesso para instalação de apps estranhos às lojas de aplicativos |
| 3 | Compatibilidade | O jogo será executado em dispositivos smartphone com telas de até 6 polegadas; não haverá suporte para telas maiores como em tablet |

## MVP

O MVP escolhido por nossa equipe não abrange todo o backlog inicial, e sim apenas dos itens 1 ao 8, conforme estabelecido com nossa Product Owner Ana Carolina.

Os itens restantes serão considerados incrementos a serem implementados em iterações futuras após a completude do MVP.


**Histórico de Versão**

| Versão |Descrição|Autor(es)|Data|Revisor(es) |Data de revisão|
|---|--|----|----|--| -- |  
1.0 |  Criação da versão inicial do documento |  Lara, Pedro, Aline, Tomas, Antonio, Lucas  |   31/07/2024 | |
1.1 |  Alteração do backlog para resolução de issues | Pedro, Tomas, Aline  |   02/09/2024 | |
