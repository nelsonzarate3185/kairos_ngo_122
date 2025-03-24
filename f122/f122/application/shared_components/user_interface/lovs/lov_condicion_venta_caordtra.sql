prompt --application/shared_components/user_interface/lovs/lov_condicion_venta_caordtra
begin
--   Manifest
--     LOV_CONDICION_VENTA_CAORDTRA
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
 p_id=>wwv_flow_imp.id(121279391945920145)
,p_lov_name=>'LOV_CONDICION_VENTA_CAORDTRA'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_condicion_venta||'' - ''||c.descripcion  descricion,',
'       c.cod_condicion_venta,',
'       c.plazo',
'  from cc_descuento_tipo_cliente d,',
'       cc_condiciones_ventas c',
' where d.cod_empresa = :P_COD_EMPRESA',
'   and d.tip_cliente = bs_busca_parametro(''VT'', ''VT_TIPO_PERS_EMP'')',
'   and c.cod_empresa         = d.cod_empresa',
'   and c.cod_condicion_venta = d.cod_condicion_venta',
' order by plazo asc',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'COD_CONDICION_VENTA'
,p_display_column_name=>'DESCRICION'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
