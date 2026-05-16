CREATE DATABASE db_tokokue;
USE db_tokokue;

--Nabila buat admin
CREATE TABLE admin (
    id_admin     INT NOT NULL AUTO_INCREMENT,
    nama_admin   VARCHAR(100) NOT NULL,
    username     VARCHAR(50) NOT NULL UNIQUE,
    password     VARCHAR(255) NOT NULL,
    role         ENUM('pemilik','admin') NOT NULL DEFAULT 'admin',
    status_aktif TINYINT(1) NOT NULL DEFAULT 1,
    PRIMARY KEY (id_admin)
);


-- Nabila buat supplier
CREATE TABLE kategori (
    id_kategori   INT NOT NULL AUTO_INCREMENT,
    nama_kategori VARCHAR(100) NOT NULL,
    deskripsi     TEXT,
    status_aktif  TINYINT(1) NOT NULL DEFAULT 1,
    created_at    DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id_kategori)
);

