prompt --application/pages/page_00453
begin
--   Manifest
--     PAGE: 00453
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
 p_id=>453
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Planilla de Gastos - RPPLAGAS'
,p_alias=>'RPPLAGAS'
,p_step_title=>'Planilla de Gastos - RPPLAGAS'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function doDescarga(p_cod_empresa, p_cod_planilla, p_cod_repartidor, p_fec_planilla, p_cod_zona){',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/RPPLAGAS.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa + ',
'            ''&P_NRO_PLANILLA='' + p_cod_planilla +',
'            ''&P_COD_REPARTIDOR=''+ p_cod_repartidor  + ',
'            ''&P_FEC_PLANILLA=''+ p_fec_planilla +  ',
'            ''&P_COD_ZONA=''+ p_cod_zona +',
'            ''&j_username=jasperadmin&j_password=jasperadmin'';',
'   console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'FPONCE'
,p_last_upd_yyyymmddhh24miss=>'20230404121245'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(132239899138802942)
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
 p_id=>wwv_flow_imp.id(132239928861802943)
,p_plug_name=>'B_CABECERA'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(132240220146802946)
,p_plug_name=>'IZQUIERDA'
,p_parent_plug_id=>wwv_flow_imp.id(132239928861802943)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133602160762416506)
,p_plug_name=>'IZQ'
,p_parent_plug_id=>wwv_flow_imp.id(132240220146802946)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133602341411416508)
,p_plug_name=>'DER'
,p_parent_plug_id=>wwv_flow_imp.id(132240220146802946)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133602488528416509)
,p_plug_name=>'Kilometrajes'
,p_parent_plug_id=>wwv_flow_imp.id(133602341411416508)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody:t-Form--noPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133602598319416510)
,p_plug_name=>'Horarios'
,p_parent_plug_id=>wwv_flow_imp.id(133602341411416508)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody:t-Form--noPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(132240303032802947)
,p_plug_name=>'DERECHA'
,p_parent_plug_id=>wwv_flow_imp.id(132239928861802943)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(132240015335802944)
,p_plug_name=>'B_DETALLE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1040
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    cod_empresa,',
'    nro_planilla,',
'    tipo_trans,',
'    sub_tipo_trans,',
'    cantidad,',
'    precio_unitario,',
'    monto_total,',
'    total_iva,',
'    tip_cambio,',
'    nro_comprobante_ref,',
'    cod_moneda,',
'    monto_total_val,',
'    total_iva_val,',
'    descripcion,',
'    cod_proveedor_local,',
'    nro_factura_local,',
'    num_linea,',
'    nro_compra_ref,',
'    ser_factura_local,',
'    fecha_factura_local,',
'    comentario,',
'    litros,',
'    cod_usr_ins,',
'    fec_hor_ins,',
'    cod_usr_upd,',
'    fec_hor_upd,',
'    rowid row_id_gastos_det,',
'    NULL EDITAR,',
'    NULL ELIMINAR',
'',
'FROM RP_REPARTO_GASTOS',
'WHERE COD_EMPRESA = :P_COD_EMPRESA',
'AND NRO_PLANILLA = :P453_NRO_PLANILLA',
'AND :P453_INDICADOR_REP_GASTOS = ''1'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P453_NRO_PLANILLA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'B_DETALLE'
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
 p_id=>wwv_flow_imp.id(134158031659713740)
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
,p_internal_uid=>134158031659713740
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134158192551713741)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134158361939713743)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nro Planilla'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134308735785105105)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134311930583105137)
,p_db_column_name=>'TIPO_TRANS'
,p_display_order=>160
,p_column_identifier=>'AS'
,p_column_label=>'Tipo Trans'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134312042459105138)
,p_db_column_name=>'SUB_TIPO_TRANS'
,p_display_order=>170
,p_column_identifier=>'AT'
,p_column_label=>'Sub Tipo Trans'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(134436532270667825)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134312149601105139)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>180
,p_column_identifier=>'AU'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134312272769105140)
,p_db_column_name=>'PRECIO_UNITARIO'
,p_display_order=>190
,p_column_identifier=>'AV'
,p_column_label=>'Precio Unitario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134312369703105141)
,p_db_column_name=>'MONTO_TOTAL'
,p_display_order=>200
,p_column_identifier=>'AW'
,p_column_label=>'Monto Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134312443663105142)
,p_db_column_name=>'TOTAL_IVA'
,p_display_order=>210
,p_column_identifier=>'AX'
,p_column_label=>'Total Iva'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134312567899105143)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>220
,p_column_identifier=>'AY'
,p_column_label=>'Tip Cambio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134312669890105144)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>230
,p_column_identifier=>'AZ'
,p_column_label=>'Nro Comprobante Ref'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134312770314105145)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>240
,p_column_identifier=>'BA'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134312893122105146)
,p_db_column_name=>'MONTO_TOTAL_VAL'
,p_display_order=>250
,p_column_identifier=>'BB'
,p_column_label=>'Monto Total Val'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134312985800105147)
,p_db_column_name=>'TOTAL_IVA_VAL'
,p_display_order=>260
,p_column_identifier=>'BC'
,p_column_label=>'Total Iva Val'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134313066224105148)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>270
,p_column_identifier=>'BD'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134313101360105149)
,p_db_column_name=>'COD_PROVEEDOR_LOCAL'
,p_display_order=>280
,p_column_identifier=>'BE'
,p_column_label=>'Cod Proveedor Local'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134313247510105150)
,p_db_column_name=>'NRO_FACTURA_LOCAL'
,p_display_order=>290
,p_column_identifier=>'BF'
,p_column_label=>'Nro Factura Local'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134329966093065601)
,p_db_column_name=>'NUM_LINEA'
,p_display_order=>300
,p_column_identifier=>'BG'
,p_column_label=>'Num Linea'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134330071567065602)
,p_db_column_name=>'NRO_COMPRA_REF'
,p_display_order=>310
,p_column_identifier=>'BH'
,p_column_label=>'Nro Compra Ref'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134330171455065603)
,p_db_column_name=>'SER_FACTURA_LOCAL'
,p_display_order=>320
,p_column_identifier=>'BI'
,p_column_label=>'Ser Factura Local'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134330200834065604)
,p_db_column_name=>'FECHA_FACTURA_LOCAL'
,p_display_order=>330
,p_column_identifier=>'BJ'
,p_column_label=>'Fecha Factura Local'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134330350991065605)
,p_db_column_name=>'LITROS'
,p_display_order=>340
,p_column_identifier=>'BK'
,p_column_label=>'Litros'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134330491981065606)
,p_db_column_name=>'COD_USR_INS'
,p_display_order=>350
,p_column_identifier=>'BL'
,p_column_label=>'Cod Usr Ins'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134330501900065607)
,p_db_column_name=>'FEC_HOR_INS'
,p_display_order=>360
,p_column_identifier=>'BM'
,p_column_label=>'Fec Hor Ins'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134330628687065608)
,p_db_column_name=>'COD_USR_UPD'
,p_display_order=>370
,p_column_identifier=>'BN'
,p_column_label=>'Cod Usr Upd'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134330709821065609)
,p_db_column_name=>'FEC_HOR_UPD'
,p_display_order=>380
,p_column_identifier=>'BO'
,p_column_label=>'Fec Hor Upd'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134332961190065631)
,p_db_column_name=>'ROW_ID_GASTOS_DET'
,p_display_order=>390
,p_column_identifier=>'BP'
,p_column_label=>'Row Id Gastos Det'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134333085721065632)
,p_db_column_name=>'EDITAR'
,p_display_order=>400
,p_column_identifier=>'BQ'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P453_ROW_ID_GASTOS_ED'',''#ROW_ID_GASTOS_DET#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134333123766065633)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>410
,p_column_identifier=>'BR'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P453_ROW_ID_GASTOS_EL'',''#ROW_ID_GASTOS_DET#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(134329231437093215)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1343293'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SUB_TIPO_TRANS:LITROS:COMENTARIO:NRO_COMPROBANTE_REF:CANTIDAD:PRECIO_UNITARIO:MONTO_TOTAL_VAL:EDITAR:ELIMINAR:'
,p_sum_columns_on_break=>'LITROS:MONTO_TOTAL_VAL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134331936805065621)
,p_plug_name=>'AGREGAR/EDITAR GASTO'
,p_parent_plug_id=>wwv_flow_imp.id(132240015335802944)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(132240184316802945)
,p_plug_name=>'B_PIE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1050
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133606224531416547)
,p_plug_name=>'BUSCAR PLANILLA DE GASTOS'
,p_region_css_classes=>'js-dialog-size1200x580'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133606344354416548)
,p_plug_name=>'FILTROS'
,p_parent_plug_id=>wwv_flow_imp.id(133606224531416547)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133606442813416549)
,p_plug_name=>'RESULTADOS BUSQUEDA'
,p_parent_plug_id=>wwv_flow_imp.id(133606224531416547)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NULL SELECCIONAR,',
'       NRO_PLANILLA,',
'       NRO_PEDIDO',
'       COD_SUCURSAL,',
'       FEC_PLANILLA,',
'       COD_ZONA_REPARTO,',
'       COD_REPARTIDOR,',
'       ROWID ROW_ID_GASTO',
'',
'FROM RP_REPARTO_CABECERA',
'WHERE COD_EMPRESA = :P_COD_EMPRESA',
'AND (COD_SUCURSAL = :P453_COD_SUCURSAL_BUSQ OR :P453_COD_SUCURSAL_BUSQ IS NULL)',
'AND (NRO_PLANILLA = :P453_NRO_PLANILLA_BUSQ OR :P453_NRO_PLANILLA_BUSQ IS NULL)',
'AND (NRO_PEDIDO = :P453_NRO_PEDIDO_BUSQ OR :P453_NRO_PEDIDO_BUSQ IS NULL)',
'AND (COD_ZONA_REPARTO = :P453_COD_ZONA_REPARTO_BUSQ OR :P453_COD_ZONA_REPARTO_BUSQ IS NULL)',
'AND (COD_REPARTIDOR = :P453_COD_REPARTIDOR_BUSQ OR :P453_COD_REPARTIDOR_BUSQ IS NULL)',
'AND (FEC_PLANILLA >= :P453_FEC_PLAN_INI_BUSQ OR :P453_FEC_PLAN_INI_BUSQ IS NULL)',
'AND (FEC_PLANILLA <= :P453_FEC_PLAN_FIN_BUSQ OR :P453_FEC_PLAN_FIN_BUSQ IS NULL)',
'AND :P453_INDICADOR_REP_GASTOS = ''1'';',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P453_COD_SUCURSAL_BUSQ,P453_NRO_PLANILLA_BUSQ,P453_NRO_PEDIDO_BUSQ,P453_COD_ZONA_REPARTO_BUSQ,P453_COD_REPARTIDOR_BUSQ,P453_FEC_PLAN_INI_BUSQ,P453_FEC_PLAN_FIN_BUSQ,P453_INDICADOR_REP_GASTOS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'RESULTADOS BUSQUEDA'
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
 p_id=>wwv_flow_imp.id(134154909143713709)
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
,p_internal_uid=>134154909143713709
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134155049450713710)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nro Planilla'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134155116935713711)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(41127354264101747)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134155200891713712)
,p_db_column_name=>'FEC_PLANILLA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fecha Planilla'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134155366153713713)
,p_db_column_name=>'COD_ZONA_REPARTO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Zona Reparto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134155461264713714)
,p_db_column_name=>'COD_REPARTIDOR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Repartidor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134155539902713715)
,p_db_column_name=>'SELECCIONAR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Seleccionar'
,p_column_link=>'javascript:$s(''P453_ROW_ID_GASTOS'',''#ROW_ID_GASTO#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(134155662868713716)
,p_db_column_name=>'ROW_ID_GASTO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Row Id Gasto'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(134186340275612212)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1341864'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SELECCIONAR:NRO_PLANILLA:COD_SUCURSAL:FEC_PLANILLA:COD_ZONA_REPARTO:COD_REPARTIDOR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134155751561713717)
,p_plug_name=>'INDICADORES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134156899546713728)
,p_plug_name=>'SEQ ID/ROW ID'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(134331887956065620)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(132240015335802944)
,p_button_name=>'BTN_AGREGAR_GASTO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Gasto'
,p_button_position=>'ABOVE_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus-square-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(134155910495713719)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(133606344354416548)
,p_button_name=>'BTN_BUSCAR_GASTOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_button_cattributes=>'style="width:150px;"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(134156000714713720)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(133606344354416548)
,p_button_name=>'BTN_LIMPIAR_CAMPOS_BUSQ_GASTOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar Campos'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-trash-o'
,p_button_cattributes=>'style="width:150px;"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(133605633988416541)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(133602341411416508)
,p_button_name=>'BTN_AUTORIZAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Autorizar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-right:45px;width:200px;"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(134333824206065640)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(134331936805065621)
,p_button_name=>'BTN_ACEPTAR_GASTOS_CR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(134334108295065643)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(134331936805065621)
,p_button_name=>'BTN_ACEPTAR_GASTOS_ED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(134334090406065642)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(134331936805065621)
,p_button_name=>'BTN_CERRAR_GASTOS_CR_ED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(134478717432191621)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(132239928861802943)
,p_button_name=>'BTN_IMPRIMIR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(134331068721065612)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(132239928861802943)
,p_button_name=>'BTN_BUSCAR_MAIN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar Planilla'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132240454752802948)
,p_name=>'P453_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(133602160762416506)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal || '' - '' || descripcion D, cod_sucursal R',
'from sucursales where ',
'cod_empresa = :P_COD_EMPRESA',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(132240518882802949)
,p_name=>'P453_NRO_PLANILLA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(133602160762416506)
,p_prompt=>unistr('N\00FAmero Planilla')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132240684872802950)
,p_name=>'P453_FEC_PLANILLA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(133602160762416506)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133601627269416501)
,p_name=>'P453_NRO_PEDIDO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(133602160762416506)
,p_prompt=>unistr('N\00B0 Pedido')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133601770684416502)
,p_name=>'P453_MONTO_PLANILLA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(133602160762416506)
,p_prompt=>'Monto GS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133601895103416503)
,p_name=>'P453_PORCENTAJE_COSTO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(133602160762416506)
,p_prompt=>'% Costo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
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
 p_id=>wwv_flow_imp.id(133601900195416504)
,p_name=>'P453_COSTO_FLETE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(133602160762416506)
,p_prompt=>'Costo Flete'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133602062549416505)
,p_name=>'P453_MONTO_VIATICO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(133602160762416506)
,p_prompt=>'Viatico'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133602688010416511)
,p_name=>'P453_KM_SALIDA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(133602488528416509)
,p_prompt=>'Salida'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133602745021416512)
,p_name=>'P453_FECHA_SALIDA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(133602598319416510)
,p_prompt=>'Salida'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133602875385416513)
,p_name=>'P453_KM_LLEGADA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(133602488528416509)
,p_prompt=>'Llegada'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133602994206416514)
,p_name=>'P453_TOTAL_KM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(133602488528416509)
,p_prompt=>'Recorrido'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133603077437416515)
,p_name=>'P453_FECHA_LLEGADA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(133602598319416510)
,p_prompt=>'Llegada'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133603106898416516)
,p_name=>'P453_COD_USUARIO_AUTORIZA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(132240184316802945)
,p_prompt=>'Autoriza'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>2
,p_grid_column=>11
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133603201858416517)
,p_name=>'P453_FECHA_AUTORIZA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(132240184316802945)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>2
,p_grid_column=>11
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133603400452416519)
,p_name=>'P453_COD_VEHICULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(132240303032802947)
,p_prompt=>'Vehiculo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_vehiculo || '' - '' || descripcion D, ',
'       cod_vehiculo R ',
'from rp_vehiculos ',
'where cod_empresa = :P_COD_EMPRESA',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(133603549535416520)
,p_name=>'P453_COD_REPARTIDOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(132240303032802947)
,p_prompt=>'Repartidor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.cod_repartidor  || '' - '' || ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) D, ',
'       r.cod_repartidor R',
'from rp_repartidores r, personas p ',
'where r.cod_empresa = :P_COD_EMPRESA',
'and r.cod_persona = p.cod_persona ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(133603615947416521)
,p_name=>'P453_COD_ZONA_REPARTO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(132240303032802947)
,p_prompt=>'Zona Reparto'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_zona_reparto || '' - '' || descripcion D, ',
'       cod_zona_reparto R ',
'from rp_zonas_reparto ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(133603779465416522)
,p_name=>'P453_COD_REPARTIDOR_MM'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(132240303032802947)
,p_prompt=>unistr('M\00F3vil Repar.')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select   COD_REPARTIDOR || '' - '' || upper(nombre ||''  - ''||telefono) D, COD_REPARTIDOR R',
'from rp_repartidores_log ',
'where cod_empresa = :P_COD_EMPRESA'))
,p_lov_display_null=>'YES'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(133603849868416523)
,p_name=>'P453_COD_AYUDANTE_1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(132240303032802947)
,p_prompt=>'Ayudante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.cod_empleado || '' - '' || nombre, e.cod_empleado R ',
'from rh_empleados e, personas p ',
'where e.cod_empresa = :P_COD_EMPRESA',
'and e.cod_persona = p.cod_persona ',
'and nvl(e.activo, ''S'') = ''S'' ',
'AND COD_CARGO=''222''',
'order by nvl(nomb_fantasia, nombre)'))
,p_lov_display_null=>'YES'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(133603942358416524)
,p_name=>'P453_COD_AYUDANTE_2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(132240303032802947)
,p_prompt=>'Ayudante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.cod_empleado  || '' - '' || nombre D , e.cod_empleado R',
'from rh_empleados e, personas p ',
'where e.cod_empresa = :P_COD_EMPRESA',
'and e.cod_persona = p.cod_persona ',
'and nvl(e.activo, ''S'') = ''S'' ',
'AND COD_CARGO=''222''',
'order by nvl(nomb_fantasia, nombre)'))
,p_lov_display_null=>'YES'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(133604033644416525)
,p_name=>'P453_COD_PUNTEADOR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(132240303032802947)
,p_prompt=>'Punteador'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.cod_empleado  || '' - '' || nombre D, e.cod_empleado R',
'from rh_empleados e, personas p ',
'where e.cod_empresa = :P_COD_EMPRESA',
'and e.cod_persona = p.cod_persona ',
'and nvl(e.activo, ''S'') = ''S'' ',
'AND COD_CARGO = ''222''',
'order by nvl(nomb_fantasia, nombre)'))
,p_lov_display_null=>'YES'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(133604164655416526)
,p_name=>'P453_DESTINO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(132240303032802947)
,p_prompt=>'Destino'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133604488899416529)
,p_name=>'P453_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(132239899138802942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133604565926416530)
,p_name=>'P453_COD_MONEDA_BASE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(132239899138802942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133604675546416531)
,p_name=>'P453_FAC_CREDITO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(132239899138802942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133604763063416532)
,p_name=>'P453_FAC_CONTADO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(132239899138802942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133604879733416533)
,p_name=>'P453_NOTA_REMISION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(132239899138802942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133604954520416534)
,p_name=>'P453_SER_CONTADO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(132239899138802942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133605085211416535)
,p_name=>'P453_COD_FORMA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(132239899138802942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133605169992416536)
,p_name=>'P453_SOL_NO_CONF'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(132239899138802942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133605276890416537)
,p_name=>'P453_MODIFICA_PLANILLA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(132239899138802942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133605388580416538)
,p_name=>'P453_AUTORIZA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(132239899138802942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133605987212416544)
,p_name=>'P453_CANTIDAD_LINEAS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(132239899138802942)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133606569486416550)
,p_name=>'P453_COD_SUCURSAL_BUSQ'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(133606344354416548)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal || '' - '' || descripcion D, cod_sucursal R',
'from sucursales where ',
'cod_empresa = :P_COD_EMPRESA',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(134154186492713701)
,p_name=>'P453_NRO_PLANILLA_BUSQ'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(133606344354416548)
,p_prompt=>unistr('N\00FAmero Planilla')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134154231253713702)
,p_name=>'P453_FEC_PLAN_INI_BUSQ'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(133606344354416548)
,p_prompt=>'Fecha desde'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134154325686713703)
,p_name=>'P453_NRO_PEDIDO_BUSQ'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(133606344354416548)
,p_prompt=>unistr('N\00B0 Pedido')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134154478627713704)
,p_name=>'P453_COD_REPARTIDOR_BUSQ'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(133606344354416548)
,p_prompt=>'Repartidor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.cod_repartidor  || '' - '' || ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) D, ',
'       r.cod_repartidor R',
'from rp_repartidores r, personas p ',
'where r.cod_empresa = :P_COD_EMPRESA',
'and r.cod_persona = p.cod_persona ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(134154517394713705)
,p_name=>'P453_COD_ZONA_REPARTO_BUSQ'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(133606344354416548)
,p_prompt=>'Zona Reparto'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_zona_reparto || '' - '' || descripcion D, ',
'       cod_zona_reparto R ',
'from rp_zonas_reparto ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(134154690877713706)
,p_name=>'P453_FEC_PLAN_FIN_BUSQ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(133606344354416548)
,p_prompt=>'Fecha hasta'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134155898383713718)
,p_name=>'P453_INDICADOR_REP_GASTOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(134155751561713717)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134156971757713729)
,p_name=>'P453_ROW_ID_GASTOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(134156899546713728)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134311743773105135)
,p_name=>'P453_INDICADOR_REP_DETALLE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(134155751561713717)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134332203501065624)
,p_name=>'P453_SUB_TIPO_TRANS_CR_ED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(134331936805065621)
,p_prompt=>'Concepto'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select subtipo_trans || '' - '' || descripcion D, subtipo_trans R',
'from subtipos_trans ',
'where cod_empresa = :P_COD_EMPRESA',
'and cod_modulo =''RP'''))
,p_lov_display_null=>'YES'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(134332346052065625)
,p_name=>'P453_LITROS_CR_ED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(134331936805065621)
,p_prompt=>'Litros'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134332491661065626)
,p_name=>'P453_COMENTARIO_CR_ED'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(134331936805065621)
,p_prompt=>'Comentario'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134332561502065627)
,p_name=>'P453_NRO_COMP_REF_CR_ED'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(134331936805065621)
,p_prompt=>'Nro. Comprobante Ref'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134332697523065628)
,p_name=>'P453_CANTIDAD_CR_ED'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(134331936805065621)
,p_prompt=>'Cantidad'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134332750608065629)
,p_name=>'P453_PRECIO_UNITARIO_CR_ED'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(134331936805065621)
,p_prompt=>'Precio Unitario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134333233195065634)
,p_name=>'P453_ROW_ID_GASTOS_ED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(134156899546713728)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P453_MODIFICA_PLANILLA = ''N'' THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134333370877065635)
,p_name=>'P453_ROW_ID_GASTOS_EL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(134156899546713728)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P453_MODIFICA_PLANILLA= ''N'' THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(134478485300191618)
,p_name=>'P453_INDICADOR_AUTORIZA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(134155751561713717)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133605482568416539)
,p_name=>'DA_SETEAR_TOTAL_KM'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P453_KM_SALIDA,P453_KM_LLEGADA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133605506985416540)
,p_event_id=>wwv_flow_imp.id(133605482568416539)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P453_TOTAL_KM := :P453_KM_LLEGADA - :P453_KM_SALIDA;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P453_KM_LLEGADA,P453_KM_SALIDA'
,p_attribute_03=>'P453_TOTAL_KM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133605710101416542)
,p_name=>'DA_ASIGNAR_COSTO_FLETE'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P453_PORCENTAJE_COSTO'
,p_condition_element=>'P453_PORCENTAJE_COSTO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133605839673416543)
,p_event_id=>wwv_flow_imp.id(133605710101416542)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P453_COSTO_FLETE := nvl(:P453_MONTO_PLANILLA, 0) * :P453_PORCENTAJE_COSTO/100;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P453_MONTO_PLANILLA,P453_PORCENTAJE_COSTO'
,p_attribute_03=>'P453_COSTO_FLETE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P453_MONTO_PLANILLA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133606093569416545)
,p_name=>'DA_AUTORIZAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(133605633988416541)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134330802057065610)
,p_event_id=>wwv_flow_imp.id(133606093569416545)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea confirmar la autorizaci\00F3n?')
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134478530841191619)
,p_event_id=>wwv_flow_imp.id(133606093569416545)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT count (*)',
'    INTO :P453_INDICADOR_AUTORIZA',
'    FROM RP_REPARTO_GASTOS',
'    WHERE COD_EMPRESA = :P_COD_EMPRESA',
'    AND NRO_PLANILLA = :P453_NRO_PLANILLA;   ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P453_NRO_PLANILLA'
,p_attribute_03=>'P453_INDICADOR_AUTORIZA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134478682747191620)
,p_event_id=>wwv_flow_imp.id(133606093569416545)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'No hay gastos registrados que autorizar.'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P453_INDICADOR_AUTORIZA'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133606180306416546)
,p_event_id=>wwv_flow_imp.id(133606093569416545)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P453_FECHA_AUTORIZA IS NULL THEN',
'    	:P453_COD_USUARIO_AUTORIZA := :APP_USER;',
'    	:P453_FECHA_AUTORIZA := sysdate;        ',
'    END IF;',
'',
'    UPDATE RP_REPARTO_CABECERA',
'    SET COD_USUARIO_AUTORIZA = :P453_COD_USUARIO_AUTORIZA,',
'        FECHA_AUTORIZA = :P453_FECHA_AUTORIZA',
'    WHERE ROWID = :P453_ROW_ID_GASTOS;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P453_FECHA_AUTORIZA,P453_ROW_ID_GASTOS'
,p_attribute_03=>'P453_FECHA_AUTORIZA,P453_COD_USUARIO_AUTORIZA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'GREATER_THAN'
,p_client_condition_element=>'P453_INDICADOR_AUTORIZA'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134330934819065611)
,p_event_id=>wwv_flow_imp.id(133606093569416545)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Autorizaci\00F3n realizada con \00E9xito.')
,p_attribute_03=>'success'
,p_client_condition_type=>'GREATER_THAN'
,p_client_condition_element=>'P453_INDICADOR_AUTORIZA'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(134154760184713707)
,p_name=>'DA_ABRIR_BUSQ_GASTOS'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134157284791713732)
,p_event_id=>wwv_flow_imp.id(134154760184713707)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133606442813416549)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134154861071713708)
,p_event_id=>wwv_flow_imp.id(134154760184713707)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133606224531416547)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(134157505956713735)
,p_name=>'DA_HABILITAR_AUTORIZAR'
,p_event_sequence=>50
,p_condition_element=>'P453_AUTORIZA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134157882948713738)
,p_event_id=>wwv_flow_imp.id(134157505956713735)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(133605633988416541)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134157781921713737)
,p_event_id=>wwv_flow_imp.id(134157505956713735)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(133605633988416541)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(134478020119191614)
,p_name=>'DA_HABILITAR_CREAR_GASTO'
,p_event_sequence=>60
,p_condition_element=>'P453_MODIFICA_PLANILLA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134478209157191616)
,p_event_id=>wwv_flow_imp.id(134478020119191614)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(134331887956065620)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134478331045191617)
,p_event_id=>wwv_flow_imp.id(134478020119191614)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(134331887956065620)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(134479028923191624)
,p_name=>'DA_HABILITAR_IMPRIMIR'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134479133415191625)
,p_event_id=>wwv_flow_imp.id(134479028923191624)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(134478717432191621)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(134156154785713721)
,p_name=>'DA_LIMPIAR_CAMPOS_BUSQ'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(134156000714713720)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134156289205713722)
,p_event_id=>wwv_flow_imp.id(134156154785713721)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P453_COD_SUCURSAL_BUSQ,P453_NRO_PLANILLA_BUSQ,P453_FEC_PLAN_INI_BUSQ,P453_FEC_PLAN_FIN_BUSQ,P453_NRO_PEDIDO_BUSQ,P453_COD_REPARTIDOR_BUSQ,P453_COD_ZONA_REPARTO_BUSQ,P453_INDICADOR_REP_GASTOS'
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
 p_id=>wwv_flow_imp.id(134156343153713723)
,p_event_id=>wwv_flow_imp.id(134156154785713721)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133606442813416549)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(134156423324713724)
,p_name=>'DA_BUSCAR_GASTOS'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(134155910495713719)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134156535856713725)
,p_event_id=>wwv_flow_imp.id(134156423324713724)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    :P453_INDICADOR_REP_GASTOS := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_03=>'P453_INDICADOR_REP_GASTOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134156753145713727)
,p_event_id=>wwv_flow_imp.id(134156423324713724)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133606442813416549)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(134157009735713730)
,p_name=>'DA_SETEAR_DATOS_GASTOS'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P453_ROW_ID_GASTOS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134157984954713739)
,p_event_id=>wwv_flow_imp.id(134157009735713730)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT',
'            cod_sucursal,',
'            nro_planilla,',
'            fec_planilla,',
'            nro_pedido,',
'            porcentaje_costo,',
'            costo_flete,',
'            monto_viatico,',
'            km_salida,',
'            km_llegada,',
'            fecha_salida,',
'            fecha_llegada,',
'            cod_vehiculo,',
'            cod_repartidor,',
'            cod_zona_reparto,',
'            destino,',
'            cod_repartidor_mm,',
'            cod_ayudante_1,',
'            cod_ayudante_2,',
'            cod_punteador,',
'            cod_usuario_autoriza,',
'            fecha_autoriza        ',
'      INTO',
'        :P453_COD_SUCURSAL,',
'        :P453_NRO_PLANILLA,',
'        :P453_FEC_PLANILLA,',
'        :P453_NRO_PEDIDO,',
'        --:P453_MONTO_PLANILLA,',
'        :P453_PORCENTAJE_COSTO,',
'        :P453_COSTO_FLETE,',
'        :P453_MONTO_VIATICO,',
'        :P453_KM_SALIDA,',
'        :P453_KM_LLEGADA,',
'        --P453_TOTAL_KM,',
'        :P453_FECHA_SALIDA,',
'        :P453_FECHA_LLEGADA,',
'        :P453_COD_VEHICULO,',
'        :P453_COD_REPARTIDOR,',
'        :P453_COD_ZONA_REPARTO,',
'        :P453_DESTINO,',
'        :P453_COD_REPARTIDOR_MM,',
'        :P453_COD_AYUDANTE_1,',
'        :P453_COD_AYUDANTE_2,',
'        :P453_COD_PUNTEADOR,',
'        :P453_COD_USUARIO_AUTORIZA,',
'        :P453_FECHA_AUTORIZA',
'    FROM rp_reparto_cabecera',
'    WHERE ROWID = :P453_ROW_ID_GASTOS;',
'',
'    :P453_INDICADOR_REP_DETALLE := ''1'';',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
''))
,p_attribute_02=>'P453_ROW_ID_GASTOS,P453_INDICADOR_REP_DETALLE'
,p_attribute_03=>'P453_COD_SUCURSAL,P453_NRO_PLANILLA,P453_FEC_PLANILLA,P453_NRO_PEDIDO,P453_PORCENTAJE_COSTO,P453_COSTO_FLETE,P453_MONTO_VIATICO,P453_KM_SALIDA,P453_KM_LLEGADA,P453_FECHA_SALIDA,P453_FECHA_LLEGADA,P453_COD_VEHICULO,P453_COD_REPARTIDOR,P453_COD_ZONA_RE'
||'PARTO,P453_DESTINO,P453_COD_REPARTIDOR_MM,P453_COD_AYUDANTE_1,P453_COD_AYUDANTE_2,P453_COD_PUNTEADOR,P453_COD_USUARIO_AUTORIZA,P453_FECHA_AUTORIZA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134311822503105136)
,p_event_id=>wwv_flow_imp.id(134157009735713730)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(132240015335802944)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134479329116191627)
,p_event_id=>wwv_flow_imp.id(134157009735713730)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(134478717432191621)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134157117906713731)
,p_event_id=>wwv_flow_imp.id(134157009735713730)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133606224531416547)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(134331167620065613)
,p_name=>'DA_ABRIR_BUSQ_MAIN'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(134331068721065612)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134331592528065617)
,p_event_id=>wwv_flow_imp.id(134331167620065613)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P453_COD_SUCURSAL_BUSQ,P453_NRO_PLANILLA_BUSQ,P453_FEC_PLAN_INI_BUSQ,P453_FEC_PLAN_FIN_BUSQ,P453_NRO_PEDIDO_BUSQ,P453_COD_REPARTIDOR_BUSQ,P453_COD_ZONA_REPARTO_BUSQ,P453_INDICADOR_REP_GASTOS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134331339149065615)
,p_event_id=>wwv_flow_imp.id(134331167620065613)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133606442813416549)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134331498809065616)
,p_event_id=>wwv_flow_imp.id(134331167620065613)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(133606224531416547)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(134332015574065622)
,p_name=>'DA_ABRIR_GASTO_ED_CR'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(134331887956065620)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134334245102065644)
,p_event_id=>wwv_flow_imp.id(134332015574065622)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P453_SUB_TIPO_TRANS_CR_ED,P453_LITROS_CR_ED,P453_COMENTARIO_CR_ED,P453_NRO_COMP_REF_CR_ED,P453_CANTIDAD_CR_ED,P453_PRECIO_UNITARIO_CR_ED'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134334387399065645)
,p_event_id=>wwv_flow_imp.id(134332015574065622)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(134333824206065640)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134334485548065646)
,p_event_id=>wwv_flow_imp.id(134332015574065622)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(134334108295065643)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134332159264065623)
,p_event_id=>wwv_flow_imp.id(134332015574065622)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(134331936805065621)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(134333455428065636)
,p_name=>'DA_ELIMINAR_GASTO'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P453_ROW_ID_GASTOS_EL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134333501224065637)
,p_event_id=>wwv_flow_imp.id(134333455428065636)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134333661781065638)
,p_event_id=>wwv_flow_imp.id(134333455428065636)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    DELETE FROM RP_REPARTO_GASTOS',
'    WHERE ROWID = :P453_ROW_ID_GASTOS_EL;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P453_ROW_ID_GASTOS_EL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134333758718065639)
,p_event_id=>wwv_flow_imp.id(134333455428065636)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(132240015335802944)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(134334548334065647)
,p_name=>'DA_CERRAR_GASTOS'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(134334090406065642)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134334639300065648)
,p_event_id=>wwv_flow_imp.id(134334548334065647)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(134331936805065621)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(134334706805065649)
,p_name=>'DA_CREAR_GASTO'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(134333824206065640)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134334871468065650)
,p_event_id=>wwv_flow_imp.id(134334706805065649)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_MONTO_TOTAL NUMBER;',
'BEGIN',
'',
'    V_MONTO_TOTAL := TO_NUMBER(:P453_CANTIDAD_CR_ED) * TO_NUMBER(:P453_PRECIO_UNITARIO_CR_ED);',
'',
'    INSERT INTO RP_REPARTO_GASTOS ( cod_empresa,',
'                                    nro_planilla,',
'                                    sub_tipo_trans,',
'                                    cantidad,',
'                                    precio_unitario,',
'                                    nro_comprobante_ref,                                    ',
'                                    comentario,',
'                                    litros,',
'                                    MONTO_TOTAL_VAL,',
'                                    cod_usr_ins,',
'                                    fec_hor_ins)',
'',
'                            VALUES ( :P_COD_EMPRESA,',
'                                     :P453_NRO_PLANILLA,',
'                                     :P453_SUB_TIPO_TRANS_CR_ED,',
'                                     :P453_CANTIDAD_CR_ED,',
'                                     :P453_PRECIO_UNITARIO_CR_ED,',
'                                     :P453_NRO_COMP_REF_CR_ED,',
'                                     :P453_COMENTARIO_CR_ED,',
'                                     :P453_LITROS_CR_ED,',
'                                     V_MONTO_TOTAL,',
'                                     :APP_USER,',
'                                     SYSDATE);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P453_NRO_PLANILLA,P453_SUB_TIPO_TRANS_CR_ED,P453_CANTIDAD_CR_ED,P453_PRECIO_UNITARIO_CR_ED,P453_NRO_COMP_REF_CR_ED,P453_COMENTARIO_CR_ED,P453_LITROS_CR_ED'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134476776013191601)
,p_event_id=>wwv_flow_imp.id(134334706805065649)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(132240015335802944)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134476883266191602)
,p_event_id=>wwv_flow_imp.id(134334706805065649)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(134331936805065621)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(134476901293191603)
,p_name=>'DA_ABRIR_GASTO_ED'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P453_ROW_ID_GASTOS_ED'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134477236984191606)
,p_event_id=>wwv_flow_imp.id(134476901293191603)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_MONTO_TOTAL NUMBER;',
'BEGIN',
'',
'    SELECT  sub_tipo_trans,',
'            cantidad,',
'            precio_unitario,',
'            nro_comprobante_ref,                                    ',
'            comentario,',
'            litros',
'',
'    INTO    :P453_SUB_TIPO_TRANS_CR_ED,',
'            :P453_CANTIDAD_CR_ED,',
'            :P453_PRECIO_UNITARIO_CR_ED,',
'            :P453_NRO_COMP_REF_CR_ED,',
'            :P453_COMENTARIO_CR_ED,',
'            :P453_LITROS_CR_ED',
'',
'    FROM  RP_REPARTO_GASTOS',
'    WHERE ROWID = :P453_ROW_ID_GASTOS_ED;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
''))
,p_attribute_02=>'P453_ROW_ID_GASTOS_ED'
,p_attribute_03=>'P453_SUB_TIPO_TRANS_CR_ED,P453_CANTIDAD_CR_ED,P453_PRECIO_UNITARIO_CR_ED,P453_NRO_COMP_REF_CR_ED,P453_COMENTARIO_CR_ED,P453_LITROS_CR_ED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134477356832191607)
,p_event_id=>wwv_flow_imp.id(134476901293191603)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(134334108295065643)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134477412047191608)
,p_event_id=>wwv_flow_imp.id(134476901293191603)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(134333824206065640)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134477057168191604)
,p_event_id=>wwv_flow_imp.id(134476901293191603)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(134331936805065621)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(134477582730191609)
,p_name=>'DA_EDITAR_GASTO'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(134334108295065643)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134477755470191611)
,p_event_id=>wwv_flow_imp.id(134477582730191609)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_MONTO_TOTAL NUMBER;',
'BEGIN',
'',
'    V_MONTO_TOTAL := TO_NUMBER(:P453_CANTIDAD_CR_ED) * TO_NUMBER(:P453_PRECIO_UNITARIO_CR_ED);',
'',
'    UPDATE RP_REPARTO_GASTOS',
'    SET sub_tipo_trans = :P453_SUB_TIPO_TRANS_CR_ED,',
'        cantidad = :P453_CANTIDAD_CR_ED,',
'        precio_unitario = :P453_PRECIO_UNITARIO_CR_ED,',
'        nro_comprobante_ref = :P453_NRO_COMP_REF_CR_ED,                                    ',
'        comentario = :P453_COMENTARIO_CR_ED,',
'        litros = :P453_LITROS_CR_ED,',
'        MONTO_TOTAL_VAL = V_MONTO_TOTAL,',
'        cod_usr_upd = :APP_USER,',
'        fec_hor_upd = SYSDATE',
'    WHERE ROWID = :P453_ROW_ID_GASTOS_ED;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P453_ROW_ID_GASTOS_ED,P453_NRO_PLANILLA,P453_SUB_TIPO_TRANS_CR_ED,P453_CANTIDAD_CR_ED,P453_PRECIO_UNITARIO_CR_ED,P453_NRO_COMP_REF_CR_ED,P453_COMENTARIO_CR_ED,P453_LITROS_CR_ED'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134477805537191612)
,p_event_id=>wwv_flow_imp.id(134477582730191609)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(132240015335802944)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134477931407191613)
,p_event_id=>wwv_flow_imp.id(134477582730191609)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(134331936805065621)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(134478821836191622)
,p_name=>'DA_LLAMAR_REP_RPPLAGAS'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(134478717432191621)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(134478991605191623)
,p_event_id=>wwv_flow_imp.id(134478821836191622)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- LLAMA AL REPORTE RPPLAGAS',
'',
'NULL;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(136521718678433214)
,p_event_id=>wwv_flow_imp.id(134478821836191622)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doDescarga(apex.item(''P_COD_EMPRESA'').getValue(), ',
'           apex.item(''P453_NRO_PLANILLA'').getValue(), ',
'           apex.item(''P453_COD_REPARTIDOR'').getValue(), ',
'           apex.item(''P453_FEC_PLANILLA'').getValue(), ',
'           apex.item(''P453_COD_ZONA_REPARTO'').getValue());',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(134157432337713734)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_DATOS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(133604332658416528)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P453_COD_MODULO := ''RP'';',
'    :P453_COD_FORMA := ''RPPLAGAS'';',
'',
'    :P453_COD_MONEDA_BASE := bs_busca_parametro (:P453_COD_MODULO, ''COD_MONEDA_BASE'');',
'    :P453_FAC_CREDITO := bs_busca_parametro (:P453_COD_MODULO, ''TIPO_CREDITO'');',
'    :P453_FAC_CONTADO := bs_busca_parametro (:P453_COD_MODULO, ''TIPO_CONTADO'');',
'    :P453_NOTA_REMISION := bs_busca_parametro (:P453_COD_MODULO, ''TIPO_REMISION'');',
'    :P453_SER_CONTADO := bs_busca_parametro (:P453_COD_MODULO, ''SERIE_CONTADO'');',
'    :P453_SOL_NO_CONF := bs_busca_parametro (:P453_COD_MODULO, ''TIPO_SOLNOCONF'');',
'',
'    :P453_MODIFICA_PLANILLA := busca_permiso (:P_COD_EMPRESA,',
'                                              :P453_COD_FORMA,',
'                                              :P_COD_USUARIO,',
'                                              ''MODIFICA_PLANILLA'');',
'    ',
'    :P453_AUTORIZA := busca_permiso (:P_COD_EMPRESA,',
'                                     :P453_COD_FORMA,',
'                                     :P_COD_USUARIO,',
'                                     ''AUTORIZA_GASTO'');',
'',
'    :P453_COD_SUCURSAL := :P_COD_SUCURSAL;',
'    :P453_FEC_PLANILLA := sysdate; ',
'',
'    --- CASOS DE PRUEBA --',
'    --:P453_MODIFICA_PLANILLA := ''S'';',
'    ',
'    --:P453_AUTORIZA := ''S'';  ',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
