/*
 Navicat Premium Data Transfer

 Source Server         : nurfaisal
 Source Server Type    : MySQL
 Source Server Version : 100420
 Source Host           : localhost:3306
 Source Schema         : perpustakaan

 Target Server Type    : MySQL
 Target Server Version : 100420
 File Encoding         : 65001

 Date: 18/07/2022 20:36:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_buku
-- ----------------------------
DROP TABLE IF EXISTS `tb_buku`;
CREATE TABLE `tb_buku`  (
  `kode_buku` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `judul_buku` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal_terbit` date NOT NULL,
  `pengarang` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`kode_buku`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_buku
-- ----------------------------
INSERT INTO `tb_buku` VALUES ('001', 'Kualitas I', '2016-01-09', 'aslam singetrol');
INSERT INTO `tb_buku` VALUES ('002', 'Kualitas III', '2016-01-02', 'gilang noob');
INSERT INTO `tb_buku` VALUES ('003', 'Kualitas II', '2019-01-02', 'Babang');
INSERT INTO `tb_buku` VALUES ('004', 'Kualitas II', '2009-10-10', 'Bung Kaarno');

-- ----------------------------
-- Table structure for tb_mahasiswa
-- ----------------------------
DROP TABLE IF EXISTS `tb_mahasiswa`;
CREATE TABLE `tb_mahasiswa`  (
  `no_nim` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tempat_lahir` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jurusan` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal_masuk` date NOT NULL,
  PRIMARY KEY (`no_nim`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_mahasiswa
-- ----------------------------
INSERT INTO `tb_mahasiswa` VALUES ('202102333', 'Lance', 'Bengkayang', '2000-09-09', 'Sistem Informasi', '2020-09-10');
INSERT INTO `tb_mahasiswa` VALUES ('202102340', 'Nur Faisal', 'Sambas', '2000-10-10', 'Teknik Informatika', '2019-09-10');

-- ----------------------------
-- Table structure for tb_peminjaman
-- ----------------------------
DROP TABLE IF EXISTS `tb_peminjaman`;
CREATE TABLE `tb_peminjaman`  (
  `no_nim` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jurusan` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kode_buku` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `judul_buku` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal_terbit` date NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  PRIMARY KEY (`no_nim`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_peminjaman
-- ----------------------------
INSERT INTO `tb_peminjaman` VALUES ('20210102323', 'amad', 'Teknik Informatika', '003', 'Matahari Meledak', '2022-10-10', '2022-06-30');
INSERT INTO `tb_peminjaman` VALUES ('20211010101', 'intan', 'Sistem Informasi', '002', 'Datang Bulan', '2019-08-09', '2022-07-18');
INSERT INTO `tb_peminjaman` VALUES ('20212340', 'Nur Faisal', 'Teknik Informatika', '005', 'Ayam Jago', '2000-10-11', '2022-06-29');

SET FOREIGN_KEY_CHECKS = 1;
