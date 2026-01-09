select b.nama as proyek, c.nama as sales, a.nama, a.tanggal_leads
from customer a 
inner join proyek b on a.id_proyek=b.id 
inner join agen c on a.id_agen=c.id 
where year(a.tanggal_leads)=2025




select b.nama as proyek, c.nama as sales, a.nama, a.tanggal_booking, a.is_batal, a.harga_unit, a.plafon_kpr
from customer a 
inner join proyek b on a.id_proyek=b.id 
inner join agen c on a.id_agen=c.id 
where year(a.tanggal_booking)=2025




select b.nama as proyek, c.nama as sales, a.nama, a.jadwal_akad, a.harga_unit, a.plafon_kpr, e.pencairan, e.sisa, f.metode_pembayaran, h.nama_bank
from customer a 
inner join proyek b on a.id_proyek=b.id 
inner join agen c on a.id_agen=c.id 
inner join view_customer_status_now2 d on d.id=a.id 
inner join view_progres_fisik4_all_semua e on  e.id_customer=a.id 
inner join metode_pembayaran f on a.id_metode_pembayaran=f.id 
inner join bank g on a.id_bank=g.id 
inner join bank_induk h on h.id=g.id_bank_induk
where year(a.jadwal_akad)=2025
and a.is_batal=0