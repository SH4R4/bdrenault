drop database if exists loja;

create database loja;
use loja;

CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
	pais VARCHAR(100) NOT null
);

CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    data_pedido DATE NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    carro varchar (200),
    Acarro int,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id)

);

INSERT INTO clientes (nome, email, pais) VALUES
('Adilson Shigueo', 'adas@email.com', 'Brasil'),
('Daniel da Rocha', 'xxxx@gmail.com', 'Andorras'),
('Fabio Henrique', 'dvzfdsfdsz@gmail.com', 'Cuba'),
('Gustavo gomes', 'fdgxgrds@gmail.com', 'Filipinas'),
('Henrik Borsoti', 'fdgfdsfdsg@gmail.com', 'Holanda'),
('Ian Raçano', 'fdg@gmail.com', 'India'),
('Julia Peres', 'fgdfgdx@gmail.com', 'EUA'),
('Kaiky Soares', 'gfdfdg@gmail.com', 'Monaco'),
('Lucas Daniel', 'gfdhgfdx@gmail.com', 'Japão'),
('Marco Antonio', 'dfggfds@gmail.com', 'Libano'),
('Natan de Oliveira', 'vcgfdx@gmail.com', 'Brasil'),
('Paulo Roberto', 'tgrht@gmail.com', 'Belgica'),
('Rafael Souza', 'gfdgfdgfd@gmail.com', 'EUA'),
('Shara Nicolly', 'bvcx@gmail.com', 'Brasil'),
('Vitor Garcia', 'gfhsdhgfd@gmail.com', 'Argentina'),
('Nathaly Silva', 'uytd@gmail.com', 'Brasil'),
('Diana Pereira', 'gfdfgds@gmail.com', 'Argelia'),
('Gabriella Holanad', 'gfdshgfd@gmail.com', 'Monaco'),
('Davi Takedi', 'fgdgfdsfgds@gmail.com', 'China'),
('Victor Alexandre', 'fdgsjhbdf@gmail.com', 'Belgica'),
('Nicholas Luperi', 'fgdgdrf@gmail.com', 'Alemanha')
;

INSERT INTO pedidos (id_cliente, data_pedido, valor, carro, Acarro) VALUES
('1', '01/01/2019', '2000.00', 'DUSTER', '2015'),
('2', '09/08/2018', '500.00', 'KWID', '2017'),
('3', '10/10/2019', '800.00', 'NOVA MASTER', '2019'),
('4', '11/09/2012', '13000.00', 'KARDIAN', '2012'),
('5', '23/02/2019', '19000.00', 'DUSTER OROCH', '2018'),
('6', '12/01/2020', '8000.00', 'STEPWAY', '2019'),
('7', '12/12/2020', '700.00', 'KWID-E', '2018' ),
('8', '11/11/2021', '3000.00', 'LOGAN', '2020'),
('9', '29/02/2024', '40000.00', 'SANDERO', '2024'),
('10', '23/09/2024',  '40000.00', 'SANDERO', '2024'),
('11', '23/12/2024', '40000.00', 'SANDERO', '2024'),
('12', '23/09/2019', '500000.00', 'MEGANE', '2012' ),
('13', '11/11/2021', '700.00', 'KWID-E', '2018'),
('14', '12/11/2019', '800.00', 'NOVA MASTER', '2019'),
('15', '09/11/2019', '500.00', 'KWID', '2017'),	
('16', '24/01/2020', '3000.00', 'LOGAN', '2020'),
('17', '12/12/2022', '8000.00', 'STEPWAY', '2019'),
('18', '23/12/2023', '19000.00', 'DUSTER OROCH', '2018'),
('19', '03/09/2016', '2000.00', 'DUSTER', '2015'),
('20', '09/09/2018', '13000.00', 'KARDIAN', '2012');

SELECT 
    c.nome, 
    c.email, 
    c.pais,
    p.data_pedido, 
    p.valor,
    p.carro,
    p.Acarro
FROM 
    clientes c
    
INNER JOIN 
    pedidos p ON c.id = p.id_cliente;

