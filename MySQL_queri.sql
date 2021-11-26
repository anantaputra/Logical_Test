SELECT tb_mahasiswa.`mhs_nama`, tb_matakuliah.`mk_kode`, tb_mahasiswa_nilai.`nilai` FROM tb_mahasiswa JOIN
tb_mahasiswa_nilai ON tb_mahasiswa.`mhs_id` = tb_mahasiswa_nilai.`mhs_id` 
JOIN tb_matakuliah ON tb_mahasiswa_nilai.`mk_id` = tb_matakuliah.`mk_id` WHERE tb_matakuliah.`mk_kode` = 'MK303' 
ORDER BY tb_mahasiswa_nilai.`nilai` DESC LIMIT 1