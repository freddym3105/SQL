select x.nama as proyek,
(select count(a.id) from customer a where a.id_proyek=x.id and a.tanggal_leads >= '2025-01-01' and a.tanggal_leads <= '2025-03-31') as tw1_leads,
(select count(a.id) from customer a where a.id_proyek=x.id and a.tanggal_leads >= '2025-04-01' and a.tanggal_leads <= '2025-06-30') as tw2_leads,
(select count(a.id) from customer a where a.id_proyek=x.id and a.tanggal_leads >= '2025-07-01' and a.tanggal_leads <= '2025-09-30') as tw3_leads,
(select count(a.id) from customer a where a.id_proyek=x.id and a.tanggal_leads >= '2025-10-01' and a.tanggal_leads <= '2025-12-31') as tw4_leads,

(select count(a.id) from customer a where a.id_proyek=x.id and a.sudah_visit >= '2025-01-01' and a.sudah_visit <= '2025-03-31') as tw1_visit,
(select count(a.id) from customer a where a.id_proyek=x.id and a.sudah_visit >= '2025-04-01' and a.sudah_visit <= '2025-06-30') as tw2_visit,
(select count(a.id) from customer a where a.id_proyek=x.id and a.sudah_visit >= '2025-07-01' and a.sudah_visit <= '2025-09-30') as tw3_visit,
(select count(a.id) from customer a where a.id_proyek=x.id and a.sudah_visit >= '2025-10-01' and a.sudah_visit <= '2025-12-31') as tw4_visit,

(select count(a.id) from customer a where a.id_proyek=x.id and a.tanggal_booking >= '2025-01-01' and a.tanggal_booking <= '2025-03-31') as tw1_booking,
(select count(a.id) from customer a where a.id_proyek=x.id and a.tanggal_booking >= '2025-04-01' and a.tanggal_booking <= '2025-06-30') as tw2_booking,
(select count(a.id) from customer a where a.id_proyek=x.id and a.tanggal_booking >= '2025-07-01' and a.tanggal_booking <= '2025-09-30') as tw3_booking,
(select count(a.id) from customer a where a.id_proyek=x.id and a.tanggal_booking >= '2025-10-01' and a.tanggal_booking <= '2025-12-31') as tw4_booking,

(select count(a.id) from customer a where a.id_proyek=x.id and a.jadwal_akad >= '2025-01-01' and a.jadwal_akad <= '2025-03-31') as tw1_akad,
(select count(a.id) from customer a where a.id_proyek=x.id and a.jadwal_akad >= '2025-04-01' and a.jadwal_akad <= '2025-06-30') as tw2_akad,
(select count(a.id) from customer a where a.id_proyek=x.id and a.jadwal_akad >= '2025-07-01' and a.jadwal_akad <= '2025-09-30') as tw3_akad,
(select count(a.id) from customer a where a.id_proyek=x.id and a.jadwal_akad >= '2025-10-01' and a.jadwal_akad <= '2025-12-31') as tw4_akad

from proyek x 