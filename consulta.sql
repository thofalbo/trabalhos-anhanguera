CREATE VIEW ContasNaoPagas 
AS
SELECT CR.ID AS 'ID Conta a Receber',
	   C.Nome AS 'Nome Cliente',
       C.CPF AS 'CPF Cliente',
       CR.DataVencimento AS 'Data de Vencimento',
       CR.Valor AS 'Valor da Conta'
FROM contareceber CR
JOIN cliente C 
ON CR.Cliente_ID = C.ID
WHERE CR.Situacao = '1';

SELECT * FROM ContasNaoPagas;
