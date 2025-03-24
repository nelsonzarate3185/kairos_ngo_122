prompt --application/shared_components/user_interface/lovs/lv_cx_area_derivacion
begin
--   Manifest
--     LV_CX_AREA_DERIVACION
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
 p_id=>wwv_flow_imp.id(981877954082470160)
,p_lov_name=>'LV_CX_AREA_DERIVACION'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_referencia, c.descripcion_referencia',
' from CX_REFERENCIAS c',
' where  C.COD_TIPO_REFERENCIA = ''12''',
' and c.cod_empresa = :P_COD_EMPRESA',
' --AND ''D'' = :P791_ESTADO_CONTACTO',
' ;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_REFERENCIA'
,p_display_column_name=>'DESCRIPCION_REFERENCIA'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'DESCRIPCION_REFERENCIA'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
