USE videowall;

INSERT INTO contrato (Inicio, Fim, ValorTotal, MetodoPagamento) VALUES 
('2024-01-01', '2024-02-01', 1000.00, 'Cartão'),
('2024-02-01', '2024-03-01', 1500.00, 'Boleto'),
('2024-03-01', '2024-04-01', 1200.00, 'Transferência'),
('2024-04-01', '2024-05-01', 900.00, 'Dinheiro'),
('2024-05-01', '2024-06-01', 1100.00, 'Cartão'),
('2024-06-01', '2024-07-01', 1300.00, 'Boleto'),
('2024-07-01', '2024-08-01', 1400.00, 'Transferência'),
('2024-08-01', '2024-09-01', 1600.00, 'Dinheiro'),
('2024-09-01', '2024-10-01', 1050.00, 'Cartão'),
('2024-10-01', '2024-11-01', 1250.00, 'Boleto');

INSERT INTO cliente (Nome, Endereco, idContrato) VALUES
('Cliente 1', 'Endereço 1', 1),
('Cliente 2', 'Endereço 2', 2),
('Cliente 3', 'Endereço 3', 3),
('Cliente 4', 'Endereço 4', 4),
('Cliente 5', 'Endereço 5', 5),
('Cliente 6', 'Endereço 6', 6),
('Cliente 7', 'Endereço 7', 7),
('Cliente 8', 'Endereço 8', 8),
('Cliente 9', 'Endereço 9', 9),
('Cliente 10', 'Endereço 10', 10);

INSERT INTO videowall (Localização, Tela, Capacidade, idCliente) VALUES
('Localização 1', 'Tela 1', 10, 1),
('Localização 2', 'Tela 2', 12, 2),
('Localização 3', 'Tela 3', 8, 3),
('Localização 4', 'Tela 4', 15, 4),
('Localização 5', 'Tela 5', 20, 5),
('Localização 6', 'Tela 6', 10, 6),
('Localização 7', 'Tela 7', 12, 7),
('Localização 8', 'Tela 8', 8, 8),
('Localização 9', 'Tela 9', 15, 9),
('Localização 10', 'Tela 10', 20, 10);

INSERT INTO empresapatrocinadora (Nome, Ramo, idContrato) VALUES
('Empresa 1', 'Ramo 1', 1),
('Empresa 2', 'Ramo 2', 2),
('Empresa 3', 'Ramo 3', 3),
('Empresa 4', 'Ramo 4', 4),
('Empresa 5', 'Ramo 5', 5),
('Empresa 6', 'Ramo 6', 6),
('Empresa 7', 'Ramo 7', 7),
('Empresa 8', 'Ramo 8', 8),
('Empresa 9', 'Ramo 9', 9),
('Empresa 10', 'Ramo 10', 10);

INSERT INTO cadastrador_usuario (Nome, Funçao, idCliente) VALUES
('Usuário 1', 'Função 1', 1),
('Usuário 2', 'Função 2', 2),
('Usuário 3', 'Função 3', 3),
('Usuário 4', 'Função 4', 4),
('Usuário 5', 'Função 5', 5),
('Usuário 6', 'Função 6', 6),
('Usuário 7', 'Função 7', 7),
('Usuário 8', 'Função 8', 8),
('Usuário 9', 'Função 9', 9),
('Usuário 10', 'Função 10', 10);

INSERT INTO conteudo (Tipo, Data, inicio, fim, idUsuario, idEmpresaPatrocinadora, idVideoWall) VALUES
('Tipo 1', '2024-01-01', '09:00:00', '10:00:00', 1, 1, 1),
('Tipo 2', '2024-02-01', '10:00:00', '11:00:00', 2, 2, 2),
('Tipo 3', '2024-03-01', '11:00:00', '12:00:00', 3, 3, 3),
('Tipo 4', '2024-04-01', '12:00:00', '13:00:00', 4, 4, 4),
('Tipo 5', '2024-05-01', '13:00:00', '14:00:00', 5, 5, 5),
('Tipo 6', '2024-06-01', '14:00:00', '15:00:00', 6, 6, 6),
('Tipo 7', '2024-07-01', '15:00:00', '16:00:00', 7, 7, 7),
('Tipo 8', '2024-08-01', '16:00:00', '17:00:00', 8, 8, 8),
('Tipo 9', '2024-09-01', '17:00:00', '18:00:00', 9, 9, 9),
('Tipo 10', '2024-10-01', '18:00:00', '19:00:00', 10, 10, 10);


INSERT INTO curadoria (Responsável, Situação, idVideoWall, idConteudo) VALUES
('Responsável 1', 'Situação 1', 1, 1),
('Responsável 2', 'Situação 2', 2, 2),
('Responsável 3', 'Situação 3', 3, 3),
('Responsável 4', 'Situação 4', 4, 4),
('Responsável 5', 'Situação 5', 5, 5),
('Responsável 6', 'Situação 6', 6, 6),
('Responsável 7', 'Situação 7', 7, 7),
('Responsável 8', 'Situação 8', 8, 8),
('Responsável 9', 'Situação 9', 9, 9),
('Responsável 10', 'Situação 10', 10, 10);

SELECT * FROM contrato;
SELECT * FROM cliente;
SELECT * FROM videowall;
SELECT * FROM empresapatrocinadora;
SELECT * FROM cadastrador_usuario;
SELECT * FROM conteudo;
SELECT * FROM curadoria;
