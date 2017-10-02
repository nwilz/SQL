insert into campus.desig_codes(DESIG_GROUP,DESIG_CODE,SHORT_DESCRIPTION,LONG_DESCRIPTION,ACTIVE,CLIENT_ID,GROUP_DISPLAY_NAME)

select 21 as DESIG_GROUP,  interface_id_number as DESIG_CODE, misc2 as SHORT_DESCRIPTION, 'DEVC-GIFTR' || misc1 as LONG_DESCRIPTION,
  decode(match1,'Active',1) as ACTIVE,
  --null as SCHOOL_CODE, null as ROWDATE,
  2 as CLIENT_ID, 'UDEL18' as	GROUP_DISPLAY_NAME

from UDEL18.client_update
where match1 = 'Active' and match2 = 'R'
  and interface_id_number not in(select desig_code from campus.desig_codes where group_display_name = 'UDEL18');

update campus.desig_codes set active = 1
where active = 0 and group_display_name = 'UDEL18'
  and desig_code in(select interface_id_number from UDEL18.client_update where match1 = 'Active' and match2 = 'R');

--select * from UDEL18.client_update;
--select * from campus.desig_codes where group_display_name = 'UDEL18';
