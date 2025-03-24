prompt --application/shared_components/user_interface/lovs/lv_division_ccdesctc
begin
--   Manifest
--     LV_DIVISION_CCDESCTC
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
 p_id=>wwv_flow_imp.id(83766982439989794)
,p_lov_name=>'LV_DIVISION_CCDESCTC'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select desc_division D, cod_division R',
'    from st_division_articulos',
' where  nvl(estado,''P'') NOT IN (''I'',''N'') order by 1 asc'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
);
wwv_flow_imp.component_end;
end;
/
