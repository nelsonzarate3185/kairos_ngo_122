prompt --application/pages/page_00056
begin
--   Manifest
--     PAGE: 00056
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
 p_id=>56
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Asignaci\00F3n de Promotoras')
,p_alias=>unistr('ASIGNACI\00D3N-DE-PROMOTORAS')
,p_step_title=>unistr('Asignaci\00F3n de Promotoras')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'DFINO'
,p_last_upd_yyyymmddhh24miss=>'20221118103508'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13829869012425650)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(40070279985263645)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(40189153869263678)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13830689470426701)
,p_plug_name=>unistr('Asignaci\00F3n de Promotoras')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13830798173426702)
,p_plug_name=>'VT_ASIGNACION_PROMOTORA'
,p_parent_plug_id=>wwv_flow_imp.id(13830689470426701)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SEQ_ID,',
'       c001 COD_EMPLEADO,',
'       c002 DES_EMPLEADO, ',
'       c003 COD_CLIENTE, ',
'       c004 NOMBRE_CLIENTE,',
'       c005 FEC_ASIGNACION,',
'       c006 COD_USUARIO,',
'       c007 FEC_ALTA,',
'       c008 ESTADO,',
'       c009 COD_SUCURSAL,',
'       c010 SALARIO_FIJO,',
'       c011 NOM_SUCURSAL,',
'       c012 CONTROL,',
'       c013 DIRECCION_SUCURSAL,',
'       c014 ROW_ID,',
'       NULL EDITAR,',
'       NULL BORRAR',
'  FROM APEX_COLLECTIONS ',
' WHERE COLLECTION_NAME = ''COLEC_VT_ASIGNACION_PROMOTORA''',
'    AND (c012 = ''U'' OR c012 = ''I'' OR c012 IS NULL)',
'ORDER BY seq_id DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'VT_ASIGNACION_PROMOTORA'
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
 p_id=>wwv_flow_imp.id(13830849796426703)
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
,p_internal_uid=>13830849796426703
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13831097417426705)
,p_db_column_name=>'COD_EMPLEADO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Promotora'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13831156961426706)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('C\00F3digo Cliente')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13831392411426708)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13831536274426710)
,p_db_column_name=>'ESTADO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13831677339426711)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13832315297426718)
,p_db_column_name=>'NOMBRE_CLIENTE'
,p_display_order=>90
,p_column_identifier=>'J'
,p_column_label=>'Nombre Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13832416322426719)
,p_db_column_name=>'FEC_ASIGNACION'
,p_display_order=>100
,p_column_identifier=>'K'
,p_column_label=>unistr('Fecha de Asignaci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13832517538426720)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>110
,p_column_identifier=>'L'
,p_column_label=>'Fec Alta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13832617956426721)
,p_db_column_name=>'SALARIO_FIJO'
,p_display_order=>120
,p_column_identifier=>'M'
,p_column_label=>'Salario Fijo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13832780278426722)
,p_db_column_name=>'DES_EMPLEADO'
,p_display_order=>130
,p_column_identifier=>'N'
,p_column_label=>unistr('Descripci\00F3n Promotora')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13832802810426723)
,p_db_column_name=>'NOM_SUCURSAL'
,p_display_order=>140
,p_column_identifier=>'O'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13833574455426730)
,p_db_column_name=>'CONTROL'
,p_display_order=>150
,p_column_identifier=>'P'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13833747696426732)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>160
,p_column_identifier=>'Q'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13834171584426736)
,p_db_column_name=>'BORRAR'
,p_display_order=>180
,p_column_identifier=>'S'
,p_column_label=>'Borrar'
,p_column_link=>'javascript:$s(''P56_DELETE_DATA'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
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
'    END IF;  ',
'    ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15194907701872506)
,p_db_column_name=>'DIRECCION_SUCURSAL'
,p_display_order=>190
,p_column_identifier=>'T'
,p_column_label=>unistr('Direcci\00F3n Sucursal')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15807940244166201)
,p_db_column_name=>'ROW_ID'
,p_display_order=>200
,p_column_identifier=>'U'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22168968209082407)
,p_db_column_name=>'EDITAR'
,p_display_order=>210
,p_column_identifier=>'V'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P56_EDIT_DATA'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
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
'    END IF;                                                       ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(13866771412450803)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'138668'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'COD_EMPLEADO:DES_EMPLEADO:COD_CLIENTE:NOMBRE_CLIENTE:NOM_SUCURSAL:DIRECCION_SUCURSAL:COD_USUARIO:FEC_ASIGNACION:ESTADO:EDITAR:BORRAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13834263693426737)
,p_plug_name=>'Agregar/Editar'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13834550482426740)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(13834263693426737)
,p_button_name=>'BTGUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13832193713426716)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(13830689470426701)
,p_button_name=>'BTAGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'COPY'
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
'                                                         pdm_boto     => 1); ',
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15194622270872503)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(13830689470426701)
,p_button_name=>'BTGUARDAR_TODO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar Cambios'
,p_button_position=>'COPY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13831821131426713)
,p_name=>'P56_EMPLEADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13834263693426737)
,p_prompt=>'Promotora'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_EMPLEADOS_1'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ltrim(p.nombre),  e.cod_empleado   --VTASIPRO',
'  FROM personas p,',
'       rh_empleados e',
' WHERE p.cod_persona = e.cod_persona',
'   AND e.cod_empresa = :P_COD_EMPRESA',
'   AND nvl( p.es_fisica, ''N'' ) = ''S'' ',
'   AND e.cod_persona = p.cod_persona ',
'   AND NVL(e.activo,''S'')=''S'' ',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13831969211426714)
,p_name=>'P56_CLIENTES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(13834263693426737)
,p_prompt=>'Clientes'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES_3'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select decode( nvl( p.nombre, p.nomb_fantasia ), p.nomb_fantasia, nvl( p.nombre, p.nomb_fantasia ), rtrim( p.nombre ) || '' '' || nvl( p.nomb_fantasia, '' '' ) ) nombre, ',
'       cod_cliente',
'  from cc_clientes c, personas p ',
' where c.cod_empresa = :P_COD_EMPRESA ',
'   and c.cod_persona = p.cod_persona',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13833353996426728)
,p_name=>'P56_SUCURSAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(13834263693426737)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT B.NOMBRE D,',
'       B.COD_SUCURSAL R       ',
'  FROM CC_CLIENTES CC, ',
'       BS_SUCURSAL_CLIENTE B, ',
'       PERSONAS P,',
'       PAISES PP,',
'       CIUDADES C, ',
'       PROVINCIAS PRO',
' WHERE CC.COD_EMPRESA = :P_COD_EMPRESA',
'   AND CC.COD_PERSONA = P.COD_PERSONA',
'   AND (CC.COD_CLIENTE = :P56_CLIENTES)',
'   AND B.COD_PERSONA = CC.COD_PERSONA',
'   AND B.COD_PAIS = PP.COD_PAIS',
'   AND B.COD_PAIS = PRO.COD_PAIS',
'   AND B.COD_PROVINCIA = PRO.COD_PROVINCIA',
'   AND B.COD_PAIS = C.COD_PAIS',
'   AND B.COD_PROVINCIA = C.COD_PROVINCIA',
'   AND B.COD_CIUDAD = C.COD_CIUDAD'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Ninguna--'
,p_lov_cascade_parent_items=>'P56_CLIENTES'
,p_ajax_items_to_submit=>'P56_CLIENTES'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13833498590426729)
,p_name=>'P56_ESTADO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(13834263693426737)
,p_item_default=>'''N'''
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13833844375426733)
,p_name=>'P56_DELETE_DATA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13830798173426702)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13833910465426734)
,p_name=>'P56_EDIT_DATA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(13830798173426702)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15195016594872507)
,p_name=>'P56_FECHA_ASIG'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(13834263693426737)
,p_prompt=>unistr('Fecha de Asignaci\00F3n')
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
 p_id=>wwv_flow_imp.id(43198895070889717)
,p_name=>'P56_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13830689470426701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13832999326426724)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13834550482426740)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13833042213426725)
,p_event_id=>wwv_flow_imp.id(13832999326426724)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P56_EMPLEADO,P56_CLIENTES,P56_SUCURSAL,P56_ESTADO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13833605308426731)
,p_event_id=>wwv_flow_imp.id(13832999326426724)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    INV.VTASIPRO.ADD_COL(pcod_empleado => :P56_EMPLEADO,',
'                         pcod_cliente  => :P56_CLIENTES, ',
'                         pcod_sucursal => :P56_SUCURSAL, ',
'                         pestado       => :P56_ESTADO, ',
'                         pcod_empresa  => :P_COD_EMPRESA,',
'                         pcod_usuario  => :P_COD_USUARIO,',
'                         pfecha_asig   => :P56_FECHA_ASIG);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PANTALLA ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P56_EMPLEADO,P56_CLIENTES,P56_SUCURSAL,P56_ESTADO,P_COD_EMPRESA,P_COD_USUARIO,P56_FECHA_ASIG'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P56_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13835343138426748)
,p_event_id=>wwv_flow_imp.id(13832999326426724)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTASIPRO.EDIT_COL(pseq_id       => :P56_EDIT_DATA,',
'                      pcod_empleado => :P56_EMPLEADO, ',
'                      pcod_cliente  => :P56_CLIENTES,',
'                      pcod_sucursal => :P56_SUCURSAL,',
'                      pcod_empresa  => :P_COD_EMPRESA,',
'                      pestado       => :P56_ESTADO,',
'                      pcod_usuario  => :P_COD_USUARIO,',
'                      pfecha_asig   => :P56_FECHA_ASIG);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PANTALLA 56 EDICION ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P56_EDIT_DATA,P56_EMPLEADO,P56_CLIENTES,P56_SUCURSAL,P56_ESTADO,P_COD_EMPRESA,P_COD_USUARIO,P56_FECHA_ASIG'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P56_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13835294365426747)
,p_event_id=>wwv_flow_imp.id(13832999326426724)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(13834263693426737)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13833146082426726)
,p_event_id=>wwv_flow_imp.id(13832999326426724)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(13830798173426702)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13834372605426738)
,p_name=>'DA_ABRIR_MODAL'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13832193713426716)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13834990305426744)
,p_event_id=>wwv_flow_imp.id(13834372605426738)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P56_EMPLEADO,P56_CLIENTES,P56_SUCURSAL,P56_ESTADO,P56_EDIT_DATA,P56_FECHA_ASIG'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13834410205426739)
,p_event_id=>wwv_flow_imp.id(13834372605426738)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(13834263693426737)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13834677976426741)
,p_name=>'DA_ABRIR_MODAL_EDIT'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P56_EDIT_DATA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13834858360426743)
,p_event_id=>wwv_flow_imp.id(13834677976426741)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P56_EDIT_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13835005594426745)
,p_event_id=>wwv_flow_imp.id(13834677976426741)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT c001,',
'           c003,',
'           c005,',
'           c008,',
'           c009',
'      INTO :P56_EMPLEADO,',
'           :P56_CLIENTES,',
'           :P56_FECHA_ASIG,',
'           :P56_ESTADO,',
'           :P56_SUCURSAL',
'      FROM APEX_COLLECTIONS',
'     WHERE collection_name = ''COLEC_VT_ASIGNACION_PROMOTORA''',
'       AND SEQ_ID = :P56_EDIT_DATA;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P56_EDIT_DATA'
,p_attribute_03=>'P56_EMPLEADO,P56_CLIENTES,P56_SUCURSAL,P56_ESTADO,P56_FECHA_ASIG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P56_EDIT_DATA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13834703365426742)
,p_event_id=>wwv_flow_imp.id(13834677976426741)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(13834263693426737)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13835442700426749)
,p_name=>'DA_DELETE_DATA'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P56_DELETE_DATA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13835587171426750)
,p_event_id=>wwv_flow_imp.id(13835442700426749)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P56_DELETE_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15194412138872501)
,p_event_id=>wwv_flow_imp.id(13835442700426749)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    VTASIPRO.DELETE_COL(pseq_id => :P56_DELETE_DATA, ',
'                        p_col   => ''COLEC_VT_ASIGNACION_PROMOTORA'');',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PANTALLA 56 DELETE COL ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P56_DELETE_DATA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15194553934872502)
,p_event_id=>wwv_flow_imp.id(13835442700426749)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(13830798173426702)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13832230728426717)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_VT_ASIGNACION_PROMOTORA'');',
':P56_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'');',
'BEGIN',
'',
'    VTASIPRO.CARGAR_COLEC_VT_ASIG_PROM(pcod_empresa => :P_COD_EMPRESA);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15194825324872505)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_SAVE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    INV.VTASIPRO.GUARDAR_DATOS(pcod_empresa => :P_COD_EMPRESA);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    APEX_DEBUG.ERROR(''PR_SAVE PAG 56 ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(15194622270872503)
);
wwv_flow_imp.component_end;
end;
/
