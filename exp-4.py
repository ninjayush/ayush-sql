import mysql.connector as ps
con=ps.connect(host='localhost', user='root', password='1234')
cur=con.cursor()
cur.execute('use superchaina')
cur.execute('select * from student;')
x=cur.fetchall()
for i in x: print(i)

