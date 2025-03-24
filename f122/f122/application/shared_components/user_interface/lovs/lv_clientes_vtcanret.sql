prompt --application/shared_components/user_interface/lovs/lv_clientes_vtcanret
begin
--   Manifest
--     LV_CLIENTES_VTCANRET
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
 p_id=>wwv_flow_imp.id(47730017394388878)
,p_lov_name=>'LV_CLIENTES_VTCANRET'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select /*+rule*/  nombre, nomb_fantasia, cod_cliente, codigo_area, num_telefono, cod_ident, numero ',
'  from cc_clientes, personas p, telef_personas pt, ident_personas pi',
' where cc_clientes.cod_empresa = :P_COD_EMPRESA ',
'   and cc_clientes.cod_persona = p.cod_persona',
'   and p.cod_persona = pt.cod_persona(+) ',
'   and p.cod_persona = pi.cod_persona(+) ',
'  order by nombre',
'',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_CLIENTE'
,p_display_column_name=>'NOMBRE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
