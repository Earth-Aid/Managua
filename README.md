# Managua - Monitorando A Balneabilidade das Praias Utilizando Sensores
Trabalho desenvolvido durante a disciplina de BD1 no semestre 2018/2 com o Professor Moisés Omena

# Sumário

### 1. COMPONENTE<br>

Anne Caroline Silva: carolinesilva4@hotmail.com<br>

### 2. INTRODUÇÃO E MOTIVAÇAO<br>

Cidades litorâneas se esforçam em medir a balneabilidade dos locais para banho e divulgá-las com melhor precisão e atualizar com maior frequência para seu público, seja ele local ou turista, especialmente na alta temporada. Atualmente esse processo [1] é realizado manualmente e pouco eficaz sendo que o status, seja ele positivo ou negativo, de uma praia estar boa ou não para banho, muitas vezes é divulgado com atraso significativo.

Visando tornar a qualidade do processo mais eficiente, propõe-se um sistema automatizado que utiliza um conjunto de sensores para coletar os dados referentes à salinidade, temperatura, oxigênio dissolvido, condutividade elétrica, ph, Escherichia coli e coliformes fecais, dados meteorológicos e de radiação solar e disponibilizar essas informações para o público. O sistema deverá gerar um conjunto de relatórios que por sua vez atenderá tanto o público geral quanto cientistas e pesquisadores.

Espera-se que a melhoria do processo aumente a confiabilidade e seja um fator decisório das pessoas em relação ao local desejado para banhar-se e ao índice de radiação solar, que as prefeituras vejam como um instrumento atrativo de potenciais turistas, que cientistas e pesquisadores tenham dados confiáveis e que seja uma ferramenta para escolhas mais inteligentes e saudáveis.


### 3. MINI-MUNDO<br>

A empresa Earth Aid propõe um sistema chamado Managua [2] para automatizar a coleta de informações sobre a qualidade da água de praias utilizando um sistema formado de sensores e microcomputadores. 

Bóias serão posicionadas a cada 200 metros de distância, no mínimo, e equipadas com sensores para medir salinidade, temperatura, oxigênio dissolvido, turbidez, condutividade elétrica, ph, Escherichia coli e coliformes fecais, que são os principais parâmetros de avaliação da balneabilidade. A frequência com que as informações são captadas pode variar no decorrer do ano dependendo das épocas de maior ou menor movimento turístico. 

Existirão os seguintes sensores para monitoramento os dados meteorológicos: termômetro, barômetro, higrômetro, anemômetro, pluviômetro e piranômetro para medir respectivamente, a temperatura do ar, pressão atmosférica, umidade relativa do ar, velocidade e direção do vento, precipitação pluviométrica e radiação solar. 

Observamos que, conhecer o índice de radiação solar é um fator importante que deve ser considerado da mesma forma que se consulta a previsão do tempo cotidianamente. Por isso que este parâmetro deve ser visto com destaque no sistema proposto.

A seguinte tabela apresenta o intervalo de valores que os sensores são capazes de medir:

Parâmetro | Sensor | Intervalo | Grandeza
------------ | ------------- |------------ | ------------- 
Salinidade | | 0 até 10 | ppt 
Temperatura da água | | -20 até +125 | °C
Oxigênio dissolvido || 0 até 40 | mg/L 
Turbidez || 0.001 até 4000 | NTU
Condutividade elétrica || 10 até 19,990 | μS
Ph || 0.1 até 14 | -
Escherichia coli | | 80 até 25000 | UFC/100mL
Coliformes fecais | | 80 até 25000 | UFC/100mL
Temperatura do ar | Termômetro | -40 até +123,8 | °C
Pressão atmosférica | Barômetro | 10 até 1300 | mbar
Umidade relativa do ar | Higrômetro | 0% até 100% | RH
Velocidade do vento | Anemômetro | 0,5 até 89 | m/s
Direção do vento | Anemômetro | 0 até 360 | °
Precipitação pluviométrica | Pluviômetro | 0 até 100 | mm/hr
Radiação solar | Piranômetro | 285 x 10⁻⁹ até 3000 x 10⁻⁹ | m

A seguir, uma tabela que resume a classificação da balneabilidade das praias de acordo com a RESOLUÇÃO CONAMA nº 274, de 29 de novembro de 2000 [3]:

Classificação | Condição
------------ | -------------
Excelente | Quando em 80% ou mais de um conjunto de amostras obtidas em cada uma das cinco semanas anteriores, colhidas no mesmo local, houver, no máximo, 250 coliformes fecais ou 200 Escherichia coli por l00 mililitros
Muito Boa | Quando em 80% ou mais de um conjunto de amostras obtidas em cada uma das cinco semanas anteriores, colhidas no mesmo local, houver, no máximo, 500 coliformes fecais ou 400 Escherichia coli por 100 mililitros
Satisfatória | Quando em 80% ou mais de um conjunto de amostras obtidas em cada uma das cinco semanas anteriores, colhidas no mesmo local, houver, no máximo 1.000 coliformes fecais ou 800 Escherichia coli por 100 mililitros
Imprópria | a) não atendimento aos critérios estabelecidos para as águas próprias; b) valor obtido na última amostragem for superior a 2500 coliformes fecais ou 2000 Escherichia coli por 100 mililitros; c) incidência elevada ou anormal, na Região, de enfermidades transmissíveis por via hídrica, indicada pelas autoridades sanitárias; d) presença de resíduos ou despejos, sólidos ou líquidos, inclusive esgotos sanitários, óleos, graxas e outras substâncias, capazes de oferecer riscos à saúde ou tornar desagradável a recreação; e) pH < 6,0 ou pH > 9,0 (águas doces), à exceção das condições naturais; f) floração de algas ou outros organismos, até que se comprove que não oferecem riscos à saúde humana; g) outros fatores que contra-indiquem, temporária ou permanentemente, o exercício da recreação de contato primário.

De uma praia serão armazenados a localização, nome, extensão, quantidade de bóias e quais são os pontos de referência. Da localização serão armazenados o país, estado e cidade. Das bóias serão armazenados a referência do ponto de coleta, latitude e longitude. Das coletas serão armazenados o número, data, hora, parâmetro, frequência de captação e valor. De um sensor serão armazenados o número de série, fabricante, ano de fabricação, data de aquisição e data da próxima manutenção. De uma pessoa serão armazenados a localização de origem, nome, email e telefone de contato. 

Um ponto de referência de uma praia pode ter mais de uma bóia e a frequência de coleta pode variar entre pontos de referência.

Consultas dos dados poderão ser feitas através de dispositivos móveis com conexão à internet. Uma pessoa pode consultar as condições de uma praia informando cidade, estado, país ou ponto de referência, e, acessar rankings e históricos. Os dados também poderão ser requeridos para pesquisas.

Por fim, os dispositivos eletrônicos presentes no sistema serão alimentados com energia proveniente de painéis solares instalados nas bóias.

[1] Texto base:
https://gauchazh.clicrbs.com.br/comportamento/verao/noticia/2018/02/saiba-como-e-feito-e-para-que-serve-o-teste-de-balneabilidade-nas-praias-de-santa-catarina-cjda62ytx03ve01phyc3jd28d.html
[2] Managua = Monitora + Água
[3] Resolução do CONAMA (Modificada no trabalho - retirou-se o parâmetro  enterococos) 
http://www2.mma.gov.br/port/conama/legiabre.cfm?codlegi=272

### 4. RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
Neste ponto a codificação não e necessária, somente as ideias de telas devem ser criadas, o princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas ou descartadas <br>

Sugestão: https://balsamiq.com/products/mockups/<br>

![Alt text](https://github.com/discipbd1/trab01/blob/master/balsamiq.png?raw=true "Title")
![Arquivo PDF do Protótipo Balsamiq feito para Empresa Devcom](https://github.com/discipbd1/trab01/blob/master/arquivos/EmpresaDevcom.pdf?raw=true "Empresa Devcom")

#### 4.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    
O Managua será capaz de, inicialmente, gerar os seguintes relatórios:

* Relatório que informa a balneabilidade de cada praia incluindo as seguintes informações: nome da praia e classificação;
* Relatório que informa o ranking das melhores e piores praias incluindo as seguintes informações: posição, nome, localização e tempo total em condições próprias para recreação;
* Relatório que informa a média das condições meteorológicas locais incluindo as seguintes informações: nome da praia, localização, média da temperatura da água, temperatura do ar, pressão atmosférica, umidade relativa do ar, velocidade do vento, precipitação pluviométrica e índice de radiação solar;
* Relatório que informa um resumo de balneabilidade incluindo as seguintes informações: quantidade de praias nessa categoria, categoria, lista com os nomes e localização das praias;
* Relatório que informa os períodos em que a incidência da radiação é crítica para a saúde humana incluindo as seguintes informações: nome da praia e radiação solar medida.
 
 
#### 4.2 TABELA DE DADOS DO SISTEMA:
    a) Esta tabela deve conter todos os atributos do sistema e um mínimo de 10 linhas/registros de dados.
    b) Esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados 
    e deve ser criada antes do modelo conceitual
    c) Após criada esta tabela não deve ser modificada, pois será comparada com os resultados finais na conclusão do trabalho
    
![Exemplo de Tabela de dados da Empresa Devcom](https://github.com/discipbd1/trab01/blob/master/arquivos/TabelaEmpresaDevCom_sample.xlsx?raw=true "Tabela - Empresa Devcom")
    
>## Marco de Entrega 01 em: (06/09/2018)<br>

### 5.MODELO CONCEITUAL<br>
    A) NOTACAO ENTIDADE RELACIONAMENTO 
        * Para nosso prótótipo limitaremos o modelo conceitual nas 6 principais entidades do escopo
        * O protótipo deve possui no mínimo duas relações N para N
        * o mínimo de entidades do modelo conceitual será igual a 5
        
![Alt text](https://github.com/discipbd1/trab01/blob/master/images/concept_sample.png?raw=true "Modelo Conceitual")
    
    B) NOTACAO UML (Caso esteja fazendo a disciplina de analise)
    C) QUALIDADE 
        Garantir que a semântica dos atributos seja clara no esquema
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas
    
        
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 DECISÕES DE PROJETO
    [atributo]: [descrição da decisão]
    
    EXEMPLO:
    a) Campo endereço: em nosso projeto optamos por um campo multivalorado e composto, pois a empresa 
    pode possuir para cada departamento mais de uma localização... 
    b) justifique!

>## Marco de Entrega 02 em: (17/09/2018)<br>
#### 5.3 DESCRIÇÃO DOS DADOS 
    [objeto]: [descrição do objeto]
    
    EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>


### 6	MODELO LÓGICO<br>
        a) inclusão do modelo lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade)

### 7	MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas DDL 
        (criação de tabelas, alterações, etc..)          
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico 
        b) formato .SQL

#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELAS E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (create para tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL
#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script
        (Drop para exclusão de tabelas + create para tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL
>## Marco de Entrega 03 em: (27/09/18) <br>

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>

>## Marco de Entrega 04 em: (18/10/2017)<br>

#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
        a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado
        b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho
#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
#### 9.10	SUBCONSULTAS (Mínimo 3)<br>
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>

### 11 Backup completo do banco de dados postgres 
    a) deve ser realizado no formato "backup" 
        (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)
    b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
    c) informar aqui o grupo de alunos/dupla que realizou o teste.

### 12	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS<br>
        a) Outros grupos deverão ser capazes de restaurar o banco 
        b) executar todas as consultas presentes no trabalho
        c) executar códigos que tenham sido construídos para o trabalho 
        d) realizar qualquer procedimento executado pelo grupo que desenvolveu o trabalho
        
### 13   DIFICULDADES ENCONTRADAS PELO GRUPO<br>
>## Marco de Entrega Final em: (08/11/2018)<br>
        
### 14  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/



    

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário do git "profmoisesomena", para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://www.sis4.com/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")


