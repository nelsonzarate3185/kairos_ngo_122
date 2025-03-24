prompt --application/shared_components/user_interface/lovs/lov_flete_vtpedido
begin
--   Manifest
--     LOV_FLETE_VTPEDIDO
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
 p_id=>wwv_flow_imp.id(94575054996346734)
,p_lov_name=>'LOV_FLETE_VTPEDIDO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ALL vt_fletes.descripcion, vt_fletes.cod_flete',
'  FROM vt_fletes',
' WHERE cod_empresa = ''1''',
'   AND activo = ''S''',
'   AND tipo_entrega = :P354_TIPO_ENTREGA',
' ORDER BY 1',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_FLETE'
,p_display_column_name=>'DESCRIPCION'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
