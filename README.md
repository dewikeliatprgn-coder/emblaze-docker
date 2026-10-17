# EMBLAZE (Dockerized)

## 1. Project Overview
EMBLAZE adalah aplikasi web toko online dengan fitur login/register,
daftar produk, keranjang (cart), order, pembayaran, dan profil pengguna.

**Fitur inti untuk verifikasi:** register, login, dan melihat daftar produk.

**Tech stack:** PHP 8.1 + Apache (frontend), Node.js 20 + Express (backend API),
MySQL 8 (database).

| Service  | Container port | Host port | Fungsi              |
|----------|----------------|-----------|---------------------|
| frontend | 80             | 8080      | Halaman web PHP     |
| backend  | 3000           | 3000      | REST API (Node.js)  |
| db       | 3306           | -         | MySQL (internal)    |

## 2. Prerequisites
- Docker Desktop (running)
- - Docker version tested: `Docker version 28.5.1, build e180ab8`
- Docker Compose version tested: `Docker Compose version v2.40.2-desktop.1`
- Git
- Port **8080** dan **3000** harus kosong di komputer kamu

## 3. Clone Repository
```bash
git clone https://github.com/dewikeliatprgn-coder/emblaze-docker.git
cd emblaze-docker
git checkout chore/dockerize-project
```

## 4. Konfigurasi Environment
Salin file contoh, lalu isi password sendiri:
```bash
copy .env.example .env
```
(Mac/Linux: `cp .env.example .env`)

Buka `.env` dan ganti `change_me` dengan password pilihanmu. Jangan dikosongkan.

| Variable      | Fungsi                         | Contoh        |
|---------------|--------------------------------|---------------|
| DB_HOST       | Nama service database          | db            |
| DB_PORT       | Port MySQL                     | 3306          |
| DB_USER       | User database                  | root          |
| DB_PASSWORD   | Password database              | (isi sendiri) |
| DB_NAME       | Nama database                  | db_webdev     |
| PORT          | Port backend                   | 3000          |

## 5. Build dan Jalankan
```bash
docker compose up --build -d
```
Build pertama butuh beberapa menit. Tabel database dibuat otomatis oleh backend.

## 6. Akses Aplikasi
- Aplikasi web: http://localhost:8080/login.php
- Backend API: http://localhost:3000

## 7. Cara Verifikasi
1. `docker compose ps` -> `db` (healthy), `backend` dan `frontend` (running).
2. `docker compose logs backend` -> muncul
   `Database db_webdev Successfully connected!` dan `All 3NF Tables are ready!`.
3. Buka http://localhost:8080/login.php, daftar akun baru, login,
   lalu buka halaman produk. Halaman produk tampil = berhasil.

## 8. Melihat Log dan Status
```bash
docker compose ps
docker compose logs
docker compose logs -f backend
```

## 9. Stop dan Cleanup
Stop dan hapus container (data database tetap tersimpan):
```bash
docker compose down
```
Stop sekaligus hapus data database:
```bash
docker compose down -v
```

## 10. Troubleshooting
| Gejala | Penyebab | Solusi |
|--------|----------|--------|
| Warning `variable is not set` | File `.env` belum dibuat | `copy .env.example .env`, isi password |
| Error `ports are not available ... 3000` | Port 3000 dipakai program lain (mis. `node server.js` lokal) | `netstat -ano \| findstr :3000`, lalu `taskkill /PID <PID> /F`, jalankan `docker compose up -d` |
| Port 8080 dipakai | Program lain memakai 8080 | Ubah `"8080:80"` di `compose.yaml` jadi port lain |
| Login gagal / tidak ada respon | Backend belum jalan atau frontend masih memanggil IP lama | Cek `docker compose ps` dan `docker compose logs backend` |
| Backend gagal konek DB | MySQL belum siap | Tunggu `db` healthy, lalu `docker compose restart backend` |

## 11. Known Limitations
- Data database tersimpan di Docker volume `db-data`, hilang jika memakai `down -v`.
- Password di `.env` hanya untuk pengembangan lokal.

## 12. Tim
| Nama | Student ID | Kontribusi |
|------|------------|------------|
| [Nama] | [ID] | [mis. Dockerfile dan compose] |
| [Nama] | [ID] | [mis. README dan testing] |
| [Nama] | [ID] | [mis. laporan dan video] |
