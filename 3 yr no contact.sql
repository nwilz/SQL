select interface_id_number from unf17.prospect_base
where id_number in(select id_number from unf17.prospect_contact 
	where last_result in('Unsp Pldg','Spec Pldg','No Pledge'))
and interface_id_number in(
	select interface_id_number from unf16.prospect_base
	where id_number in(select id_number from unf16.prospect_contact 
		where last_result in('Unsp Pldg','Spec Pldg','No Pledge')))
and interface_id_number in(
	select interface_id_number from unf15.prospect_base
	where id_number in(select id_number from unf15.prospect_contact 
		where last_result in('Unsp Pldg','Spec Pldg','No Pledge')))
