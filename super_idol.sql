CREATE TABLE cliente(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nome TEXT,
  cpf TEXT,
  endereco TEXT,
  data_nascimento DATE,
  email TEXT
  numero_telefone VARCHAR(20),
  genero TEXT
  );

-----------------------------------------------------------------------------------------------------


CREATE TABLE entrega(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	cod_rasterio TEXT, 
  	cod_produto TEXT NOT NULL,
  	nome_produto TEXT,
  	quantidade_produto INTEGER,
  	endereco_cliente TEXT,
  	data_envio DATE,
  	data_entrega DATE,
  	status_entrega TEXT,
  	numero_telefone VARCHAR (20),
  	metodo_entrega TEXT,
  	nome_transportadora	TEXT,
  	custo_entrega REAL (3,1),
    FOREIGN KEY(cod_produto) REFERENCES produto(cod_produto),
    FOREIGN KEY(nome_produto) REFERENCES produto(nome_produto),
    FOREIGN KEY(quantidade_produto) REFERENCES produto(estoque),
    FOREIGN KEY(endereco_cliente) REFERENCES cliente(endereco),
  	FOREIGN KEY(numero_telefone) REFERENCES cliente(numero_telefone)
);


-----------------------------------------------------------------------------------------------------


CREATE TABLE fornecedor(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
	cnpj TEXT UNIQUE,
  	nome_empresa TEXT,
  	razao_social TEXT,
  	email TEXT,
  	numero_telefone INTEGER,
  	endereco_empresa TEXT
  );


-----------------------------------------------------------------------------------------------------


CREATE TABLE produto(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nome_produto TEXT,
  cod_produto TEXT UNIQUE,
  descricao TEXT,
  preco REAL(3,1),
  estoque INTEGER,
  categoria	TEXT,
  fabricante TEXT
 );
