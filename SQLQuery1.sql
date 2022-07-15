create database AcheMeuPet;

CREATE TABLE CadastroUsuario(
	id Int primary key identity not null,
    nomeCompleto Varchar(100) not null,
    email Varchar(20),
    telefone Varchar(12) not null,
    fotoPerfil Varchar(500),
    StatusCadastro bit not null
);
create table CadastroPet(
       numColeira numeric primary key identity not null,
       idUsuario int not null, 
       tipoPet varchar(100) not null,
       nome varchar(100) not null,
	   raca varchar(100) not null,
       informacoes varchar(200),
       imagem varchar,

	   CONSTRAINT FK_USUARIO_PETS FOREIGN KEY (idUsuario) REFERENCES CadastroUsuario(id)
)

create table Autenticacao(
    id int primary key identity not null,
	idUsuario int not null,
    senha varchar(20) not null,
   email varchar(30) not null
   CONSTRAINT FK_AUTENTICACAO_USUARIO FOREIGN KEY (idUsuario) REFERENCES CadastroUsuario(id)
)

create table PerdiMeuPet(
    id int primary key identity not null,
    informacoes varchar(200) not null,
	numColeiraCadastroPet numeric not null,
	endereco varchar(200) not null,
	StatusAchadoOuPerdido bit not null

	CONSTRAINT FK_PERDI_PET FOREIGN KEY ( numColeiraCadastroPet) REFERENCES CadastroPet(numColeira)
)

create table AcheiPet(
   id int primary key identity not null,
   telefone varchar(12) not null,
   tipoPet varchar(50) not null,
   nomePet varchar(50),
   informacoes varchar(200) not null,
   endereco varchar (100) not null,
   imagem varchar not null,
   coleira numeric 
)