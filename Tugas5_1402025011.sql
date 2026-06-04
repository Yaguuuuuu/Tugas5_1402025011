CREATE TABLE users(
    id_user INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(50) NOT NULL,
    role VARCHAR(10) NOT NULL
);

CREATE TABLE buku (
    id INT AUTO_INCREMENT PRIMARY KEY,
    judul VARCHAR(150) NOT NULL,
    pengarang VARCHAR(100) NOT NULL,
    penerbit VARCHAR(100) NOT NULL,
    tahun_terbit INT NOT NULL,
    kategori VARCHAR(100) NOT NULL,
    jumlah INT NOT NULL
);

CREATE TABLE peminjaman(
    id_pinjam INT AUTO_INCREMENT PRIMARY KEY,
    id_user INT,
    id_buku INT,
    tanggal_pinjam DATE,
    jumlah INT,
    FOREIGN KEY(id_user)
        REFERENCES users(id_user),

    FOREIGN KEY(id_buku)
        REFERENCES buku(id)
);

INSERT INTO buku
(judul, pengarang, penerbit, tahun_terbit, kategori, jumlah)
VALUES
('Laskar Pelangi',
 'Andrea Hirata',
 'Bentang Pustaka',
 2005,
 'Fiksi',
 10),

('Demon Slayer',
 'Koyoharu Gotouge',
 'Shueisha',
 2016,
 'Komik',
 12),

('Sejarah Indonesia Modern',
 'M.C. Ricklefs',
 'Gadjah Mada Univ',
 2001,
 'Sejarah',
 7),

('VALORANT: Official Guide',
 'Aditya Wijaya Putra',
 'Riot Games',
 2020,
 'Game',
 9),

('Pengantar Teknik Informatika',
 'Rosa A. & Shalahuddin',
 'Andi Publisher',
 2018,
 'Teknologi/Informatika',
 6);

SELECT * FROM buku;
SELECT * FROM users;
SELECT * FROM peminjaman;
INSERT INTO users(username,password,role)
VALUES
('admin','admin123','admin');

ALTER TABLE peminjaman 
CHANGE id_buku judul VARCHAR(255);

DROP TABLE buku;

DROP TABLE peminjaman;




