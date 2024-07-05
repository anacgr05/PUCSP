import database as db
from evento_modulo import Evento

def incluir_evento(evento):
    count = db.cursor.execute("""
    INSERT INTO evento (usuarioID, nomeevento, dataevento, localevento, tipoevento, descricaoevento)
    VALUES (%s, %s, %s, %s, %s, %s)""",
    (evento.usuarioID, evento.nomeevento, evento.dataevento, evento.localevento, evento.tipoevento, evento.descricaoevento))

    db.conexao.commit()

def buscar_eventos(data_evento, tipo_evento=None):
    """
    Busca eventos no banco de dados com base na data e, opcionalmente, no tipo.
    
    :param data_evento: A data para filtrar eventos.
    :param tipo_evento: O tipo de evento para filtrar, se fornecido; se não, busca todos os tipos.
    :return: Uma lista de objetos Evento com os dados dos eventos encontrados.
    """
    if tipo_evento:
        query = "SELECT eventoID, usuarioID, nomeevento, dataevento, localevento, tipoevento, descricaoevento FROM evento WHERE dataevento = %s AND tipoevento = %s"
        db.cursor.execute(query, (data_evento, tipo_evento))
    else:
        query = "SELECT eventoID, usuarioID, nomeevento, dataevento, localevento, tipoevento, descricaoevento FROM evento WHERE dataevento = %s"
        db.cursor.execute(query, (data_evento,))

    resultados = db.cursor.fetchall()
    lista_eventos = []
    for resultado in resultados:
        # Garantir que cada 'resultado' tenha exatamente 7 elementos
        if len(resultado) == 7:
            novo_evento = Evento(resultado[0], resultado[1], resultado[2], resultado[3], resultado[4], resultado[5], resultado[6])
            lista_eventos.append(novo_evento)
        else:
            print("Erro: resultado incompleto recebido do banco de dados.")

    return lista_eventos
