prompt --application/pages/page_00185
begin
--   Manifest
--     PAGE: 00185
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
 p_id=>185
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VTCARCLI'
,p_alias=>'VTCARCLI'
,p_step_title=>'VTCARCLI'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function seleccionar(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P185_ACCION'',''AGREGAR'');',
'      $s(''P185_SEQ_ID'', cb.value,false);',
'  } else {',
'      $s(''P185_ACCION'',''QUITAR'');',
'      $s(''P185_SEQ_ID'', cb.value,false);',
'  }',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240906153519'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37935250439989301)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37935955049989308)
,p_plug_name=>'CABECERA'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37937497182989323)
,p_plug_name=>'DETALLE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT           ',
'        seq_id p_id,',
'        c001 COD_EMPRESA,    ',
'        c002 COD_CLIENTE,                       ',
'        c003 COD_MARCA,',
'        c004 COD_CATEGORIA,',
'        c005 V_DESC_CATEGORIA,',
'        c006 FECHA_INICIO,',
'        c008 FECHA_FIN,',
'        c009 ANIO,',
'        APEX_ITEM.CHECKBOX (p_idx  => 1 ,',
'                    p_value       => seq_id,',
'                    p_attributes  => (case c010',
'                                       when ''S'' then ''checked ''',
'                                      else null',
'                                     end ) ||''onclick="seleccionar(this)"'' )as ESTADO,       ',
'        c011 CANTIDAD,',
'        c013 V_DESC_MARCA,   ',
'        to_number(c014)		MONTO_OBJETIVO ,  ',
'        seq_id,                                    ',
'        null Detalle,',
'        null Editar,',
'        null Eliminar',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''DETALLE_CARTERA_CLIENTE''',
'AND nvl(c030, ''O'') <> ''B'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'DETALLE'
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
 p_id=>wwv_flow_imp.id(37937571954989324)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encontraron registros'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>37937571954989324
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37937658452989325)
,p_db_column_name=>'P_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37937761881989326)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37938336117989332)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37938484015989333)
,p_db_column_name=>'COD_MARCA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37938563076989334)
,p_db_column_name=>'COD_CATEGORIA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Categoria'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37938685784989335)
,p_db_column_name=>'FECHA_INICIO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Fecha Inicio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37938777667989336)
,p_db_column_name=>'FECHA_FIN'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Fecha Fin'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37938889681989337)
,p_db_column_name=>'ANIO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Anio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37938906566989338)
,p_db_column_name=>'ESTADO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37939007910989339)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37939280845989341)
,p_db_column_name=>'V_DESC_CATEGORIA'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38804834396639601)
,p_db_column_name=>'V_DESC_MARCA'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38804949402639602)
,p_db_column_name=>'MONTO_OBJETIVO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Monto Objetivo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37937820167989327)
,p_db_column_name=>'DETALLE'
,p_display_order=>190
,p_column_identifier=>'C'
,p_column_label=>'Detalle'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37937914456989328)
,p_db_column_name=>'EDITAR'
,p_display_order=>200
,p_column_identifier=>'D'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P185_SEQ_ID_EDITAR'',''#SEQ_ID#'');'
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
'END;',
''))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37938049775989329)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>210
,p_column_identifier=>'E'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P185_SEQ_ID_ELIMINAR'',''#SEQ_ID#'');'
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
 p_id=>wwv_flow_imp.id(38805712416639610)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>220
,p_column_identifier=>'S'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(38221270921939109)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'382213'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'COD_MARCA:V_DESC_MARCA:COD_CATEGORIA:V_DESC_CATEGORIA:FECHA_INICIO:FECHA_FIN:CANTIDAD:MONTO_OBJETIVO:ESTADO:EDITAR:ELIMINAR:'
,p_sort_column_1=>'SEQ_ID'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'FECHA_INICIO'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'DESC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38805077760639603)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38805822496639611)
,p_plug_name=>'Agregar/Editar'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38807619841639629)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(37937497182989323)
,p_button_name=>'IMPRIMIR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir'
,p_button_position=>'BOTTOM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38806954384639622)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(38805822496639611)
,p_button_name=>'P185_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(37937023051989319)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(37935955049989308)
,p_button_name=>'BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38806725535639620)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(38805822496639611)
,p_button_name=>'P185_ACEPTAR_CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38806831584639621)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(38805822496639611)
,p_button_name=>'P185_ACEPTAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38807544192639628)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(37935955049989308)
,p_button_name=>'CONFIRMAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(175479056576656528)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(37935955049989308)
,p_button_name=>'Importar'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Importar'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:553:&SESSION.::&DEBUG.:::'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RETURN SEGURIDAD_GRANULAR.FC_MOSTRAR_CONFIRMAR (pusua0100_id => :P_USUA0100_ID,',
'                                                    ppage_id => :APP_PAGE_ID,',
'                                                    papli0100_id => :P_APLI0100_ID);',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(175479334936656531)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(37935955049989308)
,p_button_name=>'Confirmar_importados'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar Importacion'
,p_button_position=>'PREVIOUS'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    RETURN SEGURIDAD_GRANULAR.FC_MOSTRAR_CONFIRMAR (pusua0100_id => :P_USUA0100_ID,',
'                                                    ppage_id => :APP_PAGE_ID,',
'                                                    papli0100_id => :P_APLI0100_ID);',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38807494700639627)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(37937497182989323)
,p_button_name=>'AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(38808265576639635)
,p_branch_name=>'BR_LLAMAR_PAG_187'
,p_branch_action=>'f?p=&APP_ID.:187:&SESSION.::&DEBUG.::P187_COD_CLIENTE:&P185_C_COD_CLIENTE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(38807619841639629)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37935328079989302)
,p_name=>'P185_COD_USUARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(37935250439989301)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37935478674989303)
,p_name=>'P185_COD_EMPRESA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(37935250439989301)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37935575180989304)
,p_name=>'P185_NOM_EMPRESA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(37935250439989301)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37935650507989305)
,p_name=>'P185_COD_SUCURSAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(37935250439989301)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37935714581989306)
,p_name=>'P185_NOM_SUCURSAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(37935250439989301)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37935889026989307)
,p_name=>'P185_COD_MODULO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(37935250439989301)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37936315558989312)
,p_name=>'P185_C_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(37935955049989308)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37936423336989313)
,p_name=>'P185_C_COD_CLIENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(37935955049989308)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES_VTCARCLI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  nvl( p.nombre, p.nomb_fantasia )|| '' - '' ||cod_cliente nom_cliente, cod_cliente ',
'from cc_clientes c, personas p ',
'where c.cod_empresa = :P_COD_EMPRESA',
'and c.cod_persona = p.cod_persona ',
'AND NVL(ESTADO,''I'')=''A''order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione -'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(37936547000989314)
,p_name=>'P185_C_DESCRIPCION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(37935955049989308)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37936694905989315)
,p_name=>'P185_C_ANIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(37935955049989308)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37936788904989316)
,p_name=>'P185_C_ESTADO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(37935955049989308)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37936861656989317)
,p_name=>'P185_C_CONTACTO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(37935955049989308)
,p_prompt=>'Contacto'
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
 p_id=>wwv_flow_imp.id(37936987514989318)
,p_name=>'P185_C_CORREO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(37935955049989308)
,p_prompt=>'Correo'
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
 p_id=>wwv_flow_imp.id(37937146687989320)
,p_name=>'P185_C_CORREO_2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(37935955049989308)
,p_prompt=>'Correo 2'
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
 p_id=>wwv_flow_imp.id(38805129822639604)
,p_name=>'P185_ACCION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(38805077760639603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38805235827639605)
,p_name=>'P185_SEQ_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(38805077760639603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38805550448639608)
,p_name=>'P185_SEQ_ID_EDITAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(38805077760639603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38805662286639609)
,p_name=>'P185_SEQ_ID_ELIMINAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(38805077760639603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38805963596639612)
,p_name=>'P185_COD_MARCA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(38805822496639611)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MARCAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_marca||'' - ''||descripcion D, cod_marca R',
'from st_marcas',
'order by descripcion;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccionar -'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(38806077633639613)
,p_name=>'P185_COD_CATEGORIA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(38805822496639611)
,p_prompt=>'Categoria'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CATEGORIAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_categoria||'' - '' ||descripcion D, ',
'         cod_categoria R',
'    FROM st_categorias',
'  ',
'  WHERE COD_EMPRESA=:P_COD_EMPRESA',
'  AND ESTADO IN(''S'',''A'');',
' '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccionar -'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(38806194190639614)
,p_name=>'P185_FECHA_INICIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(38805822496639611)
,p_prompt=>'Fecha Inicio'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(38806237540639615)
,p_name=>'P185_FECHA_FIN'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(38805822496639611)
,p_prompt=>'Fecha Fin'
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
 p_id=>wwv_flow_imp.id(38806393404639616)
,p_name=>'P185_CANTIDAD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(38805822496639611)
,p_prompt=>'Cantidad'
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
 p_id=>wwv_flow_imp.id(38806429140639617)
,p_name=>'P185_MONTO_OBJETIVO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(38805822496639611)
,p_prompt=>'Monto Objetivo'
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
 p_id=>wwv_flow_imp.id(38807954711639632)
,p_name=>'P185_URL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(38805077760639603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38809175235639644)
,p_name=>'P185_AUX_CONTROL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(38805077760639603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37937218415989321)
,p_name=>'DA_CARGAR_COLLECTION'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(37937023051989319)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37938153237989330)
,p_event_id=>wwv_flow_imp.id(37937218415989321)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'VTCARCLI.pr_crear_collection(:P185_C_COD_CLIENTE);'
,p_attribute_02=>'P185_C_COD_CLIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37938216913989331)
,p_event_id=>wwv_flow_imp.id(37937218415989321)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(37937497182989323)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37939612840989345)
,p_event_id=>wwv_flow_imp.id(37937218415989321)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(37937497182989323)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37939445878989343)
,p_name=>'ocultar_reporte'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37939554772989344)
,p_event_id=>wwv_flow_imp.id(37939445878989343)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(37937497182989323)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37939739638989346)
,p_name=>'SET_VALOR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(37937023051989319)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37939855185989347)
,p_event_id=>wwv_flow_imp.id(37939739638989346)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C.CORREO,C.CORREO2, C.CONTACTO',
'    INTO :P185_C_CORREO,',
'         :P185_C_CORREO_2,',
'         :P185_C_CONTACTO',
'    from VT_CARTERA_CLIENTES_CAB c ',
'    where c.cod_empresa = :P185_COD_EMPRESA',
'    AND C.COD_CLIENTE = :P185_C_COD_CLIENTE     ;'))
,p_attribute_02=>'P185_C_COD_CLIENTE'
,p_attribute_03=>'P185_C_CORREO,P185_C_CORREO_2,P185_C_CONTACTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37939948921989348)
,p_event_id=>wwv_flow_imp.id(37939739638989346)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(37935955049989308)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38805398466639606)
,p_name=>'DA_CHECK'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P185_SEQ_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38805407857639607)
,p_event_id=>wwv_flow_imp.id(38805398466639606)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'VTCARCLI.PR_CHECK(P_SEQ_ID => :P185_SEQ_ID,',
'                  P_ACCION => :P185_ACCION,',
'                  P_COLECCION => ''DETALLE_CARTERA_CLIENTE'');',
'exception',
'when others then',
unistr('    RAISE_APPLICATION_ERROR(-20010,''Error al completar la transacci\00F3n, favor de contactarse con el equipo de soporte.'');'),
'END;',
''))
,p_attribute_02=>'P185_SEQ_ID,P185_ACCION'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38807035485639623)
,p_name=>'DA_REGRESAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(38806954384639622)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38807180497639624)
,p_event_id=>wwv_flow_imp.id(38807035485639623)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38805822496639611)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38808384729639636)
,p_name=>'ABRIR_AGREGAR_EDITAR'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(38807494700639627)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38808692724639639)
,p_event_id=>wwv_flow_imp.id(38808384729639636)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P185_COD_MARCA,P185_COD_CATEGORIA,P185_FECHA_INICIO,P185_FECHA_FIN,P185_CANTIDAD,P185_MONTO_OBJETIVO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38808783427639640)
,p_event_id=>wwv_flow_imp.id(38808384729639636)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(38806831584639621)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38808846790639641)
,p_event_id=>wwv_flow_imp.id(38808384729639636)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(38806725535639620)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38808431585639637)
,p_event_id=>wwv_flow_imp.id(38808384729639636)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38805822496639611)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38808959005639642)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(38806725535639620)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38809031134639643)
,p_event_id=>wwv_flow_imp.id(38808959005639642)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P185_AUX_CONTROL := null;',
'IF :P185_COD_MARCA IS NULL THEN',
'    :P185_AUX_CONTROL := ''Debe ingresar la marca.'';',
' ELSIF :P185_COD_CATEGORIA IS NULL THEN',
'    :P185_AUX_CONTROL := ''Debe ingresar la categoria.'';',
' ELSIF :P185_FECHA_INICIO IS NULL THEN',
'    :P185_AUX_CONTROL := ''Debe ingresar la fecha inicio.'';',
' ELSIF :P185_FECHA_FIN IS NULL THEN',
'    :P185_AUX_CONTROL := ''Debe ingresar la fecha fin.'';',
' ELSE',
'BEGIN',
'     VTCARCLI.pr_agregar_miembro_collection (',
'               ',
'        PI_COD_EMPRESA      =>  :P185_COD_EMPRESA ,',
'        PI_COD_CLIENTE      =>  :P185_C_COD_CLIENTE ,',
'        PI_COD_MARCA        =>  :P185_COD_MARCA,',
'        PI_COD_CATEGORIA    =>  :P185_COD_CATEGORIA,',
'        PI_FECHA_INICIO     =>  :P185_FECHA_INICIO,',
'        PI_FECHA_FIN        =>  :P185_FECHA_FIN,',
'        PI_CANTIDAD         =>  :P185_CANTIDAD,',
'        PI_MONTO_OBJETIVO   =>  :P185_MONTO_OBJETIVO   );',
'',
'    EXCEPTION',
'',
'        WHEN OTHERS THEN',
'            apex_debug.error(sqlerrm);',
'    END;',
'END IF;'))
,p_attribute_02=>'P185_COD_EMPRESA,P185_C_COD_CLIENTE,P185_COD_MARCA,P185_COD_CATEGORIA,P185_FECHA_INICIO,P185_FECHA_FIN,P185_CANTIDAD,P185_MONTO_OBJETIVO'
,p_attribute_03=>'P185_AUX_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38809277475639645)
,p_event_id=>wwv_flow_imp.id(38808959005639642)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P185_AUX_CONTROL.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'ACEPTAR'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P185_AUX_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38809308995639646)
,p_event_id=>wwv_flow_imp.id(38808959005639642)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(37937497182989323)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P185_AUX_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38809489175639647)
,p_event_id=>wwv_flow_imp.id(38808959005639642)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38805822496639611)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P185_AUX_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38809523720639648)
,p_event_id=>wwv_flow_imp.id(38808959005639642)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Nuevo registro guardado'
,p_attribute_02=>unistr('\00C9XITO')
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P185_AUX_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39857428340467026)
,p_name=>'DA_ABIR_REGION_EDITAR'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P185_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39857537392467027)
,p_event_id=>wwv_flow_imp.id(39857428340467026)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(38806831584639621)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39857650207467028)
,p_event_id=>wwv_flow_imp.id(39857428340467026)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(38806725535639620)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39857819529467030)
,p_event_id=>wwv_flow_imp.id(39857428340467026)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' SELECT       ',
'    c003 COD_MARCA          ,',
'    c004 COD_CATEGORIA      ,',
'    c006 FECHA_INICIO       ,',
'    c008 FECHA_FIN          ,',
'    c011 CANTIDAD           ,',
'    c014 MONTO_OBJETIVO     ',
' INTO ',
'    :P185_COD_MARCA,',
'    :P185_COD_CATEGORIA,',
'    :P185_FECHA_INICIO,',
'    :P185_FECHA_FIN,',
'    :P185_CANTIDAD,',
'    :P185_MONTO_OBJETIVO   ',
' FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME =  ''DETALLE_CARTERA_CLIENTE''',
' AND SEQ_ID = :P185_SEQ_ID_EDITAR ;',
'END;'))
,p_attribute_02=>'P185_SEQ_ID_EDITAR'
,p_attribute_03=>'P185_COD_MARCA,P185_COD_CATEGORIA,P185_FECHA_INICIO,P185_FECHA_FIN,P185_CANTIDAD,P185_MONTO_OBJETIVO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39857750316467029)
,p_event_id=>wwv_flow_imp.id(39857428340467026)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38805822496639611)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39857980957467031)
,p_name=>'DA_GUARDAR_CAMBIOS'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(38806831584639621)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39858114430467033)
,p_event_id=>wwv_flow_imp.id(39857980957467031)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' begin',
'    VTCARCLI.pr_modificar_miembro(  :P185_SEQ_ID_EDITAR,',
'                                    :P185_COD_MARCA,',
'                                    :P185_COD_CATEGORIA,',
'                                    :P185_FECHA_INICIO,',
'                                    :P185_FECHA_FIN,',
'                                    :P185_C_ESTADO,',
'                                    :P185_CANTIDAD,',
'                                    :P185_MONTO_OBJETIVO',
'                                    );',
'    EXCEPTION',
'',
'    WHEN OTHERS THEN',
'        apex_debug.ERROR(sqlerrm);                                ',
'end;'))
,p_attribute_02=>'P185_SEQ_ID_EDITAR,P185_COD_MARCA,P185_COD_CATEGORIA,P185_FECHA_INICIO,P185_FECHA_FIN,P185_CANTIDAD,P185_MONTO_OBJETIVO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39858062625467032)
,p_event_id=>wwv_flow_imp.id(39857980957467031)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(37937497182989323)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39858267279467034)
,p_event_id=>wwv_flow_imp.id(39857980957467031)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38805822496639611)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39858305147467035)
,p_event_id=>wwv_flow_imp.id(39857980957467031)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Registro actualizado con \00E9xito')
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39858439433467036)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P185_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39858880632467040)
,p_event_id=>wwv_flow_imp.id(39858439433467036)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
,p_attribute_02=>'ELIMINAR'
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39858677099467038)
,p_event_id=>wwv_flow_imp.id(39858439433467036)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTCARCLI.pr_borrar_miembro_collection(:P185_SEQ_ID_ELIMINAR);',
'    EXCEPTION',
'',
'    WHEN OTHERS THEN',
'',
'        apex_debug.ERROR(sqlerrm);',
'',
'END;'))
,p_attribute_02=>'P185_SEQ_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39858766656467039)
,p_event_id=>wwv_flow_imp.id(39858439433467036)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(37937497182989323)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39858937725467041)
,p_event_id=>wwv_flow_imp.id(39858439433467036)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Registro eliminado con \00E9xito')
,p_attribute_02=>'ELIMINADO'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39859087668467042)
,p_name=>'DA_CONFIRMAR_DATOS'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(38807544192639628)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39859192129467043)
,p_event_id=>wwv_flow_imp.id(39859087668467042)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Presione para confirmar'
,p_attribute_02=>'CONFIRMAR'
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39859269727467044)
,p_event_id=>wwv_flow_imp.id(39859087668467042)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'CONFIRMAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(39859305563467045)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CONFIRMAR_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    VTCARCLI.pr_confirmar_accion( :P185_C_COD_CLIENTE);',
'',
'',
'    EXCEPTION',
'            WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(sqlerrm);',
'',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Los datos se guardaron exitosamente'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(38807544192639628)
,p_process_when=>'CONFIRMAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(175479415628656532)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Confirmar_importacion'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'VCLIENTE varchar2(500);',
'VANIO  varchar2(500);',
'begin',
'  DECLARE',
'    CURSOR CCAB IS',
'      select seq_id,',
'             C001   cod_marca,',
'             C002   cod_categoria,',
'             C003   cod_cliente,',
'             C004   cod_vendedor,',
'             C005   objetivo,',
'             C006   inicio,',
'             C007   vencimiento',
'        from apex_collections p',
'       where collection_name = ''CARTERIZACION_CLIENTE''',
'       order by 1 asc;',
'  BEGIN',
'    FOR X IN CCAB LOOP',
'      BEGIN',
'      ',
'        insert into INV.vt_cartera_clientes_det',
'          (COD_EMPRESA,',
'COD_CLIENTE,',
'ANIO,',
'COD_MARCA,',
'COD_CATEGORIA,',
'CANTIDAD,',
'FECHA_INICIO,',
'FECHA_FIN,',
'COD_VENDEDOR,',
'ESTADO,',
'MONTO_OBJETIVO',
')',
'        values',
'          (:P_COD_EMPRESA,',
'           X.cod_cliente,',
'           to_char(to_date(X.inicio,''DD/MM/YYYY''),''YYYY''),',
'           X.COD_MARCA,',
'           X.COD_CATEGORIA,',
'           X.objetivo,',
'           X.INICIO,',
'           X.VENCIMIENTO,',
'           X.COD_VENDEDOR,',
'           ''S'',',
'           NULL);',
'          BEGIN',
'          SELECT cod_cliente, anio ',
'           into vcliente, vanio',
'          from  VT_CARTERA_CLIENTES_CAB A',
'           WHERE COD_CLIENTE=x.cod_cliente',
'           and cod_empresa=:P_COD_EMPRESA;',
'           exception when others then',
'           vcliente:=null;',
'          END;',
'          if vcliente is not null then',
'          if vanio<>to_char(to_date(X.inicio,''DD/MM/YYYY''),''YYYY'') then',
'           update VT_CARTERA_CLIENTES_CAB',
'            set anio=to_char(to_date(X.inicio,''DD/MM/YYYY''),''YYYY'')',
'             WHERE COD_CLIENTE=x.cod_cliente',
'           and cod_empresa=:P_COD_EMPRESA;',
'          end if;',
'          else',
'          begin',
'          insert into VT_CARTERA_CLIENTES_CAB(cod_empresa, cod_cliente,anio,estado, correo)values(',
'              :p_cod_empresa, x.cod_cliente,to_char(to_date(X.inicio,''DD/MM/YYYY''),''YYYY''), ''S'',''.'');',
'          end;',
'          end if;',
'         ',
'      ',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          raise_application_error(-20000, SQLERRM || ''  '' ||X.COD_CLIENTE|| ''  '' ||X.COD_MARCA);',
'      END;',
'      COMMIT;',
'    END LOOP;',
'     APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(p_collection_name => ''CARTERIZACION_CLIENTE'');',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      raise_application_error(-20000, SQLERRM || ''  '' );',
'  END;',
'end;',
' '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(175479334936656531)
,p_process_success_message=>'Archivo guardado exitosamente!'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37939343099989342)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'LIMPIAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37212500466511050)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--setear variables locales',
':P185_COD_USUARIO := nvl(:P_COD_USUARIO, :APP_USER);',
':P185_COD_EMPRESA := ''1'';',
':P185_NOM_EMPRESA := NVL(:P_NOM_EMPRESA, NULL);',
':P185_COD_SUCURSAL:= nvl(:P_COD_SUCURSAL,''01'');',
':P185_NOM_SUCURSAL   := NVL(:P_NOM_SUCURSAL,NULL);',
':P185_COD_MODULO  := nvl(:P_COD_MODULO,''VT'');',
'-- PROBAR CON 889',
'-- GONZALEZ GIMENEZ Y CIA. S.A.C.'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
