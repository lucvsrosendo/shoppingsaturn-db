CREATE DATABASE ShoppingSaturno; 
USE ShoppingSaturno; 

-- Store's Table
CREATE TABLE Lojas (
id_loja INT AUTO_INCREMENT PRIMARY KEY,
nome_loja VARCHAR(100),
endereco VARCHAR(255),
telefone VARCHAR(20)
);

-- Product's Table
CREATE TABLE Produtos (
id_produto VARCHAR(100),
preco DECIMAL (10, 2),
estoque INT,
id_loja INT,
FOREIGN KEY (id_loja) REFERENCES Lojas (id_loja)
);

-- Employee's Table
CREATE TABLE Funcionarios (
id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
nome_funcionario VARCHAR(100),
cargo VARCHAR(50),
salario DECIMAL(10,2),
id_loja INT,
FOREIGN KEY (id_loja) REFERENCES Lojas(id_loja)
);

-- Sale's Table
CREATE TABLE Vendas (
id_venda INT AUTO_INCREMENT PRIMARY KEY,
id_produto INT,
id_client INT,
id_funcionario INT,
quantidade INT,
data_venda DATE,
total DECIMAL(10,2),
FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto),
FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
FOREIGN KEY (id_funcionario) REFERENCES Funcionarios(id_funcionario)
); 

-- Stores
INSERT INTO Lojas (nome_loja, endereco, telefone)
VALUES ('Boticário 1', 'Primeiro andar, 1', '(11) 1234-5678'),
       ('Renner 2', 'Segundo andar, 2', '(11) 2345-6789');

-- Inserir produtos
INSERT INTO Produtos (nome_produto, preco, estoque, id_loja)
VALUES ('Quasar Brave', 80.00, 5, 1),
       ('Malbec Gold', 200.00, 8, 1),
       ('Calça Jeans', 120.00, 80, 2),
       ('Jaqueta de Couro', 300.00, 30, 2);

-- Inserir clientes
INSERT INTO Clientes (nome_cliente, email_cliente, telefone_cliente)
VALUES ('João Silva', 'joao@exemplo.com', '(11) 9999-1111'),
       ('Maria Souza', 'maria@exemplo.com', '(11) 8888-2222');

-- Inserir funcionários
INSERT INTO Funcionarios (nome_funcionario, cargo, salario, id_loja)
VALUES ('Carlos Lima', 'Vendedor', 2000.00, 1),
       ('Ana Ferreira', 'Gerente', 3500.00, 2);

-- Inserir vendas
INSERT INTO Vendas (id_produto, id_cliente, id_funcionario, quantidade, data_venda, total)
VALUES (1, 1, 1, 2, '2024-09-15', 100.00),
       (3, 2, 2, 1, '2024-09-15', 120.00);














