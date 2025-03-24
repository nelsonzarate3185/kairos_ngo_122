prompt --application/pages/page_00276
begin
--   Manifest
--     PAGE: 00276
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
 p_id=>276
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Mantenimiento/Dpto. SS.GG - SMPSGADM'
,p_alias=>'SMPSGADM'
,p_page_mode=>'MODAL'
,p_step_title=>'Mantenimiento/Dpto. SS.GG'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'MARIANABLA'
,p_last_upd_yyyymmddhh24miss=>'20221228111624'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133078653230982719)
,p_plug_name=>'Mantenimiento/Dpto. SS.GG'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(67099536128295115)
,p_plug_name=>'CABECERA'
,p_parent_plug_id=>wwv_flow_imp.id(133078653230982719)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>8
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(67537125886194418)
,p_plug_name=>'CAB1'
,p_parent_plug_id=>wwv_flow_imp.id(67099536128295115)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(67537235975194419)
,p_plug_name=>'CAB2'
,p_parent_plug_id=>wwv_flow_imp.id(67099536128295115)
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
 p_id=>wwv_flow_imp.id(67536934410194416)
,p_plug_name=>unistr('PAR\00C1METROS')
,p_parent_plug_id=>wwv_flow_imp.id(133078653230982719)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(67537634883194423)
,p_plug_name=>'DESCRIPCION'
,p_parent_plug_id=>wwv_flow_imp.id(133078653230982719)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(67537719022194424)
,p_plug_name=>'COMENTARIOS'
,p_parent_plug_id=>wwv_flow_imp.id(133078653230982719)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(67538797280194434)
,p_plug_name=>'AUTVEN'
,p_parent_plug_id=>wwv_flow_imp.id(67537719022194424)
,p_region_template_options=>'#DEFAULT#:margin-top-sm'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID,',
'       C001 NOMBRE',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''DETALLE_AUTVEN'';        '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'AUTVEN'
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
 p_id=>wwv_flow_imp.id(67538856233194435)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se han encontrado comentarios.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'MARIANABLA'
,p_internal_uid=>67538856233194435
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67538937890194436)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(67539046882194437)
,p_db_column_name=>'NOMBRE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Comentarios'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(67732313902753114)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'677324'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SEQ_ID:NOMBRE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(67537980900194426)
,p_plug_name=>'PIE'
,p_parent_plug_id=>wwv_flow_imp.id(133078653230982719)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(67788107402163703)
,p_plug_name=>'Nuevo Comentario'
,p_parent_plug_id=>wwv_flow_imp.id(133078653230982719)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(68938194244359501)
,p_plug_name=>'BOTONES'
,p_parent_plug_id=>wwv_flow_imp.id(133078653230982719)
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noBorder'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133078970019982722)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(133078653230982719)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(67537870552194425)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(67537719022194424)
,p_button_name=>'AGREGAR_SEGUIMIENTO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Comentarios'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(67788465351163706)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(67788107402163703)
,p_button_name=>'CANCELAR_COM'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar '
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(67790328220163725)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(68938194244359501)
,p_button_name=>'CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(67789815819163720)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(68938194244359501)
,p_button_name=>'GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(67788362861163705)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(67788107402163703)
,p_button_name=>'GUARDAR_COM'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar '
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(68938743714359507)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(68938194244359501)
,p_button_name=>'ELIMINAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Eliminar'
,p_button_position=>'DELETE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67099386471295113)
,p_name=>'P276_TIP_PEDIDO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(133078970019982722)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67099496253295114)
,p_name=>'P276_REVIERTE_ESTADO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(133078970019982722)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67099971666295119)
,p_name=>'P276_NRO_PEDIDO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(67537125886194418)
,p_prompt=>'Ticket'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67100191764295121)
,p_name=>'P276_FECHA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(67537125886194418)
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
 p_id=>wwv_flow_imp.id(67100233349295122)
,p_name=>'P276_COD_USUARIO_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(67099536128295115)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67100380779295123)
,p_name=>'P276_REFERENCIA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(67099536128295115)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67100481380295124)
,p_name=>'P276_ESTADO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(67537125886194418)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:PENDIENTE;P,APROBADO SECCION;A,APROBADO SSGG;I,RECHAZADO;R,CONCLUIDO SSGG;C,FINALIZADO;F'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67100559017295125)
,p_name=>'P276_COMENTARIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(67537235975194419)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>600
,p_cHeight=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67100614900295126)
,p_name=>'P276_COD_PERSONA_1'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(67099536128295115)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67100749673295127)
,p_name=>'P276_COD_USUARIO_EST'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(67099536128295115)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67100823090295128)
,p_name=>'P276_FEC_ESTADO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(67099536128295115)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67100906331295129)
,p_name=>'P276_NOMBRE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(67537125886194418)
,p_prompt=>'Solicitante'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>80
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67101004112295130)
,p_name=>'P276_COD_SECCION'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(67099536128295115)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67101121274295131)
,p_name=>'P276_COD_EMPLEADO_IT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(67537235975194419)
,p_prompt=>'Responsable'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_EMPLEADO_IT_SMPSGADM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre D,p.cod_persona  R',
'  from rh_empleados e, personas p ',
' where e.cod_empresa = :P_COD_EMPRESA ',
'   and e.cod_persona = p.cod_persona ',
'   and nvl(e.activo, ''S'') = ''S'' ',
'order by nombre'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Seleccionar --'
,p_cSize=>30
,p_cMaxlength=>20
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(67101274960295132)
,p_name=>'P276_APROBADO_USER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(67537980900194426)
,p_prompt=>unistr('Aprobado Secci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>60
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67101339799295133)
,p_name=>'P276_FECHA_APROBADO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(67537980900194426)
,p_prompt=>unistr('Fecha Aprobado Secci\00F3n')
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
 p_id=>wwv_flow_imp.id(67101483792295134)
,p_name=>'P276_PENDIENTE_USER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(67537980900194426)
,p_prompt=>'Pendiente '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>60
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67101533864295135)
,p_name=>'P276_FECHA_PENDIENTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(67537980900194426)
,p_prompt=>'Fecha Pendiente'
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
 p_id=>wwv_flow_imp.id(67101608214295136)
,p_name=>'P276_RECHAZADO_USER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(67537980900194426)
,p_prompt=>'Rechazado '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>60
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67101734546295137)
,p_name=>'P276_FECHA_RECHAZADO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(67537980900194426)
,p_prompt=>'Fecha Rechazado'
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
 p_id=>wwv_flow_imp.id(67101809469295138)
,p_name=>'P276_FINALIZADO_USER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(67537980900194426)
,p_prompt=>'Finalizado '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>60
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67101927276295139)
,p_name=>'P276_FECHA_FINALIZADO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(67537980900194426)
,p_prompt=>'Fecha Finalizado'
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
 p_id=>wwv_flow_imp.id(67102053772295140)
,p_name=>'P276_FECHA_PLAZO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(67537235975194419)
,p_prompt=>'Fecha Requerida'
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
 p_id=>wwv_flow_imp.id(67102148442295141)
,p_name=>'P276_COMENTARIO_IT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(67537235975194419)
,p_prompt=>'Comentario '
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>600
,p_cHeight=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67102211162295142)
,p_name=>'P276_IND_RECHAZADO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(67099536128295115)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67102335903295143)
,p_name=>'P276_IND_APROBADO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(67099536128295115)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67102424655295144)
,p_name=>'P276_IND_FINALIZADO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(67099536128295115)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67102527422295145)
,p_name=>'P276_IND_PENDIENTE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(67099536128295115)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67102632214295146)
,p_name=>'P276_IND_CONFIRMADO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(67099536128295115)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67102717490295147)
,p_name=>'P276_CONFIRMADO_USER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(67537980900194426)
,p_prompt=>'Confirmado '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>60
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67102896846295148)
,p_name=>'P276_FECHA_CONFIRMADO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(67537980900194426)
,p_prompt=>'Fecha Confirmado'
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
 p_id=>wwv_flow_imp.id(67102964618295149)
,p_name=>'P276_COD_MOTIVO_ANU'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(67099536128295115)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67103048513295150)
,p_name=>'P276_COD_USUARIO_ANU'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(67099536128295115)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67471290549088941)
,p_name=>'P276_COD_EMPRESA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(133078970019982722)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67471639523088941)
,p_name=>'P276_COD_MODULO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(133078970019982722)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67472044280088942)
,p_name=>'P276_COD_SUCURSAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(133078970019982722)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67472461085088942)
,p_name=>'P276_COD_USUARIO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(133078970019982722)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67472897875088942)
,p_name=>'P276_COD_PERSONA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(133078970019982722)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67473231144088942)
,p_name=>'P276_VER_SOLICITANTE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(133078970019982722)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67473637689088942)
,p_name=>'P276_AUX_MSJ'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(133078970019982722)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67505423601167952)
,p_name=>'P276_CARGA_SUCURSAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(133078970019982722)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67505860723167952)
,p_name=>'P276_CONFIRMA_ORDEN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(133078970019982722)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67506270478167952)
,p_name=>'P276_CAMBIA_ESTADO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(133078970019982722)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67506682653167953)
,p_name=>'P276_CREA_PENDIENTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(133078970019982722)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67507037258167953)
,p_name=>'P276_APROBADO_SECCION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(133078970019982722)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67507448436167953)
,p_name=>'P276_APROBADO_IT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(133078970019982722)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67507846278167953)
,p_name=>'P276_RECHAZADO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(133078970019982722)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67508654304167954)
,p_name=>'P276_CONFIRMADO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(133078970019982722)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67535415845194401)
,p_name=>'P276_DESCRIPCION'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(67537634883194423)
,p_prompt=>'Descripcion'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67535598938194402)
,p_name=>'P276_COD_CAMBIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(67537235975194419)
,p_prompt=>'Comentario'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULO_SMPSGADM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_CAMBIO R, descripcion D',
'from CP_CAMBIOS_SISTEMAS ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Seleccionar --'
,p_cSize=>30
,p_cMaxlength=>30
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(67535602613194403)
,p_name=>'P276_MODULO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(67099536128295115)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67535772425194404)
,p_name=>'P276_SECCION'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(67099536128295115)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67535873227194405)
,p_name=>'P276_FORMULARIO'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(67099536128295115)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67535948488194406)
,p_name=>'P276_URGENTE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(67537125886194418)
,p_prompt=>'Prioridad'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Baja;B,Media;M,Alta;A'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67536074426194407)
,p_name=>'P276_TIPO'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(67099536128295115)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67536109679194408)
,p_name=>'P276_FECHA_INICIO_TRABAJO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(67537235975194419)
,p_prompt=>'Fecha Inicio '
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
 p_id=>wwv_flow_imp.id(67536254724194409)
,p_name=>'P276_FECHA_FIN_TRABAJO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(67537235975194419)
,p_prompt=>'Fecha Fin '
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
 p_id=>wwv_flow_imp.id(67536393386194410)
,p_name=>'P276_FECHA_PENDIENTE_IT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(67537980900194426)
,p_prompt=>'Fecha Aprobado'
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
 p_id=>wwv_flow_imp.id(67536442649194411)
,p_name=>'P276_PENDIENTE_IT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(67537980900194426)
,p_prompt=>'Aprobado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>60
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67536583974194412)
,p_name=>'P276_NRO_TICKET_ANTERIOR'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(67099536128295115)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67536644217194413)
,p_name=>'P276_CALIFICACION'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_imp.id(67537980900194426)
,p_prompt=>unistr('Calificaci\00F3n')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:1;1,2;2,3;3,4;4,5;5,6;6,7;7,8;8,9;9,10;10'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'10'
,p_attribute_02=>'NONE'
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
 p_id=>wwv_flow_imp.id(67536752615194414)
,p_name=>'P276_COMENTARIO_FINAL'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_imp.id(67537980900194426)
,p_prompt=>'Comentario Final'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>400
,p_cHeight=>3
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67536870895194415)
,p_name=>'P276_FECHA_INICIO_ESPERADO'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(67099536128295115)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67537076470194417)
,p_name=>'P276_P_NRO_PEDIDO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(67536934410194416)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67537342000194420)
,p_name=>'P276_DESC_SECCION'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(67537125886194418)
,p_prompt=>unistr('Secci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>80
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67537454839194421)
,p_name=>'P276_DESC_ARTICULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(67537235975194419)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67537585094194422)
,p_name=>'P276_DESC_EMPLEADO_IT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(67537235975194419)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67538040141194427)
,p_name=>'P276_CONF_REC_PED'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(133078970019982722)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67538106925194428)
,p_name=>'P276_FINALIZADO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(133078970019982722)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67538208659194429)
,p_name=>'P276_TIP_PEDIDO_1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(67099536128295115)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67538392093194430)
,p_name=>'P276_COD_SUCURSAL_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(67099536128295115)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67538499525194431)
,p_name=>'P276_NOMBRE_1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(67099536128295115)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67538529045194432)
,p_name=>'P276_DESC_SUCURSAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(67099536128295115)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67538671102194433)
,p_name=>'P276_NRO_PEDIDO_ANT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(133078970019982722)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(67788282183163704)
,p_name=>'P276_DERIVAR_COMENTARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(67788107402163703)
,p_prompt=>'Comentario'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>600
,p_cHeight=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68939297785359512)
,p_name=>'P276_AUX_ACCION'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(133078970019982722)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(67539587682194442)
,p_validation_name=>'VA_FECHA_INICIO_TRABAJO'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P276_ESTADO = ''F'' AND :P276_FECHA_INICIO_TRABAJO IS NULL THEN',
'    RETURN FALSE;',
'ELSE',
'    RETURN TRUE; ',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Debe agregar la fecha de inicio para finalizar el pedido.'
,p_associated_item=>wwv_flow_imp.id(67536109679194408)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(67540296803194449)
,p_validation_name=>'VA_FECHA_INICIO_TRABAJO_1'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P276_FECHA_INICIO_TRABAJO IS NOT NULL AND TO_DATE(:P276_FECHA_INICIO_TRABAJO, ''DD/MM/YYYY'') < TO_DATE(:P276_FECHA, ''DD/MM/YYYY'') THEN',
'    RETURN FALSE;',
'ELSE',
'    RETURN TRUE; ',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('La fecha de inicio no puede ser menor a la fecha de creaci\00F3n del pedido.')
,p_associated_item=>wwv_flow_imp.id(67536109679194408)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(67539633971194443)
,p_validation_name=>'VA_FECHA_FIN_TRABAJO'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P276_ESTADO = ''F'' AND :P276_FECHA_FIN_TRABAJO IS NULL THEN',
'    RETURN FALSE;',
'ELSE',
'    RETURN TRUE; ',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Debe agregar la fecha de fin del trabajo para finalizar el pedido.'
,p_associated_item=>wwv_flow_imp.id(67536254724194409)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(67540342269194450)
,p_validation_name=>'VA_FECHA_FIN_TRABAJO_1'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P276_FECHA_FIN_TRABAJO IS NOT NULL AND TO_DATE(:P276_FECHA_FIN_TRABAJO, ''DD/MM/YYYY'') < TO_DATE(:P276_FECHA_INICIO_TRABAJO, ''DD/MM/YYYY'') THEN',
'    RETURN FALSE;',
'ELSE',
'    RETURN TRUE; ',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'La fecha de inicio no puede ser mayor a la fecha de fin del pedido.'
,p_associated_item=>wwv_flow_imp.id(67536254724194409)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(67788071941163702)
,p_validation_name=>'VA_FECHA_FIN_TRABAJO_1_1'
,p_validation_sequence=>55
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P276_FECHA_FIN_TRABAJO IS NOT NULL AND TO_DATE(:P276_FECHA_FIN_TRABAJO, ''DD/MM/YYYY'') < TO_DATE(:P276_FECHA, ''DD/MM/YYYY'') THEN',
'    RETURN FALSE;',
'ELSE',
'    RETURN TRUE; ',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('La fecha de fin no puede ser mayor a la fecha de creaci\00F3n del pedido.')
,p_associated_item=>wwv_flow_imp.id(67536254724194409)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(68938460298359504)
,p_validation_name=>'VA_CALIFICACION'
,p_validation_sequence=>65
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P276_ESTADO = ''F'' AND :P276_CALIFICACION IS NULL THEN',
'    RETURN FALSE;',
'ELSE',
'    RETURN TRUE; ',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('Para finalizar debe agregar una calificaci\00F3n para terminar el pedido.')
,p_associated_item=>wwv_flow_imp.id(67536644217194413)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(68938594436359505)
,p_validation_name=>'VA_COMENTARIO_FINAL'
,p_validation_sequence=>75
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P276_ESTADO = ''F'' AND :P276_COMENTARIO_FINAL IS NULL THEN',
'    RETURN FALSE;',
'ELSE',
'    RETURN TRUE; ',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Para finalizar debe agregar un comentario para finalizar el pedido.'
,p_associated_item=>wwv_flow_imp.id(67536752615194414)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67487963947088957)
,p_name=>'DA_SOLICITANTE'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67488462202088958)
,p_event_id=>wwv_flow_imp.id(67487963947088957)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P276_SOLICITANTE'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P276_VER_SOLICITANTE'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67488927756088958)
,p_event_id=>wwv_flow_imp.id(67487963947088957)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P276_SOLICITANTE'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P276_VER_SOLICITANTE'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67489362636088958)
,p_name=>'DA_ABRE_SMPSGADM'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P276_ABRE_SMPSGADM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67489807676088958)
,p_event_id=>wwv_flow_imp.id(67489362636088958)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P276_ABRE_SMPSGADM'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67490204551088958)
,p_name=>'DA_VER_DATOS'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P276_VER_DATOS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67490749650088959)
,p_event_id=>wwv_flow_imp.id(67490204551088958)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C007, C008, C018, C019',
'  INTO :P276_ESTADO_DESC, :P276_COMENTARIO, :P276_FECHA_INICIO_TRABAJO, :P276_FECHA_FIN_TRABAJO',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''DETALLE_SMSESSGG''',
'   AND SEQ_ID = :P276_VER_DATOS; ',
'',
''))
,p_attribute_02=>'P276_VER_DATOS'
,p_attribute_03=>'P276_ESTADO_DESC,P276_COMENTARIO,P276_FECHA_INICIO_TRABAJO,P276_FECHA_FIN_TRABAJO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67487010936088957)
,p_name=>'DA_VISUAL'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P276_VISUAL'
,p_condition_element=>'P276_VISUAL'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'T'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67487599479088957)
,p_event_id=>wwv_flow_imp.id(67487010936088957)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P276_FECHA_INI,P276_FECHA_FIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67483303605088956)
,p_name=>'DA_FECHA_FIN'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P276_FECHA_FIN'
,p_condition_element=>'P276_FECHA_FIN'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67483801412088956)
,p_event_id=>wwv_flow_imp.id(67483303605088956)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P276_VISUAL:=''T'';'
,p_attribute_03=>'P276_VISUAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67484257142088956)
,p_name=>'DA_FECHA_INI'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P276_FECHA_INI'
,p_condition_element=>'P276_FECHA_INI'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67484788297088956)
,p_event_id=>wwv_flow_imp.id(67484257142088956)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P276_VISUAL:=''T'';'
,p_attribute_03=>'P276_VISUAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67539179277194438)
,p_name=>'DA_COD_CAMBIO'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P276_COD_CAMBIO'
,p_condition_element=>'P276_COD_CAMBIO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67539226899194439)
,p_event_id=>wwv_flow_imp.id(67539179277194438)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SMPSGADM.PR_VALIDA_COD_CAMBIO(PI_COD_EMPRESA   => :P276_COD_EMPRESA, ',
'                              PI_COD_CAMBIO    => :P276_COD_CAMBIO, ',
'                              PO_DESC_ARTICULO => :P276_DESC_ARTICULO);'))
,p_attribute_02=>'P276_COD_EMPRESA,P276_COD_CAMBIO'
,p_attribute_03=>'P276_DESC_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67539313025194440)
,p_name=>'DA_ESTADO'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P276_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67539498082194441)
,p_event_id=>wwv_flow_imp.id(67539313025194440)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SMPSGADM.PR_VALIDA_ESTADO(PI_ESTADO                => :P276_ESTADO, ',
'                          PI_APROBADO_SECCION      => :P276_APROBADO_SECCION,',
'                          PI_APROBADO_IT           => :P276_APROBADO_IT,',
'                          PI_FINALIZADO            => :P276_FINALIZADO,',
'                          PI_RECHAZADO             => :P276_RECHAZADO,',
'                          PI_CONFIRMADO            => :P276_CONFIRMADO,',
'                          PI_CREA_PENDIENTE        => :P276_CREA_PENDIENTE,',
'                          PI_CAMBIA_ESTADO         => :P276_CAMBIA_ESTADO,',
'                          PI_PENDIENTE_USER        => :P276_PENDIENTE_USER,',
'                          PI_APROBADO_USER         => :P276_APROBADO_USER);',
''))
,p_attribute_02=>'P276_ESTADO,P276_COD_USUARIO,P276_APROBADO_SECCION,P276_APROBADO_IT,P276_FINALIZADO,P276_RECHAZADO,P276_CONFIRMADO,P276_CREA_PENDIENTE,P276_CAMBIA_ESTADO,P276_PENDIENTE_USER,P276_APROBADO_USER'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68938629184359506)
,p_event_id=>wwv_flow_imp.id(67539313025194440)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P276_ESTADO=''P''  THEN',
'    :P276_PENDIENTE_USER:= :P276_COD_USUARIO;',
'    :P276_FECHA_PENDIENTE:=SYSDATE;	',
'ELSIF :P276_ESTADO=''I''  THEN',
'    :P276_PENDIENTE_IT:=:P276_COD_USUARIO;',
'    :P276_FECHA_PENDIENTE_IT:=SYSDATE;',
'ELSIF :P276_ESTADO=''R''  THEN',
'    :P276_RECHAZADO_USER :=:P276_COD_USUARIO ;',
'    :P276_FECHA_RECHAZADO:=SYSDATE;',
'ELSIF :P276_ESTADO=''A''  THEN',
'    :P276_APROBADO_USER :=:P276_COD_USUARIO ;',
'    :P276_FECHA_APROBADO:=SYSDATE;',
'ELSIF :P276_ESTADO=''F''  THEN',
'    :P276_FINALIZADO_USER:=:P276_COD_USUARIO;',
'    :P276_FECHA_FINALIZADO:=SYSDATE;',
'ELSIF :P276_ESTADO=''C''  THEN',
'    :P276_CONFIRMADO_USER:=:P276_COD_USUARIO;',
'    :P276_FECHA_CONFIRMADO:=SYSDATE;	 	 ',
'END IF;',
''))
,p_attribute_02=>'P276_ESTADO'
,p_attribute_03=>'P276_PENDIENTE_USER,P276_FECHA_PENDIENTE,P276_PENDIENTE_IT,P276_FECHA_PENDIENTE_IT,P276_RECHAZADO_USER,P276_FECHA_RECHAZADO, P276_APROBADO_USER,P276_FECHA_APROBADO,P276_FINALIZADO_USER,P276_FECHA_FINALIZADO,P276_CONFIRMADO_USER,P276_FECHA_CONFIRMADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67539717854194444)
,p_name=>'DA_URGENTE'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P276_URGENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67539853191194445)
,p_event_id=>wwv_flow_imp.id(67539717854194444)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P276_URGENTE=''A'' THEN',
'	:P276_FECHA_PLAZO:=SYSDATE+3;',
'ELSIF :P276_URGENTE=''M'' THEN',
'	:P276_FECHA_PLAZO:=SYSDATE+7;',
'ELSIF :P276_URGENTE=''B'' THEN',
'	:P276_FECHA_PLAZO:=SYSDATE+15;',
'END IF;'))
,p_attribute_02=>'P276_URGENTE'
,p_attribute_03=>'P276_FECHA_PLAZO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67539918548194446)
,p_name=>'DA_COD_EMPLEADO_IT'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P276_COD_EMPLEADO_IT'
,p_condition_element=>'P276_COD_EMPLEADO_IT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67540007766194447)
,p_event_id=>wwv_flow_imp.id(67539918548194446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SMPSGADM.PR_VALIDA_COD_EMPLEADO(PI_COD_EMPRESA         => :P276_COD_EMPRESA,',
'                                PI_COD_EMPLEADO_IT     => :P276_COD_EMPLEADO_IT,',
'                                PO_DESC_EMPLEADO_IT    => :P276_DESC_EMPLEADO_IT);'))
,p_attribute_02=>'P276_COD_EMPRESA,P276_COD_EMPLEADO_IT'
,p_attribute_03=>'P276_DESC_EMPLEADO_IT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67788587023163707)
,p_name=>'DA_CANCELAR_COMENTARIO'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(67788465351163706)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67788686030163708)
,p_event_id=>wwv_flow_imp.id(67788587023163707)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(67788107402163703)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67788735590163709)
,p_name=>'DA_GUARDAD_COMENTARIO'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(67788362861163705)
,p_condition_element=>'P276_DERIVAR_COMENTARIO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67788894318163710)
,p_event_id=>wwv_flow_imp.id(67788735590163709)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    VMENSAJE VARCHAR2(400);',
'BEGIN',
'    INSERTA_SEGUIMIENTO_PED_ssgg(:P276_COD_EMPRESA, ',
'                                 :P276_DERIVAR_COMENTARIO,',
'                               	 :P276_COD_USUARIO,',
'                               	 ''A'',',
'                                 to_char(:P276_NRO_PEDIDO), ',
'                                 vmensaje);',
'END;                                 '))
,p_attribute_02=>'P276_COD_EMPRESA,P276_DERIVAR_COMENTARIO,P276_COD_USUARIO,P276_NRO_PEDIDO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67789179897163713)
,p_event_id=>wwv_flow_imp.id(67788735590163709)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe ingresar un comentario para guardar.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67788937792163711)
,p_event_id=>wwv_flow_imp.id(67788735590163709)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SMPSGADM.PR_BUSCA_LLAMADAS(PI_COD_EMPRESA => :P276_COD_EMPRESA,',
'                           PI_NRO_PEDIDO  => TO_NUMBER(:P276_NRO_PEDIDO));'))
,p_attribute_02=>'P276_COD_EMPRESA,P276_NRO_PEDIDO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67789047645163712)
,p_event_id=>wwv_flow_imp.id(67788735590163709)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(67538797280194434)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67789452111163716)
,p_event_id=>wwv_flow_imp.id(67788735590163709)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(67788107402163703)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67789293425163714)
,p_name=>'DA_AGREGAR_SEGUIMIENTO'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(67537870552194425)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67789521520163717)
,p_event_id=>wwv_flow_imp.id(67789293425163714)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P276_DERIVAR_COMENTARIO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67789376665163715)
,p_event_id=>wwv_flow_imp.id(67789293425163714)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(67788107402163703)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67790493076163726)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(67790328220163725)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67790523349163727)
,p_event_id=>wwv_flow_imp.id(67790493076163726)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67791424469163736)
,p_name=>'DA_COMENTARIO_IT'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P276_COMENTARIO_IT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67791525518163737)
,p_event_id=>wwv_flow_imp.id(67791424469163736)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P276_COMENTARIO_IT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68938229160359502)
,p_name=>'DA_READONLY'
,p_event_sequence=>180
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68938366530359503)
,p_event_id=>wwv_flow_imp.id(68938229160359502)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById(''P276_NRO_PEDIDO'').readOnly = true;',
'document.getElementById(''P276_FECHA'').readOnly = true;',
'document.getElementById(''P276_NOMBRE'').readOnly = true;',
'document.getElementById(''P276_DESC_SECCION'').readOnly = true;',
'document.getElementById(''P276_DESC_EMPLEADO_IT'').readOnly = true;',
'document.getElementById(''P276_DESC_ARTICULO'').readOnly = true;',
'document.getElementById(''P276_PENDIENTE_USER'').readOnly = true;',
'document.getElementById(''P276_FECHA_PENDIENTE'').readOnly = true;',
'document.getElementById(''P276_APROBADO_USER'').readOnly = true;',
'document.getElementById(''P276_FECHA_APROBADO'').readOnly = true;',
'document.getElementById(''P276_PENDIENTE_IT'').readOnly = true;',
'document.getElementById(''P276_FECHA_PENDIENTE_IT'').readOnly = true;',
'document.getElementById(''P276_RECHAZADO_USER'').readOnly = true;',
'document.getElementById(''P276_FECHA_RECHAZADO'').readOnly = true;',
'document.getElementById(''P276_CONFIRMADO'').readOnly = true;',
'document.getElementById(''P276_FECHA_CONFIRMADO'').readOnly = true;',
'document.getElementById(''P276_FINALIZADO'').readOnly = true;',
'document.getElementById(''P276_FECHA_FINALIZADO'').readOnly = true;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68938898136359508)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(68938743714359507)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68938937537359509)
,p_event_id=>wwv_flow_imp.id(68938898136359508)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el pedido?')
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_03=>'information'
,p_attribute_06=>'Aceptar'
,p_attribute_07=>'Cancelar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68939039668359510)
,p_event_id=>wwv_flow_imp.id(68938898136359508)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'ELIMINAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68939460635359514)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(67789815819163720)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68939526798359515)
,p_event_id=>wwv_flow_imp.id(68939460635359514)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'GUARDAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(67480668048088952)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--PRE FORM',
':P_COD_MODULO := ''SM'';',
':P276_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'');',
':P276_COD_MODULO := :P_COD_MODULO;',
':P276_COD_USUARIO := NVL(:P_COD_USUARIO, :APP_USER);',
':P276_COD_SUCURSAL := NVL(:P_COD_SUCURSAL, ''01'');',
':P276_TIP_PEDIDO:= ''PED'';',
':P272_NRO_PEDIDO := NULL;',
':P272_AUX_ACCION := NULL;',
'',
':P276_CARGA_SUCURSAL := busca_permiso(:P276_COD_EMPRESA,',
'                                      ''SMPSGADM'',',
'                                      :P276_COD_USUARIO,',
'                                      ''CARGA SUCURSAL'' );',
'',
':P276_CONFIRMA_ORDEN:= busca_permiso(:P276_COD_EMPRESA,',
'                                     ''SMPSGADM'',',
'                                     :P276_COD_USUARIO,',
'                                     ''CONFIRMA_ORDEN'' );                                       ',
'                                               ',
':P276_CAMBIA_ESTADO := busca_permiso(:P276_COD_EMPRESA,',
'                                     ''SMPSGADM'',',
'                                     :P276_COD_USUARIO,',
'                                     ''CAMBIA_ESTADO'' );',
'                                               ',
':P276_REVIERTE_ESTADO := busca_permiso(:P276_COD_EMPRESA,',
'                                       ''SMPSGADM'',',
'                                       :P276_COD_USUARIO,',
'                                       ''REVIERTE_ESTADO'' );                                               ',
'                                              ',
':P276_CREA_PENDIENTE := busca_permiso(:P276_COD_EMPRESA,',
'                                      ''SMPSGADM'',',
'                                      :P276_COD_USUARIO,',
'                                      ''CREA_PENDIENTE'' );                                               ',
'                                               ',
'                                               ',
':P276_APROBADO_SECCION:= busca_permiso(:P276_COD_EMPRESA,',
'                                       ''SMPSGADM'',',
'                                       :P276_COD_USUARIO,',
'                                       ''APROBADO_SECCION'' );      ',
'                                               ',
':P276_APROBADO_IT:= busca_permiso(:P276_COD_EMPRESA,',
'                                  ''SMPSGADM'',',
'                                  :P276_COD_USUARIO,',
'                                  ''APROBADO_IT'' );  ',
'',
':P276_RECHAZADO := busca_permiso(:P276_COD_EMPRESA,',
'                                 ''SMPSGADM'',',
'                                 :P276_COD_USUARIO,',
'                                 ''RECHAZADO'' ); ',
'                                               ',
':P276_FINALIZADO := busca_permiso(:P276_COD_EMPRESA,',
'                                  ''SMPSGADM'',',
'                                  :P276_COD_USUARIO,',
'                                  ''FINALIZADO'' );                                                ',
'                                                                    ',
':P276_CONFIRMADO := busca_permiso(:P276_COD_EMPRESA,',
'                                  ''SMPSGADM'',',
'                                  :P276_COD_USUARIO,',
'                                  ''CONFIRMADO'' );',
'',
':P276_CONF_REC_PED := busca_permiso(:P276_COD_EMPRESA,',
'                                    ''SMPSGADM'',',
'                                    :P276_COD_USUARIO, ',
'                                    ''CONF_RECH_PEDIDO'') ;  ',
'IF :P276_P_NRO_PEDIDO IS NOT NULL THEN',
'	SMPSGADM.PR_CARGA_DATOS(PI_COD_EMPRESA             => :P276_COD_EMPRESA,',
'                            PI_NRO_PEDIDO              => :P276_P_NRO_PEDIDO,',
'                            PO_TIP_PEDIDO              => :P276_TIP_PEDIDO_1,',
'                            PO_COD_SUCURSAL            => :P276_COD_SUCURSAL_1,',
'                            PO_FECHA                   => :P276_FECHA,',
'                            PO_COD_USUARIO             => :P276_COD_USUARIO_1,',
'                            PO_ESTADO                  => :P276_ESTADO,',
'                            PO_COMENTARIO              => :P276_COMENTARIO,',
'                            PO_COD_PERSONA             => :P276_COD_PERSONA_1,',
'                            PO_COD_USUARIO_EST         => :P276_COD_USUARIO_EST,',
'                            PO_NOMBRE                  => :P276_NOMBRE_1,',
'                            PO_COD_SECCION             => :P276_COD_SECCION,',
'                            PO_COD_EMPLEADO_IT         => :P276_COD_EMPLEADO_IT,',
'                            PO_APROBADO_USER           => :P276_APROBADO_USER,',
'                            PO_FECHA_APROBADO          => :P276_FECHA_APROBADO,',
'                            PO_PENDIENTE_USER          => :P276_PENDIENTE_USER,',
'                            PO_FECHA_PENDIENTE         => :P276_FECHA_PENDIENTE,',
'                            PO_RECHAZADO_USER          => :P276_RECHAZADO_USER,',
'                            PO_FECHA_RECHAZADO         => :P276_FECHA_RECHAZADO,',
'                            PO_FINALIZADO_USER         => :P276_FINALIZADO_USER,',
'                            PO_FECHA_FINALIZADO        => :P276_FECHA_FINALIZADO,',
'                            PO_FECHA_PLAZO             => :P276_FECHA_PLAZO,',
'                            PO_COMENTARIO_IT           => :P276_COMENTARIO_IT,',
'                            PO_CONFIRMADO_USER         => :P276_CONFIRMADO_USER,',
'                            PO_FECHA_CONFIRMADO        => :P276_FECHA_CONFIRMADO,',
'                            PO_COD_MOTIVO_ANU          => :P276_COD_MOTIVO_ANU,',
'                            PO_COD_USUARIO_ANU         => :P276_COD_USUARIO_ANU,',
'                            PO_DESCRIPCION             => :P276_DESCRIPCION,',
'                            PO_COD_CAMBIO              => :P276_COD_CAMBIO,',
'                            PO_MODULO                  => :P276_MODULO,',
'                            PO_SECCION                 => :P276_SECCION,',
'                            PO_FORMULARIO              => :P276_FORMULARIO,',
'                            PO_URGENTE                 => :P276_URGENTE,',
'                            PO_FECHA_INICIO_TRABAJO    => :P276_FECHA_INICIO_TRABAJO,',
'                            PO_FECHA_FIN_TRABAJO       => :P276_FECHA_FIN_TRABAJO,',
'                            PO_FECHA_PENDIENTE_IT      => :P276_FECHA_PENDIENTE_IT,',
'                            PO_PENDIENTE_IT            => :P276_PENDIENTE_IT,',
'                            PO_CALIFICACION            => :P276_CALIFICACION,',
'                            PO_COMENTARIO_FINAL        => :P276_COMENTARIO_FINAL,',
'                            PO_DESC_SUCURSAL           => :P276_DESC_SUCURSAL,',
'                            PO_DESC_EMPLEADO_IT        => :P276_DESC_EMPLEADO_IT,',
'                            PO_DESC_SECCION            => :P276_DESC_SECCION,',
'                            PO_NOMBRE_PERSONA          => :P276_NOMBRE,',
'                            PO_DESC_ARTICULO           => :P276_DESC_ARTICULO);',
'    :P276_NRO_PEDIDO := :P276_P_NRO_PEDIDO;                            ',
'END IF; ',
'',
'IF :P276_P_NRO_PEDIDO IS NOT NULL THEN',
'    IF nvl( :P276_NRO_PEDIDO_ANT, 0 ) <> :P276_P_NRO_PEDIDO THEN',
'        SMPSGADM.PR_BUSCA_LLAMADAS(PI_COD_EMPRESA => :P276_COD_EMPRESA,',
'                                   PI_NRO_PEDIDO  => TO_NUMBER(:P276_P_NRO_PEDIDO)); ',
'        :P276_NRO_PEDIDO_ANT := :P276_P_NRO_PEDIDO ;',
'    END IF;',
'END IF;',
''))
,p_process_clob_language=>'PLSQL'
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(67789668960163718)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GUARDAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SMPSGADM.PR_ACTUALIZAR_PEDIDO(PI_ESTADO                  => :P276_ESTADO,',
'                              PI_CALIFICACION            => :P276_CALIFICACION,',
'                              PI_COMENTARIO_FINAL        => :P276_COMENTARIO_FINAL,',
'                              PI_COD_EMPRESA             => :P276_COD_EMPRESA,',
'                              PI_NRO_PEDIDO              => :P276_NRO_PEDIDO,',
'                              PI_TIP_PEDIDO              => :P276_TIP_PEDIDO_1,',
'                              PI_COD_SUCURSAL            => :P276_COD_SUCURSAL_1, ',
'                              PI_FECHA                   => TO_DATE(:P276_FECHA,''DD/MM/YYYY''),',
'                              PI_COD_USUARIO             => :P276_COD_USUARIO_1,',
'                              PI_COMENTARIO              => :P276_COMENTARIO,',
'                              PI_COD_PERSONA             => :P276_COD_PERSONA_1,',
'                              PI_COD_USUARIO_EST         => :P276_COD_USUARIO_EST,',
'                              PI_NOMBRE                  => :P276_NOMBRE_1,',
'                              PI_COD_SECCION             => :P276_COD_SECCION,',
'                              PI_COD_EMPLEADO_IT         => :P276_COD_EMPLEADO_IT,',
'                              PI_APROBADO_USER           => :P276_APROBADO_USER,',
'                              PI_FECHA_APROBADO          => TO_DATE(:P276_FECHA_APROBADO,''DD/MM/YYYY''),',
'                              PI_PENDIENTE_USER          => :P276_PENDIENTE_USER,',
'                              PI_FECHA_PENDIENTE         => TO_DATE(:P276_FECHA_PENDIENTE,''DD/MM/YYYY''),',
'                              PI_RECHAZADO_USER          => :P276_RECHAZADO_USER,',
'                              PI_FECHA_RECHAZADO         => TO_DATE(:P276_FECHA_RECHAZADO,''DD/MM/YYYY''),',
'                              PI_FINALIZADO_USER         => :P276_FINALIZADO_USER,',
'                              PI_FECHA_FINALIZADO        => TO_DATE(:P276_FECHA_FINALIZADO,''DD/MM/YYYY''),',
'                              PI_FECHA_PLAZO             => TO_DATE(:P276_FECHA_PLAZO,''DD/MM/YYYY''),',
'                              PI_COMENTARIO_IT           => :P276_COMENTARIO_IT,',
'                              PI_CONFIRMADO_USER         => :P276_CONFIRMADO_USER,',
'                              PI_FECHA_CONFIRMADO        => TO_DATE(:P276_FECHA_CONFIRMADO,''DD/MM/YYYY''),',
'                              PI_COD_MOTIVO_ANU          => :P276_COD_MOTIVO_ANU,',
'                              PI_COD_USUARIO_ANU         => :P276_COD_USUARIO_ANU,',
'                              PI_DESCRIPCION             => :P276_DESCRIPCION,',
'                              PI_COD_CAMBIO              => :P276_COD_CAMBIO,',
'                              PI_MODULO                  => :P276_MODULO,',
'                              PI_SECCION                 => :P276_SECCION,',
'                              PI_FORMULARIO              => :P276_FORMULARIO,',
'                              PI_URGENTE                 => :P276_URGENTE,',
'                              PI_FECHA_INICIO_TRABAJO    => TO_DATE(:P276_FECHA_INICIO_TRABAJO,''DD/MM/YYYY''),',
'                              PI_FECHA_FIN_TRABAJO       => TO_DATE(:P276_FECHA_FIN_TRABAJO,''DD/MM/YYYY''),',
'                              PI_FECHA_PENDIENTE_IT      => TO_DATE(:P276_FECHA_PENDIENTE_IT,''DD/MM/YYYY''),',
'                              PI_PENDIENTE_IT            => :P276_PENDIENTE_IT);',
'sp_correo_pedido_ssgg(:P276_NRO_PEDIDO , :P276_ESTADO);',
unistr(':P276_AUX_ACCION := ''guard\00F3'';')))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'GUARDAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(68939129407359511)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ELIMINAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SMPSGADM.PR_ELIMINA_PEDIDO(PI_COD_EMPRESA => :P276_COD_EMPRESA, ',
'                           PI_TIP_PEDIDO  => :P276_TIP_PEDIDO_1, ',
'                           PI_NRO_PEDIDO  => :P276_NRO_PEDIDO);',
unistr(':P276_AUX_ACCION := ''elimin\00F3'';                           ')))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'ELIMINAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(67790621567163728)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'CLOSE_DIALOG'
,p_attribute_01=>'P276_NRO_PEDIDO,P276_AUX_ACCION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'GUARDAR,ELIMINAR'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp.component_end;
end;
/
