prompt --application/shared_components/user_interface/lovs/lv_cx_tipo_referencias
begin
--   Manifest
--     LV_CX_TIPO_REFERENCIAS
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
 p_id=>wwv_flow_imp.id(622146159042200247)
,p_lov_name=>'LV_CX_TIPO_REFERENCIAS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'	a.COD_TIPO_REFERENCIA,',
'	DESCRIPCION_TIPO_REFERENCIA',
'FROM',
'	CX_TIPO_REFERENCIA a',
'WHERE',
'	a.COD_EMPRESA = 1',
'	AND a.ESTADO = ''A''',
';'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'COD_TIPO_REFERENCIA'
,p_display_column_name=>'DESCRIPCION_TIPO_REFERENCIA'
,p_default_sort_column_name=>'DESCRIPCION_TIPO_REFERENCIA'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
