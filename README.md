#Form Surat Keterangan Mahasiswa
Form ini dapat digunakan untuk membuat form surat keterangan bahwa 
mahasiswa tersebut merupakan yang aktif di tempat kuliahnya.

#Urutan Pengisian Form
1. NRP Mahasiswa
2. Tempat Lahir Mahasiswa
3. Tanggal Lahir Mahasiswa
4. Nomor Handphone Mahasiswa
5. Alamat Mahasiswa
6. Email Mahasiswa
6. Nama Orang Tua / Wali Mahasiswa
7. Pekerjaan Orang Tua / Wali Mahasiswa
8. Alamat Orang Tua / Wali Mahasiswa
9. Nomor Handphone Orang Tua / Wali Mahasiswa
10. Masa Studi Mahasiswa
11. Status Mahasiswa
12. Tahap Mahasiswa
13. Keperluan Mahasiswa

#Formulir yang digunakan
- [form.doc](https://github.com/ariefputranto/tost/blob/master/doc/form.doc?raw=true) : merupakan form dimana mahasiswa mengisikan data dirinya dan keperluannya.
- [letter.odt](https://github.com/ariefputranto/tost/blob/master/doc/letter.docx?raw=true) : merupakan surat yang dibuat oleh pegawai TU setelah mahasiswa mengajukan form permintaan surat keterangan mahasiswa.

#Cara Penggunaan
1. Install OpenDataKit Aggregate (ikuti sesuai dengan petunjuk installasi
pada [Opendatakit Aggregate](https://opendatakit.org/use/aggregate/)).
2. Install Opendatakit Collect pada perangkat android anda (bisa didownload melalui playstore atau bisa didownload melalui website [Opendatakit Collect](https://opendatakit.org/use/collect/).
3. Jalankan [tableMHS.sql](), [form_mhs.sql]() serta [TRIGGER_update_mhs]() pada MYSQL Server anda.
3. Setelah menginstall kedua tools diatas serta menjalankan query MYSQL tersebut. sekarang download form surat keterangan mahasiswa pada link berikut ini [wth is the link???](https://opendatakit.org/use/collect/).
4. Kemudian upload form tersebut pada ODK Aggregate.
5. Setelah itu atur hak akses dari setiap user pada Site Admin --> Permissions.
6. Kemudian buka ODK Collect pada android anda seperti tampilan berikut ini
![Screenshot ODK Collect](https://github.com/ariefputranto/tost/blob/master/form/Screenshot/Screenshot_2016-03-21-15-42-00.png?raw=true)
7. Setelah mengisi pada ODK Collect, tekan Send Finalized Form seperti berikut ini ![Screenshot to finalize form](https://github.com/ariefputranto/tost/blob/master/form/Screenshot/Screenshot_2016-03-21-15-45-45.png?raw=true).
8. Maka saat kita buka ODK Aggregate pada server, data yang telah difinalisasi pada ODK Collect akan tersimpan disana, seperti gambar berikut ini ![Screenshot ODK Aggregate](https://github.com/ariefputranto/tost/blob/master/form/Screenshot/Screenshot%20-%20210316%20-%2015_52_11.png?raw=true).
9. Kemudian buka [letter.odt](https://github.com/ariefputranto/tost/blob/master/doc/letter.docx?raw=true) lalu klik Tools --> Mail Merge Wizard.
10. Lalu masukkan Username dan password pada database anda.
11. Kemudian klik next sebanyak 5 kali lalu klik tombol save starting document.
12. Kemudian tekan Finish maka akan muncul tampilan seperti berikut ini 
![Screenshot hasil](Screenshot - 110416 - 15:58:47.png)
13. Apabila setelah mencetak dan ingin menghapusnya hapus saja melalui ODK Aggregate pada server seperti ini ![Screenshot ODK Aggregate](https://github.com/ariefputranto/tost/blob/master/form/Screenshot/Screenshot%20-%20210316%20-%2015_52_11.png?raw=true).
14. Apabila ingin melihat informasi mahasiswa yang pernah mengajukan surat permohonan bisa dilihat melalui [formMhs.php]() berikut ini tampilan dari formMhs.php ![Screenshot formMhs.php](Screenshot - 110416 - 16:02:30.png)

#Catatan
- Dalam menggunakan formMhs.php diharapkan membuka file tersebut dan mengganti "localhost","root","123" dengan server yang akan digunakan, user dari database tersebut dan passwordnya.
- Dalam menggunakan TRIGGER_update_mhs dan form_mhs.sql,  diharapkan mengganti `BUILD_FORMULIR_SURAT_KETERANGAN_MAHASISWA_1460283183_CORE`dengan tabel yang akan dibuat oleh ODK Aggregate pada server anda. Untuk melihatnya buka database MYSQL anda lalu cari yang terdapat BUILD_FORMULIR_SURAT_KETERANGAN_MAHASISWA biasanya yang berbeda hanyalah angka dibelakangnya itu.

#Developer :
Arief Putranto (5213100124)