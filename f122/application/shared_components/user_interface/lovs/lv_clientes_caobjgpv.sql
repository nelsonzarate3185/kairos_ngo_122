prompt --application/shared_components/user_interface/lovs/lv_clientes_caobjgpv
begin
--   Manifest
--     LV_CLIENTES_CAOBJGPV
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
 p_id=>wwv_flow_imp.id(149049335681716904)
,p_lov_name=>'LV_CLIENTES_CAOBJGPV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl( p.nombre, p.nomb_fantasia ) DESC_cliente, cod_cliente ',
'from cc_clientes c, personas p',
' where c.cod_empresa = :P_cod_empresa',
'  and c.cod_persona = p.cod_persona ',
'  order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'COD_CLIENTE'
,p_display_column_name=>'DESC_CLIENTE'
);
wwv_flow_imp.component_end;
end;
/
