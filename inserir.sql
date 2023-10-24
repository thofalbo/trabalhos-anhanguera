-- Inserções na tabela Estado
INSERT INTO Estado (Nome, UF) 
VALUES 
('São Paulo', 'SP'),
('Rio de Janeiro', 'RJ'),
('Minas Gerais', 'MG');

-- Inserções na tabela Municipio
INSERT INTO Municipio (Estado_ID, Nome, CodIBGE) 
VALUES 
(1, 'São Paulo', 3550308),
(2, 'Rio de Janeiro', 3304557),
(3, 'Belo Horizonte', 3106200);

-- Inserções na tabela Cliente
INSERT INTO Cliente (Nome, CPF, Celular, EndLogradouro, EndNumero, EndMunicipio, EndCEP, Municipio_ID) 
VALUES 
('João da Silva', '12345678901', '999999999', 'Rua A', '123', 1, '12345678', 1),
('Maria Souza', '98765432101', '888888888', 'Avenida X', '456', 2, '87654321', 2),
('Pedro Rocha', '11111111111', '777777777', 'Rua B', '789', 3, '11112222', 3);
 
-- Inserções na tabela ContaReceber
INSERT INTO ContaReceber (Cliente_ID, FaturaVendaID, DataConta, DataVencimento, Valor, Situacao) 
VALUES
(1, NULL, '2023-10-23', '2023-11-23', 100.00, '1'),
(2, NULL, '2023-10-24', '2023-11-24', 150.00, '2'),
(3, NULL, '2023-10-25', '2023-11-25', 200.00, '3');
