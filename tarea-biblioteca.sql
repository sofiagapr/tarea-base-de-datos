USE biblioteca;
CREATE TABLE autores (
    id INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(100) NOT NULL,
    pais VARCHAR(100)
);

CREATE TABLE libros (
    id INT PRIMARY KEY IDENTITY(1,1),
    titulo VARCHAR(200) NOT NULL,
    anio INT,
    autor_id INT,
    CONSTRAINT FK_libros_autores
        FOREIGN KEY (autor_id)
        REFERENCES autores(id)
);

INSERT INTO autores (nombre, pais)
VALUES
('Gabriel García Márquez', 'Colombia'),
('Julio Cortázar', 'Argentina'),
('Isabel Allende', 'Chile');

SELECT * FROM autores;

INSERT INTO libros (titulo, anio, autor_id)
VALUES
('Cien años de soledad', 1967, 1),
('El amor en los tiempos del cólera', 1985, 1),
('Rayuela', 1963, 2),
('La casa de los espíritus', 1982, 3),
('Paula', 1994, 3);

select * from libros;

SELECT *
FROM libros
WHERE anio > 2000
ORDER BY anio;

SELECT COUNT(*) AS cantidad_libros
FROM libros;

UPDATE libros
SET anio = 2003
WHERE titulo = 'Rayuela';


SELECT 
    libros.titulo,
    autores.nombre AS autor
FROM libros
INNER JOIN autores
    ON libros.autor_id = autores.id;



