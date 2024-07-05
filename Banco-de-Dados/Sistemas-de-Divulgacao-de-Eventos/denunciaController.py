import database as db
from denuncia_modulo import Denuncia

def incluir_denuncia(denuncia):
    count = db.cursor.execute("""
    INSERT INTO denuncia (usuarioID, eventoID, descricao)
    VALUES (%s, %s, %s)""",
    (denuncia.usuarioID, denuncia.eventoID, denuncia.descricao))

    db.conexao.commit()
