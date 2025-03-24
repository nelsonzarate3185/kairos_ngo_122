prompt --application/shared_components/user_interface/lovs/lov_servicios_tickets
begin
--   Manifest
--     LOV_SERVICIOS_TICKETS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(149103104568681791)
,p_lov_name=>'LOV_SERVICIOS_TICKETS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.descripcion, C.COD_TICKET CODIGO',
'                          FROM ca_tickets_tipo c',
'                         WHERE C.COD_TICKET  not in (select l.COD_TICKET',
'                                          FROM ca_ticket_atencion     i,',
'                                               ca_ticket_atencion_det f,',
'                                               ca_tickets_tipo        l',
'                                         WHERE i.id_ticket = f.id_ticket',
'                                           AND i.cod_empresa = ''1''',
'                                           AND l.cod_ticket = f.cod_tipo_ticket',
'                                          AND i.id_ticket = :P486_ID_TICKET)',
'   and c.origen = ''STNGO''',
'   '))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'CODIGO'
,p_display_column_name=>'DESCRIPCION'
,p_default_sort_column_name=>'DESCRIPCION'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
