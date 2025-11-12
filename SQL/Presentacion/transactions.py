try:
    # Iniciamos la transacción
    con.execute("BEGIN TRANSACTION;")
    
    # Actualizamos la nota de Ana
    cursor.execute("""
    UPDATE alumnosChecked
    SET nota = 9.0
    WHERE nombre = 'Ana'
    """)
    
    # Insertamos un nuevo alumno con nota válida
    cursor.execute("""
    INSERT INTO alumnosChecked (nombre, apellidos, nota)
    VALUES (?, ?, ?)
    """, ('Pedro', 'Martínez', 7.5))
    
    # Intentamos insertar un alumno con nota inválida (esto provocará error)
    cursor.execute("""
    INSERT INTO alumnosChecked (nombre, apellidos, nota)
    VALUES (?, ?, ?)
    """, ('Lucía', 'García', 12))  # nota > 10, viola CHECK
    
    # Si todo va bien, confirmamos
    con.commit()
except sqlite3.IntegrityError as e:
    # Si hay error, deshacemos toda la transacción
    print("Error detectado, deshaciendo cambios:", e)
    con.rollback()
