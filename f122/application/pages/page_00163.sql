prompt --application/pages/page_00163
begin
--   Manifest
--     PAGE: 00163
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
 p_id=>163
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CCHEQCLI'
,p_alias=>'CCHEQCLI'
,p_step_title=>'CCHEQCLI'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'ETRINIDAD'
,p_last_upd_yyyymmddhh24miss=>'20221215151532'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29598590097400538)
,p_plug_name=>'Variables'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29599203813400545)
,p_plug_name=>'CCHEQCLI'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29599678561400549)
,p_plug_name=>'Datos de Cheques de Clientes'
,p_parent_plug_id=>wwv_flow_imp.id(29599203813400545)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       ',
'       COD_EMPRESA,',
'       COD_CLIENTE,',
'       TIPO,',
'       AFINIDAD,',
'       TITULAR,',
'       COD_BANCO,',
'       NCI,',
'       NRO_CUENTA,',
'       PROPIETARIO,',
'       FECHA_ALTA,',
'       COD_USUARIO,',
'       OBSERVACION,',
'       COD_PERS_REP,',
'       ROWID,',
'       null observacion1,',
'       null editar,',
'       null eliminar',
'  from CC_CHEQUE_CLIENTE',
' where cod_empresa = :P163_COD_EMPRESA',
'AND ( :P163_P_COD_CLIENTE = COD_CLIENTE OR :P163_P_COD_CLIENTE IS NULL)',
'order by FECHA_ALTA desc',
'--ORDER BY to_char(FECHA_ALTA, ''yy/mm'' )',
'--oRDER BY to_number(to_char(FECHA_ALTA, ''mm'' )), to_number(to_char(FECHA_ALTA, ''yyyy'' ))'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P163_COD_CLIENTE, P163_P_COD_CLIENTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Datos de Cheques de Clientes'
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
,p_plug_header=>'Datos de Cheques de Clientes'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(30393957499457415)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>30393957499457415
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30394003808457416)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30394149428457417)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30394248432457418)
,p_db_column_name=>'TIPO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30394301823457419)
,p_db_column_name=>'AFINIDAD'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Afinidad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30394472473457420)
,p_db_column_name=>'TITULAR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Titular'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30394525708457421)
,p_db_column_name=>'COD_BANCO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Banco'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(30473423444219230)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30394668509457422)
,p_db_column_name=>'NCI'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Nci'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30394764544457423)
,p_db_column_name=>'NRO_CUENTA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Nro Cuenta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30394847391457424)
,p_db_column_name=>'PROPIETARIO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Propietario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30394921969457425)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Fecha Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30395050800457426)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30395100387457427)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30395205737457428)
,p_db_column_name=>'COD_PERS_REP'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cod Pers Rep'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30396460679457440)
,p_db_column_name=>'OBSERVACION1'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Observacion'
,p_column_link=>'javascript:$s(''P163_OBSERVACION'',''#OBSERVACION#'')'
,p_column_linktext=>'<span class="fa fa-search" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30798731477892228)
,p_db_column_name=>'EDITAR'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P163_SEQ_ID_EDITAR'',''#ROWID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30798872578892229)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P163_ACCION_ELIMINAR'',''#ROWID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-trash"></span>'
,p_column_type=>'STRING'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 3); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31107478671050911)
,p_db_column_name=>'ROWID'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Rowid'
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
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(30418887355498798)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'304189'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'COD_CLIENTE:TIPO:COD_BANCO:NRO_CUENTA:TITULAR:COD_PERS_REP:PROPIETARIO:COD_EMPRESA:NCI:AFINIDAD:COD_USUARIO:FECHA_ALTA:OBSERVACION1:EDITAR:ELIMINAR:'
,p_sort_column_1=>'FECHA_ALTA'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30393721143457413)
,p_plug_name=>'Parametros'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30395854136457434)
,p_plug_name=>'Responsables legales'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'TABLE'
,p_query_table=>'VW_REPONSABLES_LEGALES'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Responsables legales'
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
 p_id=>wwv_flow_imp.id(30395981206457435)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>30395981206457435
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30396591559457441)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>10
,p_column_identifier=>'C'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30396621402457442)
,p_db_column_name=>'TIPO'
,p_display_order=>20
,p_column_identifier=>'D'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30396779151457443)
,p_db_column_name=>'COD_RESPONSABLE'
,p_display_order=>30
,p_column_identifier=>'E'
,p_column_label=>'Cod Responsable'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30396842825457444)
,p_db_column_name=>'REPONSABLE'
,p_display_order=>40
,p_column_identifier=>'F'
,p_column_label=>'Reponsable'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30396988652457445)
,p_db_column_name=>'NCI'
,p_display_order=>50
,p_column_identifier=>'G'
,p_column_label=>'Nci'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(30432648905733487)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'304327'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'COD_CLIENTE:REPONSABLE:NCI:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30396343467457439)
,p_plug_name=>'Observacion:'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56966374731717402)
,p_plug_name=>'Agregar/Editar '
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30922870313265380)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(56966374731717402)
,p_button_name=>'P163_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'CANCELAR'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30922405281265380)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(56966374731717402)
,p_button_name=>'P163_ACEPTAR_CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'ACEPTAR'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30922040941265379)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(56966374731717402)
,p_button_name=>'P163_ACEPTAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'ACEPTAR'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30935110213290261)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(29599203813400545)
,p_button_name=>'P163_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RETURN SEGURIDAD_GRANULAR.FC_MOSTRAR_CONFIRMAR (pusua0100_id => :P_USUA0100_ID,',
'                                                    ppage_id => :APP_PAGE_ID,',
'                                                    papli0100_id => :P_APLI0100_ID);',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29598605505400539)
,p_name=>'P163_COD_USUARIO'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(56966374731717402)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29598728087400540)
,p_name=>'P163_COD_EMPRESA'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(56966374731717402)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29598807063400541)
,p_name=>'P163_NOM_EMPRESA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(29598590097400538)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29598923644400542)
,p_name=>'P163_COD_SUCURSAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(29598590097400538)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29599086698400543)
,p_name=>'P163_NOM_SUCURSAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(29598590097400538)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29599193571400544)
,p_name=>'P163_COD_MODULO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(29598590097400538)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30393817875457414)
,p_name=>'P163_P_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(30393721143457413)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30396200697457438)
,p_name=>'P163_OBSERVACION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(30396343467457439)
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30798959387892230)
,p_name=>'P163_COD_CLIENTE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(56966374731717402)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PERSONAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_persona || '' - '' || ltrim( rtrim( nvl( nombre, nomb_fantasia ) ) ) d, cod_persona r ',
'from personas',
'order by 1;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(30799011967892231)
,p_name=>'P163_TIPO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(56966374731717402)
,p_prompt=>'Tipo'
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
 p_id=>wwv_flow_imp.id(30799100655892232)
,p_name=>'P163_AFINIDAD'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(56966374731717402)
,p_prompt=>'Afinidad'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30799234748892233)
,p_name=>'P163_TITULAR'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(56966374731717402)
,p_prompt=>'Titular'
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
 p_id=>wwv_flow_imp.id(30799397584892234)
,p_name=>'P163_COD_BANCO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(56966374731717402)
,p_prompt=>'Banco'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_BANCO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_persona cod, nvl( nombre, nomb_fantasia ) Bco',
'   from personas',
'   where cod_sector  = ''6'' '))
,p_lov_display_null=>'YES'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(30799458189892235)
,p_name=>'P163_NCI'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(56966374731717402)
,p_prompt=>'Documento'
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
 p_id=>wwv_flow_imp.id(30799510705892236)
,p_name=>'P163_NRO_CUENTA'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(56966374731717402)
,p_prompt=>'Nro Cuenta'
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
 p_id=>wwv_flow_imp.id(30799602459892237)
,p_name=>'P163_PROPIETARIO'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(56966374731717402)
,p_prompt=>'Propietario'
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
 p_id=>wwv_flow_imp.id(30799754671892238)
,p_name=>'P163_FECHA_ALTA'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(56966374731717402)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30799871867892239)
,p_name=>'P163_COD_OBSERVACION'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(56966374731717402)
,p_prompt=>'Observacion'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30799916613892240)
,p_name=>'P163_COD_PERS_REP'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(56966374731717402)
,p_prompt=>'Representante Legal'
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
 p_id=>wwv_flow_imp.id(30927615901265383)
,p_name=>'P163_SEQ_ID_EDITAR'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(56966374731717402)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30928477679265383)
,p_name=>'P163_AUX_MSJ_CONTROL'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(56966374731717402)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31107583005050912)
,p_name=>'P163_ACCION_ELIMINAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(29598590097400538)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31108093893050917)
,p_name=>'P163_ACCION_EDITAR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(29598590097400538)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30800014931892241)
,p_name=>'DA_ABRIR_GUARDAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(30935110213290261)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30800168981892242)
,p_event_id=>wwv_flow_imp.id(30800014931892241)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P163_COD_CLIENTE,P163_TIPO,P163_AFINIDAD,P163_TITULAR,P163_COD_BANCO,P163_NCI,P163_NRO_CUENTA,P163_PROPIETARIO,P163_FECHA_ALTA,P163_COD_OBSERVACION,P163_COD_PERS_REP'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30800278929892243)
,p_event_id=>wwv_flow_imp.id(30800014931892241)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(30922040941265379)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30800341978892244)
,p_event_id=>wwv_flow_imp.id(30800014931892241)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(30922405281265380)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30800419476892245)
,p_event_id=>wwv_flow_imp.id(30800014931892241)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(56966374731717402)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30800547437892246)
,p_name=>'DA_REGRESAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(30922870313265380)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30800612310892247)
,p_event_id=>wwv_flow_imp.id(30800547437892246)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(56966374731717402)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30800784660892248)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(30922405281265380)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30800864270892249)
,p_event_id=>wwv_flow_imp.id(30800784660892248)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--NO NULOS OBLIGATORIOS codigo de cliente, tipo, banco , nro_cuenta , titular',
':P163_AUX_MSJ_CONTROL := null;',
'IF :P163_COD_CLIENTE IS NULL THEN',
'   :P163_AUX_MSJ_CONTROL := ''Debe ingresar el cliente.'';',
' ELSIF ',
'    :P163_TIPO IS NULL THEN',
'    :P163_AUX_MSJ_CONTROL := ''Debe ingresar el tipo.'';',
' ELSIF ',
'    :P163_COD_BANCO IS NULL THEN',
'    :P163_AUX_MSJ_CONTROL := ''Debe ingresar el banco.'';',
' ELSIF ',
'    :P163_NRO_CUENTA IS NULL THEN',
'    :P163_AUX_MSJ_CONTROL := ''Debe ingresar la cuenta.'';',
' ELSIF ',
'    :P163_TITULAR IS NULL THEN',
'    :P163_AUX_MSJ_CONTROL := ''Debe ingresar el titular.'';',
' ELSE',
'  begin',
'  INSERT INTO CC_CHEQUE_CLIENTE(',
'    COD_EMPRESA,',
'    COD_CLIENTE,',
'    TIPO,',
'    AFINIDAD,',
'    TITULAR,',
'    COD_BANCO,',
'    NCI,',
'    NRO_CUENTA,',
'    PROPIETARIO,',
'    FECHA_ALTA,',
'    COD_USUARIO,',
'    OBSERVACION,',
'    COD_PERS_REP',
'',
' )',
' VALUES(',
'      :P163_COD_EMPRESA,',
'      :P163_COD_CLIENTE,',
'      :P163_TIPO,',
'      :P163_AFINIDAD,',
'      :P163_TITULAR,',
'      :P163_COD_BANCO,',
'      :P163_NCI, ',
'      :P163_NRO_CUENTA, ',
'      :P163_PROPIETARIO,',
'      SYSDATE,',
'      :P163_COD_USUARIO,',
'      :P163_COD_OBSERVACION, ',
'      :P163_COD_PERS_REP     ',
'                  ',
'            );',
'  EXCEPTION',
'',
'        WHEN OTHERS THEN',
'            apex_debug.error(sqlerrm);',
'    END;',
'END IF;  '))
,p_attribute_02=>'P163_COD_CLIENTE,P163_TIPO, P163_COD_BANCO, P163_NRO_CUENTA, P163_TITULAR, P163_COD_PERS_REP, P163_PROPIETARIO, P163_COD_EMPRESA, P163_NCI, P163_AFINIDAD, P163_COD_USUARIO,  P163_COD_OBSERVACION'
,p_attribute_03=>'P163_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31108435418050921)
,p_event_id=>wwv_flow_imp.id(30800784660892248)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P163_AUX_MSJ_CONTROL.'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'ACEPTAR'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P163_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30800932693892250)
,p_event_id=>wwv_flow_imp.id(30800784660892248)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(29599678561400549)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P163_AUX_MSJ_CONTROL'
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
 p_id=>wwv_flow_imp.id(31106438316050901)
,p_event_id=>wwv_flow_imp.id(30800784660892248)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(56966374731717402)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P163_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31108241058050919)
,p_event_id=>wwv_flow_imp.id(30800784660892248)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'SE GUARDO EL REGISTRO'
,p_attribute_02=>'MENSAJE'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P163_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31106539436050902)
,p_name=>'DA_GUARDAR_CAMBIOS'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(30922040941265379)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31106657477050903)
,p_event_id=>wwv_flow_imp.id(31106539436050902)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE CC_CHEQUE_CLIENTE',
'    SET                                       ',
'        COD_CLIENTE  =     :P163_COD_CLIENTE,',
'        TIPO          =    :P163_TIPO,',
'        COD_BANCO  =       :P163_COD_BANCO, ',
'        NRO_CUENTA  =      :P163_NRO_CUENTA, ',
'        TITULAR  =         :P163_TITULAR, ',
'        COD_PERS_REP  =    :P163_COD_PERS_REP, ',
'        PROPIETARIO   =    :P163_PROPIETARIO, ',
'        COD_EMPRESA  =     :P163_COD_EMPRESA,',
'        NCI  =             :P163_NCI, ',
'        AFINIDAD  =        :P163_AFINIDAD, ',
'        COD_USUARIO  =     :P163_COD_USUARIO, ',
'        FECHA_ALTA  =      :P163_FECHA_ALTA,',
'        OBSERVACION  =     :P163_COD_OBSERVACION ',
'    ',
'    WHERE ROWID = :P163_SEQ_ID_EDITAR;    '))
,p_attribute_02=>'P163_COD_CLIENTE, P163_COD_BANCO, P163_NRO_CUENTA, P163_TITULAR, P163_COD_PERS_REP, P163_PROPIETARIO, P163_COD_EMPRESA, P163_NCI, P163_AFINIDAD, P163_COD_USUARIO, P163_FECHA_ALTA, P163_COD_OBSERVACION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31106795430050904)
,p_event_id=>wwv_flow_imp.id(31106539436050902)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(29599678561400549)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31106817583050905)
,p_event_id=>wwv_flow_imp.id(31106539436050902)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(56966374731717402)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31108357791050920)
,p_event_id=>wwv_flow_imp.id(31106539436050902)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'REGISTRO ACTUALIZADO'
,p_attribute_02=>'MENSAJE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31106929906050906)
,p_name=>'DA_ABRIR_REGION_EDITAR'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P163_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33955755490908844)
,p_event_id=>wwv_flow_imp.id(31106929906050906)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(30922405281265380)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33955666544908843)
,p_event_id=>wwv_flow_imp.id(31106929906050906)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(30922040941265379)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31107176904050908)
,p_event_id=>wwv_flow_imp.id(31106929906050906)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'   select ',
'    COD_CLIENTE,',
'    TIPO,',
'    COD_BANCO,',
'    NRO_CUENTA,',
'    TITULAR,',
'    COD_PERS_REP,',
'    PROPIETARIO,',
'    COD_EMPRESA,',
'    NCI,',
'    AFINIDAD,',
'    COD_USUARIO,',
'    FECHA_ALTA,',
'    OBSERVACION',
'        ',
'    into',
'    :P163_COD_CLIENTE,',
'    :P163_TIPO,',
'    :P163_COD_BANCO,',
'    :P163_NRO_CUENTA,',
'    :P163_TITULAR,',
'    :P163_COD_PERS_REP,',
'    :P163_PROPIETARIO,',
'    :P163_COD_EMPRESA,',
'    :P163_NCI,',
'    :P163_AFINIDAD,',
'    :P163_COD_USUARIO,',
'    :P163_FECHA_ALTA,',
'    :P163_OBSERVACION   ',
'     ',
'   from CC_CHEQUE_CLIENTE',
'   where ROWID= :P163_SEQ_ID_EDITAR;',
'',
'end;'))
,p_attribute_02=>'P163_SEQ_ID_EDITAR'
,p_attribute_03=>'P163_COD_CLIENTE,P163_TIPO,P163_COD_BANCO,P163_NRO_CUENTA,P163_TITULAR,P163_COD_PERS_REP,P163_PROPIETARIO,P163_COD_EMPRESA,P163_NCI,P163_AFINIDAD,P163_COD_USUARIO,P163_FECHA_ALTA,P163_OBSERVACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31107093001050907)
,p_event_id=>wwv_flow_imp.id(31106929906050906)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(56966374731717402)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31107660954050913)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P163_ACCION_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31107829001050915)
,p_event_id=>wwv_flow_imp.id(31107660954050913)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Seguro que quiere eliminar?'
,p_attribute_02=>'ELIMINAR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31107779008050914)
,p_event_id=>wwv_flow_imp.id(31107660954050913)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' DELETE FROM CC_CHEQUE_CLIENTE',
'    WHERE ROWID = :P163_ACCION_ELIMINAR;'))
,p_attribute_02=>'P163_ACCION_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31107994807050916)
,p_event_id=>wwv_flow_imp.id(31107660954050913)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(29599678561400549)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(29598485179400537)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--INICIALIZA GLOBALES',
'  -- Asigna los valores por defecto en caso de que no existan las GLOBALES',
'  --Almacena los valores en variables locales',
'  :P163_COD_USUARIO := nvl(:P_COD_USUARIO, :APP_USER);',
'  :P163_COD_EMPRESA := ''1'';',
'  :P163_NOM_EMPRESA := NVL(:P_NOM_EMPRESA, NULL);',
'  :P163_COD_SUCURSAL:= nvl(:P_COD_SUCURSAL,null);',
'  :P163_NOM_SUCURSAL   := NVL(:P_NOM_SUCURSAL,NULL);',
'  :P163_COD_MODULO  := nvl(:P_COD_MODULO,''CC'');'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
