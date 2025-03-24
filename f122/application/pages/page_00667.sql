prompt --application/pages/page_00667
begin
--   Manifest
--     PAGE: 00667
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
 p_id=>667
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'TESORERIA - CONCILIACION BANCARIA MANUAL'
,p_alias=>'TESORERIA-CONCILIACION-BANCARIA-MANUAL'
,p_step_title=>'TESORERIA - CONCILIACION BANCARIA MANUAL'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function marcar_operacion (rowid, valor) {',
'            apex.server.process(',
'            ''MARCAR_TRANSACCION'', ',
'            { x01: rowid,',
'            x02: valor}, ',
'            {',
'            success: function (pData) { ',
'                if (pData.p_mensaje ===  "OK" || pData.p_mensaje === null) {',
'                        //apex.region("pendientes_extractos").refresh();',
'                        //apex.region("pendientes_sistemas").refresh();',
'                        apex.item(''P667_MARCADO_EXTRACTO'').setValue(pData.p_monto_extracto);',
'                        apex.item(''P667_MARCADO_SISTEMA'').setValue(pData.p_monto_sistema);',
'                }else {',
'                    apex.message.showErrors([{type: "error", ',
'                                                message: pData.p_mensaje, ',
'                                                location: "page", ',
'                                                unsafe: false}]);',
'                    apex.region("pendientes_extractos").refresh();',
'                    apex.region("pendientes_sistemas").refresh();',
'                }',
'            }, ',
'            });',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#form-principal{',
'    background-color: #e6e3e3;',
'    padding: 1rem;',
'}',
'',
'#total-marcado{',
'    padding: 1rem;',
'    border: 2rem;',
'    border-radius: 1rem;',
'    background-color: white;',
'    border-color: rgb(127, 127, 127);',
'    border-width: medium;',
'    border-style: solid;',
'    margin-bottom: 0.5em;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'OSCARGO'
,p_last_upd_yyyymmddhh24miss=>'20250217102121'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(226776642637544247)
,p_plug_name=>'CONCILIACION BANCARIA'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>930
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(226776725682544248)
,p_plug_name=>'PARAMETROS'
,p_region_name=>'form-principal'
,p_parent_plug_id=>wwv_flow_imp.id(226776642637544247)
,p_region_template_options=>'#DEFAULT#:t-Region--accent13:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(237966337687662601)
,p_plug_name=>'LISTADO EXTRACTO'
,p_parent_plug_id=>wwv_flow_imp.id(226776725682544248)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>120
,p_plug_grid_column_span=>6
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(237966544871662603)
,p_plug_name=>'PARTIDAS PENDIENTES EXTRACTO'
,p_region_name=>'pendientes_extractos'
,p_parent_plug_id=>wwv_flow_imp.id(237966337687662601)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SEQ_ID ,',
'to_date(c001,''dd/mm/yyyy'') fecha,',
'c002 nro_operacion,',
'CASE WHEN n002>0 then n002 else 0 end debito,',
'CASE WHEN n002<0 then n002*-1 else 0 end credito,',
'APEX_ITEM.CHECKBOX(1,SEQ_ID, decode(nvl(c006,''I''),''A'',''CHECKED'',''UNCHECKED'')||'' onclick="marcar_operacion(''''''||SEQ_ID||'''''',''''''||c006||'''''')"'','' disabled'')   AS marcar,',
'c005 tipo_movimiento,',
'c009 descripcion,',
'c010 tipo_transaccion',
'from APEX_COLLECTIONS ',
'           where COLLECTION_NAME = ''PARTIDAS_PENDIENTES'' and c005=''NO-CONTABILIZADO'' and c007 = ''P'' --pendiente de aplicacion',
'            order by SEQ_ID desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'PARTIDAS PENDIENTES EXTRACTO'
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
 p_id=>wwv_flow_imp.id(237966693646662604)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'OSCARGO'
,p_internal_uid=>237966693646662604
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(237968394834662621)
,p_db_column_name=>'MARCAR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Marcar'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(237969033018662628)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(237969149651662629)
,p_db_column_name=>'NRO_OPERACION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nro Operacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(237969449461662632)
,p_db_column_name=>'TIPO_MOVIMIENTO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Tipo Movimiento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(461744305220254720)
,p_db_column_name=>'DEBITO'
,p_display_order=>90
,p_column_identifier=>'J'
,p_column_label=>'Debito'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(461744470712254721)
,p_db_column_name=>'CREDITO'
,p_display_order=>100
,p_column_identifier=>'K'
,p_column_label=>'Credito'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(618066760394415702)
,p_db_column_name=>'FECHA'
,p_display_order=>110
,p_column_identifier=>'L'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(618067425842415709)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>120
,p_column_identifier=>'M'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(618070535441415740)
,p_db_column_name=>'TIPO_TRANSACCION'
,p_display_order=>130
,p_column_identifier=>'N'
,p_column_label=>'Tipo Transaccion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(237976064108693467)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2379761'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FECHA:NRO_OPERACION:DEBITO:CREDITO:DESCRIPCION:MARCAR:'
,p_sort_column_1=>'FECHA'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(237967861992662616)
,p_plug_name=>'TOTAL MARCADO EXTRACTO'
,p_parent_plug_id=>wwv_flow_imp.id(237966337687662601)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(237966483094662602)
,p_plug_name=>'LISTADO SISTEMA'
,p_parent_plug_id=>wwv_flow_imp.id(226776725682544248)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>130
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(237967182843662609)
,p_plug_name=>'PARTIDAS PENDIENTES SISTEMA'
,p_region_name=>'pendientes_sistemas'
,p_parent_plug_id=>wwv_flow_imp.id(237966483094662602)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SEQ_ID ,',
'to_date(c001,''dd/mm/yyyy'') fecha,',
'c002 nro_operacion,',
'CASE WHEN n001>0 then n001 else 0 end debito,',
'CASE WHEN n001<0 then n001*-1 else 0 end credito,',
'APEX_ITEM.CHECKBOX(1,SEQ_ID, decode(nvl(c006,''I''),''A'',''CHECKED'',''UNCHECKED'')||'' onclick="marcar_operacion(''''''||SEQ_ID||'''''',''''''||c006||'''''')"'','' disabled'')   AS marcar,',
'c005 tipo_movimiento',
'from APEX_COLLECTIONS ',
'           where COLLECTION_NAME = ''PARTIDAS_PENDIENTES'' and c005=''NO-ACREDITADO'' and c007 = ''P'' --pendiente de aplicacion',
'            order by SEQ_ID desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'PARTIDAS PENDIENTES SISTEMA'
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
 p_id=>wwv_flow_imp.id(237967255610662610)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'OSCARGO'
,p_internal_uid=>237967255610662610
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(237969503365662633)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>20
,p_column_identifier=>'D'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(237969644714662634)
,p_db_column_name=>'NRO_OPERACION'
,p_display_order=>30
,p_column_identifier=>'E'
,p_column_label=>'Nro Operacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(237969854895662636)
,p_db_column_name=>'MARCAR'
,p_display_order=>50
,p_column_identifier=>'G'
,p_column_label=>'Marcar'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(237969979936662637)
,p_db_column_name=>'TIPO_MOVIMIENTO'
,p_display_order=>60
,p_column_identifier=>'H'
,p_column_label=>'Tipo Movimiento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(461744599961254722)
,p_db_column_name=>'DEBITO'
,p_display_order=>70
,p_column_identifier=>'J'
,p_column_label=>'Debito'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(461744624368254723)
,p_db_column_name=>'CREDITO'
,p_display_order=>80
,p_column_identifier=>'K'
,p_column_label=>'Credito'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(618066859509415703)
,p_db_column_name=>'FECHA'
,p_display_order=>90
,p_column_identifier=>'L'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(237976669658693469)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2379767'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FECHA:NRO_OPERACION:CREDITO:DEBITO:MARCAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(237968103812662619)
,p_plug_name=>'TOTAL MARCADO SISTEMA'
,p_parent_plug_id=>wwv_flow_imp.id(237966483094662602)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(618067673810415711)
,p_plug_name=>'Opciones Adicionales'
,p_parent_plug_id=>wwv_flow_imp.id(226776725682544248)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>140
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(480888961231839106)
,p_plug_name=>unistr('Establecer L\00EDmite')
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>940
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(618067740524415712)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(618067673810415711)
,p_button_name=>'Conciliados'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--simple'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Conciliados'
,p_button_redirect_url=>'f?p=&APP_ID.:747:&SESSION.::&DEBUG.:CR,747:P747_BANCO,P747_CUENTA,P747_PERIODO:&P667_COD_BANCO.,&P667_CUENTA_BANCO.,&P667_PERIODO.'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(480889055997839107)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(618067673810415711)
,p_button_name=>'BTN_LIMIT_DIF'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--simple'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Limite Diferencia'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(480889306988839110)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(480888961231839106)
,p_button_name=>'BTN_ACTUALIZA_LIMIT_DIF'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--simple:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Actualizar'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(237968716366662625)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(226776725682544248)
,p_button_name=>'BTN_LISTAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Listar'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(461743284801254709)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(226776725682544248)
,p_button_name=>'BTN_CONCILIA_OPC1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>unistr('Conciliar por monto y n\00FAmero')
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(461743438683254711)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(226776725682544248)
,p_button_name=>'BTN_CONCILIA_OPC2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Conciliar por fecha y monto'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(95350818084918808)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(226776725682544248)
,p_button_name=>'BTN_APLICAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Conciliar manual'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(461743957455254716)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(226776725682544248)
,p_button_name=>'BTN_IMPORTAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Importar extracto'
,p_button_execute_validations=>'N'
,p_button_css_classes=>'u-color-34-bg'
,p_icon_css_classes=>'fa-file-excel-o'
,p_grid_new_row=>'N'
,p_grid_column_span=>2
,p_grid_column=>9
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(461745502609254732)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(226776725682544248)
,p_button_name=>'BTN_CERRAR_CONCILIACION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--stretch:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>unistr('Cerrar Conciliaci\00F3n')
,p_confirm_message=>unistr('\00BFSeguro que quieres realizar el cierre/apertura del periodo?')
,p_grid_new_row=>'N'
,p_grid_column_span=>2
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(461744068015254717)
,p_branch_name=>'BR_IMPORTAR_EXTRACTO'
,p_branch_action=>'f?p=&APP_ID.:712:&SESSION.::&DEBUG.::P712_COD_BANCO,P712_COD_CUENTA,P712_PERIODO:&P667_COD_BANCO.,&P667_CUENTA_BANCO.,&P667_PERIODO.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(461743957455254716)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95351085606918810)
,p_name=>'P667_PERIODO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(226776725682544248)
,p_prompt=>'Periodo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(c.fec_conciliacion, ''mm/yyyy'') descripcion, c.fec_conciliacion valor',
'from cc_conciliacion_bancaria c',
'where c.cod_empresa = :P_COD_EMPRESA',
'and c.cod_banco = :P667_COD_BANCO and c.nro_cuenta = :P667_CUENTA_BANCO',
'and c.fec_conciliacion > ''31/12/2024''',
'group by c.fec_conciliacion',
'union all',
'select ''01/2025'' descripcion, to_date(''31/01/2025'',''dd/mm/yyyy'') valor from dual',
'order by 2 desc'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P667_COD_BANCO,P667_CUENTA_BANCO'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(226776821768544249)
,p_name=>'P667_COD_BANCO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(226776725682544248)
,p_prompt=>'Banco'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.cod_persona ||'' - ''|| p.nombre, p.cod_persona from personas p',
'inner join cc_cuentas_bancarias c on p.cod_persona = c.cod_per_juridica ',
'and c.cod_empresa = :P_COD_EMPRESA',
'and c.activo = ''S''',
'group by p.cod_persona, p.nombre'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(226776958566544250)
,p_name=>'P667_CUENTA_BANCO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(226776725682544248)
,p_prompt=>'Cuenta Bancaria'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nro_cuenta||'' - ''||referencia ||'' (''||cod_cuenta||'')'' as cuenta, nro_cuenta ',
'FROM cc_cuentas_bancarias where cod_empresa = :P_COD_EMPRESA and activo = ''S''',
'and cod_per_juridica = :P667_COD_BANCO;'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P667_COD_BANCO'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(237967992419662617)
,p_name=>'P667_MARCADO_EXTRACTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(237967861992662616)
,p_prompt=>'Marcado Extracto'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_column=>8
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(237968227866662620)
,p_name=>'P667_MARCADO_SISTEMA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(237968103812662619)
,p_prompt=>'Marcado Sistema'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_column=>8
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(461744936055254726)
,p_name=>'P667_TOTAL_EXTRACTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(237967861992662616)
,p_prompt=>'Total Extracto'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(461745087707254727)
,p_name=>'P667_TOTAL_SISTEMA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(237968103812662619)
,p_prompt=>'Total Sistema'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(618066919523415704)
,p_name=>'P667_FECHA_HASTA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(226776725682544248)
,p_prompt=>'Fecha Hasta'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'ITEM'
,p_attribute_05=>'P667_FECHA_MIN'
,p_attribute_06=>'ITEM'
,p_attribute_08=>'P667_FECHA_MAX'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(618067019054415705)
,p_name=>'P667_FECHA_MIN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(226776642637544247)
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(618067165405415706)
,p_name=>'P667_FECHA_MAX'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(226776642637544247)
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(618070494292415739)
,p_name=>'P667_LIMITE_DIFERENCIA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(480888961231839106)
,p_prompt=>unistr('L\00EDmite asignado')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>3
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'center'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(461745603479254733)
,p_validation_name=>'VALIDACION'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P667_COD_BANCO is null or :P667_CUENTA_BANCO is null or :P667_PERIODO is null then',
unistr('    return ''Seleccione los par\00E1metros correspondientes por favor'';'),
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(95351147498918811)
,p_name=>'DA_APLICAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(95350818084918808)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(95351290653918812)
,p_event_id=>wwv_flow_imp.id(95351147498918811)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_monto_extracto number;',
'v_monto_sistema number;',
'v_nro_aplicado number;',
'begin',
'    v_monto_extracto := replace(:P667_MARCADO_EXTRACTO,''.'','''');',
'    v_monto_sistema := replace(:P667_MARCADO_SISTEMA,''.'','''');',
'    if :P667_COD_BANCO is null or :P667_CUENTA_BANCO is null or :P667_PERIODO is null then',
unistr('        RAISE_APPLICATION_ERROR(-20001, ''Seleccione los par\00E1metros correspondientes por favor'');'),
'    elsif nvl(v_monto_extracto,0) = 0 or nvl(v_monto_sistema,0) = 0 then',
'        RAISE_APPLICATION_ERROR(-20001, ''Se deben marcar operaciones de sistema y extracto'');',
'    elsif ABS(v_monto_extracto - v_monto_sistema) > nvl(:P667_LIMITE_DIFERENCIA,0) then',
unistr('        RAISE_APPLICATION_ERROR(-20001, ''La diferencia m\00E1xima permitida entre operaciones es de '' || :P667_LIMITE_DIFERENCIA);'),
'    else',
'    --Inserta nro de aplicacion con los datos asociados',
'        select nvl(max(nro_aplicado),0) +1 into v_nro_aplicado from cc_conciliacion_aplicado',
'            where cod_empresa = :P_COD_EMPRESA and cod_banco = :P667_COD_BANCO and nro_cuenta = :P667_CUENTA_BANCO and fecha_conciliacion = :P667_PERIODO;',
'        insert into cc_conciliacion_aplicado (COD_EMPRESA, COD_BANCO, NRO_CUENTA, FECHA_CONCILIACION, NRO_APLICADO, ',
'        MONTO_BANCO, MONTO_SISTEMA, FECHA_APLICADO, USUARIO) ',
'        values (:P_COD_EMPRESA, :P667_COD_BANCO, :P667_CUENTA_BANCO, :P667_PERIODO, v_nro_aplicado,',
'        v_monto_extracto, v_monto_sistema, sysdate, :P_COD_USUARIO);',
'',
'        for a in (select SEQ_ID, c004 idbd from APEX_COLLECTIONS ',
'           where COLLECTION_NAME = ''PARTIDAS_PENDIENTES'' and c006 = ''A'' and c007 = ''P'') --pendiente de aplicacion',
'        loop',
'            --Actualiza en base de datos el id de aplicacion',
'            update cc_conciliacion_bancaria set nro_aplicado = v_nro_aplicado where rowid = a.idbd;',
'            --Actualiza en la coleccion el registro aplicado',
'            apex_collection.UPDATE_MEMBER_ATTRIBUTE (p_collection_name => ''PARTIDAS_PENDIENTES'',',
'                                    p_seq             => a.seq_id,',
'                                    p_attr_number     => 7,',
'                                    p_attr_value      => ''A'');',
'        end loop;',
'        :P667_MARCADO_SISTEMA := 0;',
'        :P667_MARCADO_EXTRACTO := 0;',
'    end if;',
'end;'))
,p_attribute_02=>'P667_MARCADO_EXTRACTO,P667_MARCADO_SISTEMA,P667_COD_BANCO,P667_CUENTA_BANCO,P667_PERIODO,P667_LIMITE_DIFERENCIA'
,p_attribute_03=>'P667_MARCADO_SISTEMA,P667_MARCADO_EXTRACTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(95351377774918813)
,p_event_id=>wwv_flow_imp.id(95351147498918811)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(237966544871662603)
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
 p_id=>wwv_flow_imp.id(95351429132918814)
,p_event_id=>wwv_flow_imp.id(95351147498918811)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(237967182843662609)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(461743520673254712)
,p_name=>'DA_CONCILIA_OPC1'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(461743284801254709)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(461743682584254713)
,p_event_id=>wwv_flow_imp.id(461743520673254712)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    if :P667_COD_BANCO is null or :P667_CUENTA_BANCO is null or :P667_PERIODO is null then',
unistr('        RAISE_APPLICATION_ERROR(-20001, ''Seleccione los par\00E1metros correspondientes por favor'');'),
'    ELSE',
'        INV.PKG_CONCILIACION_BANCARIA.SP_CONCILIA_AUTOMATICO(',
'            p_cod_empresa   => :P_COD_EMPRESA,',
'            p_cod_banco     => :P667_COD_BANCO,',
'            p_nro_cuenta    => :P667_CUENTA_BANCO,',
'            p_fecha_desde   => trunc(last_day(:P667_PERIODO)-1, ''mm''),',
'            p_fecha_hasta   => trunc(last_day(:P667_PERIODO)),',
'            p_aplicacion    => ''MONTO-NUMERO'');',
'    end if;',
'',
'    EXCEPTION WHEN OTHERS THEN',
unistr('        RAISE_APPLICATION_ERROR(-20001, ''Error al procesar conciliaci\00F3n autom\00E1tica'');'),
'END;'))
,p_attribute_02=>'P667_COD_BANCO,P667_CUENTA_BANCO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(461747360877254750)
,p_event_id=>wwv_flow_imp.id(461743520673254712)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'PROCESO EJECUTADO CORRECTAMENTE'
,p_attribute_02=>unistr('CONCILIACI\00D3N AUTOM\00C1TICA')
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(461746892149254745)
,p_event_id=>wwv_flow_imp.id(461743520673254712)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(237966544871662603)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(461747037181254747)
,p_event_id=>wwv_flow_imp.id(461743520673254712)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(237966544871662603)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(461744752375254724)
,p_name=>'DA_CONCILIA_OPC2'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(461743438683254711)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(461744883195254725)
,p_event_id=>wwv_flow_imp.id(461744752375254724)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    if :P667_COD_BANCO is null or :P667_CUENTA_BANCO is null or :P667_PERIODO is null then',
unistr('        RAISE_APPLICATION_ERROR(-20001, ''Seleccione los par\00E1metros correspondientes por favor'');'),
'    ELSE',
'        INV.PKG_CONCILIACION_BANCARIA.SP_CONCILIA_AUTOMATICO(',
'            p_cod_empresa   => :P_COD_EMPRESA,',
'            p_cod_banco     => :P667_COD_BANCO,',
'            p_nro_cuenta    => :P667_CUENTA_BANCO,',
'            p_fecha_desde   => trunc(last_day(:P667_PERIODO)-1, ''mm''),',
'            p_fecha_hasta   => trunc(last_day(:P667_PERIODO)),',
'            p_aplicacion    => ''FECHA-MONTO'');',
'    end if;',
'',
'    EXCEPTION WHEN OTHERS THEN',
unistr('        RAISE_APPLICATION_ERROR(-20001, ''Error al procesar conciliaci\00F3n autom\00E1tica'');'),
'END;'))
,p_attribute_02=>'P667_COD_BANCO,P667_CUENTA_BANCO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(618066686402415701)
,p_event_id=>wwv_flow_imp.id(461744752375254724)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'PROCESO EJECUTADO CORRECTAMENTE'
,p_attribute_02=>unistr('CONCILIACI\00D3N AUTOM\00C1TICA')
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(461747164428254748)
,p_event_id=>wwv_flow_imp.id(461744752375254724)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(237966544871662603)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(461747244752254749)
,p_event_id=>wwv_flow_imp.id(461744752375254724)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(237967182843662609)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(461745841946254735)
,p_name=>'DA_COD_BANCO'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P667_COD_BANCO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(461745922216254736)
,p_event_id=>wwv_flow_imp.id(461745841946254735)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.create_or_truncate_collection(p_collection_name => ''PARTIDAS_PENDIENTES'');',
':P667_TOTAL_SISTEMA := 0;',
':P667_TOTAL_EXTRACTO := 0;',
':P667_MARCADO_SISTEMA := 0;',
':P667_MARCADO_EXTRACTO := 0;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(461746037252254737)
,p_event_id=>wwv_flow_imp.id(461745841946254735)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(237966544871662603)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(461746120278254738)
,p_event_id=>wwv_flow_imp.id(461745841946254735)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(237967182843662609)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(618067287754415707)
,p_name=>'DA_PERIODO'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P667_PERIODO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(618067384214415708)
,p_event_id=>wwv_flow_imp.id(618067287754415707)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P667_FECHA_MIN := trunc(last_day(:P667_PERIODO)-1, ''mm'');',
':P667_FECHA_MAX := trunc(last_day(:P667_PERIODO));',
':P667_FECHA_HASTA := trunc(last_day(:P667_PERIODO));'))
,p_attribute_02=>'P667_PERIODO'
,p_attribute_03=>'P667_FECHA_MIN,P667_FECHA_MAX,P667_FECHA_HASTA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(480889144679839108)
,p_name=>'DA_LIMITE_DIFERENCIA'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(480889055997839107)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(480889236567839109)
,p_event_id=>wwv_flow_imp.id(480889144679839108)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(480888961231839106)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(480889470493839111)
,p_name=>'DA_ACTUALIZA_LIMIT_DIF'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(480889306988839110)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(480889796734839114)
,p_event_id=>wwv_flow_imp.id(480889470493839111)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_NUMBER(NVL(MAX(IMPORTE_DIF_EXT),5)) INTO :P667_LIMITE_DIFERENCIA',
'    FROM cc_cuentas_bancarias',
'        WHERE cod_empresa = :P_COD_EMPRESA and cod_per_juridica = :P667_COD_BANCO',
'            and nro_cuenta = :P667_CUENTA_BANCO and activo = ''S'';'))
,p_attribute_02=>'P667_COD_BANCO,P667_CUENTA_BANCO'
,p_attribute_03=>'P667_LIMITE_DIFERENCIA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_server_condition_expr1=>'P667_COD_BANCO'
,p_server_condition_expr2=>'1000'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(480889598426839112)
,p_event_id=>wwv_flow_imp.id(480889470493839111)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update cc_cuentas_bancarias set IMPORTE_DIF_EXT = nvl(:P667_LIMITE_DIFERENCIA,0)',
'where cod_empresa = :P_COD_EMPRESA and cod_per_juridica = :P667_COD_BANCO and nro_cuenta = :P667_CUENTA_BANCO',
'    and activo = ''S'';'))
,p_attribute_02=>'P667_COD_BANCO,P667_CUENTA_BANCO,P667_LIMITE_DIFERENCIA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(210911249117458006)
,p_event_id=>wwv_flow_imp.id(480889470493839111)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(461745797042254734)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CIERRE_CONCILIACION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'PKG_CONCILIACION_BANCARIA.SP_CIERRE_CONCILIACION(',
'    p_cod_empresa => :P_COD_EMPRESA,',
'    p_cod_banco => :P667_COD_BANCO,',
'    p_nro_cuenta => :P667_CUENTA_BANCO,',
'    p_periodo => :P667_PERIODO);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(461745502609254732)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(95350917231918809)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INICIO_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_total_extracto number := 0;',
'v_total_sistema number := 0;',
'begin',
'    apex_collection.create_or_truncate_collection(p_collection_name => ''PARTIDAS_PENDIENTES'');',
'',
'    SELECT TO_NUMBER(NVL(MAX(IMPORTE_DIF_EXT),0)) INTO :P667_LIMITE_DIFERENCIA',
'    FROM cc_cuentas_bancarias',
'        WHERE cod_empresa = :P_COD_EMPRESA and cod_per_juridica = :P667_COD_BANCO',
'            and nro_cuenta = :P667_CUENTA_BANCO and activo = ''S'';',
'',
'    if :P667_COD_BANCO is null or :P667_CUENTA_BANCO is null or :P667_PERIODO is null or :P667_FECHA_HASTA is null then',
unistr('        RAISE_APPLICATION_ERROR(-20001, ''Seleccione los par\00E1metros para obtener los datos'');'),
'    else',
'        if :P667_FECHA_HASTA between :P667_FECHA_MIN and :P667_FECHA_MAX then',
'            INV.PKG_CONCILIACION_BANCARIA.SP_OPERACIONES_SISTEMA(',
'                p_cod_empresa => :P_COD_EMPRESA,',
'                p_cod_banco => :P667_COD_BANCO,',
'                p_nro_cuenta => :P667_CUENTA_BANCO,',
'                p_fecha_desde => trunc(last_day(:P667_PERIODO)-1, ''mm''),',
'                --p_fecha_hasta => trunc(last_day(:P667_PERIODO)));',
'                p_fecha_hasta => :P667_FECHA_HASTA);',
'',
'            PKG_CONCILIACION_BANCARIA.SP_OPERACIONES_EXTRACTO(',
'                p_cod_empresa   => :P_COD_EMPRESA,',
'                p_cod_banco     => :P667_COD_BANCO,',
'                p_nro_cuenta    => :P667_CUENTA_BANCO,',
'                p_fecha_desde   => trunc(last_day(:P667_PERIODO)-1, ''mm''),',
'                p_fecha_hasta   => :P667_FECHA_HASTA',
'            );',
'',
'            for a in (select c.*, rowid idbd from cc_conciliacion_bancaria c ',
'            where cod_banco=:P667_COD_BANCO and nro_cuenta = :P667_CUENTA_BANCO  ',
'            and c.fec_conciliacion = :P667_PERIODO and nro_aplicado is null',
'            and (c.fec_sistema <= :P667_FECHA_HASTA or c.fec_banco <= :P667_FECHA_HASTA))',
'            loop',
'                apex_collection.add_member(',
'                    p_collection_name => ''PARTIDAS_PENDIENTES'',',
'                    p_c001   => NVL(a.fec_sistema,a.fec_banco),',
'                    p_c002   => a.nro_operacion,',
'                    p_n001   => to_number(a.monto_sistema),',
'                    p_n002   => to_number(a.monto_banco),',
'                    p_c004   => a.idbd,',
'                    p_c005   => a.tipo_movimiento,',
'                    p_c006   => ''I'', --Iniciliza como no marcado',
'                    p_c007   => ''P'', --Inicializa como no aplicado',
'                    p_c008  => a.tip_comprobante_ref,',
'                    p_c009  => a.descripcion,',
'                    p_c010  => a.tipo_transaccion);',
'                v_total_extracto := v_total_extracto + nvl(a.monto_banco,0);',
'                v_total_sistema := v_total_sistema + nvl(a.monto_sistema,0);',
'            end loop;',
'        else',
'            RAISE_APPLICATION_ERROR(-20001, ''La fecha debe estar en el rango del periodo seleccionado'');',
'        end if;',
'    end if;',
'    :P667_TOTAL_SISTEMA := v_total_sistema;',
'    :P667_TOTAL_EXTRACTO := v_total_extracto;',
'    :P667_MARCADO_SISTEMA := 0;',
'    :P667_MARCADO_EXTRACTO := 0;',
'',
'    exception when others then',
'        apex_collection.create_or_truncate_collection(p_collection_name => ''PARTIDAS_PENDIENTES'');',
'        --RAISE_APPLICATION_ERROR(-20001, ''Error al listar transacciones'');',
'        /*select nvl(SUM(n002),0) INTO :P667_MARCADO_EXTRACTO',
'        from APEX_COLLECTIONS ',
'           where COLLECTION_NAME = ''PARTIDAS_PENDIENTES'' and c005=''NO-CONTABILIZADO''',
'           and c006 = ''A'';',
'',
'    select nvl(SUM(n001),0) INTO :P667_MARCADO_SISTEMA',
'        from APEX_COLLECTIONS ',
'           where COLLECTION_NAME = ''PARTIDAS_PENDIENTES'' and c005=''NO-ACREDITADO''',
'           and c006 = ''A'';*/',
'end;',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(237970591198662643)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'MARCAR_TRANSACCION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_idlinea varchar2(50);',
'    v_valor varchar2(400);',
'    v_monto_extracto number;',
'    v_monto_sistema number;',
'    p_mensaje  VARCHAR2(4000);',
'begin',
'    p_mensaje := null;',
'    v_idlinea := apex_application.g_x01;',
'    v_valor := apex_application.g_x02;',
'    --:P634_SELECCIONADO := v_cod_empleado||v_nombre_empleado;',
'    select c006 into v_valor from APEX_COLLECTIONS ',
'           where COLLECTION_NAME = ''PARTIDAS_PENDIENTES'' and seq_id = v_idlinea;',
'    select case when v_valor = ''I'' then ''A'' else ''I'' end valor into v_valor from dual;',
'',
'    apex_collection.UPDATE_MEMBER_ATTRIBUTE (p_collection_name => ''PARTIDAS_PENDIENTES'',',
'                                    p_seq             => v_idlinea,',
'                                    p_attr_number     => 6,',
'                                    p_attr_value      => v_valor);',
'',
'    select nvl(SUM(n002),0) INTO v_monto_extracto',
'        from APEX_COLLECTIONS ',
'           where COLLECTION_NAME = ''PARTIDAS_PENDIENTES'' and c005=''NO-CONTABILIZADO''',
'           and c006 = ''A'' and c007 = ''P'';',
'',
'    select nvl(SUM(n001),0) INTO v_monto_sistema',
'        from APEX_COLLECTIONS ',
'           where COLLECTION_NAME = ''PARTIDAS_PENDIENTES'' and c005=''NO-ACREDITADO''',
'           and c006 = ''A'' and c007 = ''P'';',
'    ',
'    apex_json.open_object;',
'    apex_json.write(''success'', TRUE);',
'    apex_json.write(''p_mensaje'', nvl(p_mensaje, ''OK''));',
'    apex_json.write(''p_monto_extracto'', v_monto_extracto);',
'    apex_json.write(''p_monto_sistema'', v_monto_sistema);',
'    apex_json.close_object;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    apex_json.open_object;',
'    apex_json.write(''success'', FALSE);',
'    apex_json.write(''p_mensaje'', p_mensaje);',
'    apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
