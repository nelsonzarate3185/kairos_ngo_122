prompt --application/shared_components/user_interface/lovs/lv_clientes_ccingegr
begin
--   Manifest
--     LV_CLIENTES_CCINGEGR
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
 p_id=>wwv_flow_imp.id(140172640328067680)
,p_lov_name=>'LV_CLIENTES_CCINGEGR'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      SELECT  c.cod_cliente||'' - ''||p.nombre L, ',
'          c.cod_cliente V ',
'    FROM cc_clientes c, personas p, ident_personas i',
'    WHERE c.cod_empresa = :p_cod_empresa',
'      AND c.cod_persona = p.cod_persona',
'      AND c.estado =''A''',
'      AND I.COD_IDENT IN (''RUC'',''CI'')',
'      AND i.cod_persona = c.cod_persona',
'',
' ORDER BY 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'V'
,p_display_column_name=>'L'
);
wwv_flow_imp.component_end;
end;
/
