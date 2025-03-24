prompt --application/shared_components/user_interface/lovs/lv_cx_tipo_referencia
begin
--   Manifest
--     LV_CX_TIPO_REFERENCIA
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
 p_id=>wwv_flow_imp.id(981889126818507962)
,p_lov_name=>'LV_CX_TIPO_REFERENCIA'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_referencia, c.descripcion_referencia',
' from CX_REFERENCIAS c',
' where  c.cod_empresa = :P_COD_EMPRESA',
' and C.COD_TIPO_REFERENCIA = ''13'';'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'COD_REFERENCIA'
,p_display_column_name=>'DESCRIPCION_REFERENCIA'
,p_default_sort_column_name=>'DESCRIPCION_REFERENCIA'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
