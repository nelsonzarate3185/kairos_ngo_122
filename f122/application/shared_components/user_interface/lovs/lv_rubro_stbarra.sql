prompt --application/shared_components/user_interface/lovs/lv_rubro_stbarra
begin
--   Manifest
--     LV_RUBRO_STBARRA
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
 p_id=>wwv_flow_imp.id(901308653061553688)
,p_lov_name=>'LV_RUBRO_STBARRA'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion,cod_rubro ',
'from st_rubro ',
'where cod_empresa = :P_COD_EMPRESA ',
'order by descripcion'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'COD_RUBRO'
,p_display_column_name=>'DESCRIPCION'
);
wwv_flow_imp.component_end;
end;
/
