import mysql.connector

conexao = mysql.connector.connect(
  host='127.0.0.1',
  user='root',
  password='adminsql',
  database='mufest'
)
cursor = conexao.cursor()


