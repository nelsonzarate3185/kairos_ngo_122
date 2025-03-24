prompt --application/shared_components/user_interface/lovs/lov_condicion_venta_cppecom
begin
--   Manifest
--     LOV_CONDICION_VENTA_CPPECOM
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
 p_id=>wwv_flow_imp.id(134299924621249551)
,p_lov_name=>'LOV_CONDICION_VENTA_CPPECOM'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_condicion_compra||'' - ''||descripcion  descripcion, cod_condicion_compra',
'  FROM cm_condiciones_compras',
' WHERE estado = ''A''',
'   AND cod_empresa = ''1''',
' ORDER BY descripcion'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'COD_CONDICION_COMPRA'
,p_display_column_name=>'DESCRIPCION'
);
wwv_flow_imp.component_end;
end;
/
