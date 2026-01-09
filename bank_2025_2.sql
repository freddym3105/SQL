select a.nama as proyek, z.nama_bank, count(x.id) as qty, sum(x.harga_unit) total
from proyek a 
inner join customer x on a.id=x.id_proyek 
left join bank y on x.id_bank=y.id 
left join bank_induk z on y.id_bank_induk=z.id 
where YEAR(x.jadwal_akad)=2025 
and x.is_batal=0 
and x.id_metode_pembayaran in (1,2,3,4)
group by a.nama, z.nama_bank