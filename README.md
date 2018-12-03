# Managua - Monitorando A Balneabilidade das Praias Utilizando Sensores
Trabalho desenvolvido durante a disciplina de BD1 no semestre 2018/2 com o Professor Moisés Omena

# Sumário

### 1. COMPONENTE<br>

Anne Caroline Silva: carolinesilva4@hotmail.com

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

De uma praia serão armazenados a localização, nome, extensão e quantidade de bóias. Da localização serão armazenados o país, estado e cidade. Das bóias serão armazenados a referência do ponto de coleta, latitude e longitude. Das coletas serão armazenados o número, data, hora, parâmetro, frequência de captação e valor. De um sensor serão armazenados o número de série, fabricante, ano de fabricação, data de aquisição e data da próxima manutenção. De uma pessoa serão armazenados a localização de origem, nome, email e telefone de contato. 

Um ponto de referência de uma praia pode ter mais de uma bóia e a frequência de coleta pode variar entre pontos de referência.

Consultas dos dados poderão ser feitas através de dispositivos móveis com conexão à internet. Uma pessoa pode consultar as condições de uma praia informando cidade, estado, país ou ponto de referência, e, acessar rankings e históricos. Os dados também poderão ser requeridos para pesquisas.

Por fim, os dispositivos eletrônicos presentes no sistema serão alimentados com energia proveniente de painéis solares instalados nas bóias.

[1] Texto base:
https://gauchazh.clicrbs.com.br/comportamento/verao/noticia/2018/02/saiba-como-e-feito-e-para-que-serve-o-teste-de-balneabilidade-nas-praias-de-santa-catarina-cjda62ytx03ve01phyc3jd28d.html
[2] Managua = Monitora + Água
[3] Resolução do CONAMA (Modificada no trabalho - retirou-se o parâmetro  enterococos) 
http://www2.mma.gov.br/port/conama/legiabre.cfm?codlegi=272

### 4. RASCUNHOS BÁSICOS DA INTERFACE<br>

![Alt text](https://github.com/Earth-Aid/Managua/blob/master/New%20Wireframe%201.png)

[Arquivo PDF do Protótipo Balsamiq feito para a Managua](https://github.com/Earth-Aid/Managua/blob/master/managuaMockup.pdf)

#### 4.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?

As principais perguntas que o sistema propõe a responder são: “a praia que eu escolhi me banhar está em condições de oferecer um momento de lazer sem comprometer minha saúde”? E “o nível de radiação está além do recomendado”?

O Managua será capaz de, inicialmente, gerar os seguintes relatórios:

* Relatório que informa a balneabilidade de cada praia incluindo as seguintes informações: nome da praia e classificação;
* Relatório que informa o ranking das melhores e piores praias incluindo as seguintes informações: posição, nome, localização e tempo total em condições próprias para recreação;
* Relatório que informa a média das condições meteorológicas locais incluindo as seguintes informações: nome da praia, localização, média da temperatura da água, temperatura do ar, pressão atmosférica, umidade relativa do ar, velocidade do vento, precipitação pluviométrica e índice de radiação solar;
* Relatório que informa um resumo de balneabilidade incluindo as seguintes informações: quantidade de praias nessa categoria, categoria, lista com os nomes e localização das praias;
* Relatório que informa os períodos em que a incidência da radiação é crítica para a saúde humana incluindo as seguintes informações: nome da praia e radiação solar medida.
 
 
#### 4.2 TABELA DE DADOS DO SISTEMA:
    
[Tabela de dados](https://github.com/Earth-Aid/Managua/blob/master/4.2%20Tabela%20de%20Dados%20do%20Sistema.xlsx)


### 5.MODELO CONCEITUAL<br>
        
![Alt text](https://github.com/Earth-Aid/Managua/blob/master/managuaMC4.png "Modelo Conceitual")
    
    
#### 5.1 Validação do Modelo Conceitual

* Piscicultura Inteligente: André Altivo, Lucca Machado, Gabriela Piffer e Marcelo Mendes;
* Controle de Frequência de Aulas: Brunna Dalzini de Oliveira, Daniela Salomão Santa Clara, Leonir dos Reis Alves e Mayannara Trindade Carvalho.

#### 5.2 DECISÕES DE PROJETO
    [atributo]: [descrição da decisão]
    
    EXEMPLO:
    a) Campo endereço: em nosso projeto optamos por um campo multivalorado e composto, pois a empresa 
    pode possuir para cada departamento mais de uma localização... 
    b) justifique!

#### 5.3 DESCRIÇÃO DOS DADOS

* Praia: Tabela que armazena as informações relativas às praias cadastradas no sistema;
 	- Nome: Campo que armazena o nome da praia;
* Cidade: Tabela que armazena as informações relativas ao nome da cidade;
	- Nome: Campo que armazena o nome da cidade a ser cadastrada no sistema;
* Estado:  Tabela que armazena as informações relativas ao nome do Estado;
	- Nome: Campo que armazena o nome do estado a ser cadastrado no sistema;
* Pais: Tabela que armazena as informações relativas ao nome do país;
	- Nome: Campo que armazena o nome do país a ser cadastrado no sistema;
* Boia: Tabela que armazena as informações relativas à uma bóia cadastrada no sistema;
 	- Ref_ponto_col: Campo que armazena o ponto de referência de uma bóia;
 	- Latitude: Campo que armazena o valor da latitude de uma bóia;
 	- Longitude: Campo que armazena o valor da longitude de uma bóia;
* Sensor: Tabela que armazena as informações relativas ao sensor que serão cadastradas no sistema;
 	- Num_serie: Campo que armazena o número de série do sensor;
 	- Data_aquisicao: Campo que armazena o valor da data de aquisição do respectivo sensor;
 	- Data_prox_manut: Campo que armazena o data da próxima manutenção do sensor.
* Tipo_Sensor: Tabela que armazena informações relativas a qual tipo de sensor serão cadastrados
	- Nome: campo que armazena o nome do sensor
* Fabricante: Tabela que armazena as informações relativas ao fabricante do sensor;
	- Nome: campo que armazena o nome do fabricante
* Historico: Tabela que armazena informações relativas ao histórico de informações captadas pelos sensores
	- Valor: Campo que armazena o valor captado pela coleta;
	- Data: Campo que armazena o valor da hora em que a coleta é realizada;
 	- Hora: Campo que armazena o valor da hora em que a coleta é realizada.

### 6	MODELO LÓGICO<br>

![Alt text](https://github.com/Earth-Aid/Managua/blob/master/managuaML1.png "Modelo Lógico")
        
### 7	MODELO FÍSICO<br>

[7 Modelo físico](https://github.com/Earth-Aid/Managua/blob/master/modeloFisico.sql)

### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES

[8.1 Insert](https://github.com/Earth-Aid/Managua/blob/master/8.1%20insert)

#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELAS E INSERÇÃO DOS DADOS

[8.2 Create + Insert](https://github.com/Earth-Aid/Managua/blob/master/8.2%20Create%20%2B%20Insert)

#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS

[8.3 Drop + Create + Insert](https://github.com/Earth-Aid/Managua/blob/master/8.3%20Drop%20%2B%20Create%20%2B%20Insert)

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>

#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

SELECT * FROM PAIS

![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.1.1.PNG)

SELECT * FROM ESTADO

![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.1.2.PNG)

SELECT * FROM CIDADE

![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.1.3.PNG)

SELECT * FROM PRAIA

![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.1.4.PNG)

SELECT * FROM BOIA

![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.1.5.PNG)

SELECT * FROM TIPO_SENSOR

![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.1.6.PNG)

SELECT * FROM SENSOR_TIPO

![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.1.7.PNG)

SELECT * FROM FABRICANTE

![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.1.8.PNG)

SELECT * FROM SENSOR

![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.1.9.PNG)

SELECT * FROM BOIA_SENSOR_RELACAO_1

![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.1.10.PNG)

SELECT * FROM HISTORICO

![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.1.11.PNG)

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>

SELECT * FROM BOIA WHERE fk_praia_id = 2

![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.2.1.PNG)

SELECT data_col, hora, valor FROM HISTORICO WHERE data_col = '26-11-2018'

![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.2.2.PNG)

SELECT * FROM SENSOR WHERE data_prox_manutencao >  '01-01-2023'

![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.2.3.PNG)

SELECT nome, fk_cidade_id, id FROM PRAIA WHERE fk_cidade_id <= 5

![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.2.4.PNG)

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
 
SELECT * FROM PRAIA WHERE fk_cidade_id >= 2 AND fk_cidade_id <= 6
 
![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.3.1.PNG)
 
SELECT * FROM TIPO_SENSOR WHERE id > 5 OR nome = 'Medidor de Condutividade/Temperatura'
 
![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.3.2.PNG)

SELECT num_serie, data_aquisicao FROM SENSOR WHERE num_serie <> 'EEEEE55555' 

![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.3.3.PNG)

SELECT latitude, longitude FROM BOIA WHERE fk_praia_id <> 9 AND id >= 5

![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.3.4.PNG)
 
SELECT * FROM HISTORICO WHERE id_col > 15 AND data_col > '15-09-2018'
 
![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.3.5.PNG)
 
![Alt text]()
 
![Alt text]()
 
![Alt text]()

SELECT num_serie AS “Número de Série”, data_prox_manutencao AS “Próxima Manutenção” FROM SENSOR 

![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.3.9.PNG)
 
SELECT data_col AS “Data”, hora AS “Hora”, valor AS “Valor da Coleta” FROM HISTORICO WHERE id_coleta <= 15
 
![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.3.10.PNG)
 
![Alt text]()
 
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>

SELECT * FROM PAIS WHERE nome LIKE ‘_r%’

![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.4.1.PNG)

SELECT * FROM CIDADE WHERE 	nome LIKE ‘_____’

![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.4.2.PNG)

SELECT id, ponto_ref_col FROM BOIA WHERE ponto_ref_col LIKE ‘%frente%’

![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.4.3.PNG)

SELECT * FROM TIPO_SENSOR WHERE nome LIKE '%metro%' OR nome ILIKE '%sonda%'

![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.4.4.PNG)

SELECT * FROM FABRICANTE WHERE nome LIKE ‘%ch%’

![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.4.5.PNG)

![Alt text]()

![Alt text]()

![Alt text]()

![Alt text]()

![Alt text]()

![Alt text]()

![Alt text]()

#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>

UPDATE PAIS SET nome = 'Austrália' WHERE nome = 'Portugal'

Antes:

![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.1.1.PNG)

Depois:

![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.5.1.PNG)

UPDATE PRAIA SET nome = 'Praia Secreta' WHERE id = 3

Antes:

![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.1.4.PNG)

Depois:

![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.5.2.PNG)

UPDATE BOIA SET ponto_ref_col = 'Entrada da Ilha do Frade' WHERE id = 3

Antes:

![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.1.5.PNG)

Depois:

![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.5.3.PNG)

DELETE FROM CIDADE WHERE id = 5

Antes:

![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.1.3.PNG)

Depois:

![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.5.4.PNG)

DELETE FROM FABRICANTE WHERE nome = 'Reichert'

Antes:

![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.1.8.PNG)

Depois:

![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.5.5.PNG)

DELETE FROM HISTORICO WHERE data_col <= '30-09-2018'

Antes:

![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.1.11.PNG)

Depois:

![Alt text](https://github.com/Earth-Aid/Managua/blob/master/9.5.6.PNG)

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
* Eu não gosto de fazer Mockup. Demorei bastante pra começar a fazer até encontrar inspiração suficiente pro design;
* Dúvidas com o Modelo Conceitual. Eu não sabia muito bem como implementar no MC a parte do histórico de coletas e quais campos ele teria;
* Faltou confiar em mim mesma.
* Meu trabalho não possui muitos dados numéricos ou tabelas com mais de duas colunas e devido a isso tive muitas dificuldades em pensar em consultas em envolvam operadores aritméticos, group by e funções de agrupamento.
