prompt --application/shared_components/user_interface/lovs/lv_familia_startimo
begin
--   Manifest
--     LV_FAMILIA_STARTIMO
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
 p_id=>wwv_flow_imp.id(154401338206097784)
,p_lov_name=>'LV_FAMILIA_STARTIMO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_familia || '' - '' || descripcion D,',
'       cod_familia R',
'from st_familia ',
'where cod_empresa = :P_COD_EMPRESA',
'and nvl(estado,''P'') NOT IN (''I'',''N'')  ',
'order by descripcion'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
);
wwv_flow_imp.component_end;
end;
/
