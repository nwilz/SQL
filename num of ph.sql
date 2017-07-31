--This query updates a field with the number of phones they have on the record

update uta16.prospect_base pb
set rpt_fld =  (select num_phones from (select id_number, phone+cell+other_phone+bus_phone as num_phones 
					from (select pb.id_Number, segment_group,
							case when (pb.phone is not null or pb.phone not like '%0000000') then 1 else 0 end as phone,
							case when pb.fax_number is not null then 1 else 0 end as cell,
							case when pb.other_phone is not null then 1 else 0 end as other_phone,
							case when pe.phone is not null then 1 else 0 end as bus_phone
from uta16.prospect_base pb, uta16.prospect_employer pe
--prospect_base is where all phone except the employer are stored, prospect_employer is where the employer phone is stored
where pb.id_Number = pe.id_number))
where pb.id_number = id_number)
