CREATE SEQUENCE public.cliente_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

CREATE SEQUENCE public.produto_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

CREATE SEQUENCE public.pedido_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
	
CREATE SEQUENCE public.item_pedido_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;
	
CREATE SEQUENCE public.usuario_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

CREATE TABLE cliente (
    ID Integer NOT NULL DEFAULT nextval('cliente_seq'::regclass),
    NOME VARCHAR(100),
    CPF VARCHAR(11),
    CONSTRAINT cliente_pk PRIMARY KEY (id)
);

CREATE TABLE produto (
    ID Integer NOT NULL DEFAULT nextval('produto_seq'::regclass),
    DESCRICAO VARCHAR(100),
    PRECO_UNITARIO NUMERIC(20,2),
    CONSTRAINT produto_pk PRIMARY KEY (id)
);

CREATE TABLE pedido (
    ID Integer NOT NULL DEFAULT nextval('pedido_seq'::regclass),
    CLIENTE_ID INTEGER REFERENCES CLIENTE (ID),
    DATA_PEDIDO DATE,
    STATUS VARCHAR(20),
    TOTAL NUMERIC(20,2),
    CONSTRAINT pedido_pk PRIMARY KEY (id)
);

CREATE TABLE item_pedido (
    ID Integer NOT NULL DEFAULT nextval('item_pedido_seq'::regclass),
    PEDIDO_ID INTEGER REFERENCES PEDIDO (ID),
    PRODUTO_ID INTEGER REFERENCES PRODUTO (ID),
    QUANTIDADE INTEGER,
    CONSTRAINT item_pedido_pk PRIMARY KEY (id)
);

CREATE TABLE usuario(
    ID Integer NOT NULL DEFAULT nextval('usuario_seq'::regclass),
    LOGIN VARCHAR(50) NOT NULL,
    SENHA VARCHAR(255) NOT NULL,
    ADMIN BOOL DEFAULT false,
    CONSTRAINT usuario_pk PRIMARY KEY (id)
);




