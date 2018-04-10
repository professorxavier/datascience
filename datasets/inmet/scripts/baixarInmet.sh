#!/bin/sh

#crie um arquivo com os codigos das estacoes e salve como estacoes.txt
#a busca abaixo esta buscando series mensais, com periodo entre 01/01/96 a 31/12/96, selecionando todos os campos possiveis
#para mais opcoes, simule a busca pelo BDMEP e veja os parametros que sao gerados na URL depois de selecionar os filtros (serie horaria, diaria ou mensal)

curl -c cookie.txt -d "mCod=SEUUSUARIO&mSenha=SUASENHA&mGerModulo=PES&btnProcesso=+Acessar+" http://www.inmet.gov.br/projetos/rede/pesquisa/inicio.php

while read LINE
do
    echo $LINE
curl -b cookie.txt -d
"mRelEstacao=$LINE&btnProcesso=serie&mRelDtInicio=01/01/1996&mRelDtFim=31/12/2016&mAtributos=1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1"
http://www.inmet.gov.br/projetos/rede/pesquisa/gera_serie_txt_mensal.php > $LINE.txt
done < estacoes.txt
