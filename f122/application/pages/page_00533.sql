prompt --application/pages/page_00533
begin
--   Manifest
--     PAGE: 00533
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
 p_id=>533
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Agregar pedido de compras'
,p_alias=>'AGREGAR-PEDIDO-DE-COMPRAS'
,p_step_title=>'Agregar pedido de compras'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57;',
'}',
'',
'function imprimirReporteCPPRPECM(p_cod_empresa, p_cod_usuario, p_nro_comprobante,p_sin_precios){',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CPPRPECM.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa ',
'            + ''&P_COD_USUARIO='' + p_cod_usuario',
'            + ''&P_NRO_COMPROBANTE=''+ p_nro_comprobante',
'            + ''&P_SIN_PRECIOS='' + p_sin_precios',
'            +''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#BT_RECHAZAR, ',
'#BT_REPORTE, ',
'#BT_EMAIL, ',
'#BT_PROCESAR, ',
'#BT_APROBAR, ',
'#BT_ANULAR {',
'        padding-left: 15px;',
'        padding-right: 15px;',
'        margin-top: 15px;',
'        display: block;',
'        margin-left: auto;',
'        margin-right: auto;',
'        width: 78px;',
'    } '))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'AIBANEZ'
,p_last_upd_yyyymmddhh24miss=>'20230609102154'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(300755907428671359)
,p_plug_name=>'Cabecera'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(300757118016671371)
,p_plug_name=>'R1'
,p_parent_plug_id=>wwv_flow_imp.id(300755907428671359)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>3
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(300757200345671372)
,p_plug_name=>'R2'
,p_parent_plug_id=>wwv_flow_imp.id(300755907428671359)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(300757363587671373)
,p_plug_name=>'R3'
,p_parent_plug_id=>wwv_flow_imp.id(300755907428671359)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(300756001066671360)
,p_plug_name=>unistr('Art\00EDculos')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1000
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  SEQ_ID,',
'        C001 COD_EMPRESA,',
'        C002 TIPO_PEDIDO,',
'        C003 NRO_PEDIDO,',
'        C004 COD_ARTICULO,',
'        C005 DESC_ARTICULO,',
'        C006 COD_UNIDAD_MEDIDA,',
'        C007 DESC_UNIDAD_MEDIDA,',
'        C008 CANTIDAD,',
'        C009 CANTIDAD_UB,',
'        C010 OBSERVACION,',
'        C011 R_ID,',
'        NULL EDITAR,',
'        NULL ELIMINAR',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''COL_DET_CPPRPECM''',
'AND NVL(C020,''N'') <> ''D'';',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Art\00EDculos')
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
 p_id=>wwv_flow_imp.id(300759108557671391)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_finder_drop_down=>'N'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'AIBANEZ'
,p_internal_uid=>300759108557671391
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164949984197882522)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('Art\00EDculo')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(139741380904679862)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164950381973882522)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('Descripci\00F3n del Art\00EDculo')
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164950794404882522)
,p_db_column_name=>'COD_UNIDAD_MEDIDA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Um'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164951133051882522)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164946447816882525)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>70
,p_column_identifier=>'I'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164946887973882524)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>80
,p_column_identifier=>'J'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164947202425882524)
,p_db_column_name=>'TIPO_PEDIDO'
,p_display_order=>90
,p_column_identifier=>'K'
,p_column_label=>'Tipo Pedido'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164947570683882524)
,p_db_column_name=>'NRO_PEDIDO'
,p_display_order=>100
,p_column_identifier=>'L'
,p_column_label=>'Nro Pedido'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164947938375882524)
,p_db_column_name=>'DESC_UNIDAD_MEDIDA'
,p_display_order=>110
,p_column_identifier=>'M'
,p_column_label=>'Unidad de Medida'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(139845743490037094)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164948380140882523)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>120
,p_column_identifier=>'N'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164948781945882523)
,p_db_column_name=>'CANTIDAD_UB'
,p_display_order=>130
,p_column_identifier=>'O'
,p_column_label=>'Cantidad Ub'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164949165574882523)
,p_db_column_name=>'R_ID'
,p_display_order=>140
,p_column_identifier=>'P'
,p_column_label=>'R Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164949511062882522)
,p_db_column_name=>'EDITAR'
,p_display_order=>150
,p_column_identifier=>'Q'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P461_EDITAR'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P533_ESTADO'
,p_display_condition2=>'P'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164951588637882521)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>160
,p_column_identifier=>'R'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P461_ELIMINAR'' ,''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P533_ESTADO'
,p_display_condition2=>'P'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(300906320623322204)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1359784'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'EDITAR:COD_ARTICULO:DESC_UNIDAD_MEDIDA:CANTIDAD:OBSERVACION:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(300760113430671401)
,p_plug_name=>unistr('Datos de inserci\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(300756001066671360)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(300760430530671404)
,p_plug_name=>unistr('Datos de actualizaci\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(300756001066671360)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(301829505038752159)
,p_plug_name=>'Email'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(301830794526752171)
,p_plug_name=>'Editar/Agregar'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(302020394775431185)
,p_plug_name=>'Buscar '
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(302020705466431189)
,p_plug_name=>'Pedidos'
,p_parent_plug_id=>wwv_flow_imp.id(302020394775431185)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal,',
'        nro_pedido,',
'        cod_persona || '' -'' || nombre Persona,',
'        fecha, ',
'        fec_compra, ',
'        null detalle',
'from CP_ORD_PEDIDOS_CAB',
'where (:P533_SUCURSAL IS NULL OR :P533_SUCURSAL = cod_sucursal)',
'and (:P533_NUM_PEDIDO IS NULL OR :P533_NUM_PEDIDO = nro_pedido)',
'and cod_empresa = :P_COD_EMPRESA;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P533_SUCURSAL,P533_NUM_PEDIDO,P533_PERSONA,P533_AREA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Pedidos'
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
 p_id=>wwv_flow_imp.id(302020811098431190)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ANDRESDI'
,p_internal_uid=>302020811098431190
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164958283019882515)
,p_db_column_name=>'NRO_PEDIDO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nro Pedido'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164958654955882515)
,p_db_column_name=>'FECHA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164959039540882515)
,p_db_column_name=>'FEC_COMPRA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Fecha Compra'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164959489565882514)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(136389963676304290)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164959877316882514)
,p_db_column_name=>'DETALLE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Detalle'
,p_column_link=>'javascript:$s(''P461_NRO_PEDIDO'',''#NRO_PEDIDO#'');'
,p_column_linktext=>'<span class="fa fa-eye" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164960293117882514)
,p_db_column_name=>'PERSONA'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Persona'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(303593234255144460)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1386653'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'NRO_PEDIDO:FECHA:COD_SUCURSAL:PERSONA:DETALLE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(164942918926882529)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(300757363587671373)
,p_button_name=>'BT_RECHAZAR'
,p_button_static_id=>'BT_RECHAZAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Rechazar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(164955582349882517)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(302020394775431185)
,p_button_name=>'BT_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-top:15px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(164943758660882528)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(300757363587671373)
,p_button_name=>'BT_PROCESAR'
,p_button_static_id=>'BT_PROCESAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Procesar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(164942501743882529)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(300757363587671373)
,p_button_name=>'BT_APROBAR'
,p_button_static_id=>'BT_APROBAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aprobar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(164943384288882528)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(300757363587671373)
,p_button_name=>'BT_ANULAR'
,p_button_static_id=>'BT_ANULAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Anular'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(164944193767882528)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(300757363587671373)
,p_button_name=>'BT_REPORTE'
,p_button_static_id=>'BT_REPORTE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reporte'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(164944518163882528)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(300757363587671373)
,p_button_name=>'BT_EMAIL'
,p_button_static_id=>'BT_EMAIL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'E-mail'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-mail-forward'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(164932113981882538)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(301829505038752159)
,p_button_name=>'BT_VOLVER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Volver'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(164929008060882549)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(301830794526752171)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(164931768962882538)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(301829505038752159)
,p_button_name=>'BT_ENVIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Enviar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(164928697674882550)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(301830794526752171)
,p_button_name=>'BT_GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(164952638741882519)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(300756001066671360)
,p_button_name=>'BT_ADD_DETALLE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Detalle '
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-new'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(164952213709882519)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(300756001066671360)
,p_button_name=>'BT_CONFIRMAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save-as'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(164933261046882537)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(300755907428671359)
,p_button_name=>'BT_BUSCAR_MODAL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar '
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:544:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-sm fa-table-search'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164929462156882545)
,p_name=>'P533_LIST_COD_ARTICULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(301830794526752171)
,p_prompt=>unistr('Art\00EDculo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS_PED'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct x.cod_articulo || '' - '' || x.descripcion D,',
'       x.cod_articulo R',
'from cp_articulos x, cp_ord_pedidos_cab B',
'where x.cod_empresa = :P_COD_EMPRESA',
'--and b.cod_sector = x.cod_sector',
'and x.cod_sector = :P461_COD_SECTOR',
''))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164929889313882541)
,p_name=>'P533_NEW_COD_UNIDAD_MEDIDA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(301830794526752171)
,p_prompt=>'Unidad'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_UNIDAD_MEDIDA_PED'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct  u.cod_unidad_medida || '' - '' || u.descripcion D,',
'       u.cod_unidad_medida R',
'from st_unidades_medida u , cp_ord_pedidos_det d',
'where d.cod_empresa = :P_COD_EMPRESA',
'and u.cod_unidad_medida = d.cod_unidad_medida;'))
,p_lov_cascade_parent_items=>'P533_LIST_COD_ARTICULO'
,p_ajax_items_to_submit=>'P533_NEW_COD_UNIDAD_MEDIDA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164930243798882540)
,p_name=>'P533_NEW_DESC_UNIDAD_MEDIDA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(301830794526752171)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164930681548882540)
,p_name=>'P533_NEW_CANTIDAD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(301830794526752171)
,p_prompt=>'Cantidad'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>12
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164931024393882540)
,p_name=>'P533_NEW_OBSERVACION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(301830794526752171)
,p_prompt=>unistr('Observaci\00F3n')
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
 p_id=>wwv_flow_imp.id(164932506036882537)
,p_name=>'P533_EMAIL'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(301829505038752159)
,p_prompt=>'Email'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164933989921882536)
,p_name=>'P533_NRO_PEDIDO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(300757118016671371)
,p_prompt=>unistr('N\00FAmero Pedido')
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
 p_id=>wwv_flow_imp.id(164934357037882535)
,p_name=>'P533_FECHA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(300757118016671371)
,p_prompt=>'Fecha'
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
 p_id=>wwv_flow_imp.id(164934793841882535)
,p_name=>'P533_COD_SUCURSAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(300757118016671371)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_SUCURSALES_PEDIDOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct s.cod_sucursal || '' - '' || s.descripcion D, ',
'       s.cod_sucursal R',
'from SUCURSALES s, CP_ORD_PEDIDOS_CAB c ',
'where s.cod_empresa = :p_cod_empresa',
'and s.cod_sucursal = c.cod_sucursal'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Seleccione -- '
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164935100251882535)
,p_name=>'P533_FEC_COMPRA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(300757118016671371)
,p_prompt=>'Fecha de Compra'
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
 p_id=>wwv_flow_imp.id(164935551146882535)
,p_name=>'P533_TIPO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(300757118016671371)
,p_prompt=>'Tipo de Pedido'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:PRODUCTOS;PRODUCTOS,SERVICIOS;SERVICIOS'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164935976569882535)
,p_name=>'P533_COD_SECTOR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(300757118016671371)
,p_prompt=>'Rubro'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct cod_rubro||'' - ''||descripcion D, ',
'         cod_rubro R',
'    FROM st_rubro s, cp_ord_pedidos_cab c',
'    WHERE s.cod_empresa = :P_COD_EMPRESA',
'        and s.cod_empresa = c.cod_empresa',
'        and c.tip_pedido = :P533_TIP_PEDIDO',
'        and c.cod_sucursal = :P533_COD_SUCURSAL;'))
,p_lov_cascade_parent_items=>'P533_COD_SUCURSAL,P533_NRO_PEDIDO'
,p_ajax_items_to_submit=>'P533_COD_SUCURSAL,P533_NRO_PEDIDO'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164936393242882534)
,p_name=>'P533_TIP_PEDIDO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(300757118016671371)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164937014404882533)
,p_name=>'P533_COD_PERSONA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(300757200345671372)
,p_prompt=>'Solicitado '
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  distinct cod_persona || ''  -  '' || nombre D,',
'        cod_persona R',
'from cp_ord_pedidos_cab',
'where cod_empresa = :p_cod_empresa ',
'and cod_sucursal = :p533_cod_sucursal;'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P533_COD_SUCURSAL'
,p_ajax_items_to_submit=>'P533_COD_SUCURSAL'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
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
 p_id=>wwv_flow_imp.id(164937442048882533)
,p_name=>'P533_NOMBRE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(300757200345671372)
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
 p_id=>wwv_flow_imp.id(164937894543882533)
,p_name=>'P533_COD_SUCURSAL_EMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(300757200345671372)
,p_prompt=>'Suc. Solicitante'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164938255333882533)
,p_name=>'P533_DESC_SUCURSAL_EMP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(300757200345671372)
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
 p_id=>wwv_flow_imp.id(164938683483882532)
,p_name=>'P533_COD_AREA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(300757200345671372)
,p_prompt=>unistr('\00C1rea Solicitante')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164939024998882532)
,p_name=>'P533_DESC_AREA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(300757200345671372)
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
 p_id=>wwv_flow_imp.id(164939420520882532)
,p_name=>'P533_COD_DEPARTAMENTO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(300757200345671372)
,p_prompt=>'Dpto Solicitante'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164939858807882532)
,p_name=>'P533_DESC_DEPARTAMENTO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(300757200345671372)
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
 p_id=>wwv_flow_imp.id(164940295053882530)
,p_name=>'P533_COD_CENTRO_COSTO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(300757200345671372)
,p_prompt=>'Centro Costo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164940680946882530)
,p_name=>'P533_DESC_CENTRO_COSTO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(300757200345671372)
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
 p_id=>wwv_flow_imp.id(164941048322882530)
,p_name=>'P533_COMENTARIO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(300757200345671372)
,p_prompt=>'Comentario'
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
 p_id=>wwv_flow_imp.id(164941475863882529)
,p_name=>'P533_COD_EJERCICIO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(300757200345671372)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164941852878882529)
,p_name=>'P533_MENSAJE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(300757200345671372)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164944928550882528)
,p_name=>'P533_ESTADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(300757363587671373)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_ESTADOS _PEDIDOS'
,p_lov=>'.'||wwv_flow_imp.id(138326226457490470)||'.'
,p_cHeight=>1
,p_tag_attributes=>'READONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164945350813882527)
,p_name=>'P533_COD_USUARIO_EST'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(300757363587671373)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readOnly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164945770461882527)
,p_name=>'P533_FEC_ESTADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(300757363587671373)
,p_prompt=>'Fecha estado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readOnly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164953341039882518)
,p_name=>'P533_COD_USR_INS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(300760113430671401)
,p_prompt=>'Usuario '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readOnly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164953715844882518)
,p_name=>'P533_FEC_HOR_INS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(300760113430671401)
,p_prompt=>'Fecha '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readOnly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164954437580882517)
,p_name=>'P533_COD_USR_UPD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(300760430530671404)
,p_prompt=>'Usuario '
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
 p_id=>wwv_flow_imp.id(164954851992882517)
,p_name=>'P533_FEC_USR_UPD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(300760430530671404)
,p_prompt=>'Fecha '
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
 p_id=>wwv_flow_imp.id(164955967947882517)
,p_name=>'P533_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(302020394775431185)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSALES_PEDIDOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct s.cod_sucursal || '' - '' || s.descripcion D, ',
'       s.cod_sucursal R',
'from SUCURSALES s, CP_ORD_PEDIDOS_CAB c ',
'where s.cod_empresa = :p_cod_empresa',
'and s.cod_sucursal = c.cod_sucursal'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccionar -'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164956386515882517)
,p_name=>'P533_NUM_PEDIDO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(302020394775431185)
,p_prompt=>'Num Pedido'
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
 p_id=>wwv_flow_imp.id(164956724855882516)
,p_name=>'P533_PERSONA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(302020394775431185)
,p_prompt=>'Persona'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_persona ||'' - ''|| nombre D,',
'        cod_persona R',
'from cp_ord_pedidos_cab',
'where cod_empresa = :P_COD_EMPRESA',
'and nro_pedido = :P533_NUM_PEDIDO',
'and cod_sucursal =:P533_SUCURSAL;'))
,p_lov_cascade_parent_items=>'P533_NUM_PEDIDO,P533_SUCURSAL'
,p_ajax_items_to_submit=>'P533_NUM_PEDIDO,P533_PERSONA,P533_SUCURSAL'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164957146316882516)
,p_name=>'P533_AREA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(302020394775431185)
,p_prompt=>'Area'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct rh.cod_area ||'' - '' ||rh.descripcion D,',
'        rh.cod_area R',
'from rh_areas rh, cp_ord_pedidos_cab c',
'where c.cod_empresa = :P_cod_empresa',
'    and c.cod_empresa = rh.cod_empresa',
'    and c.cod_sucursal = :P533_SUCURSAL',
'    and c.nro_pedido = :P533_NUM_PEDIDO',
'    and c.cod_persona = :P533_PERSONA',
'    and c.cod_area = rh.cod_area ;',
'          '))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P533_SUCURSAL,P533_NUM_PEDIDO, P533_PERSONA'
,p_ajax_items_to_submit=>'P533_SUCURSAL,P533_NUM_PEDIDO, P533_PERSONA,P533_AREA'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164957598589882516)
,p_name=>'P533_DPTO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(302020394775431185)
,p_prompt=>'Dpto'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct rh.cod_departamento || '' - ''|| rh.descripcion D,',
'       rh.cod_departamento R',
'from rh_departamentos rh, cp_ord_pedidos_cab c',
'where  c.cod_empresa = :P_cod_empresa',
'    and c.cod_empresa = rh.cod_empresa',
'    and c.cod_sucursal = rh.cod_sucursal',
'    and c.cod_sucursal = :P533_SUCURSAL',
'    and c.nro_pedido = :P533_NUM_PEDIDO',
'    and c.cod_persona = :P533_PERSONA',
'    and c.cod_area = rh.cod_area',
'    and c.cod_area = :P533_AREA',
'    and c.cod_departamento = rh.cod_departamento;'))
,p_lov_cascade_parent_items=>'P533_SUCURSAL,P533_NUM_PEDIDO,P533_PERSONA,P533_AREA'
,p_ajax_items_to_submit=>'P533_SUCURSAL,P533_NUM_PEDIDO,P533_PERSONA,P533_AREA,P533_DPTO'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164960901190882512)
,p_name=>'P533_EDITAR'
,p_item_sequence=>1040
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164961360419882511)
,p_name=>'P533_ELIMINAR'
,p_item_sequence=>1060
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164961764208882511)
,p_name=>'P533_VPUEDE'
,p_item_sequence=>1070
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164962178255882511)
,p_name=>'P533_MESSAGE'
,p_item_sequence=>1080
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164962572287882511)
,p_name=>'P533_COD_MODULO'
,p_item_sequence=>1090
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164962998778882511)
,p_name=>'P533_CARGA_SUCURSAL'
,p_item_sequence=>1100
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164963303919882510)
,p_name=>'P533_COD_USUARIO'
,p_item_sequence=>1110
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164963724976882510)
,p_name=>'P533_CONFIRMA_ORDEN'
,p_item_sequence=>1120
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164964160382882510)
,p_name=>'P533_COD_FORMA'
,p_item_sequence=>1130
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164964540516882510)
,p_name=>'P533_PERMITE_PROCESAR'
,p_item_sequence=>1140
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164964914082882510)
,p_name=>'P533_CONF_REC_PED'
,p_item_sequence=>1150
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164965366323882510)
,p_name=>'P533_APRUEBA_OC_PROPIA'
,p_item_sequence=>1160
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164965760716882510)
,p_name=>'P533_PERMITE_MODIF_AREA'
,p_item_sequence=>1170
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164966176006882509)
,p_name=>'P533_PROCESADO'
,p_item_sequence=>1180
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164966564283882509)
,p_name=>'P533_VSUC_APRUEBA_VAL'
,p_item_sequence=>1190
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164966901414882509)
,p_name=>'P533_VALERT'
,p_item_sequence=>1200
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164967365224882509)
,p_name=>'P533_APROBADO_POR'
,p_item_sequence=>1210
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164967774004882509)
,p_name=>'P533_FEC_APROBACION'
,p_item_sequence=>1220
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164968191659882509)
,p_name=>'P533_PENVIA'
,p_item_sequence=>1230
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164968531839882508)
,p_name=>'P533_PRECIBE'
,p_item_sequence=>1240
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164968953491882508)
,p_name=>'P533_PASUNTO'
,p_item_sequence=>1250
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164969348851882508)
,p_name=>'P533_PMENSAJE'
,p_item_sequence=>1260
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164969700554882508)
,p_name=>'P533_PHOST'
,p_item_sequence=>1270
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164970196650882508)
,p_name=>'P533_IMAGEN'
,p_item_sequence=>1280
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164970514492882507)
,p_name=>'P533_SIN_PRECIO'
,p_item_sequence=>1300
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(164971079312882505)
,p_validation_name=>'VA_EMAIL'
,p_validation_sequence=>10
,p_validation=>'P533_EMAIL'
,p_validation2=>'^[a-zA-Z0-9][a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,3}$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>unistr('El email ingresado es inv\00E1lido.')
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(164932506036882537)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(165008632795882484)
,p_name=>'DA_SUCURSAL'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P533_COD_SUCURSAL'
,p_condition_element=>'P533_COD_SUCURSAL'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165009158727882484)
,p_event_id=>wwv_flow_imp.id(165008632795882484)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'        :P533_MESSAGE := null;',
'',
'        --apex_debug.error(''nro '' || :P533_NRO_PEDIDO);',
'',
'       IF :P533_COD_SUCURSAL is not null then',
'           ',
'            select tipo, fecha, fec_compra',
'            into :P533_TIPO,',
'                 :P533_FECHA, ',
'                 :P533_FEC_COMPRA',
'            from CP_ORD_PEDIDOS_CAB',
'            where nro_pedido = :P533_NRO_PEDIDO',
'            and cod_sucursal = :P533_COD_SUCURSAL',
'            and cod_empresa = :P_COD_EMPRESA',
'            and tip_pedido = :P533_TIP_PEDIDO;',
'',
'             ',
'       END IF;',
'',
'    EXCEPTION   ',
'           /* when NO_DATA_FOUND then',
unistr('                   RAISE_APPLICATION_ERROR (-20111,''Ingrese un n\00FAmero de pedido'');*/'),
'            when NO_DATA_FOUND THEN',
'                apex_debug.error(''No data:''||sqlerrm);',
unistr('                --:P533_MESSAGE := ''Ingrese un n\00FAmero de pedido'';'),
'                ',
'            when others then',
'                    apex_debug.error(''Error 12:''||sqlerrm);',
'END;'))
,p_attribute_02=>'P533_NRO_PEDIDO,P533_COD_SUCURSAL,P533_TIP_PEDIDO'
,p_attribute_03=>'P533_FEC_COMPRA,P533_FECHA,P533_TIPO,P533_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164993527498882491)
,p_name=>'DA_NRO'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P533_NRO_PEDIDO'
,p_condition_element=>'P533_NRO_PEDIDO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164996092312882490)
,p_event_id=>wwv_flow_imp.id(164993527498882491)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(302020394775431185)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164994050372882490)
,p_event_id=>wwv_flow_imp.id(164993527498882491)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'       IF :P533_NRO_PEDIDO is null then',
'            -- FN_NRO_PEDIDO',
'            null;',
'       ELSE',
'',
'            select nro_pedido,',
'                   tip_pedido ',
'            into :P533_NRO_PEDIDO,',
'                 :P533_TIP_PEDIDO',
'            from CP_ORD_PEDIDOS_CAB',
'            where nro_pedido = :P533_NRO_PEDIDO',
'            and cod_empresa = :P_COD_EMPRESA;',
'',
'           CPPRPECM.PR_OBTENER_DETALLE(PI_COD_EMPRESA => :P_COD_EMPRESA, ',
'                                       PI_TIPO_PEDIDO => :P533_TIP_PEDIDO,',
'                                       PI_NRO_PEDIDO => :P533_NRO_PEDIDO);',
'           ',
'       END IF;',
'',
'    EXCEPTION   ',
'            when others then',
'',
'                    apex_debug.error(''Error R1'' || '' - '' || sqlerrm);',
'END;'))
,p_attribute_02=>'P533_NRO_PEDIDO'
,p_attribute_03=>'P533_COD_SUCURSAL,P533_TIP_PEDIDO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164997056680882489)
,p_event_id=>wwv_flow_imp.id(164993527498882491)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'       IF :P533_NRO_PEDIDO is not null then',
'            select cod_sucursal, ',
'                   cod_persona, ',
'                   cod_sector,',
'                   tipo',
'            into :P533_COD_SUCURSAL, ',
'                 :P533_COD_PERSONA, ',
'                 :P533_COD_SECTOR,',
'                 :P533_TIPO',
'            from CP_ORD_PEDIDOS_CAB',
'            where nro_pedido = :P533_NRO_PEDIDO',
'            and cod_empresa = :P_COD_EMPRESA',
'            and rownum = 1;',
'       END IF;',
'',
'    EXCEPTION   ',
'            when others then',
'            apex_debug.error(''2'');',
'                    apex_debug.error(sqlerrm);',
'END;'))
,p_attribute_02=>'P533_NRO_PEDIDO'
,p_attribute_03=>'P533_COD_SUCURSAL,P533_COD_PERSONA,P533_COD_SECTOR,P533_TIPO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164996589741882489)
,p_event_id=>wwv_flow_imp.id(164993527498882491)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P533_NRO_PEDIDO is not null then',
'        select COD_USR_INS,	',
'               FEC_HOR_INS,',
'               COD_USR_UPD,	',
'               FEC_HOR_UPD',
'        into :P533_COD_USR_INS,',
'             :P533_FEC_HOR_INS,',
'             :P533_COD_USR_UPD,',
'             :P533_FEC_USR_UPD ',
'        from cp_ord_pedidos_cab',
'        where cod_empresa = :P_COD_EMPRESA',
'            and tip_pedido = :P533_TIP_PEDIDO',
'            and NRO_PEDIDO = :P533_NRO_PEDIDO;',
'     ELSE',
'            null;',
'    END IF;',
'',
'  EXCEPTION',
'        when others then',
'                apex_debug.error(''Info error '' || sqlerrm);   ',
'END;',
'',
'null;'))
,p_attribute_02=>'P533_NRO_PEDIDO,P533_TIP_PEDIDO'
,p_attribute_03=>'P533_COD_USR_INS,P533_FEC_HOR_INS,P533_COD_USR_UPD,P533_FEC_USR_UPD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164994508075882490)
,p_event_id=>wwv_flow_imp.id(164993527498882491)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(300756001066671360)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164995010861882490)
,p_event_id=>wwv_flow_imp.id(164993527498882491)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(300760113430671401)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164995599853882490)
,p_event_id=>wwv_flow_imp.id(164993527498882491)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(300760430530671404)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164972146701882502)
,p_name=>'DA_EMAIL'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(164944518163882528)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164972682053882500)
,p_event_id=>wwv_flow_imp.id(164972146701882502)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(301829505038752159)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(165004921813882486)
,p_name=>'da_obtener_datos'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P533_COD_PERSONA'
,p_condition_element=>'P533_COD_PERSONA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165005995149882485)
,p_event_id=>wwv_flow_imp.id(165004921813882486)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P533_cod_persona is not null then',
'	  :P533_cod_ejercicio:= to_char(sysdate,''RRRR'');',
'	  ',
'	  --Si se trata de NGO sigue este flujo',
'	if :p_cod_empresa = ''1'' then',
'		CPPRPECM.PR_OBTENER_DATOS( pi_cod_empresa => :P_COD_EMPRESA,',
'						   pi_cod_persona => :P533_COD_PERSONA,',
'						   pi_cod_ejercicio => :P533_cod_ejercicio,',
'						   po_nombre => :P533_NOMBRE,',
'						   po_cod_sucursal_emp => :P533_COD_SUCURSAL_EMP,',
'						   po_cod_area => :P533_COD_AREA,',
'						   po_cod_departamento => :P533_COD_DEPARTAMENTO,',
'						   po_cod_centro_costo => :P533_COD_CENTRO_COSTO,',
'						   PO_desc_sucursal_emp => :P533_DESC_SUCURSAL_EMP,',
'						   PO_desc_area => :P533_DESC_AREA,',
'						   PO_desc_departamento => :P533_DESC_DEPARTAMENTO,',
'						   PO_desc_centro_costo => :P533_DESC_CENTRO_COSTO,',
'                           po_mensaje => :P533_MENSAJE);		',
'	else',
'		  Begin',
'					select p.nombre',
'					  into :P533_NOMBRE',
'					  from personas p',
'					 where p.cod_persona = :P533_COD_PERSONA;',
'			exception                          ',
'					When Others Then',
unistr('							:P533_mensaje := ''Error al consultar el c\00F3digo de persona del solicitante. ''||sqlerrm;								'),
'			end;',
'	end if;',
'end if;',
'exception',
'when others then',
'',
'    apex_debug.error(''Error cod_persona Sever-side Code''|| '' - ''|| sqlerrm);',
'end;'))
,p_attribute_02=>'P533_COD_PERSONA'
,p_attribute_03=>'P533_COD_EJERCICIO,P533_NOMBRE,P533_COD_SUCURSAL_EMP,P533_COD_AREA,P533_COD_DEPARTAMENTO,P533_COD_CENTRO_COSTO,P533_DESC_SUCURSAL_EMP,P533_DESC_AREA,P533_DESC_DEPARTAMENTO,P533_DESC_CENTRO_COSTO,P533_MENSAJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165005400913882486)
,p_event_id=>wwv_flow_imp.id(165004921813882486)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    if :P533_COD_PERSONA is not null',
'    and :P533_NRO_PEDIDO is not null then',
'    ',
'        select comentario, ',
'               estado, ',
'               cod_usuario_est, ',
'               fec_estado ',
'        into :P533_COMENTARIO,',
'             :P533_ESTADO,',
'             :P533_COD_USUARIO_EST,',
'             :P533_FEC_ESTADO',
'        from cp_ord_pedidos_cab ',
'        where cod_persona = :P533_COD_PERSONA ',
'            and cod_sucursal = :P533_COD_SUCURSAL',
'            and cod_empresa = :P_COD_EMPRESA',
'            and tip_pedido = :P533_TIP_PEDIDO',
'            and nro_pedido = :P533_NRO_PEDIDO;',
'    else ',
'            null;',
'    ',
'    end if;',
'',
'  EXCEPTION',
'        when others then ',
'                apex_debug.error( ''Error datos R3''|| '' - '' || sqlerrm);',
'END;'))
,p_attribute_02=>'P533_COD_PERSONA,P533_NRO_PEDIDO,P533_COD_SUCURSAL,P533_TIP_PEDIDO'
,p_attribute_03=>'P533_COMENTARIO,P533_ESTADO,P533_COD_USUARIO_EST,P533_FEC_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164991793944882491)
,p_name=>'da_cambio_mensaje'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P533_MENSAJE'
,p_condition_element=>'P533_MENSAJE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164992259704882491)
,p_event_id=>wwv_flow_imp.id(164991793944882491)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P533_MENSAJE.'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(165012452011882483)
,p_name=>'DA_VOLVER'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(164932113981882538)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165012986055882483)
,p_event_id=>wwv_flow_imp.id(165012452011882483)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(301829505038752159)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(165006310347882485)
,p_name=>'DA_CANCEL'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(164929008060882549)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165007300758882485)
,p_event_id=>wwv_flow_imp.id(165006310347882485)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(301830794526752171)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165006856539882485)
,p_event_id=>wwv_flow_imp.id(165006310347882485)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P533_NEW_DESC_ARTICULO'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(165015226079882482)
,p_name=>'DA_EDITAR'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P533_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165016206005882481)
,p_event_id=>wwv_flow_imp.id(165015226079882482)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P533_LIST_COD_ARTICULO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165015706492882482)
,p_event_id=>wwv_flow_imp.id(165015226079882482)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P533_NEW_COD_UNIDAD_MEDIDA,P533_NEW_OBSERVACION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165016744127882481)
,p_event_id=>wwv_flow_imp.id(165015226079882482)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'			',
'    IF :P533_EDITAR is not null then',
'        select c004,',
'               c006,',
'               c008,',
'               c010       ',
'        into :P533_LIST_COD_ARTICULO,',
'             :P533_NEW_COD_UNIDAD_MEDIDA,',
'             :P533_NEW_CANTIDAD,',
'             :P533_NEW_OBSERVACION',
'        from APEX_COLLECTIONS',
'        where COLLECTION_NAME = ''COL_DET_CPPRPECM'' ',
'        and SEQ_ID = :P533_EDITAR ;',
'    END IF;',
'',
'    EXCEPTION',
'            when others then',
unistr('                    apex_debug.error(''Editar error N\00B015'' || '' - '' || sqlerrm);'),
'END;'))
,p_attribute_02=>'P533_EDITAR'
,p_attribute_03=>'P533_NEW_COD_UNIDAD_MEDIDA,P533_NEW_CANTIDAD,P533_NEW_OBSERVACION,P533_LIST_COD_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165017228960882481)
,p_event_id=>wwv_flow_imp.id(165015226079882482)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(301830794526752171)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(165013303426882483)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P533_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165014872743882482)
,p_event_id=>wwv_flow_imp.id(165013303426882483)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEsta seguro que desea eliminar la descripci\00F3n del pedido?')
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165013878479882482)
,p_event_id=>wwv_flow_imp.id(165013303426882483)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CPPRPECM.PR_ELIMINAR_REGISTRO(PI_SEQ_ID => :P533_ELIMINAR);',
'EXCEPTION',
'WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P533_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165014384091882482)
,p_event_id=>wwv_flow_imp.id(165013303426882483)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(300756001066671360)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(165009567741882484)
,p_name=>'DA_RECHAZAR'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(164942918926882529)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165012047455882483)
,p_event_id=>wwv_flow_imp.id(165009567741882484)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' DECLARE ',
' ',
'    vseccion_solicita varchar2(100);',
'    vseccion_aprueba  varchar2(100);',
'   -- :P533_VPUEDE varchar2(400);',
'',
'    vsuc_solicita   rh_empleados.cod_sucursal%type;',
'	varea_solicita  rh_empleados.cod_area%type;',
'	vdpto_solicita  rh_empleados.cod_departamento%type;',
'	',
'    vsuc_aprueba   rh_empleados.cod_sucursal%type;',
'	varea_aprueba  rh_empleados.cod_area%type;',
'	vdpto_aprueba  rh_empleados.cod_departamento%type;',
'',
' -- vsuc_aprueba_VAL   rh_empleados.cod_sucursal%type;',
'	varea_aprueba_VAL  rh_empleados.cod_area%type;',
'	vdpto_aprueba_VAL  rh_empleados.cod_departamento%type;',
' BEGIN',
'    ',
'    --Estructura del Solicitante',
'        Begin',
'                select vsuc_solicita,',
'                       varea_solicita,',
'                       vdpto_solicita',
'                  into vsuc_solicita,',
'                       varea_solicita,',
'                       vdpto_solicita',
'                  from rh_empleados e,  ',
'                       personas p',
'                 where e.cod_empresa = :P_cod_empresa',
'                   and e.cod_persona = :P533_cod_persona',
'                   and e.cod_persona = p.cod_persona',
'                   and nvl(e.activo, ''N'') = ''S'' ',
'                   and rownum=1;',
'        exception                          ',
'                When Others Then',
'                    vsuc_solicita  := ''x'';',
'                    varea_solicita := ''x'';',
'                    vdpto_solicita := ''x'';',
'        end;',
'        ',
'        --Estructura del usuario conectado',
'        Begin',
'                select e.cod_sucursal,',
'                       e.cod_area,',
'                       e.cod_departamento',
'                  into vsuc_aprueba,',
'                       varea_aprueba,',
'                       vdpto_aprueba',
'                  from rh_empleados e,   ',
'                       usuarios u',
'                 where e.cod_empresa   = :P_cod_empresa',
'                   --and e.cod_empresa   = u.cod_empresa',
'                   and e.cod_persona   = u.cod_persona',
'                   and nvl(e.activo, ''N'') = ''S'' ',
'                   and U.cod_usuario   = :APP_USER',
'                   and rownum = 1;',
'        exception                          ',
'                When Others Then',
'                    vsuc_aprueba  := ''x'';',
'                    varea_aprueba := ''x'';',
'                    vdpto_aprueba := ''x'';',
'        end;',
'',
'',
'     IF (nvl(:P533_VSUC_APRUEBA_VAL, ''x'') = nvl(vsuc_solicita, ''z'') ',
'        and nvl(varea_aprueba, ''x'') = nvl(varea_solicita, ''z'') ',
'        and  nvl(vdpto_aprueba, ''x'') = nvl(vdpto_solicita, ''z'')) ',
'        THEN',
'				:P533_VPUEDE := ''S'';',
'		ELSE ',
'				:P533_VPUEDE := ''N'';',
'		end IF;',
'		Begin',
'				select e.cod_sucursal,',
'					   e.cod_area,',
'					   e.cod_departamento',
'				  into :P533_VSUC_APRUEBA_VAL,',
'				  	   varea_aprueba_val,',
'				  	   vdpto_aprueba_val',
'				  from cp_aprueba_oc e,   ',
'				  	   usuarios u',
'			 	 where e.cod_empresa  = :p_cod_empresa',
'				   --and e.cod_empresa  = u.cod_empresa',
'				   and e.cod_usuario  = u.cod_usuario',
'				   --',
'				   and e.cod_sucursal = :P533_COD_SUCURSAL_EMP ',
'				   and e.cod_area = :P533_COD_AREA ',
'				   and e.cod_departamento = :P533_COD_DEPARTAMENTO',
'				   --',
'				   and U.cod_usuario = :APP_USER',
'				   and rownum = 1;',
'		exception                          ',
'				When Others Then',
'					:P533_VSUC_APRUEBA_VAL   := ''x'';',
'			  		varea_aprueba_val  := ''x'';',
'			  		vdpto_aprueba_val  := ''x'';',
'			  	',
'			  		',
'		end;',
'',
'	  IF (nvl(:P533_VSUC_APRUEBA_VAL, ''x'') = nvl(:P533_COD_SUCURSAL_EMP, ''z'') ',
'        and nvl(varea_aprueba_val, ''x'') = nvl(:P533_COD_AREA, ''z'') ',
'        and nvl(vdpto_aprueba_val, ''x'') = nvl(:P533_COD_DEPARTAMENTO, ''z'')	) ',
'      THEN',
'		 :P533_VPUEDE:=''S'';  ',
'	end IF;',
'',
' END;'))
,p_attribute_02=>'P533_COD_PERSONA,:P533_VSUC_APRUEBA_VAL,P533_VPUEDE'
,p_attribute_03=>'P533_VPUEDE,P533_VSUC_APRUEBA_VAL,P533_CONF_REC_PED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165010008379882484)
,p_event_id=>wwv_flow_imp.id(165009567741882484)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*:P533_CONF_REC_PED := ''S''; ',
':P533_VPUEDE := ''S''; ',
':P533_VSUC_APRUEBA_VAL := ''S'';',
'*/',
'BEGIN',
'      :P533_MESSAGE := null;',
'      :P533_VALERT := null;',
'',
'    		IF :P_cod_empresa = ''1'' then',
'         ',
'                IF NVL(:P533_CONF_REC_PED,''N'') =''S'' THEN ',
'              			IF :P533_VPUEDE =''S'' ',
'              			AND :P533_VSUC_APRUEBA_VAL <> ''x'' THEN ',
'                            ',
'                            begin ',
unistr('                                :P533_VALERT := ''\00BFDesea Rechazar el Pedido N\00BA ''||:P533_NRO_PEDIDO||'' ?'';'),
'                                                                                       ',
'                                exception',
'                                        when others then',
'                                                null;',
'                            end;',
'',
'                        ELSIF :P533_VPUEDE =''S'' ',
'              			AND :P533_VSUC_APRUEBA_VAL =''x'' THEN',
'              			   				',
'              			    :P533_MESSAGE :=''No cuenta con permiso para rechazar en este departamento.'';',
'',
'                        END IF;',
'			    ELSE',
'			    ',
'			    :P533_MESSAGE :=''No cuenta con el permiso para rechazar. '';    ',
'',
'            	END IF;',
'        ELSE',
'',
'            	null;',
'        END IF;',
'END;'))
,p_attribute_02=>'P533_CONF_REC_PED,P533_VSUC_APRUEBA_VAL,P533_NRO_PEDIDO,P533_CONF_REC_PED,P533_VPUEDE,P533_VALERT'
,p_attribute_03=>'P533_MESSAGE,P533_VALERT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165010589314882484)
,p_event_id=>wwv_flow_imp.id(165009567741882484)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'&P533_VALERT.'
,p_attribute_03=>'information'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P533_VALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165011072944882483)
,p_event_id=>wwv_flow_imp.id(165009567741882484)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'DECLARE',
'',
'V_DATE DATE;',
'V_USUARIO VARCHAR2(30);',
'V_ESTADO VARCHAR2(3);',
'',
'BEGIN',
'',
'    IF :P533_VALERT is not null then',
'        V_DATE := SYSDATE;',
'        V_USUARIO := :APP_USER;',
'        V_ESTADO := ''R'';',
'',
'        UPDATE cp_ord_pedidos_cab',
'        SET',
'         ESTADO = V_ESTADO,',
'         COD_USUARIO_EST = V_USUARIO,',
'         FEC_ESTADO = V_DATE,',
'         COMENTARIO =:P533_COMENTARIO',
'',
'        WHERE cod_empresa = :P_COD_EMPRESA',
'            and nro_pedido = :P533_NRO_PEDIDO',
'            and tip_pedido = :P533_TIP_PEDIDO',
'            and cod_sucursal = :P533_COD_SUCURSAL;',
'    ELSE ',
'        null;',
'    ',
'    END IF;',
'',
'END;',
'',
''))
,p_attribute_02=>'P533_ESTADO,P533_COD_USUARIO_EST,P533_FEC_ESTADO'
,p_attribute_03=>'P533_ESTADO,P533_COD_USUARIO_EST,P533_FEC_ESTADO,P533_COMENTARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P533_VALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165011548300882483)
,p_event_id=>wwv_flow_imp.id(165009567741882484)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164981760475882496)
,p_name=>'DA_PROCESAR'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(164943758660882528)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164982293893882496)
,p_event_id=>wwv_flow_imp.id(164981760475882496)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea procesar el siguiente pedido?')
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164982745063882495)
,p_event_id=>wwv_flow_imp.id(164981760475882496)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'',
'    V_ESTADO VARCHAR2(3);',
'    V_USUARIO VARCHAR2(40);',
'    V_DATE DATE;',
'BEGIN',
'',
'    IF :P533_NRO_PEDIDO is not null then',
'            V_ESTADO := ''C'';',
'            V_USUARIO := :APP_USER ;',
'            V_DATE := sysdate;',
'',
'            UPDATE cp_ord_pedidos_cab',
'            SET',
'             ESTADO = V_ESTADO,',
'             COD_USUARIO_EST = V_USUARIO,',
'             FEC_ESTADO = V_DATE,',
'             COMENTARIO =:P533_COMENTARIO',
'            WHERE cod_empresa = :P_COD_EMPRESA',
'                and nro_pedido = :P533_NRO_PEDIDO',
'                and tip_pedido = :P533_TIP_PEDIDO',
'                and cod_sucursal = :P533_COD_SUCURSAL;',
'',
'           --     apex_debug.error(''Dentro del IF  ESTADO: ''||V_ESTADO||'' Usuario ''||V_USUARIO||'' Fecha ''||sysdate||'' Comentario ''||:P533_COMENTARIO);',
'    ELSE',
'        V_ESTADO := null;',
'        V_USUARIO := null;',
'        V_DATE := null;',
'',
'    END IF;',
'',
'    EXCEPTION ',
'        /*  when no_data_found then',
'                apex_debug.error(''Error no data,  ESTADO: ''||V_ESTADO||'' Usuario ''||V_USUARIO||'' Fecha ''||sysdate||'' Comentario ''||:P533_COMENTARIO);',
'        */',
'        when others then',
'                apex_debug.error(sqlerrm);',
'      ',
'END;'))
,p_attribute_02=>'P533_NRO_PEDIDO,P533_TIP_PEDIDO,P533_COD_SUCURSAL,P533_ESTADO,P533_FEC_ESTADO,P533_COD_USUARIO_EST,P533_COMENTARIO'
,p_attribute_03=>'P533_COD_USUARIO_EST,P533_FEC_ESTADO,P533_ESTADO,P533_COMENTARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164983220852882495)
,p_event_id=>wwv_flow_imp.id(164981760475882496)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164983673847882495)
,p_name=>'DA_ANULAR'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(164943384288882528)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164984152314882495)
,p_event_id=>wwv_flow_imp.id(164983673847882495)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea anular el siguiente pedido? ')
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164985143400882494)
,p_event_id=>wwv_flow_imp.id(164983673847882495)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'',
'    V_ESTADO VARCHAR2(3);',
'    V_USUARIO VARCHAR2(40);',
'    V_DATE DATE;',
'BEGIN',
'',
'    IF :P533_NRO_PEDIDO is not null then',
'            V_ESTADO := ''N'';',
'            V_USUARIO := :APP_USER ;',
'            V_DATE := sysdate;',
'',
'            UPDATE cp_ord_pedidos_cab',
'            SET',
'             ESTADO = V_ESTADO,',
'             COD_USUARIO_EST = V_USUARIO,',
'             FEC_ESTADO = V_DATE,',
'             COMENTARIO =:P533_COMENTARIO',
'            WHERE cod_empresa = :P_COD_EMPRESA',
'                and nro_pedido = :P533_NRO_PEDIDO',
'                and tip_pedido = :P533_TIP_PEDIDO',
'                and cod_sucursal = :P533_COD_SUCURSAL;',
'',
'    ELSE',
'        V_ESTADO := null;',
'        V_USUARIO := null;',
'        V_DATE := null;',
'',
'    END IF;',
'',
'    EXCEPTION ',
'',
'        when others then',
'                apex_debug.error(sqlerrm);',
'      ',
'END;'))
,p_attribute_02=>'P533_NRO_PEDIDO,P533_COD_SUCURSAL'
,p_attribute_03=>'P533_COD_USUARIO_EST,P533_FEC_ESTADO,P533_ESTADO,P533_COMENTARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164984606452882494)
,p_event_id=>wwv_flow_imp.id(164983673847882495)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164985579967882494)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(164952638741882519)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164987075805882493)
,p_event_id=>wwv_flow_imp.id(164985579967882494)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P533_EDITAR :=null;',
':P533_LIST_COD_ARTICULO :=null;',
':P533_NEW_COD_UNIDAD_MEDIDA :=null;',
':P533_NEW_CANTIDAD :=null;',
':P533_NEW_OBSERVACION :=null;',
''))
,p_attribute_03=>'P533_EDITAR,P533_NEW_COD_UNIDAD_MEDIDA,P533_NEW_CANTIDAD,P533_NEW_OBSERVACION,P533_LIST_COD_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164986020469882494)
,p_event_id=>wwv_flow_imp.id(164985579967882494)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P533_NEW_COD_UNIDAD_MEDIDA,P533_NEW_OBSERVACION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164986562028882494)
,p_event_id=>wwv_flow_imp.id(164985579967882494)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(301830794526752171)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(165007725957882485)
,p_name=>'DA_SOLO_NUM'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P533_NEW_CANTIDAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165008289635882485)
,p_event_id=>wwv_flow_imp.id(165007725957882485)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P533_NEW_CANTIDAD'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumeros(event)){',
'      event.preventDefault();',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164997458049882489)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(164928697674882550)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164998935965882489)
,p_event_id=>wwv_flow_imp.id(164997458049882489)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    if :P533_EDITAR is null then',
'          CPPRPECM.PR_ADD_PEDIDOS_COL(  PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                          PI_TIPO_PEDIDO => :P533_TIP_PEDIDO,',
'                                          PI_NRO_PEDIDO => :P533_NRO_PEDIDO,',
'                                          PI_COD_ARTICUlO => :P533_LIST_COD_ARTICULO,',
'                                          PI_COD_UNIDAD_MEDIDA => :P533_NEW_COD_UNIDAD_MEDIDA,',
'                                        ---V_DESCRIPCION_UMED => :P533_NEW_DESC_UNIDAD_MEDIDA,',
'                                          PI_CANTIDAD => :P533_NEW_CANTIDAD,',
'                                          PI_OBSERVACIONES => :P533_NEW_OBSERVACION);',
'         ',
'    else',
'            CPPRPECM.PR_UPDATE_PEDIDOS_COL(',
'                   PI_SEQ => :P533_EDITAR,',
'                   PI_COD_ARTICULO => :P533_LIST_COD_ARTICULO,',
'                   PI_CANTIDAD => :P533_NEW_CANTIDAD',
'',
'                   ); ',
'  --      APEX_DEBUG.ERROR( ''Cantidad '' ||:P533_NEW_CANTIDAD);',
'   --      APEX_DEBUG.ERROR(''Articulo  '' || :P533_LIST_COD_ARTICULO);         ',
'    end if;',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR(''Error Guardar'' || SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P533_EDITAR,P533_LIST_COD_ARTICULO,P533_NEW_CANTIDAD,P533_NEW_OBSERVACION,P533_NEW_COD_UNIDAD_MEDIDA'
,p_attribute_03=>'P533_LIST_COD_ARTICULO,P533_NEW_COD_UNIDAD_MEDIDA,P533_NEW_CANTIDAD,P533_NEW_OBSERVACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164998408968882489)
,p_event_id=>wwv_flow_imp.id(164997458049882489)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(300756001066671360)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164997957120882489)
,p_event_id=>wwv_flow_imp.id(164997458049882489)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(301830794526752171)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164992657077882491)
,p_name=>'DA_MESSAGE'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P533_MESSAGE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164993188867882491)
,p_event_id=>wwv_flow_imp.id(164992657077882491)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P533_MESSAGE.'
,p_attribute_03=>'information'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P533_MESSAGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164973047547882500)
,p_name=>'DA_ESTADO'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P533_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164977004374882498)
,p_event_id=>wwv_flow_imp.id(164973047547882500)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P533_ESTADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164976500188882498)
,p_event_id=>wwv_flow_imp.id(164973047547882500)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(164952638741882519)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P533_ESTADO'
,p_client_condition_expression=>'P'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164978082749882497)
,p_event_id=>wwv_flow_imp.id(164973047547882500)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(164952638741882519)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P533_ESTADO'
,p_client_condition_expression=>'P'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164978570903882497)
,p_event_id=>wwv_flow_imp.id(164973047547882500)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(164952213709882519)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P533_ESTADO'
,p_client_condition_expression=>'P'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164977594026882498)
,p_event_id=>wwv_flow_imp.id(164973047547882500)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(164952213709882519)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P533_ESTADO'
,p_client_condition_expression=>'P'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164973599568882499)
,p_event_id=>wwv_flow_imp.id(164973047547882500)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(164943384288882528)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P533_ESTADO'
,p_client_condition_expression=>'P'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164975019685882498)
,p_event_id=>wwv_flow_imp.id(164973047547882500)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(164942501743882529)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P533_ESTADO'
,p_client_condition_expression=>'P'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164979542255882497)
,p_event_id=>wwv_flow_imp.id(164973047547882500)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(164942918926882529)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P533_ESTADO'
,p_client_condition_expression=>'P'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164975568181882498)
,p_event_id=>wwv_flow_imp.id(164973047547882500)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(164943758660882528)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P533_ESTADO'
,p_client_condition_expression=>'P'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164974064677882499)
,p_event_id=>wwv_flow_imp.id(164973047547882500)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(164943384288882528)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P533_ESTADO'
,p_client_condition_expression=>'P'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164974530301882499)
,p_event_id=>wwv_flow_imp.id(164973047547882500)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(164942501743882529)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P533_ESTADO'
,p_client_condition_expression=>'P'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164976086385882498)
,p_event_id=>wwv_flow_imp.id(164973047547882500)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(164943758660882528)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P533_ESTADO'
,p_client_condition_expression=>'P'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164979026235882497)
,p_event_id=>wwv_flow_imp.id(164973047547882500)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(164942918926882529)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P533_ESTADO'
,p_client_condition_expression=>'P'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(165017690445882481)
,p_name=>'da_cargar_al_iniciar'
,p_event_sequence=>200
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165018125777882481)
,p_event_id=>wwv_flow_imp.id(165017690445882481)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(302020394775431185)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(165019968066882480)
,p_name=>'da_elegi_sucursal'
,p_event_sequence=>210
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(164955582349882517)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165020420476882480)
,p_event_id=>wwv_flow_imp.id(165019968066882480)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(302020705466431189)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164990345835882492)
,p_name=>'DA_MODAL'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(164933261046882537)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164990820670882492)
,p_event_id=>wwv_flow_imp.id(164990345835882492)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P533_PERSONA,P533_NUM_PEDIDO,P533_SUCURSAL,P533_AREA,P533_DPTO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164991319131882491)
,p_event_id=>wwv_flow_imp.id(164990345835882492)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(302020394775431185)
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164979979905882497)
,p_name=>'DA_TIPO'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P533_TIPO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
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
 p_id=>wwv_flow_imp.id(164980463787882497)
,p_event_id=>wwv_flow_imp.id(164979979905882497)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P533_TIPO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164980884535882496)
,p_name=>'DA_SECTOR'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P533_COD_SECTOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164981354064882496)
,p_event_id=>wwv_flow_imp.id(164980884535882496)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P533_COD_SECTOR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(165003002814882487)
,p_name=>'DA_CONFIRMAR'
,p_event_sequence=>250
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(164952213709882519)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165004036308882486)
,p_event_id=>wwv_flow_imp.id(165003002814882487)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea guardar los cambios? ')
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165003507881882487)
,p_event_id=>wwv_flow_imp.id(165003002814882487)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'',
'        CPPRPECM.PR_CONFIRMAR( PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                               PI_TIPO_PEDIDO => :P533_TIP_PEDIDO,',
'                               PI_NRO_PEDIDO => :P533_NRO_PEDIDO,',
'                               PI_COD_ARTICULO => :P533_LIST_COD_ARTICULO,',
'                               PI_COD_UNIDAD_MEDIDA => :P533_NEW_COD_UNIDAD_MEDIDA,',
'                               PI_CANTIDAD => :P533_NEW_CANTIDAD,',
'                               PI_CANTIDAD_UB => null,',
'                               PI_OBSERVACION => :P533_NEW_OBSERVACION',
'                                );',
'END;',
'',
'                        ',
''))
,p_attribute_02=>'P533_TIP_PEDIDO,P533_NRO_PEDIDO,P533_LIST_COD_ARTICULO,P533_NEW_COD_UNIDAD_MEDIDA,P533_NEW_CANTIDAD,P533_NEW_OBSERVACION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165004513583882486)
,p_event_id=>wwv_flow_imp.id(165003002814882487)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164999390962882488)
,p_name=>'DA_DES_ESTADO'
,p_event_sequence=>260
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164999896759882488)
,p_event_id=>wwv_flow_imp.id(164999390962882488)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P533_ESTADO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P533_CONFIRMA_ORDEN'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165000317220882488)
,p_event_id=>wwv_flow_imp.id(164999390962882488)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P533_ESTADO'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P533_CONFIRMA_ORDEN'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(165000769870882488)
,p_name=>'DA_PROCESADO'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P533_PROCESADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165001265017882487)
,p_event_id=>wwv_flow_imp.id(165000769870882488)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P533_ESTADO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P533_PERMITE_PROCESAR'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165001723933882487)
,p_event_id=>wwv_flow_imp.id(165000769870882488)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P533_ESTADO'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P533_PERMITE_PROCESAR'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164987494077882493)
,p_name=>'DA_APROBAR'
,p_event_sequence=>280
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(164942501743882529)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164989489206882492)
,p_event_id=>wwv_flow_imp.id(164987494077882493)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'		vseccion_solicita varchar2(100);',
'		vseccion_aprueba varchar2(100);',
'		VPERSONA varchar2(100);',
'        ',
'		vsuc_solicita rh_empleados.cod_sucursal%type;   ',
'		varea_solicita rh_empleados.cod_area%type;',
'		vdpto_solicita rh_empleados.cod_departamento%type;',
'		',
'		vsuc_aprueba rh_empleados.cod_sucursal%type;   ',
'		varea_aprueba rh_empleados.cod_area%type;',
'		vdpto_aprueba rh_empleados.cod_departamento%type;',
'',
'		varea_aprueba_val rh_empleados.cod_area%type;',
'		vdpto_aprueba_val rh_empleados.cod_departamento%type;',
'		',
'BEGIN',
'				--Estructura del solicitante',
'				Begin',
'						select e.cod_sucursal,',
'							   e.cod_area,',
'							   e.cod_departamento',
'						  into vsuc_solicita,',
'						  	   varea_solicita,',
'						  	   vdpto_solicita',
'						  from rh_empleados e,  ',
'						  	   personas p',
'						 where e.cod_empresa  = :p_cod_empresa',
'						   and e.cod_persona  = :p533_cod_persona',
'						   and e.cod_persona  = p.cod_persona',
'						   and nvl(e.activo, ''N'') = ''S'' ',
'						   and rownum = 1;',
'				exception                          ',
'						When Others Then	',
'								vsuc_solicita  := ''x'';			',
'								varea_solicita := ''x'';',
'						        vdpto_solicita := ''x'';',
'				end;',
'				',
'				--Estructura del usuario conectado',
'',
'				Begin',
'						select e.cod_sucursal,',
'							   e.cod_area,',
'							   e.cod_departamento, ',
'							   U.COD_PERSONA',
'						  into vsuc_aprueba,',
'						  	   varea_aprueba,',
'						  	   vdpto_aprueba, ',
'						  	   VPERSONA',
'						  from rh_empleados e,   ',
'						  	   usuarios u',
'						 where e.cod_empresa  = :p_cod_empresa',
'							 --and e.cod_empresa  = u.cod_empresa',
'							 and e.cod_persona  = u.cod_persona',
'							 and U.cod_usuario  = :p533_cod_usuario',
'							 and nvl(e.activo, ''N'') = ''S''',
'							 and rownum = 1;',
'				exception                          ',
'						When Others Then',
'						    vsuc_aprueba := ''x'';',
'						    varea_aprueba := ''x'';',
'						    vdpto_aprueba := ''x'';',
'				end;',
' 				',
unistr(' 				--Verifica si el usuario conectado puede aprobar en esa \00E1rea/departamento'),
'				Begin',
'						select e.cod_sucursal,',
'							   e.cod_area,',
'							   e.cod_departamento',
'						  into :P533_VSUC_APRUEBA_VAL,',
'						  	   varea_aprueba_val,',
'						  	   vdpto_aprueba_val',
'						  from cp_aprueba_oc e,   ',
'						  	   usuarios u',
'					 	 where e.cod_empresa  = :P_cod_empresa',
'						   --and e.cod_empresa  = u.cod_empresa',
'						   and e.cod_usuario  = u.cod_usuario',
'						   --',
'						   and e.cod_sucursal = :P533_cod_sucursal_emp--vsuc_solicita',
'						   and e.cod_area = :P533_cod_area--varea_solicita',
'						   and e.cod_departamento = :P533_cod_departamento--vdpto_solicita',
'						   --',
'						   and U.cod_usuario = :p533_cod_usuario',
'						   and rownum = 1;',
'				exception                          ',
'						When Others Then',
'								:P533_VSUC_APRUEBA_VAL  := ''x'';',
'    					  		varea_aprueba_val  := ''x'';',
'    					  		vdpto_aprueba_val  := ''x'';',
'				end;',
'',
'',
'	IF :p_cod_empresa = ''1'' ',
'		then',
'			IF (nvl(vsuc_aprueba, ''x'') = nvl(vsuc_solicita, ''z'') ',
'				and nvl(varea_aprueba, ''x'') = nvl(varea_solicita, ''z'') ',
'                and nvl(vdpto_aprueba, ''x'') = nvl(vdpto_solicita, ''z'') ) ',
'                    THEN		 ',
'			   		    :P533_VPUEDE:= ''S'';',
'			else ',
'				',
'					:P533_VPUEDE:= ''N'';',
'			end IF;',
'		',
'			IF (nvl(:P533_VSUC_APRUEBA_VAL, ''x'') = nvl(vsuc_solicita, ''z'') ',
'            and nvl(varea_aprueba_val, ''x'') = nvl(varea_solicita, ''z'') ',
'            and nvl(vdpto_aprueba_val, ''x'') = nvl(vdpto_solicita, ''z'')) ',
'				THEN',
'					:P533_VPUEDE:=''S'';  ',
'			end IF;',
'',
'			IF (nvl(:P533_VSUC_APRUEBA_VAL, ''x'') = nvl(:P533_COD_SUCURSAL_EMP, ''z'') ',
'				and nvl(varea_aprueba_val, ''x'') = nvl(:P533_COD_AREA, ''z'') ',
'				and nvl(vdpto_aprueba_val, ''x'') = nvl(:P533_COD_DEPARTAMENTO, ''z'')) ',
'			THEN',
'				:P533_VPUEDE:=''S'';  ',
'			end IF;',
'		',
'			IF VPERSONA = :P533_COD_PERSONA ',
'				THEN ',
'					IF NVL(:P533_APRUEBA_OC_PROPIA,''N'') = ''N''  ',
'						THEN',
'		      				:P533_VPUEDE:=''N'';',
'					END IF;',
'			end IF;',
'	END IF;',
'',
'END;'))
,p_attribute_02=>'P533_COD_PERSONA,P533_COD_USUARIO,P533_COD_SUCURSAL_EMP,P533_COD_AREA,P533_COD_DEPARTAMENTO,P533_VSUC_APRUEBA_VAL,P533_VPUEDE'
,p_attribute_03=>'P533_VSUC_APRUEBA_VAL,P533_VPUEDE,P533_CONF_REC_PED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164989929424882492)
,p_event_id=>wwv_flow_imp.id(164987494077882493)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' /*:P533_CONF_REC_PED := ''S''; ',
':P533_VPUEDE := ''S''; ',
':P533_VSUC_APRUEBA_VAL := ''S'';',
'*/',
'BEGIN',
' 	:P533_MESSAGE := null;',
'    :P533_VALERT := null;',
'',
'		IF NVL(:P533_CONF_REC_PED,''N'') = ''S'' THEN  ',
'',
'				IF :P533_VPUEDE =''S'' ',
'				and :p533_vsuc_aprueba_val <> ''x'' THEN',
'					',
'					begin ',
'					    ',
unistr('					   :P533_VALERT := ''\00BFDesea Aprobar el Pedido N\00BA ''||:P533_NRO_PEDIDO||'' ?'';'),
'					    ',
'					   ',
'					exception',
'					    when others then',
'					       --apex_debug.error(''Error IF aprobar''||sqlerrm);',
'                           ',
'                           null;',
'					end;',
'',
'				ELSIF :P533_VPUEDE =''S'' ',
'				and :p533_vsuc_aprueba_val = ''x'' THEN',
'',
'						:P533_MESSAGE :=''No cuenta con permiso para autorizar el pedido de compra de este departamento.'';	',
'				END IF;',
'	ELSE',
'',
'		:P533_MESSAGE := ''No cuenta con el permiso para autorizar el pedido de compra.'';',
'',
'	END IF;',
'',
'    EXCEPTION ',
'            when others then',
'                 apex_debug.error(''Error Aprobar ''||sqlerrm);',
'END;'))
,p_attribute_02=>'P533_CONF_REC_PED,P533_VSUC_APRUEBA_VAL,P533_NRO_PEDIDO,P533_CONF_REC_PED,P533_VPUEDE,P533_VALERT'
,p_attribute_03=>'P533_VALERT,P533_MESSAGE,P533_VPUEDE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164987945470882493)
,p_event_id=>wwv_flow_imp.id(164987494077882493)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'&P533_VALERT.'
,p_attribute_03=>'information'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P533_VALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164988417633882493)
,p_event_id=>wwv_flow_imp.id(164987494077882493)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_DATE DATE;',
'V_USUARIO VARCHAR2(30);',
'V_ESTADO VARCHAR2(3);',
'V_APROBADO_POR VARCHAR2(30);',
'V_FEC_APROBACION DATE;',
'',
'BEGIN',
'',
'    IF :P533_VALERT is not null then',
'        V_DATE := SYSDATE;',
'        V_USUARIO := :APP_USER;',
'        V_ESTADO := ''A'';',
'        V_APROBADO_POR:= :APP_USER;',
'        V_FEC_APROBACION := SYSDATE;',
'',
'        UPDATE cp_ord_pedidos_cab',
'        SET',
'         ESTADO = V_ESTADO,',
'         COD_USUARIO_EST = V_USUARIO,',
'         FEC_ESTADO = V_DATE,',
'         COMENTARIO =:P533_COMENTARIO,',
'         APROBADO_POR = V_APROBADO_POR,',
'         FEC_APROBACION = V_FEC_APROBACION',
'',
'        WHERE cod_empresa = :P_COD_EMPRESA',
'            and nro_pedido = :P533_NRO_PEDIDO',
'            and tip_pedido = :P533_TIP_PEDIDO',
'            and cod_sucursal = :P533_COD_SUCURSAL;',
'    ELSE ',
'        null;',
'    ',
'    END IF;',
'',
'END;',
'',
''))
,p_attribute_03=>'P533_ESTADO,P533_APROBADO_POR,P533_FEC_APROBACION,P533_COD_USUARIO_EST,P533_COMENTARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P533_VALERT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164988971927882493)
,p_event_id=>wwv_flow_imp.id(164987494077882493)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(165018588052882480)
,p_name=>'DA_ENVIAR_EMAIL'
,p_event_sequence=>290
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(164931768962882538)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165019551476882480)
,p_event_id=>wwv_flow_imp.id(165018588052882480)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vhost   varchar2(400) ;',
'vurl varchar(400);',
'vemail varchar(200);',
'vremitente varchar(100);',
'BEGIN',
'    :P533_MESSAGE := null;',
'       ',
'    IF :P533_EMAIL is not NULL ',
'    and :P533_NRO_PEDIDO is not NULL then',
'',
'    vhost := bs_busca_parametro(''BS'', ''HOST_CORREO'');',
'    vemail := :P533_EMAIL;',
'    ',
'    vurl :=''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CPPRPECM.pdf?''',
'            || ''P_COD_EMPRESA='' || :p_cod_empresa ',
'            || ''&P_COD_USUARIO='' || :P533_COD_USUARIO',
'            ||''&P_NRO_COMPROBANTE=''|| :P533_NRO_PEDIDO',
'            || ''&P_SIN_PRECIOS='' || :p_sin_precios',
'            ||''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    vremitente := ''mail@ngosaeca.com.py'';',
'',
'',
'',
'',
'    EnviarCorreo( ENVIA => vremitente,',
'                  RECIBE => vemail,',
'                  ASUNTO => ''Link del Reporte, pedido N: ''||:P533_NRO_PEDIDO, ',
'                  MENSAJE => '' Para acceder al reporte, ingrese al siguiente link: ''|| vurl,',
'                  HOST =>  vhost',
'                  );',
'        ',
'     --  apex_debug.error(''Email: ''||:P533_EMAIL || '' Nro_pedido ''|| :P533_NRO_PEDIDO );',
'',
'    ELSE ',
'         CASE',
'            when :P533_EMAIL is null then :P533_MESSAGE := ''Ingrese un e-mail.'';',
unistr('            when :P533_NRO_PEDIDO is null then :P533_MESSAGE := ''Seleccione un N\00B0 de pedido.'';'),
'         END CASE;',
'           ',
'    END IF;',
' ',
'',
'',
'    EXCEPTION',
'            when others then',
'                    apex_debug.error(''Error al enviar e-mail ''||sqlerrm);',
' END;'))
,p_attribute_02=>'P533_EMAIL, P533_PRECIBE, P533_PASUNTO, P533_PMENSAJE, P533_PHOST, P533_IMAGEN,P533_NRO_PEDIDO'
,p_attribute_03=>'P533_EMAIL,P533_NRO_PEDIDO,P533_MESSAGE,P533_MENSAJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165019005643882480)
,p_event_id=>wwv_flow_imp.id(165018588052882480)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P533_MESSAGE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(165002107472882487)
,p_name=>'DA_REPORTE'
,p_event_sequence=>300
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(164944193767882528)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(165002608631882487)
,p_event_id=>wwv_flow_imp.id(165002107472882487)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'imprimirReporteCPPRPECM(apex.item(''P_COD_EMPRESA'').getValue(),',
'                        apex.item(''P533_COD_USUARIO'').getValue(), ',
'                        apex.item(''P533_NRO_PEDIDO'').getValue(),',
'                         apex.item(''P533_SIN_PRECIO'').getValue() );'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(164971397474882504)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(164971711830882504)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
':P533_Cod_Modulo := ''CP'';',
':P533_tip_pedido:= ''PED'';',
':P533_carga_sucursal := busca_permiso(:P_cod_empresa,',
'	                                  :P533_cod_forma,',
'	                                  :P533_cod_usuario,',
'	                                  ''CARGA SUCURSAL'' );',
'',
':P533_CONFIRMA_ORDEN := busca_permiso(:P_cod_empresa,',
'                                      :p533_cod_forma,',
'                                      :p533_cod_usuario,',
'                                      ''CONF_RECH_PEDIDO'' );',
'                                               ',
':P533_permite_procesar := busca_permiso(:P_cod_empresa,',
'                                             :P533_cod_forma,',
'                                             :P533_cod_usuario,',
'                                             ''CONF_PROC_PEDIDO'' );',
'                                             ',
':P533_CONF_REC_PED := busca_permiso(:P_cod_empresa, ',
'									     :P533_cod_forma, ',
'									     :P533_cod_usuario,  ',
'									     ''CONF_RECH_PEDIDO'' ) ; ',
'																				 ',
':P533_APRUEBA_OC_PROPIA := busca_permiso(:P_cod_empresa, ',
'									          :P533_cod_forma, ',
'									          :P533_cod_usuario,  ',
'									          ''APRUEBA_OC_PROPIA'' ) ;	',
'																				 ',
':P533_permite_modif_area := busca_permiso(:P_cod_empresa, ',
'											   :P533_cod_forma, ',
'											   :P533_cod_usuario,  ',
'											   ''MODIF_AREA_PEDIDO''); 																				 																			 																			 ',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
