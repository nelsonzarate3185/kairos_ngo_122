prompt --application/shared_components/user_interface/lovs/cp_motivo_rec_oc_descripcion_1
begin
--   Manifest
--     CP_MOTIVO_REC_OC.DESCRIPCION_1
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
 p_id=>wwv_flow_imp.id(133079723793155727)
,p_lov_name=>'CP_MOTIVO_REC_OC.DESCRIPCION_1'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'CP_MOTIVO_REC_OC'
,p_return_column_name=>'COD_EMPRESA'
,p_display_column_name=>'DESCRIPCION'
,p_default_sort_column_name=>'DESCRIPCION'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
