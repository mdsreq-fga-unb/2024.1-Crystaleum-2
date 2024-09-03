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


|ID | Épico | Funcionalidade | US | Critério de aceitação
| - |------------| ---- | --- | - |
|1| Processo de desenvolvimento | Primeira pergunta do questionário | Eu como usuário, quero ler a característica de um método de desenvolvimento de software aleatório e escolher  o método correspondente |  - |
|2| Processo de desenvolvimento | Primeira pergunta do questionário | Eu como usuário, quero receber uma pontuação relacionada à exatidão da escolha da alternativa no fim do jogo |  - |
|3| Processo de desenvolvimento | Segunda pergunta do questionário | Eu como usuário, quero escolher um processo de desenvolvimento para um projeto com determinadas características para obter uma pontuação no jogo |  - |
|4| Processo de desenvolvimento | Terceira pergunta do questionário | Eu como usuário, quero escolher um processo de desenvolvimento para um projeto com determinadas características para obter uma pontuação no jogo |  - |
| 9 | Aspectos Humanos | Minigame de organização de equipe | Eu como jogador, quero entender a situação atual do projeto fictício | 999 |
| 9 | Aspectos Humanos | Minigame de organização de equipe | Eu como jogador, quero saber os possíveis participantes da equipe solucionadora | 9999 |
| 9 | Aspectos Humanos | Minigame de organização de equipe | Eu como jogador, quero escolher os dos participantes da equipe com base em seus atributos | 999 |
| 9 | Aspectos Humanos | Minigame de organização de equipe | Eu como jogador, quero ver os atributos da equipe como um todo | 999 |
| 8| Backlog | Minigame de backlog com PBB | Eu como usuário, quero poder visualizar o backlog do software a ser desenvolvido pela equipe de desenvolvimento da gamificação |  - |
| 9| Backlog | Minigame de backlog com PBB | Eu como usuário, quero ordenar o backlog do software a ser desenvolvido pela equipe de desenvolvimento da gamificação utilizando o método COOrg |  1 |
| 10| Backlog | Minigame de backlog com PBB | Eu como usuário, quero receber uma pontuação desta tarefa que será contabilizada na pontuação final do jogo |  - |
| 11 | Backlog | Minigame de escolha de PBI com modelo ARO | Eu como usuário, quero ler uma lista de PBI e identificar os que estão escritos em modelo ARO | - |
| 12 | Backlog | Minigame de escolha de PBI com modelo ARO | Eu como usuário, quero receber uma pontuação relacionada à exatidão da escolha da alternativa no fim do jogo | - |
| 13 | Backlog | Pergunta de backlog com USM | Eu como usuário, quero ler a pergunta sobre USM e poder marcar uma resposta | - |
| 14 | Backlog | Pergunta de backlog com USM | Eu como usuário, quero receber uma pontuação relacionada à exatidão da escolha da alternativa no fim do jogo | - |
| 15 | Regras de negócio | Minigame de organização de equipe | - | - |
| 16 | Casos de uso | Minigame de elaboração/correção de casos de uso | - | - |

### Critérios de aceitação

| ID | US | Descrição |
| - | - | - |
| 1 | 9 | O usuário tem que ordenar o backlog clicando nas US na ordem correta, da primeira à última |
| 2 | 9 | A pontuação do usuário nesta tarefa será contabilizada para aferição da pontuação final |
| - | - | - |
| - | - | - |



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
