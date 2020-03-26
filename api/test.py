# importing module
import cx_Oracle
import config

connection = None

try:

#    dsnStr = cx_Oracle.makedsn("cci-db-p03.stanford.edu", "1521", "stride")

    dsnStr = cx_Oracle.makedsn(
        "cci-db-p03.stanford.edu",
        1521,
        "stride")

    connection = cx_Oracle.connect(
        config.username,
        config.password,
        dsnStr,
        encoding=config.encoding)

    # show the version of the Oracle Database
    print(connection.version)


    cursor = connection.cursor()
    sql = "select * from TRIS_RIM.RC_SUBJECT_IN_STUDY where SUBJECT_ID in (7042,7059)"

    cursor.execute(sql)
    while True:
        row = cursor.fetchone()
        if row is None:
            break
        print(row)



except cx_Oracle.Error as error:
    print(error)

finally:
    # release the connection
    if connection:
        connection.close()

