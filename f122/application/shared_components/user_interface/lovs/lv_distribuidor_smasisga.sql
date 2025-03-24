prompt --application/shared_components/user_interface/lovs/lv_distribuidor_smasisga
begin
--   Manifest
--     LV_DISTRIBUIDOR_SMASISGA
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
 p_id=>wwv_flow_imp.id(65168403199966878)
,p_lov_name=>'LV_DISTRIBUIDOR_SMASISGA'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) nombre, c.cod_cliente ',
'from cc_clientes c, personas p ',
'where c.cod_empresa = :P_COD_EMPRESA ',
'and c.cod_persona = p.cod_persona',
'AND NVL(ESTADO,''A'') NOT IN (''I'',''B'')',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'COD_CLIENTE'
,p_display_column_name=>'NOMBRE'
);
wwv_flow_imp.component_end;
end;
/
