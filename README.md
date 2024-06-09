# ProvaParaSQL
 
Esse repositório é utilizado para a entrega da minha prova sobre sql no primeiro semestre da faculdade.

----------

# Cenário: 

Sistema de Gerenciamento do Torneio do Poder
Descrição do Cenário:

No universo Dragon Ball, o Torneio do Poder é um evento organizado pelo deus supremo Zeno, 
onde equipes de lutadores de diferentes universos competem entre si em batalhas eliminatórias. 
Cada universo é representado por uma equipe composta pelos dez lutadores mais poderosos de seu respectivo universo. 
O objetivo do torneio é testar a força, habilidade e trabalho em equipe dos lutadores para determinar qual universo 
possui os guerreiros mais fortes.

Para gerenciar o Torneio do Poder, é necessário um sistema de banco de dados que permita o cadastro e gerenciamento de lutadores, 
equipes, universos, batalhas e juízes. 
Esse sistema deve ser capaz de armazenar informações detalhadas sobre cada participante, suas habilidades, 
as batalhas realizadas e os resultados das mesmas.

----------

# Modelo Conceitual

![Modelo Conceitual](https://github.com/TiagoDou/ProvaParaSQL/blob/main/Imagens/Prova%20DER.png)

----------

# Modelo Lógico

![Modelo Lógico](https://github.com/TiagoDou/ProvaParaSQL/blob/main/Imagens/Prova%20MER.png)

----------

# Modelagem Física

![Modelagem Fisica](https://github.com/TiagoDou/ProvaParaSQL/blob/main/Imagens/Modelo%20Fisico.png)

----------

# Insert de dados

![insert 1](https://github.com/TiagoDou/ProvaParaSQL/blob/main/Imagens/InsertDados1.png)
![insert 2](https://github.com/TiagoDou/ProvaParaSQL/blob/main/Imagens/InsertDados2.png)

----------

# CRUD

Create
![Create](https://github.com/TiagoDou/ProvaParaSQL/blob/main/Imagens/Create.png)

Select
![Select](https://github.com/TiagoDou/ProvaParaSQL/blob/main/Imagens/Select.png)

Update
![Update](https://github.com/TiagoDou/ProvaParaSQL/blob/main/Imagens/Update.png)

Delete
![Delete](https://github.com/TiagoDou/ProvaParaSQL/blob/main/Imagens/Delete.png)

----------

# Relatórios

1

```sql
SELECT U.Nome_Universo, U.Deus_Destruição
FROM Universo U;
```

![Relatório](https://github.com/TiagoDou/ProvaParaSQL/blob/main/Imagens/Consulta1.png)

2

```sql
SELECT L.Nome, L.Transformacoes
FROM Lutador L;
```

![Relatório](https://github.com/TiagoDou/ProvaParaSQL/blob/main/Imagens/Consulta2.png)

3

```sql
SELECT E.Nome, E.Pontuação
FROM Equipe E
ORDER BY E.Pontuação DESC;
```

![Relatório](https://github.com/TiagoDou/ProvaParaSQL/blob/main/Imagens/Consulta3.png)

4

```sql
SELECT L.Nome, U.Nome_Universo
FROM Lutador L
JOIN Equipe E ON L.ID_Equipe = E.ID_Equipe
JOIN Universo U ON E.ID_Universo = U.ID_Universo
WHERE U.Nome_Universo = 'Universo 7';
```

![Relatório](https://github.com/TiagoDou/ProvaParaSQL/blob/main/Imagens/Consulta4.png)

5

```sql
SELECT L.Nome, B.Data
FROM Lutador L
JOIN Lutador_Batalha LB ON L.ID_Lutador = LB.ID_Lutador
JOIN Batalha B ON LB.ID_Batalha = B.ID_Batalha
WHERE B.ID_Batalha = 1;
```

![Relatório](https://github.com/TiagoDou/ProvaParaSQL/blob/main/Imagens/Consulta5.png)

6

```sql
SELECT J.Nome, U.Nome_Universo
FROM Juiz J
JOIN Universo U ON J.ID_Universo = U.ID_Universo;
```

![Relatório](https://github.com/TiagoDou/ProvaParaSQL/blob/main/Imagens/Consulta6.png)

7

```sql
SELECT Nome, Poder
FROM Lutador
WHERE Poder > 8000;
```

![Relatório](https://github.com/TiagoDou/ProvaParaSQL/blob/main/Imagens/Consulta7.png)

8

```sql
SELECT E.Nome, U.Nome_Universo
FROM Equipe E
JOIN Universo U ON E.ID_Universo = U.ID_Universo
WHERE U.Nome_Universo = 'Universo 6'
ORDER BY E.Nome;
```

![Relatório](https://github.com/TiagoDou/ProvaParaSQL/blob/main/Imagens/Consulta8.png)

9

```sql
SELECT L.Nome, L.Poder
FROM Lutador L
JOIN Equipe E ON L.ID_Equipe = E.ID_Equipe
WHERE E.Nome = 'Equipe Universo 11'
ORDER BY L.Poder DESC;
```

![Relatório](https://github.com/TiagoDou/ProvaParaSQL/blob/main/Imagens/Consulta9.png)

10

```sql
SELECT B.ID_Batalha, B.Data, B.Resultado
FROM Batalha B
JOIN Juiz J ON B.ID_Juiz = J.ID_Juiz
JOIN Universo U ON J.ID_Universo = U.ID_Universo
WHERE B.Resultado LIKE 'Vitória do Universo%'
AND U.Nome_Universo = 'Universo 2';
```

![Relatório](https://github.com/TiagoDou/ProvaParaSQL/blob/main/Imagens/Consulta10.png)
