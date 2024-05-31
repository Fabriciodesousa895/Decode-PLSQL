DECODE: É uma função condicional específica do Oracle que funciona de maneira semelhante a uma estrutura CASE ou IF-THEN-ELSE.
  
PRDT_USADO_COMO: Este é o campo cujo valor será decodificado.
  
'R', 'REVENDA': Se o valor de PRDT_USADO_COMO for 'R', o resultado será 'REVENDA'.
'B', 'BRINDE': Se o valor de PRDT_USADO_COMO for 'B', o resultado será 'BRINDE'.
'D', 'DEMOSTRACAO': Se o valor de PRDT_USADO_COMO for 'D', o resultado será 'DEMOSTRACAO'.
'U', 'USO E CONSUMO': Se o valor de PRDT_USADO_COMO for 'U', o resultado será 'USO E CONSUMO'.
'VALOR DEFAULT': Se o valor de PRDT_USADO_COMO não corresponder a nenhuma das letras especificadas ('R', 'B', 'D', 'U'), o resultado será 'VALOR DEFAULT'.

  
SELECT 
     PRDT_ID,
     PRDT_NOME,
     DECODE(PRDT_USADO_COMO,
                    'R','REVENDA',
                    'B','BRINDE',
                    'D','DEMOSTRACAO',
                    'U','USO E CONSUMO',
                    'VALOR DEFAULT') AS USADO_COMO
     FROM PRDT_PRODUTO
