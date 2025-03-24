prompt --application/shared_components/user_interface/lovs/lv_articulos_vinc
begin
--   Manifest
--     LV_ARTICULOS_VINC
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
 p_id=>wwv_flow_imp.id(81302822458604894)
,p_lov_name=>'LV_ARTICULOS_VINC'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  a.cod_articulo||'' - ''||a.descripcion d, a.cod_articulo r, nvl(sum(e.cant_dispon), 0) cantidad, a.cod_rubro',
'  from st_articulos a, st_existencia_art e, vt_ordenes_trabajo v, st_equivalencia_art s',
' where a.cod_empresa = :P327_COD_EMPRESA',
'   and (a.estado is null or a.estado <> ''I'')',
'   and a.cod_empresa = e.cod_empresa(+)',
'   and a.cod_articulo = e.cod_articulo(+)',
'   and :P327_COD_SUCURSAL = e.cod_sucursal(+)',
'   and v.cod_empresa = a.cod_empresa',
'   and v.tip_comprobante = :P327_TIP_COMPROBANTE_REF',
'    and v.ser_comprobante =:P327_SER_COMPROBANTE_REF',
'   and v.nro_comprobante = :P327_NRO_COMPROBANTE_REF',
'   and v.cod_articulo    = s.cod_articulo',
'   and v.cod_empresa     = s.cod_empresa',
'   and s.cod_articulo_equi = a.cod_articulo',
' group by a.descripcion, a.cod_articulo,a.cod_rubro',
'',
' order by 4,1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
);
wwv_flow_imp.component_end;
end;
/
