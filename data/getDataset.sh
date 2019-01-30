wget http://www1.caixa.gov.br/loterias/_arquivos/loterias/D_lotfac.zip
unzip D_lotfac.zip
rm D_lotfac.zip
rm LOTFACIL.GIF
lynx --dump D_LOTFAC.HTM > tmp
rm D_LOTFAC.HTM
echo "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O" > dataset.csv
egrep '[0-9]{2}/[0-9]{2}/..' tmp | sed -e 's/   //' | cut -d' ' -f3-17 | tr ' ' ',' >> dataset.csv
rm tmp
