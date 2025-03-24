prompt --application/shared_components/user_interface/lovs/lv_ciudad_rpplaped
begin
--   Manifest
--     LV_CIUDAD_RPPLAPED
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
 p_id=>wwv_flow_imp.id(99242763784513628)
,p_lov_name=>'LV_CIUDAD_RPPLAPED'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_CIUDAD codigo_rapido,DESCRIPCION nombre, 2 orden',
'FROM CIUDADES',
'where cod_pais = ''PAR''--:variables.sector_tarjetas',
' AND COD_PROVINCIA= :P358_C_DEPARTMENTO',
' UNION ALL',
' SELECT ''T'' codigo_rapido,''TODOS'' nombre,1 orden',
'FROM DUAL',
'',
' order by 3,2'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'CODIGO_RAPIDO'
,p_display_column_name=>'NOMBRE'
);
wwv_flow_imp.component_end;
end;
/
