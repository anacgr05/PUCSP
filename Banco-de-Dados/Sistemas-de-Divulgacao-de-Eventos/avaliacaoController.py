import database as db
from avaliacao_modulo import Avaliacao

def incluir_avaliacao(avaliacao):
    count = db.cursor.execute("""
    INSERT INTO avaliacao (usuarioID, eventoID, nota)
    VALUES (%s, %s, %s)""",
    (avaliacao.usuarioID, avaliacao.eventoID, avaliacao.nota))

    db.conexao.commit()
