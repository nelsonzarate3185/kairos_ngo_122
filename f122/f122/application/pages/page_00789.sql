prompt --application/pages/page_00789
begin
--   Manifest
--     PAGE: 00789
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
 p_id=>789
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Recibos de salario por empleado'
,p_alias=>'RECIBOS-SALARIOS-POR-EMPLEADOS'
,p_step_title=>'Recibo de salario por empleado'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function doDescarga(p_cod_centro_pago,p_fecha_fin,p_tip_liquid,p_cod_empleado,p_nro_liquid,p_fecha_ini,p_fecha_parametro,p_cod_empresa,p_cod_categoria, p_cod_sucursal,p_cod_area,p_cod_departamento,p_cod_centro_costo,p_ind_firmado ){',
'   /*var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/RHLIQDECREC_CPH.pdf?''',
'            + ''P_COD_CENTRO_PAGO='' + p_cod_centro_pago  + ''&P_FECHA_FIN='' + p_fecha_fin  + ''&P_TIP_LIQUID=''+ p_tip_liquid ',
'            + ''&P_COD_EMPLEADO=''+ p_cod_empleado + ''&P_NRO_LIQUID=''+ p_nro_liquid + ''&P_FECHA_INI=''+ p_fecha_ini',
'            + ''&P_FECHA_PARAMETRO=''+ p_fecha_parametro + ''&P_COD_EMPRESA=''+ p_cod_empresa + ''&P_COD_CATEGORIA=''+ p_cod_categoria ',
'            + ''&P_COD_SUCURSAL=''+ p_cod_sucursal + ''&P_COD_AREA='' + p_cod_area +''&P_COD_DEPARTAMENTO='' + p_cod_departamento',
'            +''&P_COD_CENTRO_COSTO='' + p_cod_centro_costo +''&P_IND_FIRMADO='' + p_ind_firmado',
'            +''&j_username=jasperadmin&j_password=jasperadmin'';*/',
'',
'    var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/RHLIQDECREC.pdf?''',
'            + ''&P_TIP_LIQUID='' + p_tip_liquid',
'            + ''&P_COD_EMPLEADO=''+ p_cod_empleado + ''&P_NRO_LIQUID=''+ p_nro_liquid +''&P_COD_EMPRESA=''+ p_cod_empresa',
'            +''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'OSCARGO'
,p_last_upd_yyyymmddhh24miss=>'20250115172025'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(466478963365830744)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(466479904531830753)
,p_plug_name=>'Recibo de liquidacion de Salarios '
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(345784669597273281)
,p_plug_name=>'RESUMEN SALARIO'
,p_parent_plug_id=>wwv_flow_imp.id(466479904531830753)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>160
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'        to_number(COD_EMPLEADO) cod_empleado,',
'       DESC_NOMBRE,',
'       CI,',
'       NRO_LIQUID,',
'       FEC_LIQUID,',
'       PERIODO,',
'       DESC_CONCEPTOS,',
'       SUM(MONTO_HABER) MONTO_HABER,',
'       SUM(MONTO_DEBE) MONTO_DEBE,',
'       SUM(CANTIDAD) CANTIDAD,',
'       COD_CENTRO_PAGO,',
'       DESC_CENTRO_PAGO,',
'       NRO_PATRONAL',
'  FROM (select cab.cod_empleado,',
'               nvl(per.nombre, per.nomb_fantasia) desc_nombre,',
'               fnc_busca_cedula(PER.COD_PERSONA) CI,',
'               cab.nro_liquid,',
'               cab.fec_liquid,',
'               ''01 al ''||to_char(last_day(cab.fec_liquid), ''dd'')||'' de ''||rtrim(to_char(cab.fec_liquid, ''Month''))||'' de ''||to_char(cab.fec_liquid, ''yyyy'') periodo,',
'               det.cod_concepto,',
'               NVL(CON.DESCRIPCION_RECIBO, con.descripcion) desc_conceptos,',
'               decode(det.tipo, ''H'', det.monto, 0) monto_haber,',
'               decode(det.tipo, ''D'', det.monto, 0) monto_debe,',
'               det.cantidad - nvl((select sum(a1.cantidad)',
'                                     from rh_detalle_liq a1',
'                                    where det.cod_empresa = a1.cod_empresa',
'                                      and det.ser_liquid  = a1.ser_liquid',
'                                      and det.nro_liquid  = a1.nro_liquid',
'                                      and det.cod_empleado= a1.cod_empleado',
'                                      and a1.cantidad     > 0',
'                                      and a1.cod_concepto not in (bs_busca_parametro(''RH'',''RH_CONC_SUELDO''))',
'                                      and det.cod_concepto = bs_busca_parametro(''RH'',''RH_CONC_SUELDO'')',
'                                      and a1.tipo = ''D''',
'                                      AND A1.MONTO > 0),',
'                                   0) cantidad,',
'               det.nro_cuota,',
'               det.observacion,',
'               em.cod_centro_pago,',
'               cen.descripcion desc_centro_pago,',
'               EM.NRO_PATRONAL           ',
'          from rh_cabecera_liq  cab,',
'               rh_detalle_liq   det,',
'               rh_empleados     em,',
'               rh_conceptos     con,',
'               rh_centros_pagos cen,',
'               personas         per',
'         where cab.cod_empresa = :P_COD_EMPRESA',
'           and cab.cod_empleado = :P789_COD_EMPLEADO',
'           and cab.tip_liquid in (''M'',''E'')',
'           and cab.nro_liquid = :P789_NRO_LIQUID',
'           and cab.cod_empresa  = det.cod_empresa',
'           and cab.ser_liquid   = det.ser_liquid',
'           and cab.nro_liquid   = det.nro_liquid',
'           and cab.cod_empleado = det.cod_empleado',
'           --',
'           and cab.cod_empresa  = em.cod_empresa',
'           and cab.cod_empleado = em.cod_empleado',
'           and em.cod_persona   = per.cod_persona',
'           --',
'           AND NVL(DET.MONTO, 0) > 0',
'           --',
'           and em.cod_centro_pago = cen.cod_centro_pago(+)',
'           --',
'           and det.cod_concepto = con.cod_concepto(+)',
'        )',
'GROUP BY COD_EMPLEADO,',
'          DESC_NOMBRE,',
'          CI,',
'          NRO_LIQUID,',
'          FEC_LIQUID,',
'          PERIODO,',
'          DESC_CONCEPTOS,',
'          COD_CENTRO_PAGO,',
'          DESC_CENTRO_PAGO,',
'          NRO_PATRONAL',
'ORDER BY to_number(cod_empleado) asc, NRO_LIQUID, 8 desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P789_COD_EMPLEADO,P789_NRO_LIQUID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'RESUMEN SALARIO'
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(345784744913273282)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'OBOGADO'
,p_internal_uid=>345784744913273282
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258260417912754464)
,p_db_column_name=>'COD_EMPLEADO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empleado'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258260884171754465)
,p_db_column_name=>'DESC_NOMBRE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Desc Nombre'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258261204072754466)
,p_db_column_name=>'CI'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ci'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258261616443754466)
,p_db_column_name=>'NRO_LIQUID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('Nro Liquidaci\00F3n')
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258262097819754466)
,p_db_column_name=>'FEC_LIQUID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('Fecha Liquidaci\00F3n')
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258262440089754466)
,p_db_column_name=>'PERIODO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Periodo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258262815875754466)
,p_db_column_name=>'DESC_CONCEPTOS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>unistr('Descripci\00F3n Conceptos')
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258263286164754467)
,p_db_column_name=>'MONTO_HABER'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Monto Haber'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258263666037754467)
,p_db_column_name=>'MONTO_DEBE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Monto Debe'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258264075592754467)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cantidad'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258264441927754467)
,p_db_column_name=>'COD_CENTRO_PAGO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Centro Pago'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258264881985754468)
,p_db_column_name=>'DESC_CENTRO_PAGO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Desc Centro Pago'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258265256650754468)
,p_db_column_name=>'NRO_PATRONAL'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Nro Patronal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(346346617398100792)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'880958'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_EMPLEADO:CI:NRO_LIQUID:FEC_LIQUID:DESC_CONCEPTOS:CANTIDAD:MONTO_HABER:MONTO_DEBE:APXWS_CC_001:NRO_PATRONAL:'
,p_sum_columns_on_break=>'APXWS_CC_001'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(258265980405754469)
,p_report_id=>wwv_flow_imp.id(346346617398100792)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'H  - I'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_column_type=>'NUMBER'
,p_column_label=>'A percibir'
,p_report_label=>'A percibir'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(258254165987754458)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_imp.id(466479904531830753)
,p_button_name=>'bt_ejecutar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(258251402645754454)
,p_name=>'P789_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(466478963365830744)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(258251824170754455)
,p_name=>'P789_COD_MODULO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(466478963365830744)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(258252218981754455)
,p_name=>'P789_COD_FORMA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(466478963365830744)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(258252652507754456)
,p_name=>'P789_COD_USUARIO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(466478963365830744)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(258253003862754456)
,p_name=>'P789_ASEGURADOS_IPS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(466478963365830744)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(258253420515754456)
,p_name=>'P789_CONC_VACACIONES'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(466478963365830744)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(258254512123754458)
,p_name=>'P789_COD_EMPLEADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(466479904531830753)
,p_prompt=>'Empleado'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  e.cod_empleado||''-''||ltrim( p.nombre) nombre, e.cod_empleado--, decode(activo, ''S'', ''Activo'', ''Inactivo'') estado ',
'from rh_empleados e, personas p ',
'where e.cod_empresa = :P789_COD_EMPRESA',
' and e.cod_persona = p.cod_persona ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>4
,p_grid_column=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(258254970084754459)
,p_name=>'P789_ANIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(466479904531830753)
,p_prompt=>unistr('A\00F1o')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'c.anio descripcion, c.anio codigo',
'  from rh_cabecera_liq c',
'  inner join rh_liquidaciones r on r.cod_empresa = c.cod_empresa',
'  and r.ser_liquid = c.ser_liquid and r.nro_liquid = c.nro_liquid',
'  and NVL(r.publica,''N'') = ''S''',
'  and c.cod_empresa = :P789_COD_EMPRESA',
'  and c.cod_empleado = :P789_COD_EMPLEADO',
' group by c.anio',
' order by c.anio desc'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(258255328379754459)
,p_name=>'P789_NRO_LIQUID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(466479904531830753)
,p_prompt=>'Mes Liquidacion'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select --l.fec_liquid||'' - ''||l.ser_liquid||'' - ''||c.tip_liquid||'' - ''||l.nro_liquid d',
'--c.anio||''-''||c.mes ',
'to_char(l.fec_liquid, ''Month'', ''NLS_DATE_LANGUAGE=spanish'') ||'' del ''||c.anio ',
'as descripcion',
',l.nro_liquid r',
'--c.mes        mes,',
'-- c.anio       anio',
'  from rh_cabecera_liq c, rh_liquidaciones l',
' where c.cod_empresa = :P789_COD_EMPRESA',
'   and c.tip_liquid IN (''M'',''E'')',
'   and c.cod_empresa = l.cod_empresa',
'   and c.nro_liquid = l.nro_liquid',
'   and c.ser_liquid = l.ser_liquid',
'   and c.fec_liquid = l.fec_liquid',
'   and c.cod_empleado = :P789_COD_EMPLEADO',
'   and c.anio = :P789_ANIO',
'   and NVL(l.publica,''N'') = ''S''',
' group by l.fec_liquid,',
'          l.nro_liquid,',
'          l.ser_liquid,',
'          c.tip_liquid,',
'          c.mes,',
'          c.anio',
' order by l.fec_liquid desc'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P789_COD_EMPLEADO,P789_ANIO'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(258255711880754459)
,p_name=>'P789_COD_SUCURSAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(466479904531830753)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(258256111283754459)
,p_name=>'P789_COD_AREA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(466479904531830753)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(258256517307754460)
,p_name=>'P789_COD_DEPARTAMENTO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(466479904531830753)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(258256911885754460)
,p_name=>'P789_COD_CATEGORIA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(466479904531830753)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(258257387528754460)
,p_name=>'P789_COD_CENTRO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(466479904531830753)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(258257722680754460)
,p_name=>'P789_COD_CENTRO_COSTO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(466479904531830753)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(258258145626754460)
,p_name=>'P789_FECHA_INI'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(466479904531830753)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(258258572205754460)
,p_name=>'P789_FECHA_FIN'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(466479904531830753)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(258258962052754461)
,p_name=>'P789_TIPO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(466479904531830753)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(258259336828754461)
,p_name=>'P789_FEC_PARAMETRO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(466479904531830753)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(258259726245754461)
,p_name=>'P789_IND_FIRMADO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(466479904531830753)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'P789_COD_EMPRESA'
,p_display_when2=>'1000'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(258267698997754481)
,p_name=>'DA_EJECUTAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(258254165987754458)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(258268132293754481)
,p_event_id=>wwv_flow_imp.id(258267698997754481)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doDescarga(apex.item(''P789_COD_CENTRO'').getValue(),apex.item(''P789_FECHA_FIN'').getValue()',
',apex.item(''P789_TIPO'').getValue(),apex.item(''P789_COD_EMPLEADO'').getValue()',
',apex.item(''P789_NRO_LIQUID'').getValue(),apex.item(''P789_FECHA_INI'').getValue()',
',apex.item(''P789_FEC_PARAMETRO'').getValue(),apex.item(''P789_COD_EMPRESA'').getValue()',
',apex.item(''P789_COD_CATEGORIA'').getValue(),apex.item(''P789_COD_SUCURSAL'').getValue()',
',apex.item(''P789_COD_AREA'').getValue(),apex.item(''P789_COD_DEPARTAMENTO'').getValue()',
',apex.item(''P789_COD_CENTRO_COSTO'').getValue(),apex.item(''P789_IND_FIRMADO'').getValue())'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(258268552531754482)
,p_name=>'DA_SELECCCIONA_EMPLEADO'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P789_COD_EMPLEADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(258269075505754482)
,p_event_id=>wwv_flow_imp.id(258268552531754482)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal, cod_area, cod_departamento, cod_categoria_emp, cod_centro_pago,',
'cod_centro_costo',
'into :P789_COD_SUCURSAL, :P789_COD_AREA, :P789_COD_DEPARTAMENTO, :P789_COD_CATEGORIA, :P789_COD_CENTRO,',
':P789_COD_CENTRO_COSTO',
'from rh_empleados e ',
'where e.cod_empresa = :P789_COD_EMPRESA and e.cod_empleado = :P789_COD_EMPLEADO;'))
,p_attribute_02=>'P789_COD_EMPRESA,P789_COD_EMPLEADO'
,p_attribute_03=>'P789_COD_SUCURSAL,P789_COD_AREA,P789_COD_CATEGORIA,P789_COD_DEPARTAMENTO,P789_COD_CENTRO,P789_COD_CENTRO_COSTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(258269526949754482)
,p_event_id=>wwv_flow_imp.id(258268552531754482)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P789_NRO_LIQUID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(258266702310754478)
,p_name=>'DA_NRO_LIQUIDACION'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P789_NRO_LIQUID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(618070323576415738)
,p_event_id=>wwv_flow_imp.id(258266702310754478)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P789_NRO_LIQUID is not null then',
'    select cab.tip_liquid into :P789_TIPO ',
'        from rh_cabecera_liq  cab',
'             where cab.cod_empresa = :P_COD_EMPRESA',
'               and cab.cod_empleado = :P789_COD_EMPLEADO',
'               and cab.nro_liquid = :P789_NRO_LIQUID;',
'end if;               '))
,p_attribute_02=>'P789_COD_EMPRESA,P789_COD_EMPLEADO,P789_NRO_LIQUID'
,p_attribute_03=>'P789_TIPO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(258267232044754480)
,p_event_id=>wwv_flow_imp.id(258266702310754478)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(345784669597273281)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(258266311391754478)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   :P789_COD_USUARIO := NVL(:P_COD_USUARIO,USER);',
'   :P789_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'');',
'   :P789_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,NULL);',
'   :P789_COD_MODULO := NVL(:P_COD_MODULO,''RH'');   ',
'   :P789_ASEGURADOS_IPS := bs_busca_parametro (''RH'',''RH_ASEGURADOS_IPS'');',
'   :P789_CONC_VACACIONES := bs_busca_parametro (''RH'',''RH_CONC_VACACIONES'');',
'',
unistr('   -------Obtener c\00F3digo de empleado del usuario que inicio sesi\00F3n-------'),
'    select e.cod_empleado into :P789_COD_EMPLEADO from ASP$USUA0100 u',
'    inner join personas p on p.cod_persona = u.cod_persona and u.usrn = :P_COD_USUARIO',
'    inner join rh_empleados e on e.cod_persona = p.cod_persona and e.cod_empresa = :P_COD_EMPRESA and e.activo = ''S'';',
'    ---------//FIN//-----------',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
