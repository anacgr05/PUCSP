import streamlit as st
import usuarioController
from usuario_modulo import Usuario  # Certifique-se de importar a classe Usuario corretamente
from evento_modulo import Evento  # Certifique-se de importar a classe Evento corretamente
from denuncia_modulo import Denuncia  # Importando a classe Denuncia
from avaliacao_modulo import Avaliacao  # Importando a classe Avaliacao
import eventoController
import denunciaController
import avaliacaoController
import mysql.connector

st.title("MU.Fest")

# Formulário para cadastro de usuário
with st.form(key="include_usuario"):
    input_name = st.text_input(label="Insira o seu nome:")
    input_email = st.text_input(label="Insira seu email:")
    input_password = st.text_input("Escolha uma senha:", type="password")
    input_button_cadastro = st.form_submit_button("Cadastrar Usuário")

if input_button_cadastro:
    novo_usuario = Usuario(input_name, input_email, input_password)
    usuario_id = usuarioController.incluir(novo_usuario)
    st.session_state.usuarioID = usuario_id
    st.session_state.usuario_cadastrado = True

# Formulário para cadastro de evento
if 'usuarioID' in st.session_state:  # Verifica se o usuário está cadastrado
    with st.form(key="include_event"):
        evento_nome = st.text_input(label="Insira o nome do evento:")
        evento_data = st.date_input(label="Insira a data do evento:")
        evento_local = st.text_input("Insira o local:")
        evento_tipo = st.selectbox(label="Insira o tipo do evento:", options=['FESTA', 'FESTA UNIVERSITÁRIA', 'TEATRO', 'COMÉDIA', 'MUSEU', 'EXPOSIÇÃO', 'SHOW'])
        evento_descricao = st.text_area(label="Insira a descrição do evento:")
        input_button_cadastro_evento = st.form_submit_button("Cadastrar Evento")

    if input_button_cadastro_evento:
        novo_evento = Evento(0, st.session_state.usuarioID, evento_nome, evento_data, evento_local, evento_tipo, evento_descricao)
        eventoController.incluir_evento(novo_evento)
        st.session_state.evento_cadastrado = True

# Adicionando uma seção para filtrar e visualizar eventos
st.header("Filtrar e Visualizar Eventos")
filtro_data = st.date_input("Filtrar por data:")
filtro_tipo = st.selectbox("Filtrar por tipo de evento:", ['TODOS'] + ['FESTA', 'FESTA UNIVERSITÁRIA', 'TEATRO', 'COMÉDIA', 'MUSEU', 'EXPOSIÇÃO', 'SHOW'])

if st.button('Filtrar Eventos'):
    if filtro_tipo == 'TODOS':
        eventos_filtrados = eventoController.buscar_eventos(filtro_data, None)
    else:
        eventos_filtrados = eventoController.buscar_eventos(filtro_data, filtro_tipo)
    
    if eventos_filtrados:
        for evento in eventos_filtrados:
            st.write(f"ID: {evento.eventoID}, Nome: {evento.nomeevento}, Tipo: {evento.tipoevento}, Data: {evento.dataevento}, Local: {evento.localevento}, Descrição: {evento.descricaoevento}")
    else:
        st.write("Nenhum evento encontrado para os filtros selecionados.")
# Formulário para denúncia
if 'usuarioID' in st.session_state:  # Verifica se o usuário está cadastrado
    st.header("Registrar Denúncia")
    with st.form(key="include_denuncia"):
        denuncia_evento_id = st.text_input(label="Insira o ID do evento:")
        denuncia_descricao = st.text_area(label="Descreva a denúncia:")
        input_button_cadastro_denuncia = st.form_submit_button("Registrar Denúncia")

    if input_button_cadastro_denuncia:
        nova_denuncia = Denuncia(0, st.session_state.usuarioID, denuncia_evento_id, denuncia_descricao)
        denunciaController.incluir_denuncia(nova_denuncia)
        st.session_state.denuncia_cadastrada = True

# Formulário para avaliação
if 'usuarioID' in st.session_state:  # Verifica se o usuário está cadastrado
    st.header("Registrar Avaliação")
    with st.form(key="include_avaliacao"):
        avaliacao_evento_id = st.text_input(label="Insira o ID do evento:")
        avaliacao_nota = st.slider("Nota do evento", 1, 10)
        input_button_cadastro_avaliacao = st.form_submit_button("Registrar Avaliação")

    if input_button_cadastro_avaliacao:
        nova_avaliacao = Avaliacao(0, st.session_state.usuarioID, avaliacao_evento_id, avaliacao_nota)
        avaliacaoController.incluir_avaliacao(nova_avaliacao)
        st.session_state.avaliacao_cadastrada = True
