prompt --application/shared_components/user_interface/lovs/lov_problemas_reclamo
begin
--   Manifest
--     LOV_PROBLEMAS_RECLAMO
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
 p_id=>wwv_flow_imp.id(161327984893184927)
,p_lov_name=>'LOV_PROBLEMAS_RECLAMO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.COD_PROBLEMA, ',
'       P.DESCRIPCION',
'  FROM CA_PROBLEMAS P, ',
'       CA_PROBLEMAS_ARTICULOS A',
' WHERE P.COD_EMPRESA  = A.COD_EMPRESA',
'   AND P.COD_PROBLEMA = A.COD_PROBLEMA',
'   AND P.COD_EMPRESA  = :P537_COD_EMPRESA',
'   AND A.COD_ARTICULO = :P537_COD_ARTICULO; '))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_PROBLEMA'
,p_display_column_name=>'DESCRIPCION'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'DESCRIPCION'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(161328927435179539)
,p_query_column_name=>'COD_PROBLEMA'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(161329348215179538)
,p_query_column_name=>'DESCRIPCION'
,p_heading=>'Descripcion'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
