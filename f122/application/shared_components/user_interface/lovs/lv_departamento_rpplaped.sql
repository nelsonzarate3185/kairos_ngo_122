prompt --application/shared_components/user_interface/lovs/lv_departamento_rpplaped
begin
--   Manifest
--     LV_DEPARTAMENTO_RPPLAPED
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
 p_id=>wwv_flow_imp.id(99242347437493365)
,p_lov_name=>'LV_DEPARTAMENTO_RPPLAPED'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT pro.COD_PROVINCIA codigo_rapido,pro.DESCRIPCION nombre, 2 orden',
'FROM provinCIas pro, ciudades ci',
'where ci.cod_pais = ''PAR''',
'and pro.cod_pais=ci.cod_pais',
'and pro.cod_provincia=ci.cod_provincia--:variables.sector_tarjetas',
'group by pro.COD_PROVINCIA  ,pro.DESCRIPCION',
' ',
' UNION ALL',
' SELECT ''T'' codigo_rapido,''TODOS'' nombre,1 ORDEN',
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
