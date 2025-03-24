prompt --application/shared_components/user_interface/lovs/lv_cliente_cavispro
begin
--   Manifest
--     LV_CLIENTE_CAVISPRO
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
 p_id=>wwv_flow_imp.id(79998417525995386)
,p_lov_name=>'LV_CLIENTE_CAVISPRO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.cod_cliente || '' - '' || ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia))) D, ',
'       c.cod_cliente R, ',
'       I.NUMERO',
'  FROM cc_clientes c, personas p, ident_personas i',
' WHERE c.cod_empresa = :P_COD_EMPRESA',
'   AND c.cod_persona = p.cod_persona',
'   AND c.estado <> ''B''',
'   AND c.estado <> ''I''',
'   AND i.cod_persona(+) = p.cod_persona',
'   AND i.cod_ident(+)=''CI''',
' ORDER BY 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
