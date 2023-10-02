import mysql.connector as ps
con=ps.connect(host='localhost', user='root', password='1234')
cur=con.cursor()
cur.execute('use superchaina')
cur.execute('delete from student where stname="Abc";')
con.commit()
print("student named Abc deleted")

