prompt --application/shared_components/user_interface/lovs/lv_condicion_ccdesctc
begin
--   Manifest
--     LV_CONDICION_CCDESCTC
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
 p_id=>wwv_flow_imp.id(83766401002969103)
,p_lov_name=>'LV_CONDICION_CCDESCTC'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cv.descripcion, ',
'cv.cod_condicion_venta, ',
'cv.cod_lista_precio,',
' lp.descripcion lista_precio',
'  from cc_condiciones_ventas ',
'  cv, vt_listas_precios_cab lp, cc_tipo_documentacion td ',
'  where cv.cod_empresa = :P_COD_EMPRESA',
'  and cv.estado = ''A'' ',
'  and cv.cod_lista_precio = lp.cod_lista_precio(+) ',
'and lp.cod_empresa = :P_COD_EMPRESA',
'and cv.tip_documento = td.cod_tip_doc(+)'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'COD_CONDICION_VENTA'
,p_display_column_name=>'DESCRIPCION'
,p_default_sort_column_name=>'DESCRIPCION'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
