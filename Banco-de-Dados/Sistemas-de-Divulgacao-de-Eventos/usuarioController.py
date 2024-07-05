import database as db
from usuario_modulo import Usuario

def incluir(usuario):
    count = db.cursor.execute("""
    INSERT INTO usuario (nome, email, senha)
    VALUES (%s, %s, %s)""",
    (usuario.nome, usuario.email, usuario.senha))

    db.conexao.commit()
    
    # Obtendo o ID do usuário recém-criado
    db.cursor.execute("SELECT LAST_INSERT_ID()")
    usuario_id = db.cursor.fetchone()[0]
    
    return usuario_id






    


