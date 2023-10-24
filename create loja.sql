CREATE TABLE Estado (
ID INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(50) NOT NULL,
UF CHAR(2) NOT NULL
);

CREATE TABLE Municipio (
ID INT AUTO_INCREMENT PRIMARY KEY,
Estado_ID INT NOT NULL,
Nome VARCHAR(80) NOT NULL,
CodIBGE INT NOT NULL,
CONSTRAINT fk_Municipio_Estado1_idx FOREIGN KEY (Estado_ID) REFERENCES Estado(ID)
);

CREATE TABLE Cliente (
ID INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(80) NOT NULL,
CPF CHAR(11) NOT NULL,
Celular CHAR(11),
EndLogradouro VARCHAR(100) NOT NULL,
EndNumero VARCHAR(10) NOT NULL,
EndMunicipio INT NOT NULL,
EndCEP CHAR(8),
Municipio_ID INT NOT NULL,
CONSTRAINT fk_Cliente_Municipio1_idx FOREIGN KEY (Municipio_ID) REFERENCES Municipio(ID)
);

CREATE TABLE ContaReceber (
ID INT AUTO_INCREMENT PRIMARY KEY,
Cliente_ID INT NOT NULL,
FaturaVendaID INT,
DataConta DATE NOT NULL,
DataVencimento DATE NOT NULL,
Valor DECIMAL(18,2) NOT NULL,
Situacao ENUM('1','2','3') NOT NULL,
CONSTRAINT fk_ContaReceber_Cliente_idx FOREIGN KEY (Cliente_ID) REFERENCES Cliente(ID)
);
