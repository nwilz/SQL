update campus.desig_codes set active = 0
where group_display_name = 'UDEL18' and active = 1
  and (desig_code not in(select interface_id_number from UDEL18.client_update)
  or desig_code in(select interface_id_number from UDEL18.client_update where match2 <> 'R'))
  and desig_code <> 'OTHER' and desig_code <> '00UD0006';
