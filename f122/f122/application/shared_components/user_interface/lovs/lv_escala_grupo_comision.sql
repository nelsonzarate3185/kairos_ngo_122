prompt --application/shared_components/user_interface/lovs/lv_escala_grupo_comision
begin
--   Manifest
--     LV_ESCALA_GRUPO_COMISION
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
 p_id=>wwv_flow_imp.id(261962030128741302)
,p_lov_name=>'LV_ESCALA_GRUPO_COMISION'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  COD_GRUPO||'' - '' ||DESCRIPCION GRUPO, COD_GRUPO',
'from INV.FV_ESCALA_COMISION_GRUPO t',
'where cod_empresa= :P_COD_EMPRESA'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'COD_GRUPO'
,p_display_column_name=>'GRUPO'
,p_default_sort_column_name=>'GRUPO'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
