prompt --application/pages/page_00396
begin
--   Manifest
--     PAGE: 00396
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
 p_id=>396
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Movimientos de ausentismo - RHMOVPER'
,p_alias=>'MOVIMIENTOS-DE-AUSENTISMO-RHMOVPER'
,p_step_title=>'Movimientos de ausentismo - RHMOVPER'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function  estado_css()',
'{',
'      $(''td[headers="estado"]'').each(function() {  ',
'        if ( $(this).text() === ''PENDIENTE'' ) { ',
'            $(this).css({"background-color":"lightgreen"}); ',
'        }',
'        if ( $(this).text() === ''RECHAZADO'' ) {',
'            $(this).css({"background-color":"burlywood"}); ',
'        }',
'        if ( $(this).text() === ''AUTORIZADO'' ) {',
'            $(this).css({"background-color":"lightblue"});',
'        }',
'        if ( $(this).text() === ''ANULADO'' ) {',
'            $(this).css({"background-color":"lightsalmon"});',
'        } ',
'        });',
'        ',
'}',
'',
''))
,p_javascript_code_onload=>'estado_css()'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'',
' ',
'  .a-IRR-header  a , .a-IRR-headerLabel{color:yellow; }',
' .a-IRR-header , .a-IRR-headerLabel{    background: #003a85!important;}',
'',
' #parametros {background: #003a85!important;}',
'',
'#filtrar{ ',
'              margin-top: 15px;',
'                display: flex;',
'                background:white;',
'                background-image: linear-gradient(180deg, #ffee00e4  0%, #fff890 100%);',
'                color:  darkblue;',
'                justify-content: center;',
'                align-items: center; ',
'                box-shadow: #6585af 1px 1px 5px 1px; ',
'                border-style: solid;',
'                border-width: 0.5px;',
'                border-color:  yellow;',
'        } ',
'',
'',
'    #detalle .t-Form-label {',
'            color:  darkblue !important;     ',
'            font-weight:bold !important;',
'    } ',
' ',
'',
'    .apex-item-display-only { ',
'            font-weight:bold !important;',
'            border-color: #487ab8 !important;',
'            border-style: dotted !important;',
'            margin-left: 1px;',
'    }',
'',
'     #btndet{  background :  #003a85!important;',
'                 color:  yellow; }',
'',
'    #btndet:hover {  background :  #FFED00!important;',
'                 color:  darkblue; }',
'',
'.PENDIENTE{',
'    background: #cdffe0;',
'    color: #004926;',
'}',
'',
'.ANULADO {',
'    background: #ffebeb;',
'    color: #a50000;',
'}',
'',
'.AUTORIZADO {',
'    background: #dcfdff;',
'    color: #004f95;',
'}',
'',
'.RECHAZADO {',
'    background: #ffeee9;',
'    color: #803300;',
'}',
'',
' /*',
'.a-IRR-table tr td[headers*="pendiente"] {',
'    background-color: #004926 !important;',
'}',
'    ',
'.a-IRR-table tr td[headers*="anulado"] {',
'    background-color: #a50000 !important;',
'}',
'',
'.a-IRR-table tr td[headers*="autorizado"] {',
'    background-color: #004f95 !important;',
'}',
'    ',
'.a-IRR-table tr td[headers*="rechazado"] {',
'    background-color: #803300 !important;',
'}',
'*/'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20230223133804'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(110800772351589426)
,p_plug_name=>'PARAMETROS'
,p_region_name=>'parametros'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(110800841721589427)
,p_plug_name=>'LISTADO'
,p_region_name=>'listado'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  C001 nro_movimiento',
'       ,C002 cod_empleado',
'       ,C003 tipo  ',
'       ,C004 cod_motivo   ',
'       ,C005 fecha_ini  ',
'       ,C005 fecha_fin',
'       ,C007 cant_dias',
'       ,C008 hora_ini  ',
'       ,C009 hora_fin',
'       ,C010 cant_hs ',
'       ,C011 Observacion  ',
'       ,C012 ind_dto ',
'       ,C013 rel_autorizacion ',
'       ,C014 rel_rechazo',
'        ,C015 estado',
'      ----,''<span class="''||LOWER(C015)||''">''||C015||''</span> ''estado',
'      /*, case when C015 = ''PENDIENTE'' THEN ''u-color-24''',
'             when C015 = ''AUTORIZADO'' THEN ''u-color-20''',
'            else ''u-color-21''',
'        end css_color',
'        */',
'',
'       ,C016 excluir_almuerzo',
'       ,C017 periodo',
'       ,C018 motivo',
'       , NULL VER',
'       ,SEQ_ID ',
'       ,''<button  type="button"  id="btndet" onclick="$s(''''P396_ID_ANULA'''',''''''||C001||'''''')" ''||DECODE(C015,''ANULADO'','' disabled'','''')||''>ANULAR</button>''    btn',
'',
'FROM APEX_COLLECTIONS  ',
'WHERE COLLECTION_NAME = ''RHMOVPER''  ',
'',
'/*',
' ',
'*/'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'LISTADO'
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
 p_id=>wwv_flow_imp.id(110800906489589428)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANSA'
,p_internal_uid=>110800906489589428
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110801046623589429)
,p_db_column_name=>'NRO_MOVIMIENTO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('N\00BA Mov.')
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
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110801103428589430)
,p_db_column_name=>'COD_EMPLEADO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod.Empleado'
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
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110801221088589431)
,p_db_column_name=>'TIPO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tipo'
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
 p_id=>wwv_flow_imp.id(110801348480589432)
,p_db_column_name=>'MOTIVO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Motivo'
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
 p_id=>wwv_flow_imp.id(110802645385589445)
,p_db_column_name=>'PERIODO'
,p_display_order=>50
,p_column_identifier=>'Q'
,p_column_label=>'Periodo'
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
 p_id=>wwv_flow_imp.id(110801454471589433)
,p_db_column_name=>'FECHA_INI'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Fec. Inicio'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110801590788589434)
,p_db_column_name=>'FECHA_FIN'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Fec. Fin'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110801708960589436)
,p_db_column_name=>'HORA_INI'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Hora Inicia'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110801834156589437)
,p_db_column_name=>'HORA_FIN'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Hora Fin'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110801623770589435)
,p_db_column_name=>'CANT_DIAS'
,p_display_order=>110
,p_column_identifier=>'G'
,p_column_label=>'Cant. Dias'
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
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110801987975589438)
,p_db_column_name=>'CANT_HS'
,p_display_order=>120
,p_column_identifier=>'J'
,p_column_label=>'Cant. Hs.'
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
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110802040098589439)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>130
,p_column_identifier=>'K'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110802456623589443)
,p_db_column_name=>'ESTADO'
,p_display_order=>140
,p_column_identifier=>'O'
,p_column_label=>'Estado'
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
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_static_id=>'estado'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110802134565589440)
,p_db_column_name=>'IND_DTO'
,p_display_order=>150
,p_column_identifier=>'L'
,p_column_label=>'Ind Dto'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110802235472589441)
,p_db_column_name=>'REL_AUTORIZACION'
,p_display_order=>160
,p_column_identifier=>'M'
,p_column_label=>'Rel Autorizacion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110802394174589442)
,p_db_column_name=>'REL_RECHAZO'
,p_display_order=>170
,p_column_identifier=>'N'
,p_column_label=>'Rel Rechazo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110802513463589444)
,p_db_column_name=>'EXCLUIR_ALMUERZO'
,p_display_order=>190
,p_column_identifier=>'P'
,p_column_label=>'Excluir Almuerzo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110802776815589446)
,p_db_column_name=>'VER'
,p_display_order=>200
,p_column_identifier=>'R'
,p_column_label=>'Ver'
,p_column_link=>'javascript:$s(''P396_VER_SEQ_ID'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-binoculars" aria-hidden="true"></span>'
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
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(110802894149589447)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>210
,p_column_identifier=>'S'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(116041200778361004)
,p_db_column_name=>'COD_MOTIVO'
,p_display_order=>220
,p_column_identifier=>'T'
,p_column_label=>'Cod Motivo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(116043289476361024)
,p_db_column_name=>'BTN'
,p_display_order=>230
,p_column_identifier=>'U'
,p_column_label=>'Anula'
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
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(116054136392362141)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1160542'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'VER:NRO_MOVIMIENTO:COD_EMPLEADO:TIPO:MOTIVO:FECHA_INI:FECHA_FIN:PERIODO:CANT_DIAS:HORA_INI:HORA_FIN:CANT_HS:OBSERVACION:ESTADO:BTN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(116041394343361005)
,p_plug_name=>'Detalles de Solicitud'
,p_region_name=>'detalle'
,p_region_template_options=>'js-modal:js-draggable:js-resizable:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(110802902171589448)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(110800772351589426)
,p_button_name=>'filtrar'
,p_button_static_id=>'filtrar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Filtrar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116041467008361006)
,p_name=>'P396_EMPLEADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(116041394343361005)
,p_prompt=>'Empleado'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116041534223361007)
,p_name=>'P396_OBSERVACION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(116041394343361005)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116041670125361008)
,p_name=>'P396_REL_AUTORIZA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(116041394343361005)
,p_prompt=>unistr('Relatorio autorizaci\00F3n')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116041742880361009)
,p_name=>'P396_SUPERIOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(116041394343361005)
,p_prompt=>'Autoriza la solicitud'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116041851083361010)
,p_name=>'P396_INSERTA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(116041394343361005)
,p_prompt=>unistr('Datos de inserci\00F3n:')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116041956989361011)
,p_name=>'P396_ACTUALIZA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(116041394343361005)
,p_prompt=>unistr('Datos de actualizaci\00F3n:')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116042056739361012)
,p_name=>'P396_VER_SEQ_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(110800772351589426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116042526542361017)
,p_name=>'P396_COD_EMPLEADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(110800772351589426)
,p_prompt=>'Empleado'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select p.nombre, em.cod_empleado ',
'  from rh_empleados em,',
'  		 personas p',
' where em.cod_empresa = :P_cod_empresa ',
'   and em.cod_persona = p.cod_persona ',
'      and (',
'          nvl(:P396_IND_VISUALIZA_TODO, ''N'') = ''S'' ',
'        OR ',
'          ( exists (select distinct ''1''',
'                  from usuarios u',
'                 where u.cod_persona = em.cod_persona',
'                   and u.cod_usuario = :APP_USER))',
'        OR ( em.cod_empleado in  (select e1.cod_emp_solicita',
'                     from rh_emp_responsables e1,',
'                          rh_empleados e2',
'                    where e1.cod_empresa      = em.cod_empresa',
'                      and e1.cod_emp_solicita = em.cod_empleado',
'                      and e1.cod_empresa      = e2.cod_empresa',
'                      and e1.cod_emp_autoriza = e2.cod_empleado',
'                      and e2.cod_persona in (select u.cod_persona',
'                                               from usuarios u',
'                                              where u.cod_persona = e2.cod_persona',
'                                                and u.cod_usuario = :APP_USER)))',
'      )'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
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
 p_id=>wwv_flow_imp.id(116042671437361018)
,p_name=>'P396_TIPO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(110800772351589426)
,p_prompt=>'TIPO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:PERMISO;P,VACACIONES;V,REPOSO;R,LICENCIAS Y/O BENEFICIOS;L'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116042706630361019)
,p_name=>'P396_MOTIVO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(110800772351589426)
,p_prompt=>'MOTIVO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_motivo',
'              from rh_motivos',
'             where cod_empresa = :P_cod_empresa   ;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
,p_cHeight=>1
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116042849235361020)
,p_name=>'P396_ESTADO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(110800772351589426)
,p_prompt=>'ESTADO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:PENDIENTE;P,AUTORIZADO;A,ANULADO;N,RECHAZADO;R'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116042948515361021)
,p_name=>'P396_PERIODO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(110800772351589426)
,p_prompt=>'PERIODO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116043031704361022)
,p_name=>'P396_FECHA_INI'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(110800772351589426)
,p_prompt=>'FECHA INICIO'
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
 p_id=>wwv_flow_imp.id(116043176737361023)
,p_name=>'P396_FECHA_FIN'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(110800772351589426)
,p_prompt=>'FECHA FIN'
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
 p_id=>wwv_flow_imp.id(116043315106361025)
,p_name=>'P396_ID_ANULA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(110800772351589426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116043868661361030)
,p_name=>'P396_IND_VISUALIZA_TODO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(110800772351589426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116043916000361031)
,p_name=>'P396_COD_MOT_VACACIONES'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(110800772351589426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116486799328190343)
,p_name=>'P396_ES_RESPONSABLE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(110800772351589426)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(110803070665589449)
,p_name=>'da_carga_det'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(110802902171589448)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116041087972361002)
,p_event_id=>wwv_flow_imp.id(110803070665589449)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110803133678589450)
,p_event_id=>wwv_flow_imp.id(110803070665589449)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  rhmovper.carga_reporte(p_cod_empresa => :p_cod_empresa,',
'                             p_empleado => :P396_COD_EMPLEADO,',
'                             p_tipo => :P396_TIPO,',
'                             p_motivo => :P396_MOTIVO,',
'                             p_estado => :P396_ESTADO,',
'                             p_periodo => :P396_PERIODO,',
'                             p_fecha_ini => :P396_FECHA_INI,',
'                             p_fecha_fin => :P396_FECHA_FIN);'))
,p_attribute_02=>'P396_COD_EMPLEADO,P396_TIPO,P396_MOTIVO,P396_ESTADO,P396_PERIODO,P396_FECHA_INI,P396_FECHA_FIN'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116041107336361003)
,p_event_id=>wwv_flow_imp.id(110803070665589449)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116040919232361001)
,p_event_id=>wwv_flow_imp.id(110803070665589449)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(110800841721589427)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116042163415361013)
,p_name=>'da_carga_reg'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P396_VER_SEQ_ID'
,p_condition_element=>'P396_VER_SEQ_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116042355631361015)
,p_event_id=>wwv_flow_imp.id(116042163415361013)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P396_EMPLEADO,P396_OBSERVACION,P396_REL_AUTORIZA,P396_SUPERIOR,P396_INSERTA,P396_ACTUALIZA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116042493700361016)
,p_event_id=>wwv_flow_imp.id(116042163415361013)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    vempleado varchar2(30);',
'',
'BEGIN',
'    SELECT   C002 ,C011,C013,C019,C020',
'INTO vempleado, :P396_OBSERVACION, :P396_REL_AUTORIZA, :P396_INSERTA, :P396_ACTUALIZA',
'FROM APEX_COLLECTIONS  ',
'WHERE COLLECTION_NAME = ''RHMOVPER''  ',
'AND SEQ_ID = :P396_VER_SEQ_ID ;  ',
'',
'		BEGIN',
'            select p.nombre ',
'            INTO :P396_EMPLEADO',
'            from rh_empleados em,',
'            	 personas p',
'            where em.cod_empresa = :p_cod_empresa ',
'            and em.cod_persona = p.cod_persona',
'            AND  em.cod_empleado = vempleado;',
'',
'',
'		    SELECT P.NOMBRE',
'		      INTO :P396_SUPERIOR',
'				  FROM RH_EMP_RESPONSABLES X,',
'				       RH_EMPLEADOS E,',
'				       PERSONAS P',
'				 WHERE X.COD_EMPRESA      = :P_COD_EMPRESA',
'				   AND X.COD_EMP_SOLICITA = vempleado',
'				   --',
'				   AND X.COD_EMPRESA = E.COD_EMPRESA',
'				   AND X.COD_EMP_AUTORIZA = E.COD_EMPLEADO',
'				   AND E.COD_PERSONA = P.COD_PERSONA',
'				   AND ROWNUM = 1;',
'		EXCEPTION',
'		    WHEN NO_DATA_FOUND THEN',
'		        :P396_SUPERIOR := ''DEBE ASIGNARSE LA PERSONA QUE AUTORIZA LA SOLICITUD'';',
'		    WHEN OTHERS THEN',
'		        :P396_SUPERIOR := ''ERROR'';',
'		END;',
'END;'))
,p_attribute_02=>'P396_VER_SEQ_ID'
,p_attribute_03=>'P396_EMPLEADO,P396_OBSERVACION,P396_REL_AUTORIZA,P396_SUPERIOR,P396_INSERTA,P396_ACTUALIZA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116042256431361014)
,p_event_id=>wwv_flow_imp.id(116042163415361013)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(116041394343361005)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116043419150361026)
,p_name=>'DA_ANULAR'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P396_ID_ANULA'
,p_condition_element=>'P396_ID_ANULA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116043502959361027)
,p_event_id=>wwv_flow_imp.id(116043419150361026)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Esta seguro que desea anular la Solicitud N\00BA &P396_ID_ANULA.')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116043752290361029)
,p_event_id=>wwv_flow_imp.id(116043419150361026)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin         ',
'         update inv.rh_mov_permisos',
'            set estado =  ''N''',
'          where cod_empresa = :p_cod_empresa',
'            and nro_movimiento = :P396_ID_ANULA;',
'',
'exception',
'    when others then',
'        raise_application_error(-20000, ''Error al intentar actualizar ESTADO '' || sqlerrm );',
'end;'))
,p_attribute_02=>'P396_ID_ANULA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
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
 p_id=>wwv_flow_imp.id(116043647010361028)
,p_event_id=>wwv_flow_imp.id(116043419150361026)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#filtrar'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116485738164190333)
,p_name=>'DA_CSS_ESTADO'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(110800841721589427)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116485834244190334)
,p_event_id=>wwv_flow_imp.id(116485738164190333)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'$(''td[headers="estado"]'').each(function() {  ',
'  if ( $(this).text() === ''PENDIENTE'' ) { ',
'    $(this).css({"background-color":"green"}); ',
'  }',
'  if ( $(this).text() === ''RECHAZADO'' ) {',
'    $(this).css({"background-color":"lightgreen"}); ',
'  }',
'  if ( $(this).text() === ''AUTORIZADO'' ) {',
'    $(this).css({"background-color":"lightblue"});',
'  }',
'  if ( $(this).text() === ''ANULADO'' ) {',
'    $(this).css({"background-color":"pink"});',
'  } ',
'});',
' */',
'',
'estado_css();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116485970024190335)
,p_name=>'carga_datos_iniciales'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116487355443190349)
,p_event_id=>wwv_flow_imp.id(116485970024190335)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(110800772351589426)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116486963742190345)
,p_event_id=>wwv_flow_imp.id(116485970024190335)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P396_COD_EMPLEADO,P396_TIPO,P396_MOTIVO,P396_ESTADO,P396_PERIODO,P396_FECHA_INI,P396_FECHA_FIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116486082567190336)
,p_event_id=>wwv_flow_imp.id(116485970024190335)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''RHMOVPER'');',
':P396_IND_VISUALIZA_TODO := busca_permiso(:P_cod_empresa,''RHMOVPER'', :app_user, ''IND_VISUALIZA_TODO'');  ',
'																							 ',
':P396_cod_mot_vacaciones := bs_busca_parametro(''RH'', ''RH_MOTNOV_VAC'');',
'',
'',
' begin',
'     SELECT DISTINCT ''S''',
'     INTO :P396_ES_RESPONSABLE',
'      FROM rh_emp_responsables R,',
'           rh_empleados E,',
'           usuarios U',
'      WHERE R.COD_EMP_AUTORIZA=E.COD_EMPLEADO',
'      AND   R.COD_EMPRESA=E.COD_EMPRESA',
'      AND   E.COD_PERSONA=U.COD_PERSONA',
'      AND   u.cod_usuario = :APP_USER ;',
'',
' exception',
'    when others then',
'        :P396_ES_RESPONSABLE:=''N'';',
' end;',
'',
'',
'  declare',
'    vempleado varchar2(30);',
'  begin',
'     SELECT E.COD_EMPLEADO',
'     INTO vempleado',
'      FROM  rh_empleados E,',
'           usuarios U',
'      WHERE E.COD_EMPRESA = :P_COD_EMPRESA',
'      AND   E.COD_PERSONA= U.COD_PERSONA',
'      AND   u.cod_usuario = :APP_USER ;',
'',
'      rhmovper.carga_reporte(p_cod_empresa => :p_cod_empresa,',
'                             p_empleado => vempleado,',
'                             p_tipo => null,',
'                             p_motivo => null,',
'                             p_estado => null,',
'                             p_periodo => null,',
'                             p_fecha_ini => null,',
'                             p_fecha_fin => null);',
'',
' exception',
'    when others then',
'        APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''RHMOVPER'');',
' end;'))
,p_attribute_02=>'P396_IND_VISUALIZA_TODO,P396_COD_MOT_VACACIONES,P396_ES_RESPONSABLE'
,p_attribute_03=>'P396_COD_MOT_VACACIONES,P396_IND_VISUALIZA_TODO,P396_ES_RESPONSABLE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116487007243190346)
,p_event_id=>wwv_flow_imp.id(116485970024190335)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(110800772351589426)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116486401000190340)
,p_name=>'da_reg_todo'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P396_IND_VISUALIZA_TODO'
,p_condition_element=>'P396_IND_VISUALIZA_TODO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116486577803190341)
,p_event_id=>wwv_flow_imp.id(116486401000190340)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(110800772351589426)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(116487196920190347)
,p_name=>'da_reg_resp'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P396_ES_RESPONSABLE'
,p_condition_element=>'P396_ES_RESPONSABLE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(116487202749190348)
,p_event_id=>wwv_flow_imp.id(116487196920190347)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(110800772351589426)
);
wwv_flow_imp.component_end;
end;
/
