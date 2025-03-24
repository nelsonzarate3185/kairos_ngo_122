prompt --application/pages/page_00181
begin
--   Manifest
--     PAGE: 00181
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page(
 p_id=>181
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VTRVTMVE'
,p_alias=>'VTRVTMVE'
,p_step_title=>'VTRVTMVE'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240923101239'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35461253719564319)
,p_plug_name=>'VARIABLES_AUX'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37322491214449306)
,p_plug_name=>unistr('A\00F1o actual')
,p_parent_plug_id=>wwv_flow_imp.id(35461253719564319)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37323730625449319)
,p_plug_name=>unistr('A\00F1o anterior')
,p_parent_plug_id=>wwv_flow_imp.id(35461253719564319)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35461683877564323)
,p_plug_name=>'FILTROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58739546701978814)
,p_plug_name=>'Contenedor Reporte'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79792876123706707)
,p_plug_name=>'REPORTE'
,p_parent_plug_id=>wwv_flow_imp.id(58739546701978814)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>120
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  cc.cod_empresa, ',
'        ar.cod_rubro, ',
'        ru.descripcion desc_rubro, ',
'        cl.cod_cliente, ',
'        mo.decimales,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_01, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.ca'
||'mbio_moneda_precio,1)) ), 0 ) ) mes_1_01,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_01, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_01'
||'2,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_01, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_01'
||'3,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_02, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.ca'
||'mbio_moneda_precio,1)) ), 0 ) ) mes_1_02,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_02, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_02'
||'2,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_02, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_02'
||'3,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_03, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.ca'
||'mbio_moneda_precio,1)) ), 0 ) ) mes_1_03,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_03, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_03'
||'2,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_03, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_03'
||'3,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_04, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.ca'
||'mbio_moneda_precio,1)) ), 0 ) ) mes_1_04,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_04, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_04'
||'2,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_04, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_04'
||'3,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_05, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.ca'
||'mbio_moneda_precio,1)) ), 0 ) ) mes_1_05,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_05, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_05'
||'2,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_05, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_05'
||'3,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_06, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.ca'
||'mbio_moneda_precio,1)) ), 0 ) ) mes_1_06,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_06, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_06'
||'2,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_06, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_06'
||'3,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_07, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.ca'
||'mbio_moneda_precio,1)) ), 0 ) ) mes_1_07,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_07, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_07'
||'2,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_07, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_07'
||'3,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_08, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.ca'
||'mbio_moneda_precio,1)) ), 0 ) ) mes_1_08,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_08, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_08'
||'2,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_08, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_08'
||'3,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_09, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.ca'
||'mbio_moneda_precio,1)) ), 0 ) ) mes_1_09,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_09, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_09'
||'2,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_09, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_09'
||'3,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_10, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.ca'
||'mbio_moneda_precio,1)) ), 0 ) ) mes_1_10,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_10, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_10'
||'2,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_10, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_10'
||'3,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_11, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.ca'
||'mbio_moneda_precio,1)) ), 0 ) ) mes_1_11,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_11, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_11'
||'2,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_11, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_11'
||'3,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_12, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.ca'
||'mbio_moneda_precio,1)) ), 0 ) ) mes_1_12,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_12, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_12'
||'2,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_12, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_12'
||'3,',
'        0 mes_2_01, ',
'        0 mes_2_012, ',
'        0 mes_2_013, ',
'        0 mes_2_02, ',
'        0 mes_2_022, ',
'        0 mes_2_023, ',
'        0 mes_2_03, ',
'        0 mes_2_032, ',
'        0 mes_2_033, ',
'        0 mes_2_04, ',
'        0 mes_2_042, ',
'        0 mes_2_043, ',
'        0 mes_2_05, ',
'        0 mes_2_052, ',
'        0 mes_2_053, ',
'        0 mes_2_06, ',
'        0 mes_2_062, ',
'        0 mes_2_063, ',
'        0 mes_2_07, ',
'        0 mes_2_072, ',
'        0 mes_2_073, ',
'        0 mes_2_08, ',
'        0 mes_2_082, ',
'        0 mes_2_083, ',
'        0 mes_2_09, ',
'        0 mes_2_092, ',
'        0 mes_2_093, ',
'        0 mes_2_10, ',
'        0 mes_2_102, ',
'        0 mes_2_103, ',
'        0 mes_2_11, ',
'        0 mes_2_112, ',
'        0 mes_2_113, ',
'        0 mes_2_12, ',
'        0 mes_2_122, ',
'        0 mes_2_123',
'',
'FROM vt_comprobantes_cabecera cc, tipos_comprobantes tc, parametros_generales pg,',
'     monedas mo, vt_comprobantes_detalle cd, fv_vendedores ve, st_articulos ar, st_rubro ru, cc_clientes cl ,',
'     fv_grupos_vendedores gv,  fv_grupos_vendedores_ven gvv',
'WHERE cc.cod_empresa = :P_COD_EMPRESA',
'AND gvv.cod_empresa = cc.cod_empresa',
'AND gvv.cod_vendedor_rel = cc.cod_vendedor',
'AND gv.cod_empresa = gvv.cod_empresa',
'AND gv.cod_grupo_ven = gvv.cod_grupo_ven',
'--AND (:p_cod_consolidado is null or gv.cod_vendedor = :p_cod_consolidado)',
'AND cc.fec_comprobante >= to_date( ''01/01'' || :P181_ANIO_1, ''DD/MM/YYYY'' )',
'AND to_char( cc.fec_comprobante, ''YYYY'' ) =  :P181_ANIO_1',
'AND ( :P_COD_SUCURSAL IS NULL OR cc.cod_sucursal = :P_COD_SUCURSAL )',
'AND ( :P181_COD_VENDEDOR IS NULL /*OR ( :p_cod_persona_vendedor is null*/ AND cc.cod_vendedor = :P181_COD_VENDEDOR ) /*)*/',
'AND ( :P181_TIP_COMPROBANTE IS NULL OR cc.tip_comprobante = :P181_TIP_COMPROBANTE )',
'AND ( :P181_COD_RUBRO IS NULL OR ar.cod_rubro = :P181_COD_RUBRO )',
'AND ( :P181_COD_FAMILIA IS NULL OR ar.cod_familia = :P181_COD_FAMILIA)',
'AND ( :P181_COD_LINEA IS NULL OR ar.cod_linea = :P181_COD_LINEA )',
'AND ( :P181_COD_GRUPO_ART IS NULL OR ar.cod_grupo_art = :P181_COD_GRUPO_ART )',
'AND ( :P181_COD_GRUPO IS NULL OR ar.cod_grupo = :P181_COD_GRUPO ) ',
'AND ( :P181_COD_PROVEEDOR IS NULL OR ar.cod_proveedor_dflt = :P181_COD_PROVEEDOR )',
'AND ( :P181_COD_MARCA IS NULL OR ar.cod_marca = :P181_COD_MARCA )',
'AND ( :P181_COD_ZONA  IS null OR cl.cod_zona  = :P181_COD_ZONA  )  --x rango',
'AND ( :P181_COD_CLIENTE_DES  IS null OR cl.cod_cliente  between :P181_COD_CLIENTE_DES and :P181_COD_CLIENTE_HAS )',
'AND cc.cod_empresa = tc.cod_empresa',
'AND ( cc.tip_comprobante = tc.tip_comprobante )',
'AND ( cc.estado IS NULL OR cc.estado <> ''A'' )',
'AND cc.cod_empresa = ve.cod_empresa',
'AND cc.cod_vendedor = ve.cod_vendedor',
'AND cc.cod_empresa = cd.cod_empresa',
'AND cc.tip_comprobante = cd.tip_comprobante',
'AND cc.ser_comprobante = cd.ser_comprobante',
'AND cc.nro_comprobante = cd.nro_comprobante',
'AND cc.cod_empresa     = cl.cod_empresa',
'AND cc.cod_cliente     = cl.cod_cliente',
'AND ar.cod_empresa = cd.cod_empresa',
'AND ar.cod_articulo = cd.cod_articulo',
'AND pg.parametro = ''COD_MONEDA_PREC''',
'AND ltrim( rtrim( pg.valor ) ) = ltrim( rtrim( mo.cod_moneda ) )',
'AND ar.cod_empresa = ru.cod_empresa',
'AND ar.cod_rubro = ru.cod_rubro',
'AND :P181_INDICADOR_CARGA_REPORTE = ''1''',
'GROUP BY cc.cod_empresa, ar.cod_rubro, ru.descripcion,  cl.cod_cliente, mo.decimales',
'',
'UNION ALL',
'',
'SELECT cc.cod_empresa, ',
'       ar.cod_rubro, ',
'       ru.descripcion desc_rubro,  ',
'       cl.cod_cliente, ',
'       mo.decimales,',
'       0 mes_1_01, ',
'       0 mes_1_012, ',
'       0 mes_1_013, ',
'       0 mes_1_02, ',
'       0 mes_1_022, ',
'       0 mes_1_023, ',
'       0 mes_1_03, ',
'       0 mes_1_032, ',
'       0 mes_1_033, ',
'       0 mes_1_04, ',
'       0 mes_1_042, ',
'       0 mes_1_043, ',
'       0 mes_1_05, ',
'       0 mes_1_052, ',
'       0 mes_1_053, ',
'       0 mes_1_06, ',
'       0 mes_1_062, ',
'       0 mes_1_063, ',
'       0 mes_1_07, ',
'       0 mes_1_072, ',
'       0 mes_1_073, ',
'       0 mes_1_08, ',
'       0 mes_1_082, ',
'       0 mes_1_083, ',
'       0 mes_1_09, ',
'       0 mes_1_092, ',
'       0 mes_1_093, ',
'       0 mes_1_10, ',
'       0 mes_1_102, ',
'       0 mes_1_103, ',
'       0 mes_1_11, ',
'       0 mes_1_112, ',
'       0 mes_1_113, ',
'       0 mes_1_12, ',
'       0 mes_1_122, ',
'       0 mes_1_123, ',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_01, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cam'
||'bio_moneda_precio,1)) ), 0 ) ) mes_2_01,',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_01, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_012'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_01, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_013'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_02, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cam'
||'bio_moneda_precio,1)) ), 0 ) ) mes_2_02,',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_02, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_022'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_02, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_023'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_03, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cam'
||'bio_moneda_precio,1)) ), 0 ) ) mes_2_03,',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_03, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_032'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_03, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_033'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_04, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cam'
||'bio_moneda_precio,1)) ), 0 ) ) mes_2_04,',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_04, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_042'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_04, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_043'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_05, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cam'
||'bio_moneda_precio,1)) ), 0 ) ) mes_2_05,',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_05, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_052'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_05, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_053'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_06, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cam'
||'bio_moneda_precio,1)) ), 0 ) ) mes_2_06,',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_06, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_062'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_06, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_063'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_07, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cam'
||'bio_moneda_precio,1)) ), 0 ) ) mes_2_07,',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_07, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_072'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_07, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_073'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_08, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cam'
||'bio_moneda_precio,1)) ), 0 ) ) mes_2_08,',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_08, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_082'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_08, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_083'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_09, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cam'
||'bio_moneda_precio,1)) ), 0 ) ) mes_2_09,',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_09, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_092'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_09, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_093'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_10, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cam'
||'bio_moneda_precio,1)) ), 0 ) ) mes_2_10,',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_10, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_102'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_10, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_103'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_11, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cam'
||'bio_moneda_precio,1)) ), 0 ) ) mes_211,',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_11, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_112'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_11, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_113'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_12, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cam'
||'bio_moneda_precio,1)) ), 0 ) ) mes_2_12,',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_12, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_122'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_12, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_123',
'',
'  FROM vt_comprobantes_cabecera cc, tipos_comprobantes tc, parametros_generales pg,',
'        monedas mo, vt_comprobantes_detalle cd, fv_vendedores ve, st_articulos ar, st_rubro ru, cc_clientes cl  ,',
'        fv_grupos_vendedores gv,  fv_grupos_vendedores_ven gvv',
'  WHERE cc.cod_empresa = :P_COD_EMPRESA',
'  AND gvv.cod_empresa = cc.cod_empresa',
'  AND gvv.cod_vendedor_rel = cc.cod_vendedor',
'  AND gv.cod_empresa = gvv.cod_empresa',
'  AND gv.cod_grupo_ven = gvv.cod_grupo_ven',
'  --AND (:p_cod_consolidado is null or gv.cod_vendedor = :p_cod_consolidado)',
'  AND cc.fec_comprobante >= to_date( ''01/01'' || :P181_ANIO_2, ''DD/MM/YYYY'' )',
'  AND to_char( cc.fec_comprobante, ''YYYY'' ) =  :P181_ANIO_2',
'  AND ( :P181_COD_SUCURSAL IS NULL OR cc.cod_sucursal = :P181_COD_SUCURSAL )',
'  AND ( :P181_COD_VENDEDOR IS NULL OR /*( :p_cod_persona_vendedor is null and*/ cc.cod_vendedor =:P181_COD_VENDEDOR ) /*)*/',
'  AND ( :P181_TIP_COMPROBANTE IS NULL OR cc.tip_comprobante = :P181_TIP_COMPROBANTE )',
'  AND ( :P181_COD_RUBRO IS NULL OR ar.cod_rubro = :P181_COD_RUBRO )',
'  AND ( :P181_COD_FAMILIA IS NULL OR ar.cod_familia = :P181_COD_FAMILIA )',
'  AND ( :P181_COD_LINEA IS NULL OR ar.cod_linea = :P181_COD_LINEA )',
'  AND ( :P181_COD_GRUPO_ART IS NULL OR ar.cod_grupo_art = :P181_COD_GRUPO_ART )',
'  AND ( :P181_COD_GRUPO IS NULL OR ar.cod_grupo = :P181_COD_GRUPO )',
'  AND ( :P181_COD_MARCA IS NULL OR ar.cod_marca = :P181_COD_MARCA )',
'  AND ( :P181_COD_ZONA  is null or cl.cod_zona  = :P181_COD_ZONA  )',
'  AND ( :P181_COD_CLIENTE_DES  is null or cl.cod_cliente  between :P181_COD_CLIENTE_DES and :P181_COD_CLIENTE_HAS )',
'  AND cc.cod_empresa = tc.cod_empresa',
'  AND ( cc.tip_comprobante = tc.tip_comprobante )',
'  AND ( cc.estado IS NULL OR cc.estado <> ''A'' )',
'  AND cc.cod_empresa = ve.cod_empresa (+)',
'  AND cc.cod_vendedor = ve.cod_vendedor (+)',
'  AND cc.cod_empresa = cd.cod_empresa',
'  AND cc.tip_comprobante = cd.tip_comprobante',
'  AND cc.ser_comprobante = cd.ser_comprobante',
'  AND cc.nro_comprobante = cd.nro_comprobante',
'  AND cc.cod_empresa     = cl.cod_empresa',
'  AND cc.cod_cliente     = cl.cod_cliente',
'  AND ar.cod_empresa = cd.cod_empresa',
'  AND ar.cod_articulo = cd.cod_articulo',
'  AND pg.parametro = ''COD_MONEDA_PREC''',
'  AND ltrim( rtrim( pg.valor ) ) = ltrim( rtrim( mo.cod_moneda ) )',
'  AND ar.cod_empresa = ru.cod_empresa',
'  AND ar.cod_rubro = ru.cod_rubro',
'  AND :P181_INDICADOR_CARGA_REPORTE = ''1''',
'  GROUP BY cc.cod_empresa, ar.cod_rubro, ru.descripcion,  cl.cod_cliente, mo.decimales',
'  ORDER BY 1, 2, 4'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P181_MES_1_01,P181_MES_1_02,P181_MES_1_03,P181_MES_1_04,P181_MES_1_05,P181_MES_1_06,P181_MES_1_07,P181_MES_1_08,P181_MES_1_09,P181_MES_1_10,P181_MES_1_11,P181_MES_1_12,P181_MES_2_01,P181_MES_2_02,P181_MES_2_03,P181_MES_2_04,P181_MES_2_05,P181_MES_2_0'
||'6,P181_MES_2_07,P181_MES_2_08,P181_MES_2_09,P181_MES_2_10,P181_MES_2_11,P181_MES_2_12,P181_COD_SUCURSAL,P181_TIP_COMPROBANTE,P181_COD_CLIENTE_DES,P181_COD_CLIENTE_HAS,P181_COD_VENDEDOR,P181_COD_ZONA,P181_COD_PROVEEDOR,P181_COD_RUBRO,P181_COD_FAMILIA,'
||'P181_COD_LINEA,P181_COD_GRUPO,P181_COD_GRUPO_ART,P181_COD_MARCA,P181_ANIO_1,P181_ANIO_2,P181_CONSOLIDADO,P181_MES_1_01,P181_MES_1_02,P181_MES_1_03,P181_MES_1_04,P181_MES_1_05,P181_MES_1_06,P181_MES_1_07,P181_MES_1_08,P181_MES_1_09,P181_MES_1_10,P181_'
||'MES_1_11,P181_MES_1_12,P181_MES_2_01,P181_MES_2_02,P181_MES_2_03,P181_MES_2_04,P181_MES_2_05,P181_MES_2_06,P181_MES_2_07,P181_MES_2_08,P181_MES_2_09,P181_MES_2_10,P181_MES_2_11,P181_MES_2_12,P181_INDICADOR_CARGA_REPORTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(80240729398309197)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>80240729398309197
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42821159121338686)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42821519325338686)
,p_db_column_name=>'COD_RUBRO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Rubro'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42821977505338686)
,p_db_column_name=>'DESC_RUBRO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Desc Rubro'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42822352352338687)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42822781689338687)
,p_db_column_name=>'DECIMALES'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Decimales'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42823199585338687)
,p_db_column_name=>'MES_1_01'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'&P181_ANIO_1. - Enero - USD  '
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42823555309338687)
,p_db_column_name=>'MES_1_012'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Mes 1 012'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42823968156338688)
,p_db_column_name=>'MES_1_013'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Mes 1 013'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42824385752338688)
,p_db_column_name=>'MES_1_02'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Mes 1 02'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42824790685338688)
,p_db_column_name=>'MES_1_022'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Mes 1 022'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42825134253338688)
,p_db_column_name=>'MES_1_023'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Mes 1 023'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42825507369338689)
,p_db_column_name=>'MES_1_03'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Mes 1 03'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42825901772338689)
,p_db_column_name=>'MES_1_032'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Mes 1 032'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42826363442338689)
,p_db_column_name=>'MES_1_033'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Mes 1 033'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42826764256338690)
,p_db_column_name=>'MES_1_04'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Mes 1 04'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42827129487338690)
,p_db_column_name=>'MES_1_042'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Mes 1 042'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42827583952338690)
,p_db_column_name=>'MES_1_043'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Mes 1 043'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42827968253338690)
,p_db_column_name=>'MES_1_05'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Mes 1 05'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42828311299338691)
,p_db_column_name=>'MES_1_052'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Mes 1 052'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42828721054338691)
,p_db_column_name=>'MES_1_053'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Mes 1 053'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42829148291338691)
,p_db_column_name=>'MES_1_06'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Mes 1 06'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42829533152338691)
,p_db_column_name=>'MES_1_062'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Mes 1 062'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42829907337338692)
,p_db_column_name=>'MES_1_063'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Mes 1 063'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42830345176338692)
,p_db_column_name=>'MES_1_07'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Mes 1 07'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42830709046338692)
,p_db_column_name=>'MES_1_072'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Mes 1 072'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42831108314338692)
,p_db_column_name=>'MES_1_073'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Mes 1 073'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42831585033338693)
,p_db_column_name=>'MES_1_08'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Mes 1 08'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42831991988338693)
,p_db_column_name=>'MES_1_082'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Mes 1 082'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42832398044338693)
,p_db_column_name=>'MES_1_083'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Mes 1 083'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42832798285338694)
,p_db_column_name=>'MES_1_09'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Mes 1 09'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42833132721338694)
,p_db_column_name=>'MES_1_092'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Mes 1 092'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42833555497338694)
,p_db_column_name=>'MES_1_093'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Mes 1 093'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42833912314338694)
,p_db_column_name=>'MES_1_10'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Mes 1 10'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42834351510338695)
,p_db_column_name=>'MES_1_102'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Mes 1 102'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42834703385338695)
,p_db_column_name=>'MES_1_103'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Mes 1 103'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42835195369338695)
,p_db_column_name=>'MES_1_11'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Mes 1 11'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42835576287338695)
,p_db_column_name=>'MES_1_112'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Mes 1 112'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42835954254338696)
,p_db_column_name=>'MES_1_113'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Mes 1 113'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42836338996338696)
,p_db_column_name=>'MES_1_12'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Mes 1 12'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42836721948338696)
,p_db_column_name=>'MES_1_122'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Mes 1 122'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42837138193338697)
,p_db_column_name=>'MES_1_123'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Mes 1 123'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42375678872157838)
,p_db_column_name=>'MES_2_01'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Mes 2 01'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42375763121157839)
,p_db_column_name=>'MES_2_012'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Mes 2 012'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42375836232157840)
,p_db_column_name=>'MES_2_013'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Mes 2 013'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42375995326157841)
,p_db_column_name=>'MES_2_02'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Mes 2 02'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42376077483157842)
,p_db_column_name=>'MES_2_022'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Mes 2 022'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42376110254157843)
,p_db_column_name=>'MES_2_023'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Mes 2 023'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42376298958157844)
,p_db_column_name=>'MES_2_03'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Mes 2 03'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42376309260157845)
,p_db_column_name=>'MES_2_032'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Mes 2 032'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42376466147157846)
,p_db_column_name=>'MES_2_033'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Mes 2 033'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42376544366157847)
,p_db_column_name=>'MES_2_04'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Mes 2 04'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42376682353157848)
,p_db_column_name=>'MES_2_042'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Mes 2 042'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42376725210157849)
,p_db_column_name=>'MES_2_043'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Mes 2 043'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42376818329157850)
,p_db_column_name=>'MES_2_05'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Mes 2 05'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43579189868574901)
,p_db_column_name=>'MES_2_052'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'Mes 2 052'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43579258371574902)
,p_db_column_name=>'MES_2_053'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'Mes 2 053'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43579376767574903)
,p_db_column_name=>'MES_2_06'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'Mes 2 06'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43579496814574904)
,p_db_column_name=>'MES_2_062'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'Mes 2 062'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43579547991574905)
,p_db_column_name=>'MES_2_063'
,p_display_order=>590
,p_column_identifier=>'BG'
,p_column_label=>'Mes 2 063'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43579652654574906)
,p_db_column_name=>'MES_2_07'
,p_display_order=>600
,p_column_identifier=>'BH'
,p_column_label=>'Mes 2 07'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43579781558574907)
,p_db_column_name=>'MES_2_072'
,p_display_order=>610
,p_column_identifier=>'BI'
,p_column_label=>'Mes 2 072'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43579818081574908)
,p_db_column_name=>'MES_2_073'
,p_display_order=>620
,p_column_identifier=>'BJ'
,p_column_label=>'Mes 2 073'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43579989020574909)
,p_db_column_name=>'MES_2_08'
,p_display_order=>630
,p_column_identifier=>'BK'
,p_column_label=>'Mes 2 08'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43580035661574910)
,p_db_column_name=>'MES_2_082'
,p_display_order=>640
,p_column_identifier=>'BL'
,p_column_label=>'Mes 2 082'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43580138045574911)
,p_db_column_name=>'MES_2_083'
,p_display_order=>650
,p_column_identifier=>'BM'
,p_column_label=>'Mes 2 083'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43580260982574912)
,p_db_column_name=>'MES_2_09'
,p_display_order=>660
,p_column_identifier=>'BN'
,p_column_label=>'Mes 2 09'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43580348843574913)
,p_db_column_name=>'MES_2_092'
,p_display_order=>670
,p_column_identifier=>'BO'
,p_column_label=>'Mes 2 092'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43580435618574914)
,p_db_column_name=>'MES_2_093'
,p_display_order=>680
,p_column_identifier=>'BP'
,p_column_label=>'Mes 2 093'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43580540743574915)
,p_db_column_name=>'MES_2_10'
,p_display_order=>690
,p_column_identifier=>'BQ'
,p_column_label=>'Mes 2 10'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43580670054574916)
,p_db_column_name=>'MES_2_102'
,p_display_order=>700
,p_column_identifier=>'BR'
,p_column_label=>'Mes 2 102'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43580755400574917)
,p_db_column_name=>'MES_2_103'
,p_display_order=>710
,p_column_identifier=>'BS'
,p_column_label=>'Mes 2 103'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43580895693574918)
,p_db_column_name=>'MES_2_11'
,p_display_order=>720
,p_column_identifier=>'BT'
,p_column_label=>'Mes 2 11'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43580969060574919)
,p_db_column_name=>'MES_2_112'
,p_display_order=>730
,p_column_identifier=>'BU'
,p_column_label=>'Mes 2 112'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43581031932574920)
,p_db_column_name=>'MES_2_113'
,p_display_order=>740
,p_column_identifier=>'BV'
,p_column_label=>'Mes 2 113'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43581195218574921)
,p_db_column_name=>'MES_2_12'
,p_display_order=>750
,p_column_identifier=>'BW'
,p_column_label=>'Mes 2 12'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43581276801574922)
,p_db_column_name=>'MES_2_122'
,p_display_order=>760
,p_column_identifier=>'BX'
,p_column_label=>'Mes 2 122'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43581312285574923)
,p_db_column_name=>'MES_2_123'
,p_display_order=>770
,p_column_identifier=>'BY'
,p_column_label=>'Mes 2 123'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(80336653430358866)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'375158'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'COD_EMPRESA:COD_RUBRO:DESC_RUBRO:COD_CLIENTE:DECIMALES:MES_1_01:MES_1_012:MES_1_013:MES_1_02:MES_1_022:MES_1_023:MES_1_03:MES_1_032:MES_1_033:MES_1_04:MES_1_042:MES_1_043:MES_1_05:MES_1_052:MES_1_053:MES_1_06:MES_1_062:MES_1_063:MES_1_07:MES_1_072:ME'
||'S_1_073:MES_1_08:MES_1_082:MES_1_083:MES_1_09:MES_1_092:MES_1_093:MES_1_10:MES_1_102:MES_1_103:MES_1_11:MES_1_112:MES_1_113:MES_1_12:MES_1_122:MES_1_123:MES_2_01:MES_2_012:MES_2_013:MES_2_02:MES_2_022:MES_2_023:MES_2_03:MES_2_032:MES_2_033:MES_2_04:M'
||'ES_2_042:MES_2_043:MES_2_05:MES_2_052:MES_2_053:MES_2_06:MES_2_062:MES_2_063:MES_2_07:MES_2_072:MES_2_073:MES_2_08:MES_2_082:MES_2_083:MES_2_09:MES_2_092:MES_2_093:MES_2_10:MES_2_102:MES_2_103:MES_2_11:MES_2_112:MES_2_113:MES_2_12:MES_2_122:MES_2_123'
||':'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(162292217291297801)
,p_plug_name=>'Reporte 1'
,p_parent_plug_id=>wwv_flow_imp.id(58739546701978814)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>130
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  cc.cod_empresa, ',
'        ar.cod_rubro, ',
'        ru.descripcion desc_rubro, ',
'        cl.cod_cliente, ',
'        mo.decimales,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_01, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.ca'
||'mbio_moneda_precio,1)) ), 0 ) ) mes_1_01,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_01, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_01'
||'2,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_01, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_01'
||'3,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_02, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.ca'
||'mbio_moneda_precio,1)) ), 0 ) ) mes_1_02,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_02, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_02'
||'2,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_02, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_02'
||'3,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_03, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.ca'
||'mbio_moneda_precio,1)) ), 0 ) ) mes_1_03,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_03, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_03'
||'2,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_03, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_03'
||'3,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_04, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.ca'
||'mbio_moneda_precio,1)) ), 0 ) ) mes_1_04,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_04, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_04'
||'2,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_04, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_04'
||'3,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_05, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.ca'
||'mbio_moneda_precio,1)) ), 0 ) ) mes_1_05,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_05, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_05'
||'2,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_05, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_05'
||'3,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_06, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.ca'
||'mbio_moneda_precio,1)) ), 0 ) ) mes_1_06,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_06, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_06'
||'2,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_06, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_06'
||'3,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_07, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.ca'
||'mbio_moneda_precio,1)) ), 0 ) ) mes_1_07,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_07, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_07'
||'2,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_07, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_07'
||'3,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_08, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.ca'
||'mbio_moneda_precio,1)) ), 0 ) ) mes_1_08,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_08, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_08'
||'2,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_08, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_08'
||'3,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_09, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.ca'
||'mbio_moneda_precio,1)) ), 0 ) ) mes_1_09,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_09, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_09'
||'2,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_09, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_09'
||'3,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_10, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.ca'
||'mbio_moneda_precio,1)) ), 0 ) ) mes_1_10,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_10, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_10'
||'2,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_10, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_10'
||'3,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_11, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.ca'
||'mbio_moneda_precio,1)) ), 0 ) ) mes_1_11,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_11, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_11'
||'2,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_11, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_11'
||'3,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_12, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.ca'
||'mbio_moneda_precio,1)) ), 0 ) ) mes_1_12,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_12, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_12'
||'2,',
'        sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_1_12, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_1_12'
||'3,',
'        0 mes_2_01, ',
'        0 mes_2_012, ',
'        0 mes_2_013, ',
'        0 mes_2_02, ',
'        0 mes_2_022, ',
'        0 mes_2_023, ',
'        0 mes_2_03, ',
'        0 mes_2_032, ',
'        0 mes_2_033, ',
'        0 mes_2_04, ',
'        0 mes_2_042, ',
'        0 mes_2_043, ',
'        0 mes_2_05, ',
'        0 mes_2_052, ',
'        0 mes_2_053, ',
'        0 mes_2_06, ',
'        0 mes_2_062, ',
'        0 mes_2_063, ',
'        0 mes_2_07, ',
'        0 mes_2_072, ',
'        0 mes_2_073, ',
'        0 mes_2_08, ',
'        0 mes_2_082, ',
'        0 mes_2_083, ',
'        0 mes_2_09, ',
'        0 mes_2_092, ',
'        0 mes_2_093, ',
'        0 mes_2_10, ',
'        0 mes_2_102, ',
'        0 mes_2_103, ',
'        0 mes_2_11, ',
'        0 mes_2_112, ',
'        0 mes_2_113, ',
'        0 mes_2_12, ',
'        0 mes_2_122, ',
'        0 mes_2_123',
'',
'FROM vt_comprobantes_cabecera cc, tipos_comprobantes tc, parametros_generales pg,',
'     monedas mo, vt_comprobantes_detalle cd, fv_vendedores ve, st_articulos ar, st_rubro ru, cc_clientes cl ,',
'     fv_grupos_vendedores gv,  fv_grupos_vendedores_ven gvv',
'WHERE cc.cod_empresa = :P_COD_EMPRESA',
'AND gvv.cod_empresa = cc.cod_empresa',
'AND gvv.cod_vendedor_rel = cc.cod_vendedor',
'AND gv.cod_empresa = gvv.cod_empresa',
'AND gv.cod_grupo_ven = gvv.cod_grupo_ven',
'--AND (:p_cod_consolidado is null or gv.cod_vendedor = :p_cod_consolidado)',
'AND cc.fec_comprobante >= to_date( ''01/01'' || :P181_ANIO_1, ''DD/MM/YYYY'' )',
'AND to_char( cc.fec_comprobante, ''YYYY'' ) =  :P181_ANIO_1',
'AND ( :P_COD_SUCURSAL IS NULL OR cc.cod_sucursal = :P_COD_SUCURSAL )',
'AND ( :P181_COD_VENDEDOR IS NULL /*OR ( :p_cod_persona_vendedor is null*/ AND cc.cod_vendedor = :P181_COD_VENDEDOR ) /*)*/',
'AND ( :P181_TIP_COMPROBANTE IS NULL OR cc.tip_comprobante = :P181_TIP_COMPROBANTE )',
'AND ( :P181_COD_RUBRO IS NULL OR ar.cod_rubro = :P181_COD_RUBRO )',
'AND ( :P181_COD_FAMILIA IS NULL OR ar.cod_familia = :P181_COD_FAMILIA)',
'AND ( :P181_COD_LINEA IS NULL OR ar.cod_linea = :P181_COD_LINEA )',
'AND ( :P181_COD_GRUPO_ART IS NULL OR ar.cod_grupo_art = :P181_COD_GRUPO_ART )',
'AND ( :P181_COD_GRUPO IS NULL OR ar.cod_grupo = :P181_COD_GRUPO ) ',
'AND ( :P181_COD_PROVEEDOR IS NULL OR ar.cod_proveedor_dflt = :P181_COD_PROVEEDOR )',
'AND ( :P181_COD_MARCA IS NULL OR ar.cod_marca = :P181_COD_MARCA )',
'AND ( :P181_COD_ZONA  IS null OR cl.cod_zona  = :P181_COD_ZONA  )  --x rango',
'AND ( :P181_COD_CLIENTE_DES  IS null OR cl.cod_cliente  between :P181_COD_CLIENTE_DES and :P181_COD_CLIENTE_HAS )',
'AND cc.cod_empresa = tc.cod_empresa',
'AND ( cc.tip_comprobante = tc.tip_comprobante )',
'AND ( cc.estado IS NULL OR cc.estado <> ''A'' )',
'AND cc.cod_empresa = ve.cod_empresa',
'AND cc.cod_vendedor = ve.cod_vendedor',
'AND cc.cod_empresa = cd.cod_empresa',
'AND cc.tip_comprobante = cd.tip_comprobante',
'AND cc.ser_comprobante = cd.ser_comprobante',
'AND cc.nro_comprobante = cd.nro_comprobante',
'AND cc.cod_empresa     = cl.cod_empresa',
'AND cc.cod_cliente     = cl.cod_cliente',
'AND ar.cod_empresa = cd.cod_empresa',
'AND ar.cod_articulo = cd.cod_articulo',
'AND pg.parametro = ''COD_MONEDA_PREC''',
'AND ltrim( rtrim( pg.valor ) ) = ltrim( rtrim( mo.cod_moneda ) )',
'AND ar.cod_empresa = ru.cod_empresa',
'AND ar.cod_rubro = ru.cod_rubro',
'AND :P181_INDICADOR_CARGA_REPORTE = ''1''',
'GROUP BY cc.cod_empresa, ar.cod_rubro, ru.descripcion,  cl.cod_cliente, mo.decimales',
'',
'UNION ALL',
'',
'SELECT cc.cod_empresa, ',
'       ar.cod_rubro, ',
'       ru.descripcion desc_rubro,  ',
'       cl.cod_cliente, ',
'       mo.decimales,',
'       0 mes_1_01, ',
'       0 mes_1_012, ',
'       0 mes_1_013, ',
'       0 mes_1_02, ',
'       0 mes_1_022, ',
'       0 mes_1_023, ',
'       0 mes_1_03, ',
'       0 mes_1_032, ',
'       0 mes_1_033, ',
'       0 mes_1_04, ',
'       0 mes_1_042, ',
'       0 mes_1_043, ',
'       0 mes_1_05, ',
'       0 mes_1_052, ',
'       0 mes_1_053, ',
'       0 mes_1_06, ',
'       0 mes_1_062, ',
'       0 mes_1_063, ',
'       0 mes_1_07, ',
'       0 mes_1_072, ',
'       0 mes_1_073, ',
'       0 mes_1_08, ',
'       0 mes_1_082, ',
'       0 mes_1_083, ',
'       0 mes_1_09, ',
'       0 mes_1_092, ',
'       0 mes_1_093, ',
'       0 mes_1_10, ',
'       0 mes_1_102, ',
'       0 mes_1_103, ',
'       0 mes_1_11, ',
'       0 mes_1_112, ',
'       0 mes_1_113, ',
'       0 mes_1_12, ',
'       0 mes_1_122, ',
'       0 mes_1_123, ',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_01, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cam'
||'bio_moneda_precio,1)) ), 0 ) ) mes_2_01,',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_01, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_012'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_01, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_013'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_02, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cam'
||'bio_moneda_precio,1)) ), 0 ) ) mes_2_02,',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_02, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_022'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_02, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_023'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_03, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cam'
||'bio_moneda_precio,1)) ), 0 ) ) mes_2_03,',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_03, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_032'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_03, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_033'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_04, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cam'
||'bio_moneda_precio,1)) ), 0 ) ) mes_2_04,',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_04, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_042'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_04, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_043'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_05, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cam'
||'bio_moneda_precio,1)) ), 0 ) ) mes_2_05,',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_05, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_052'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_05, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_053'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_06, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cam'
||'bio_moneda_precio,1)) ), 0 ) ) mes_2_06,',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_06, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_062'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_06, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_063'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_07, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cam'
||'bio_moneda_precio,1)) ), 0 ) ) mes_2_07,',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_07, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_072'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_07, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_073'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_08, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cam'
||'bio_moneda_precio,1)) ), 0 ) ) mes_2_08,',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_08, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_082'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_08, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_083'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_09, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cam'
||'bio_moneda_precio,1)) ), 0 ) ) mes_2_09,',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_09, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_092'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_09, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_093'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_10, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cam'
||'bio_moneda_precio,1)) ), 0 ) ) mes_2_10,',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_10, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_102'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_10, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_103'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_11, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cam'
||'bio_moneda_precio,1)) ), 0 ) ) mes_211,',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_11, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_112'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_11, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_113'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_12, decode( tc.saldos, ''R'', decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cambio_moneda_precio,1)) * -1, decode(cc.cod_moneda,''1'',nvl( cd.monto_total, 0 )/nvl(cc.cam'
||'bio_moneda_precio,1)) ), 0 ) ) mes_2_12,',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_12, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''1'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_122'
||',',
'       sum( decode( to_char( cc.fec_comprobante, ''MM/YYYY'' ), :P181_MES_2_12, decode( tc.saldos, ''R'', decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) * -1, decode(nvl(cc.cod_moneda,''1''),''2'',nvl( cd.monto_total, 0 ),0) ), 0 ) ) mes_2_123',
'',
'  FROM vt_comprobantes_cabecera cc, tipos_comprobantes tc, parametros_generales pg,',
'        monedas mo, vt_comprobantes_detalle cd, fv_vendedores ve, st_articulos ar, st_rubro ru, cc_clientes cl  ,',
'        fv_grupos_vendedores gv,  fv_grupos_vendedores_ven gvv',
'  WHERE cc.cod_empresa = :P_COD_EMPRESA',
'  AND gvv.cod_empresa = cc.cod_empresa',
'  AND gvv.cod_vendedor_rel = cc.cod_vendedor',
'  AND gv.cod_empresa = gvv.cod_empresa',
'  AND gv.cod_grupo_ven = gvv.cod_grupo_ven',
'  --AND (:p_cod_consolidado is null or gv.cod_vendedor = :p_cod_consolidado)',
'  AND cc.fec_comprobante >= to_date( ''01/01'' || :P181_ANIO_2, ''DD/MM/YYYY'' )',
'  AND to_char( cc.fec_comprobante, ''YYYY'' ) =  :P181_ANIO_2',
'  AND ( :P181_COD_SUCURSAL IS NULL OR cc.cod_sucursal = :P181_COD_SUCURSAL )',
'  AND ( :P181_COD_VENDEDOR IS NULL OR /*( :p_cod_persona_vendedor is null and*/ cc.cod_vendedor =:P181_COD_VENDEDOR ) /*)*/',
'  AND ( :P181_TIP_COMPROBANTE IS NULL OR cc.tip_comprobante = :P181_TIP_COMPROBANTE )',
'  AND ( :P181_COD_RUBRO IS NULL OR ar.cod_rubro = :P181_COD_RUBRO )',
'  AND ( :P181_COD_FAMILIA IS NULL OR ar.cod_familia = :P181_COD_FAMILIA )',
'  AND ( :P181_COD_LINEA IS NULL OR ar.cod_linea = :P181_COD_LINEA )',
'  AND ( :P181_COD_GRUPO_ART IS NULL OR ar.cod_grupo_art = :P181_COD_GRUPO_ART )',
'  AND ( :P181_COD_GRUPO IS NULL OR ar.cod_grupo = :P181_COD_GRUPO )',
'  AND ( :P181_COD_MARCA IS NULL OR ar.cod_marca = :P181_COD_MARCA )',
'  AND ( :P181_COD_ZONA  is null or cl.cod_zona  = :P181_COD_ZONA  )',
'  AND ( :P181_COD_CLIENTE_DES  is null or cl.cod_cliente  between :P181_COD_CLIENTE_DES and :P181_COD_CLIENTE_HAS )',
'  AND cc.cod_empresa = tc.cod_empresa',
'  AND ( cc.tip_comprobante = tc.tip_comprobante )',
'  AND ( cc.estado IS NULL OR cc.estado <> ''A'' )',
'  AND cc.cod_empresa = ve.cod_empresa (+)',
'  AND cc.cod_vendedor = ve.cod_vendedor (+)',
'  AND cc.cod_empresa = cd.cod_empresa',
'  AND cc.tip_comprobante = cd.tip_comprobante',
'  AND cc.ser_comprobante = cd.ser_comprobante',
'  AND cc.nro_comprobante = cd.nro_comprobante',
'  AND cc.cod_empresa     = cl.cod_empresa',
'  AND cc.cod_cliente     = cl.cod_cliente',
'  AND ar.cod_empresa = cd.cod_empresa',
'  AND ar.cod_articulo = cd.cod_articulo',
'  AND pg.parametro = ''COD_MONEDA_PREC''',
'  AND ltrim( rtrim( pg.valor ) ) = ltrim( rtrim( mo.cod_moneda ) )',
'  AND ar.cod_empresa = ru.cod_empresa',
'  AND ar.cod_rubro = ru.cod_rubro',
'  AND :P181_INDICADOR_CARGA_REPORTE = ''1''',
'  GROUP BY cc.cod_empresa, ar.cod_rubro, ru.descripcion,  cl.cod_cliente, mo.decimales',
'  ORDER BY 1, 2, 4'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P181_MES_1_01,P181_MES_1_02,P181_MES_1_03,P181_MES_1_04,P181_MES_1_05,P181_MES_1_06,P181_MES_1_07,P181_MES_1_08,P181_MES_1_09,P181_MES_1_10,P181_MES_1_11,P181_MES_1_12,P181_MES_2_01,P181_MES_2_02,P181_MES_2_03,P181_MES_2_04,P181_MES_2_05,P181_MES_2_0'
||'6,P181_MES_2_07,P181_MES_2_08,P181_MES_2_09,P181_MES_2_10,P181_MES_2_11,P181_MES_2_12,P181_COD_SUCURSAL,P181_TIP_COMPROBANTE,P181_COD_CLIENTE_DES,P181_COD_CLIENTE_HAS,P181_COD_VENDEDOR,P181_COD_ZONA,P181_COD_PROVEEDOR,P181_COD_RUBRO,P181_COD_FAMILIA,'
||'P181_COD_LINEA,P181_COD_GRUPO,P181_COD_GRUPO_ART,P181_COD_MARCA,P181_ANIO_1,P181_ANIO_2,P181_CONSOLIDADO,P181_MES_1_01,P181_MES_1_02,P181_MES_1_03,P181_MES_1_04,P181_MES_1_05,P181_MES_1_06,P181_MES_1_07,P181_MES_1_08,P181_MES_1_09,P181_MES_1_10,P181_'
||'MES_1_11,P181_MES_1_12,P181_MES_2_01,P181_MES_2_02,P181_MES_2_03,P181_MES_2_04,P181_MES_2_05,P181_MES_2_06,P181_MES_2_07,P181_MES_2_08,P181_MES_2_09,P181_MES_2_10,P181_MES_2_11,P181_MES_2_12,P181_INDICADOR_CARGA_REPORTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reporte 1'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(162292361679297802)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DFINO'
,p_internal_uid=>162292361679297802
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162292624701297805)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'C'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162292750493297806)
,p_db_column_name=>'COD_RUBRO'
,p_display_order=>20
,p_column_identifier=>'D'
,p_column_label=>'Cod Rubro'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162292841481297807)
,p_db_column_name=>'DESC_RUBRO'
,p_display_order=>30
,p_column_identifier=>'E'
,p_column_label=>'Desc Rubro'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162292971902297808)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>40
,p_column_identifier=>'F'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162293087687297809)
,p_db_column_name=>'DECIMALES'
,p_display_order=>50
,p_column_identifier=>'G'
,p_column_label=>'Decimales'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162293165282297810)
,p_db_column_name=>'MES_1_01'
,p_display_order=>60
,p_column_identifier=>'H'
,p_column_label=>'Mes 1 01'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162293207126297811)
,p_db_column_name=>'MES_1_012'
,p_display_order=>70
,p_column_identifier=>'I'
,p_column_label=>'Mes 1 012'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162293304778297812)
,p_db_column_name=>'MES_1_013'
,p_display_order=>80
,p_column_identifier=>'J'
,p_column_label=>'Mes 1 013'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162293477368297813)
,p_db_column_name=>'MES_1_02'
,p_display_order=>90
,p_column_identifier=>'K'
,p_column_label=>'Mes 1 02'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162293544037297814)
,p_db_column_name=>'MES_1_022'
,p_display_order=>100
,p_column_identifier=>'L'
,p_column_label=>'Mes 1 022'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162293601949297815)
,p_db_column_name=>'MES_1_023'
,p_display_order=>110
,p_column_identifier=>'M'
,p_column_label=>'Mes 1 023'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162293729145297816)
,p_db_column_name=>'MES_1_03'
,p_display_order=>120
,p_column_identifier=>'N'
,p_column_label=>'Mes 1 03'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162293890969297817)
,p_db_column_name=>'MES_1_032'
,p_display_order=>130
,p_column_identifier=>'O'
,p_column_label=>'Mes 1 032'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162293965752297818)
,p_db_column_name=>'MES_1_033'
,p_display_order=>140
,p_column_identifier=>'P'
,p_column_label=>'Mes 1 033'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162294056480297819)
,p_db_column_name=>'MES_1_04'
,p_display_order=>150
,p_column_identifier=>'Q'
,p_column_label=>'Mes 1 04'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162294108119297820)
,p_db_column_name=>'MES_1_042'
,p_display_order=>160
,p_column_identifier=>'R'
,p_column_label=>'Mes 1 042'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162294298144297821)
,p_db_column_name=>'MES_1_043'
,p_display_order=>170
,p_column_identifier=>'S'
,p_column_label=>'Mes 1 043'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162294357396297822)
,p_db_column_name=>'MES_1_05'
,p_display_order=>180
,p_column_identifier=>'T'
,p_column_label=>'Mes 1 05'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162294462822297823)
,p_db_column_name=>'MES_1_052'
,p_display_order=>190
,p_column_identifier=>'U'
,p_column_label=>'Mes 1 052'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162294509017297824)
,p_db_column_name=>'MES_1_053'
,p_display_order=>200
,p_column_identifier=>'V'
,p_column_label=>'Mes 1 053'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162294614769297825)
,p_db_column_name=>'MES_1_06'
,p_display_order=>210
,p_column_identifier=>'W'
,p_column_label=>'Mes 1 06'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162294791619297826)
,p_db_column_name=>'MES_1_062'
,p_display_order=>220
,p_column_identifier=>'X'
,p_column_label=>'Mes 1 062'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162294822493297827)
,p_db_column_name=>'MES_1_063'
,p_display_order=>230
,p_column_identifier=>'Y'
,p_column_label=>'Mes 1 063'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162294981758297828)
,p_db_column_name=>'MES_1_07'
,p_display_order=>240
,p_column_identifier=>'Z'
,p_column_label=>'Mes 1 07'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162295096015297829)
,p_db_column_name=>'MES_1_072'
,p_display_order=>250
,p_column_identifier=>'AA'
,p_column_label=>'Mes 1 072'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162295127798297830)
,p_db_column_name=>'MES_1_073'
,p_display_order=>260
,p_column_identifier=>'AB'
,p_column_label=>'Mes 1 073'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162295239771297831)
,p_db_column_name=>'MES_1_08'
,p_display_order=>270
,p_column_identifier=>'AC'
,p_column_label=>'Mes 1 08'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162295364373297832)
,p_db_column_name=>'MES_1_082'
,p_display_order=>280
,p_column_identifier=>'AD'
,p_column_label=>'Mes 1 082'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162295418682297833)
,p_db_column_name=>'MES_1_083'
,p_display_order=>290
,p_column_identifier=>'AE'
,p_column_label=>'Mes 1 083'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162295540953297834)
,p_db_column_name=>'MES_1_09'
,p_display_order=>300
,p_column_identifier=>'AF'
,p_column_label=>'Mes 1 09'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162295625597297835)
,p_db_column_name=>'MES_1_092'
,p_display_order=>310
,p_column_identifier=>'AG'
,p_column_label=>'Mes 1 092'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162295760238297836)
,p_db_column_name=>'MES_1_093'
,p_display_order=>320
,p_column_identifier=>'AH'
,p_column_label=>'Mes 1 093'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162295842951297837)
,p_db_column_name=>'MES_1_10'
,p_display_order=>330
,p_column_identifier=>'AI'
,p_column_label=>'Mes 1 10'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162295977181297838)
,p_db_column_name=>'MES_1_102'
,p_display_order=>340
,p_column_identifier=>'AJ'
,p_column_label=>'Mes 1 102'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162296070973297839)
,p_db_column_name=>'MES_1_103'
,p_display_order=>350
,p_column_identifier=>'AK'
,p_column_label=>'Mes 1 103'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162296182437297840)
,p_db_column_name=>'MES_1_11'
,p_display_order=>360
,p_column_identifier=>'AL'
,p_column_label=>'Mes 1 11'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162296242612297841)
,p_db_column_name=>'MES_1_112'
,p_display_order=>370
,p_column_identifier=>'AM'
,p_column_label=>'Mes 1 112'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162296398855297842)
,p_db_column_name=>'MES_1_113'
,p_display_order=>380
,p_column_identifier=>'AN'
,p_column_label=>'Mes 1 113'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162296417683297843)
,p_db_column_name=>'MES_1_12'
,p_display_order=>390
,p_column_identifier=>'AO'
,p_column_label=>'Mes 1 12'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162296504811297844)
,p_db_column_name=>'MES_1_122'
,p_display_order=>400
,p_column_identifier=>'AP'
,p_column_label=>'Mes 1 122'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162296611453297845)
,p_db_column_name=>'MES_1_123'
,p_display_order=>410
,p_column_identifier=>'AQ'
,p_column_label=>'Mes 1 123'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162296700123297846)
,p_db_column_name=>'MES_2_01'
,p_display_order=>420
,p_column_identifier=>'AR'
,p_column_label=>'Mes 2 01'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162296824520297847)
,p_db_column_name=>'MES_2_012'
,p_display_order=>430
,p_column_identifier=>'AS'
,p_column_label=>'Mes 2 012'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162296979550297848)
,p_db_column_name=>'MES_2_013'
,p_display_order=>440
,p_column_identifier=>'AT'
,p_column_label=>'Mes 2 013'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162297025610297849)
,p_db_column_name=>'MES_2_02'
,p_display_order=>450
,p_column_identifier=>'AU'
,p_column_label=>'Mes 2 02'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162297183460297850)
,p_db_column_name=>'MES_2_022'
,p_display_order=>460
,p_column_identifier=>'AV'
,p_column_label=>'Mes 2 022'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162300231923271101)
,p_db_column_name=>'MES_2_023'
,p_display_order=>470
,p_column_identifier=>'AW'
,p_column_label=>'Mes 2 023'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162300378849271102)
,p_db_column_name=>'MES_2_03'
,p_display_order=>480
,p_column_identifier=>'AX'
,p_column_label=>'Mes 2 03'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162300429215271103)
,p_db_column_name=>'MES_2_032'
,p_display_order=>490
,p_column_identifier=>'AY'
,p_column_label=>'Mes 2 032'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162300554724271104)
,p_db_column_name=>'MES_2_033'
,p_display_order=>500
,p_column_identifier=>'AZ'
,p_column_label=>'Mes 2 033'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162300661495271105)
,p_db_column_name=>'MES_2_04'
,p_display_order=>510
,p_column_identifier=>'BA'
,p_column_label=>'Mes 2 04'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162300718533271106)
,p_db_column_name=>'MES_2_042'
,p_display_order=>520
,p_column_identifier=>'BB'
,p_column_label=>'Mes 2 042'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162300859366271107)
,p_db_column_name=>'MES_2_043'
,p_display_order=>530
,p_column_identifier=>'BC'
,p_column_label=>'Mes 2 043'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162300911056271108)
,p_db_column_name=>'MES_2_05'
,p_display_order=>540
,p_column_identifier=>'BD'
,p_column_label=>'Mes 2 05'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162301010712271109)
,p_db_column_name=>'MES_2_052'
,p_display_order=>550
,p_column_identifier=>'BE'
,p_column_label=>'Mes 2 052'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162301122334271110)
,p_db_column_name=>'MES_2_053'
,p_display_order=>560
,p_column_identifier=>'BF'
,p_column_label=>'Mes 2 053'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162301209484271111)
,p_db_column_name=>'MES_2_06'
,p_display_order=>570
,p_column_identifier=>'BG'
,p_column_label=>'Mes 2 06'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162301346876271112)
,p_db_column_name=>'MES_2_062'
,p_display_order=>580
,p_column_identifier=>'BH'
,p_column_label=>'Mes 2 062'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162301456540271113)
,p_db_column_name=>'MES_2_063'
,p_display_order=>590
,p_column_identifier=>'BI'
,p_column_label=>'Mes 2 063'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162301588775271114)
,p_db_column_name=>'MES_2_07'
,p_display_order=>600
,p_column_identifier=>'BJ'
,p_column_label=>'Mes 2 07'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162301627849271115)
,p_db_column_name=>'MES_2_072'
,p_display_order=>610
,p_column_identifier=>'BK'
,p_column_label=>'Mes 2 072'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162301756522271116)
,p_db_column_name=>'MES_2_073'
,p_display_order=>620
,p_column_identifier=>'BL'
,p_column_label=>'Mes 2 073'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162301873829271117)
,p_db_column_name=>'MES_2_08'
,p_display_order=>630
,p_column_identifier=>'BM'
,p_column_label=>'Mes 2 08'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162301948370271118)
,p_db_column_name=>'MES_2_082'
,p_display_order=>640
,p_column_identifier=>'BN'
,p_column_label=>'Mes 2 082'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162302076559271119)
,p_db_column_name=>'MES_2_083'
,p_display_order=>650
,p_column_identifier=>'BO'
,p_column_label=>'Mes 2 083'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162302182101271120)
,p_db_column_name=>'MES_2_09'
,p_display_order=>660
,p_column_identifier=>'BP'
,p_column_label=>'Mes 2 09'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162302247112271121)
,p_db_column_name=>'MES_2_092'
,p_display_order=>670
,p_column_identifier=>'BQ'
,p_column_label=>'Mes 2 092'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162302397005271122)
,p_db_column_name=>'MES_2_093'
,p_display_order=>680
,p_column_identifier=>'BR'
,p_column_label=>'Mes 2 093'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162302454038271123)
,p_db_column_name=>'MES_2_10'
,p_display_order=>690
,p_column_identifier=>'BS'
,p_column_label=>'Mes 2 10'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162302592085271124)
,p_db_column_name=>'MES_2_102'
,p_display_order=>700
,p_column_identifier=>'BT'
,p_column_label=>'Mes 2 102'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162302656201271125)
,p_db_column_name=>'MES_2_103'
,p_display_order=>710
,p_column_identifier=>'BU'
,p_column_label=>'Mes 2 103'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162302727065271126)
,p_db_column_name=>'MES_2_11'
,p_display_order=>720
,p_column_identifier=>'BV'
,p_column_label=>'Mes 2 11'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162302808186271127)
,p_db_column_name=>'MES_2_112'
,p_display_order=>730
,p_column_identifier=>'BW'
,p_column_label=>'Mes 2 112'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162302959980271128)
,p_db_column_name=>'MES_2_113'
,p_display_order=>740
,p_column_identifier=>'BX'
,p_column_label=>'Mes 2 113'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162303052449271129)
,p_db_column_name=>'MES_2_12'
,p_display_order=>750
,p_column_identifier=>'BY'
,p_column_label=>'Mes 2 12'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162303199700271130)
,p_db_column_name=>'MES_2_122'
,p_display_order=>760
,p_column_identifier=>'BZ'
,p_column_label=>'Mes 2 122'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(162303249406271131)
,p_db_column_name=>'MES_2_123'
,p_display_order=>770
,p_column_identifier=>'CA'
,p_column_label=>'Mes 2 123'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(162298084776295999)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1622981'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(102997297806213209)
,p_plug_name=>'REPORTE 2'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>130
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    BEGIN',
'        htp.p(''<table style="border-style: solid;border-width: 2px;width: 100%;">'');',
'        ',
'            htp.p(''<tr>'');',
'                htp.p(''<td style="text-align:center;background:#97bbc473;">REPORTE</td>'');',
'                for c in (select c003 from apex_collections where collection_name = ''REPORTE_PARTE_1'')',
'                loop',
'                    htp.p(''<td style="text-align:center;background:#97bbc473;">''||c.c003||''</td>'');',
'                end loop;',
'            htp.p(''</tr>'');',
'            ',
'            ',
'        htp.p(''</table>'');',
'',
'    END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30806687120914210)
,p_button_sequence=>200
,p_button_plug_id=>wwv_flow_imp.id(35461683877564323)
,p_button_name=>'P181_BOTON_EJECUTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(58739130060978810)
,p_button_sequence=>210
,p_button_plug_id=>wwv_flow_imp.id(35461683877564323)
,p_button_name=>'P181_BOTON_EJECUTAR_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(103703104728602745)
,p_button_sequence=>220
,p_button_plug_id=>wwv_flow_imp.id(35461683877564323)
,p_button_name=>'P181_BOTON_LIMPIAR_CAMPOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar Campos'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35461337871564320)
,p_name=>'P181_FAC_CONTADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(35461253719564319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35461438403564321)
,p_name=>'P181_NOT_CREDITO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(35461253719564319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35461512336564322)
,p_name=>'P181_FAC_CREDITO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(35461253719564319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35461798202564324)
,p_name=>'P181_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(35461683877564323)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVSUCURSALES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_sucursal||'' - '' ||descripcion D, ',
'         cod_sucursal R',
'    FROM sucursales',
'    WHERE COD_EMPRESA = :P_COD_EMPRESA',
'ORDER BY descripcion;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35461926418564326)
,p_name=>'P181_TIP_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(35461683877564323)
,p_prompt=>'Comprobante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT descripcion, tip_comprobante ',
'FROM tipos_comprobantes ',
'WHERE cod_empresa = :P_COD_EMPRESA',
'AND tip_comprobante in(:P181_FAC_CONTADO, :P181_FAC_CREDITO, :P181_NOT_CREDITO) ',
'AND cod_modulo = ''VT'' ',
'ORDER BY descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35462152196564328)
,p_name=>'P181_COD_CLIENTE_DES'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(35461683877564323)
,p_prompt=>'Cliente desde'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES1'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nombre,',
'       nomb_fantasia,',
'       cod_cliente,',
'       codigo_area,',
'       num_telefono,',
'       cod_ident,',
'       numero,',
'       cod_ident||'' - ''||nombre DESCRI,',
'       c.cod_cliente codi',
'  FROM cc_clientes c, personas p, telef_personas pt, ident_personas pi',
' WHERE c.cod_empresa = :P_COD_EMPRESA',
'   AND c.cod_persona = p.cod_persona',
'   AND p.cod_persona = pt.cod_persona(+)',
'   AND p.cod_persona = pi.cod_persona(+)',
'   AND nvl(c.estado, ''X'') in(''A'',''B'',''C'')',
' ORDER BY nombre'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35462355277564330)
,p_name=>'P181_COD_CLIENTE_HAS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(35461683877564323)
,p_prompt=>'Cliente hasta'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES1'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nombre,',
'       nomb_fantasia,',
'       cod_cliente,',
'       codigo_area,',
'       num_telefono,',
'       cod_ident,',
'       numero,',
'       cod_ident||'' - ''||nombre DESCRI,',
'       c.cod_cliente codi',
'  FROM cc_clientes c, personas p, telef_personas pt, ident_personas pi',
' WHERE c.cod_empresa = :P_COD_EMPRESA',
'   AND c.cod_persona = p.cod_persona',
'   AND p.cod_persona = pt.cod_persona(+)',
'   AND p.cod_persona = pi.cod_persona(+)',
'   AND nvl(c.estado, ''X'') in(''A'',''B'',''C'')',
' ORDER BY nombre'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35462543158564332)
,p_name=>'P181_COD_VENDEDOR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(35461683877564323)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVVENDEDORES1'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT v.cod_vendedor||'' - ''||ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) D,  ',
'         v.cod_vendedor R',
'    FROM fv_vendedores v, personas p ',
'   WHERE  v.cod_empresa = :P_COD_EMPRESA',
'     AND v.cod_persona = p.cod_persona ',
'     AND nvl( v.estado, ''A'' ) = ''A'' ',
'order by 1;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35462760568564334)
,p_name=>'P181_COD_ZONA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(35461683877564323)
,p_prompt=>'Zona'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ZONA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_zona||'' - ''||descripcion D, ',
'         cod_zona R',
'    FROM zonas_geograficas ',
'ORDER BY 1;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35462963113564336)
,p_name=>'P181_COD_PROVEEDOR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(35461683877564323)
,p_prompt=>'Proveedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PROVEEDORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_proveedor||'' - ''||ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) D, c.cod_proveedor R,c.cod_persona',
'from cm_proveedores c, personas p',
'where c.cod_empresa = :P_COD_EMPRESA',
'and c.cod_persona = p.cod_persona ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35463192040564338)
,p_name=>'P181_COD_RUBRO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(35461683877564323)
,p_prompt=>'Rubro'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_RUBROS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_rubro||'' - ''||descripcion D, ',
'         cod_rubro R',
'    FROM st_rubro ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY descripcion;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35463331741564340)
,p_name=>'P181_COD_FAMILIA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(35461683877564323)
,p_prompt=>'Familia'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_FAMILIA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_familia||'' - ''||descripcion D, ',
'       cod_familia R',
'  FROM st_familia',
'  WHERE COD_EMPRESA=:P_COD_EMPRESA',
'  AND ESTADO=''S'';'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35463585495564342)
,p_name=>'P181_COD_LINEA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(35461683877564323)
,p_prompt=>'Linea'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_LINEAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_linea||'' - ''||descripcion D, cod_linea R',
'from st_linea ',
' ',
'  WHERE COD_EMPRESA=:P_COD_EMPRESA',
'  AND ESTADO IN(''S'',''A'') ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35463750237564344)
,p_name=>'P181_COD_GRUPO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(35461683877564323)
,p_prompt=>'Grupo de art'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_GRUPOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- 181 - VTRVTMVE',
'',
'SELECT COD_GRUPO || '' - '' || descripcion D, cod_grupo R',
'FROM st_grupos ',
'WHERE cod_empresa = :P_COD_EMPRESA ',
'ORDER BY descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35463955533564346)
,p_name=>'P181_COD_GRUPO_ART'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(35461683877564323)
,p_prompt=>'Grupo de prec'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_GRUPOS_ART'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- 181 - VTRVTMVE',
'',
'SELECT COD_GRUPO_ART || '' - '' || DESCRIPCION D, COD_GRUPO_ART R',
'FROM ST_GRUPOS_ART',
'ORDER BY DESCRIPCION;',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35464192775564348)
,p_name=>'P181_COD_MARCA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(35461683877564323)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MARCAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_marca||'' - ''||descripcion D, cod_marca R',
'from st_marcas',
'order by descripcion;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35464394976564350)
,p_name=>'P181_ANIO_1'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(35461683877564323)
,p_prompt=>unistr('A\00F1os desde')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36969876411368001)
,p_name=>'P181_ANIO_2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(35461683877564323)
,p_prompt=>unistr('A\00F1os hasta')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36969913291368002)
,p_name=>'P181_CONSOLIDADO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(35461683877564323)
,p_prompt=>'Consolidar Vendedores'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37322047623449302)
,p_name=>'P181_MES_DESDE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(35461683877564323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37322138005449303)
,p_name=>'P181_MES_HASTA'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(35461683877564323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37322242665449304)
,p_name=>'P181_MES_1_01'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(37322491214449306)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37322354699449305)
,p_name=>'P181_MES_1_02'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(37322491214449306)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37322597613449307)
,p_name=>'P181_MES_1_03'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(37322491214449306)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37322671534449308)
,p_name=>'P181_MES_1_04'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(37322491214449306)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37322746208449309)
,p_name=>'P181_MES_1_05'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(37322491214449306)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37322852087449310)
,p_name=>'P181_MES_1_06'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(37322491214449306)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37322923735449311)
,p_name=>'P181_MES_1_07'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(37322491214449306)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37323094531449312)
,p_name=>'P181_MES_1_08'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(37322491214449306)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37323137391449313)
,p_name=>'P181_MES_1_09'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(37322491214449306)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37323235767449314)
,p_name=>'P181_MES_1_10'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(37322491214449306)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37323368856449315)
,p_name=>'P181_MES_1_11'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(37322491214449306)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37323424289449316)
,p_name=>'P181_MES_1_12'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(37322491214449306)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37323848807449320)
,p_name=>'P181_MES_2_01'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(37323730625449319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37323941690449321)
,p_name=>'P181_MES_2_02'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(37323730625449319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37324003047449322)
,p_name=>'P181_MES_2_03'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(37323730625449319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37324124494449323)
,p_name=>'P181_MES_2_04'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(37323730625449319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37324205004449324)
,p_name=>'P181_MES_2_05'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(37323730625449319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37324343465449325)
,p_name=>'P181_MES_2_06'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(37323730625449319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37324457344449326)
,p_name=>'P181_MES_2_07'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(37323730625449319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37324512425449327)
,p_name=>'P181_MES_2_08'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(37323730625449319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37324648526449328)
,p_name=>'P181_MES_2_09'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(37323730625449319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37324724620449329)
,p_name=>'P181_MES_2_10'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(37323730625449319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37324814975449330)
,p_name=>'P181_MES_2_11'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(37323730625449319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37324932284449331)
,p_name=>'P181_MES_2_12'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(37323730625449319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39384168197974348)
,p_name=>'P181_INDICADOR_CARGA_REPORTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(35461253719564319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42375001545157832)
,p_name=>'P181_INDICADOR_ALERT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(35461253719564319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46969925373983634)
,p_name=>'P181_URL'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(35461683877564323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103702840253602742)
,p_name=>'P181_OTROS_VENDEDORES'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(35461253719564319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103702916183602743)
,p_name=>'P181_COD_MODULO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(35461253719564319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103703087163602744)
,p_name=>'P181_COD_FORMA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(35461253719564319)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36971595146368018)
,p_name=>'DA_LLAMAR_REPORTE'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P181_FEC_VALIDA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36971611587368019)
,p_event_id=>wwv_flow_imp.id(36971595146368018)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P181_FEC_VALIDA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36971712502368020)
,p_event_id=>wwv_flow_imp.id(36971595146368018)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'LLAMAR_REPORTE'
,p_attribute_02=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P181_FEC_VALIDA'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37325046936449332)
,p_name=>'DA_SETEAR_MESES'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(30806687120914210)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37325174869449333)
,p_event_id=>wwv_flow_imp.id(37325046936449332)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
unistr('-- A\00F1o anterior'),
'',
':P181_MES_1_01 := ''01/'' || :P181_ANIO_2;',
':P181_MES_1_02 := ''02/'' || :P181_ANIO_2;',
':P181_MES_1_03 := ''03/'' || :P181_ANIO_2;',
':P181_MES_1_04 := ''04/'' || :P181_ANIO_2;',
':P181_MES_1_05 := ''05/'' || :P181_ANIO_2;',
':P181_MES_1_06 := ''06/'' || :P181_ANIO_2;',
':P181_MES_1_07 := ''07/'' || :P181_ANIO_2;',
':P181_MES_1_08 := ''08/'' || :P181_ANIO_2;',
':P181_MES_1_09 := ''09/'' || :P181_ANIO_2;',
':P181_MES_1_10 := ''10/'' || :P181_ANIO_2;',
':P181_MES_1_11 := ''11/'' || :P181_ANIO_2;',
':P181_MES_1_12 := ''12/'' || :P181_ANIO_2;',
'',
unistr('    -- A\00F1o actual'),
'',
':P181_MES_2_01 := ''01/'' || :P181_ANIO_1;',
':P181_MES_2_02 := ''02/'' || :P181_ANIO_1;',
':P181_MES_2_03 := ''03/'' || :P181_ANIO_1;',
':P181_MES_2_04 := ''04/'' || :P181_ANIO_1;',
':P181_MES_2_05 := ''05/'' || :P181_ANIO_1;',
':P181_MES_2_06 := ''06/'' || :P181_ANIO_1;',
':P181_MES_2_07 := ''07/'' || :P181_ANIO_1;',
':P181_MES_2_08 := ''08/'' || :P181_ANIO_1;',
':P181_MES_2_09 := ''09/'' || :P181_ANIO_1;',
':P181_MES_2_10 := ''10/'' || :P181_ANIO_1;',
':P181_MES_2_11 := ''11/'' || :P181_ANIO_1;',
':P181_MES_2_12 := ''12/'' || :P181_ANIO_1; ',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P181_ANIO_1,P181_ANIO_2'
,p_attribute_03=>'P181_MES_1_01,P181_MES_1_02,P181_MES_1_03,P181_MES_1_04,P181_MES_1_05,P181_MES_1_06,P181_MES_1_07,P181_MES_1_08,P181_MES_1_09,P181_MES_1_10,P181_MES_1_11,P181_MES_1_12,P181_MES_2_01,P181_MES_2_02,P181_MES_2_03,P181_MES_2_04,P181_MES_2_05,P181_MES_2_0'
||'6,P181_MES_2_07,P181_MES_2_08,P181_MES_2_09,P181_MES_2_10,P181_MES_2_11,P181_MES_2_12'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42372226997157804)
,p_name=>'DA_GENERAR_REPORTE'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(30806687120914210)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42375245285157834)
,p_event_id=>wwv_flow_imp.id(42372226997157804)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P181_ANIO_1 IS NULL OR :P181_ANIO_2 IS NULL THEN',
'        :P181_INDICADOR_ALERT := 1;',
'    ELSE',
'        IF :P181_INDICADOR_ALERT = 2 THEN',
'             :P181_INDICADOR_ALERT := 2;',
'        ELSE',
'            :P181_INDICADOR_ALERT := 0;',
'        END IF;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P181_ANIO_1,P181_ANIO_2'
,p_attribute_03=>'P181_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42375300802157835)
,p_event_id=>wwv_flow_imp.id(42372226997157804)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Los a\00F1os de inicio y fin no pueden ser nulas.')
,p_attribute_02=>unistr('Compruebe los a\00F1os ingresados')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P181_INDICADOR_ALERT'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42375432283157836)
,p_event_id=>wwv_flow_imp.id(42372226997157804)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P181_ANIO_1 > :P181_ANIO_2 THEN',
'        :P181_INDICADOR_ALERT := 2;',
'    ELSE',
'        IF :P181_INDICADOR_ALERT = 1 THEN',
'             :P181_INDICADOR_ALERT := 1;',
'        ELSE',
'            :P181_INDICADOR_ALERT := 0;',
'        END IF;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P181_ANIO_1,P181_ANIO_2'
,p_attribute_03=>'P181_INDICADOR_ALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42375548171157837)
,p_event_id=>wwv_flow_imp.id(42372226997157804)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('El a\00F1o inicial no puede ser mayor al a\00F1o final.')
,p_attribute_02=>unistr('Compruebe los a\00F1os ingresados')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P181_INDICADOR_ALERT'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42374952619157831)
,p_event_id=>wwv_flow_imp.id(42372226997157804)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
unistr('-- A\00F1o anterior'),
'',
':P181_MES_1_01 := ''01/'' || :P181_ANIO_1;',
':P181_MES_1_02 := ''02/'' || :P181_ANIO_1;',
':P181_MES_1_03 := ''03/'' || :P181_ANIO_1;',
':P181_MES_1_04 := ''04/'' || :P181_ANIO_1;',
':P181_MES_1_05 := ''05/'' || :P181_ANIO_1;',
':P181_MES_1_06 := ''06/'' || :P181_ANIO_1;',
':P181_MES_1_07 := ''07/'' || :P181_ANIO_1;',
':P181_MES_1_08 := ''08/'' || :P181_ANIO_1;',
':P181_MES_1_09 := ''09/'' || :P181_ANIO_1;',
':P181_MES_1_10 := ''10/'' || :P181_ANIO_1;',
':P181_MES_1_11 := ''11/'' || :P181_ANIO_1;',
':P181_MES_1_12 := ''12/'' || :P181_ANIO_1;',
unistr('    -- A\00F1o actual'),
'',
':P181_MES_2_01 := ''01/'' || :P181_ANIO_2;',
':P181_MES_2_02 := ''02/'' || :P181_ANIO_2;',
':P181_MES_2_03 := ''03/'' || :P181_ANIO_2;',
':P181_MES_2_04 := ''04/'' || :P181_ANIO_2;',
':P181_MES_2_05 := ''05/'' || :P181_ANIO_2;',
':P181_MES_2_06 := ''06/'' || :P181_ANIO_2;',
':P181_MES_2_07 := ''07/'' || :P181_ANIO_2;',
':P181_MES_2_08 := ''08/'' || :P181_ANIO_2;',
':P181_MES_2_09 := ''09/'' || :P181_ANIO_2;',
':P181_MES_2_10 := ''10/'' || :P181_ANIO_2;',
':P181_MES_2_11 := ''11/'' || :P181_ANIO_2;',
':P181_MES_2_12 := ''12/'' || :P181_ANIO_2;',
'',
'-- SETEAR REPORTE PARA SU CARGA',
':P181_INDICADOR_CARGA_REPORTE := ''1'';',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P181_ANIO_1,P181_ANIO_2,P181_INDICADOR_CARGA_REPORTE, P181_MES_1_01,P181_MES_1_02,P181_MES_1_03,P181_MES_1_04,P181_MES_1_05,P181_MES_1_06,P181_MES_1_07,P181_MES_1_08,P181_MES_1_09,P181_MES_1_10,P181_MES_1_11,P181_MES_1_12,P181_MES_2_01,P181_MES_2_02,'
||'P181_MES_2_03,P181_MES_2_04,P181_MES_2_05,P181_MES_2_06,P181_MES_2_07,P181_MES_2_08,P181_MES_2_09,P181_MES_2_10,P181_MES_2_11,P181_MES_2_12'
,p_attribute_03=>'P181_ANIO_1,P181_ANIO_2,P181_MES_1_01,P181_MES_1_02,P181_MES_1_03,P181_MES_1_04,P181_MES_1_05,P181_MES_1_06,P181_MES_1_07,P181_MES_1_08,P181_MES_1_09,P181_MES_1_10,P181_MES_1_11,P181_MES_1_12,P181_MES_2_01,P181_MES_2_02,P181_MES_2_03,P181_MES_2_04,P1'
||'81_MES_2_05,P181_MES_2_06,P181_MES_2_07,P181_MES_2_08,P181_MES_2_09,P181_MES_2_10,P181_MES_2_11,P181_MES_2_12,P181_INDICADOR_CARGA_REPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P181_INDICADOR_ALERT'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103702498950602738)
,p_event_id=>wwv_flow_imp.id(42372226997157804)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   ',
'   VTRVTMCL1.PR_CREAR_COL_REP(PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                              PI_COD_SUCURSAL => :P_COD_SUCURSAL,',
'                              PI_TIP_COMPROBANTE => :P181_TIP_COMPROBANTE,',
'                              PI_COD_CLIENTE_DES => :P181_COD_CLIENTE_DES,',
'                              PI_COD_CLIENTE_HAS => :P181_COD_CLIENTE_HAS,',
'                              PI_COD_VENDEDOR => :P181_COD_VENDEDOR,',
'                              PI_COD_ZONA => :P181_COD_ZONA,',
'                              PI_COD_PROVEEDOR => :P181_COD_PROVEEDOR,',
'                              PI_COD_RUBRO => :P181_COD_RUBRO,',
'                              PI_COD_FAMILIA => :P181_COD_FAMILIA,',
'                              PI_COD_LINEA => :P181_COD_LINEA,',
'                              PI_COD_GRUPO => :P181_COD_GRUPO,',
'                              PI_COD_GRUPO_ART => :P181_COD_GRUPO_ART,',
'                              PI_COD_MARCA => :P181_COD_MARCA,',
'                              PI_ANIO_1 => :P181_ANIO_1,',
'                              PI_ANIO_2 => :P181_ANIO_2,',
'                              PI_CONSOLIDADO => :P181_CONSOLIDADO,',
'                              PI_MES_1_01 => TO_DATE(:P181_MES_1_01, ''MM/YYYY''),',
'                              PI_MES_1_02 => TO_DATE(:P181_MES_1_02, ''MM/YYYY''),',
'                              PI_MES_1_03 => TO_DATE(:P181_MES_1_03, ''MM/YYYY''),',
'                              PI_MES_1_04 => TO_DATE(:P181_MES_1_04, ''MM/YYYY''),',
'                              PI_MES_1_05 => TO_DATE(:P181_MES_1_05, ''MM/YYYY''),',
'                              PI_MES_1_06 => TO_DATE(:P181_MES_1_06, ''MM/YYYY''),',
'                              PI_MES_1_07 => TO_DATE(:P181_MES_1_07, ''MM/YYYY''),',
'                              PI_MES_1_08 => TO_DATE(:P181_MES_1_08, ''MM/YYYY''),',
'                              PI_MES_1_09 => TO_DATE(:P181_MES_1_09, ''MM/YYYY''),',
'                              PI_MES_1_10 => TO_DATE(:P181_MES_1_10, ''MM/YYYY''),',
'                              PI_MES_1_11 => TO_DATE(:P181_MES_1_11, ''MM/YYYY''),',
'                              PI_MES_1_12 => TO_DATE(:P181_MES_1_12, ''MM/YYYY''),',
'                              PI_MES_2_01 => TO_DATE(:P181_MES_2_01, ''MM/YYYY''),',
'                              PI_MES_2_02 => TO_DATE(:P181_MES_2_02, ''MM/YYYY''),',
'                              PI_MES_2_03 => TO_DATE(:P181_MES_2_03, ''MM/YYYY''),',
'                              PI_MES_2_04 => TO_DATE(:P181_MES_2_04, ''MM/YYYY''),',
'                              PI_MES_2_05 => TO_DATE(:P181_MES_2_05, ''MM/YYYY''),',
'                              PI_MES_2_06 => TO_DATE(:P181_MES_2_06, ''MM/YYYY''),',
'                              PI_MES_2_07 => TO_DATE(:P181_MES_2_07, ''MM/YYYY''),',
'                              PI_MES_2_08 => TO_DATE(:P181_MES_2_08, ''MM/YYYY''),',
'                              PI_MES_2_09 => TO_DATE(:P181_MES_2_09, ''MM/YYYY''),',
'                              PI_MES_2_10 => TO_DATE(:P181_MES_2_10, ''MM/YYYY''),',
'                              PI_MES_2_11 => TO_DATE(:P181_MES_2_11, ''MM/YYYY''),',
'                              PI_MES_2_12 => TO_DATE(:P181_MES_2_12, ''MM/YYYY''));  ',
'',
'',
'select APEX_PAGE.GET_URL (p_page   => 173 ) into :P181_URL FROM DUAL;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P_COD_EMPRESA,P_COD_SUCURSAL,P181_TIP_COMPROBANTE,P181_COD_CLIENTE_DES,P181_COD_CLIENTE_HAS,P181_COD_VENDEDOR,P181_COD_ZONA,P181_COD_PROVEEDOR,P181_COD_RUBRO,P181_COD_FAMILIA,P181_COD_LINEA,P181_COD_GRUPO,P181_COD_GRUPO_ART,P181_COD_MARCA,P181_ANIO_1'
||',P181_ANIO_2,P181_CONSOLIDADO,P181_MES_1_01,P181_MES_1_02,P181_MES_1_03,P181_MES_1_04,P181_MES_1_05,P181_MES_1_06,P181_MES_1_07,P181_MES_1_08,P181_MES_1_09,P181_MES_1_10,P181_MES_1_11,P181_MES_1_12,P181_MES_2_01,P181_MES_2_02,P181_MES_2_03,P181_MES_2'
||'_04,P181_MES_2_05,P181_MES_2_06,P181_MES_2_07,P181_MES_2_08,P181_MES_2_09,P181_MES_2_10,P181_MES_2_11,P181_MES_2_12'
,p_attribute_03=>'P181_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104533937154693816)
,p_event_id=>wwv_flow_imp.id(42372226997157804)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_NOM_SUCURSAL VARCHAR2(100);',
'    V_NOM_TIP_COMPROBANTE VARCHAR2(100);',
'    V_NOM_VENDEDOR VARCHAR2(100);',
'    V_NOM_ZONA VARCHAR2(100);',
'    V_NOM_MARCA VARCHAR2(100);',
'    V_NOM_RUBRO VARCHAR2(100);',
'    V_NOM_FAMILIA VARCHAR2(100);',
'    V_NOM_LINEA VARCHAR2(100);',
'    V_NOM_GRUPO_ART VARCHAR2(100);',
'    V_NOM_GRUPO_PRECIO VARCHAR2(100);',
' ',
'BEGIN',
'',
'    VTRVTMCL1.PR_GENERAR_PARAMETROS (PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                     PI_COD_SUCURSAL => :P181_COD_SUCURSAL,',
'                                     PI_TIP_COMPROBANTE => :P181_TIP_COMPROBANTE,',
'                                     PI_COD_VENDEDOR => :P181_COD_VENDEDOR,',
'                                     PI_COD_ZONA => :P181_COD_ZONA,',
'                                     PI_COD_MARCA => :P181_COD_MARCA,',
'                                     PI_COD_RUBRO => :P181_COD_RUBRO,',
'                                     PI_COD_FAMILIA => :P181_COD_FAMILIA,',
'                                     PI_COD_LINEA => :P181_COD_LINEA,',
'                                     PI_COD_GRUPO_ART => :P181_COD_GRUPO,',
'                                     PI_COD_GRUPO_PRECIO => :P181_COD_GRUPO_ART,',
'                                     PO_NOM_SUCURSAL => V_NOM_SUCURSAL,',
'                                     PO_NOM_TIP_COMPROBANTE => V_NOM_TIP_COMPROBANTE,',
'                                     PO_NOM_VENDEDOR => V_NOM_VENDEDOR,',
'                                     PO_NOM_ZONA => V_NOM_ZONA,',
'                                     PO_NOM_MARCA => V_NOM_MARCA,',
'                                     PO_NOM_RUBRO => V_NOM_RUBRO,',
'                                     PO_NOM_FAMILIA => V_NOM_FAMILIA,',
'                                     PO_NOM_LINEA => V_NOM_LINEA,',
'                                     PO_NOM_GRUPO_ART => V_NOM_GRUPO_ART,',
'                                     PO_NOM_GRUPO_PRECIO => V_NOM_GRUPO_PRECIO);',
'',
'    SELECT APEX_PAGE.GET_URL (p_page   => 173,',
'    				          p_items  => ''P173_SUCURSAL,P173_TIP_COMPROBANTE,P173_VENDEDOR,P173_ZONA,P173_ANIO_1,P173_ANIO_2,P173_RUBRO,P173_FAMILIA,P173_LINEA,P173_GRUPO_ARTICULOS,P173_PRECIO,P173_MARCA'',',
'    				          p_values => (''''||V_NOM_SUCURSAL||'',''||V_NOM_TIP_COMPROBANTE||'',''||V_NOM_VENDEDOR||'',''||V_NOM_ZONA||'',''||:P181_ANIO_1||'',''||:P181_ANIO_2||'',''||V_NOM_RUBRO||'',''||V_NOM_FAMILIA||'',''||V_NOM_LINEA||'',''||V_NOM_GRUPO_ART||'',''||V_NOM_GRUPO_'
||'PRECIO||'''')) f_url_1',
'    INTO :P181_URL ',
'    FROM DUAL;',
'',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'',
''))
,p_attribute_02=>'P_COD_EMPRESA,P181_COD_SUCURSAL,P181_TIP_COMPROBANTE,P181_COD_VENDEDOR,P181_COD_ZONA,P181_COD_MARCA,P181_COD_RUBRO,P181_COD_FAMILIA,P181_COD_LINEA,P181_COD_GRUPO,P181_COD_GRUPO_ART'
,p_attribute_03=>'P181_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46970286184983637)
,p_event_id=>wwv_flow_imp.id(42372226997157804)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P181_URL").getValue();',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42374668346157828)
,p_name=>'DA_OCULTAR_REPORTE'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42374743777157829)
,p_event_id=>wwv_flow_imp.id(42374668346157828)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(79792876123706707)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(103703327768602747)
,p_name=>'DA_BORRAR'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(103703104728602745)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103703467802602748)
,p_event_id=>wwv_flow_imp.id(103703327768602747)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'BORRAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(103703522535602749)
,p_name=>'DA_SETEAR_CONSOLIDADO'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P181_CONSOLIDADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103703678372602750)
,p_event_id=>wwv_flow_imp.id(103703522535602749)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P181_CONSOLIDADO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58739253211978811)
,p_name=>'DA_BOTON_EJECUTAR_1'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(58739130060978810)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(842569640413550047)
,p_event_id=>wwv_flow_imp.id(58739253211978811)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var spinner = apex.util.showSpinner(); ',
'$("#apex_wait_overlay").remove(); ',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58739685013978815)
,p_event_id=>wwv_flow_imp.id(58739253211978811)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P181_COD_SUCURSAL,P181_TIP_COMPROBANTE,P181_COD_CLIENTE_DES,P181_COD_CLIENTE_HAS,P181_COD_VENDEDOR,P181_COD_ZONA,P181_COD_PROVEEDOR,P181_COD_RUBRO,P181_COD_FAMILIA,P181_COD_LINEA,P181_COD_GRUPO,P181_COD_GRUPO_ART,P181_COD_MARCA,P181_ANIO_1,P181_ANIO_'
||'2,P181_CONSOLIDADO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(162303307788271132)
,p_event_id=>wwv_flow_imp.id(58739253211978811)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P181_INDICADOR_CARGA_REPORTE := 1;'
,p_attribute_02=>'P181_INDICADOR_CARGA_REPORTE'
,p_attribute_03=>'P181_INDICADOR_CARGA_REPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(842569706292550048)
,p_event_id=>wwv_flow_imp.id(58739253211978811)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58739379343978812)
,p_event_id=>wwv_flow_imp.id(58739253211978811)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(162292217291297801)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(35461149609564318)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
':P181_COD_MODULO := ''VT'';',
':P181_COD_FORMA := ''VTRVTMVE'';',
'',
':P181_OTROS_VENDEDORES := busca_permiso (:P_COD_EMPRESA,',
'                                         :P181_COD_FORMA,',
'                                         :APP_USER,',
'                                         ''LISTAR OTROS VENDEDORES'');',
'',
':P181_FAC_CONTADO := BS_BUSCA_PARAMETRO( ''VT'', ''TIPO_CONTADO'' );',
':P181_FAC_CREDITO := BS_BUSCA_PARAMETRO( ''VT'', ''TIPO_CREDITO'' );',
':P181_NOT_CREDITO := BS_BUSCA_PARAMETRO( ''VT'', ''TIPO_NOTACRE'' );',
'',
':P181_ANIO_1 := TO_CHAR(add_months (sysdate, -12), ''YYYY'');',
':P181_ANIO_2 := TO_CHAR(sysdate, ''YYYY'');',
'',
'',
':P181_MES_DESDE := ''1'';',
':P181_MES_HASTA := ''12'';',
'',
':P181_INDICADOR_CARGA_REPORTE := ''0'';',
':P181_INDICADOR_ALERT := ''0'';',
'--:P181_CONSOLIDADO := ''N'';',
'',
'',
'-- Consultar si este form trae datos de persona, usuario, empresa y meses desde otro form',
'',
'/*',
unistr('  -- A\00F1o anterior'),
'',
':P181_MES_1_01 := ''01/'' || TO_CHAR(:P181_ANIO_2, ''YYYY'');',
':P181_MES_1_02 := ''02/'' || TO_CHAR(:P181_ANIO_2, ''YYYY'');',
':P181_MES_1_03 := ''03/'' || TO_CHAR(:P181_ANIO_2, ''YYYY'');',
':P181_MES_1_04 := ''04/'' || TO_CHAR(:P181_ANIO_2, ''YYYY'');',
':P181_MES_1_05 := ''05/'' || TO_CHAR(:P181_ANIO_2, ''YYYY'');',
':P181_MES_1_06 := ''06/'' || TO_CHAR(:P181_ANIO_2, ''YYYY'');',
':P181_MES_1_07 := ''07/'' || TO_CHAR(:P181_ANIO_2, ''YYYY'');',
':P181_MES_1_08 := ''08/'' || TO_CHAR(:P181_ANIO_2, ''YYYY'');',
':P181_MES_1_09 := ''09/'' || TO_CHAR(:P181_ANIO_2, ''YYYY'');',
':P181_MES_1_10 := ''10/'' || TO_CHAR(:P181_ANIO_2, ''YYYY'');',
':P181_MES_1_11 := ''11/'' || TO_CHAR(:P181_ANIO_2, ''YYYY'');',
':P181_MES_1_12 := ''12/'' || TO_CHAR(:P181_ANIO_2, ''YYYY'');',
'',
unistr('    -- A\00F1o actual'),
'',
':P181_MES_2_01 := ''01/'' || TO_CHAR(:P181_ANIO_1, ''YYYY'');',
':P181_MES_2_02 := ''02/'' || TO_CHAR(:P181_ANIO_1, ''YYYY'');',
':P181_MES_2_03 := ''03/'' || TO_CHAR(:P181_ANIO_1, ''YYYY'');',
':P181_MES_2_04 := ''04/'' || TO_CHAR(:P181_ANIO_1, ''YYYY'');',
':P181_MES_2_05 := ''05/'' || TO_CHAR(:P181_ANIO_1, ''YYYY'');',
':P181_MES_2_06 := ''06/'' || TO_CHAR(:P181_ANIO_1, ''YYYY'');',
':P181_MES_2_07 := ''07/'' || TO_CHAR(:P181_ANIO_1, ''YYYY'');',
':P181_MES_2_08 := ''08/'' || TO_CHAR(:P181_ANIO_1, ''YYYY'');',
':P181_MES_2_09 := ''09/'' || TO_CHAR(:P181_ANIO_1, ''YYYY'');',
':P181_MES_2_10 := ''10/'' || TO_CHAR(:P181_ANIO_1, ''YYYY'');',
':P181_MES_2_11 := ''11/'' || TO_CHAR(:P181_ANIO_1, ''YYYY'');',
':P181_MES_2_12 := ''12/'' || TO_CHAR(:P181_ANIO_1, ''YYYY''); ',
'*/',
'',
'EXCEPTION',
'        WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(103702788917602741)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_BORRAR_COL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'                      APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION (P_COLLECTION_NAME => ''REPORTE_PARTE_1'');',
'                      APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION (P_COLLECTION_NAME => ''REPORTE_PARTE_2'');'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(103703236676602746)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_BORRAR_CAMPOS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'BORRAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp.component_end;
end;
/
