select a.nama as proyek, b.nama, b.tanggal_leads, b.sudah_visit as tanggal_visit, b.tanggal_booking, b.jadwal_akad as tanggal_akad, c.nama as sales
from proyek a 
left join customer b on a.id=b.id_proyek
left join agen c on b.id_agen=c.id 