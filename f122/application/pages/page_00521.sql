prompt --application/pages/page_00521
begin
--   Manifest
--     PAGE: 00521
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
 p_id=>521
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>' Motivo detalle SNC - CAMDESNC  '
,p_step_title=>' Motivo detalle SNC - CAMDESNC  '
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240702130035'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(156479029366436537)
,p_plug_name=>'Main'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1090
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(156476416625436511)
,p_plug_name=>'Report'
,p_parent_plug_id=>wwv_flow_imp.id(156479029366436537)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_EMPRESA,	',
'        DESCRIPCION,	',
'        COD_MOTIVO,	',
'        RESPONSABLE,	',
'        APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'                           p_value       => ROWID,',
'                           p_attributes  => (case ESTADO',
'                                                 when ''S'' then ''checked ''',
'                                                 else null',
'                                                 end ) ||'' disabled'') as ESTADO,	',
'        FECHA_ALTA,	',
'        CODIGO_USUARIO,	',
'        TIPO_COMPROBANTE,	',
'        PROBLEMA_CABECERA,',
'       (select NVL( C.descripcion, ''Sin Datos'')',
'       from problemas_conformidad C',
'       where C.cod_empresa   =  P.cod_empresa',
'       and C.cod_motivo = P.PROBLEMA_CABECERA )DESCRIPCION_CABECERA,',
'        ROWID,',
'        NULL EDITAR,',
'        NULL ELIMINAR',
'FROM ca_problemas_conformidad P'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Report'
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
 p_id=>wwv_flow_imp.id(156476559324436512)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AIBANEZ'
,p_internal_uid=>156476559324436512
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156476643859436513)
,p_db_column_name=>'COD_MOTIVO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('C\00F3digo')
,p_column_link=>'javascript:$s(''P521_INFO'',''#ROWID#'');'
,p_column_linktext=>'#COD_MOTIVO#'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156477069003436517)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156477243774436519)
,p_db_column_name=>'ROWID'
,p_display_order=>70
,p_column_identifier=>'G'
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156477316022436520)
,p_db_column_name=>'EDITAR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P521_EDITAR'',''#ROWID#'');'
,p_column_linktext=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'    RETURN TRUE;',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); --1 guardar, 2 editar, 3 eliminar',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156477490109436521)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P521_ELIMINAR'',''#ROWID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-trash-o"></span>'
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
'                                                         pdm_boto     => 3); --1 guardar, 2 editar, 3 eliminar',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156477595499436522)
,p_db_column_name=>'RESPONSABLE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Responsable'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156477673574436523)
,p_db_column_name=>'ESTADO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156477796618436524)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Fecha Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156477844258436525)
,p_db_column_name=>'CODIGO_USUARIO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Codigo Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156477974371436526)
,p_db_column_name=>'TIPO_COMPROBANTE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Tipo Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156478091431436527)
,p_db_column_name=>'PROBLEMA_CABECERA'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'M. Cabecera'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156478118116436528)
,p_db_column_name=>'DESCRIPCION_CABECERA'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>unistr('Descripci\00F3n ')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156478394106436530)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>170
,p_column_identifier=>'R'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(156491680637299460)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1564917'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDITAR:COD_MOTIVO:DESCRIPCION:RESPONSABLE:PROBLEMA_CABECERA:DESCRIPCION_CABECERA:ESTADO:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(156478963258436536)
,p_plug_name=>'Info'
,p_parent_plug_id=>wwv_flow_imp.id(156479029366436537)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(156479738863436544)
,p_plug_name=>'Editar/Eliminar'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1100
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(156480388570436550)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(156479738863436544)
,p_button_name=>'BT_CERRAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(156524377909127203)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(156479738863436544)
,p_button_name=>'BT_GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(156525067128127210)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(156476416625436511)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
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
'                                                         pdm_boto     => 1); --1 guardar, 2 editar, 3 eliminar',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_icon_css_classes=>'fa-file-new'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156475547695436502)
,p_name=>'P521_COD_USUARIO'
,p_item_sequence=>990
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156475683048436503)
,p_name=>'P521_COD_EMPRESA'
,p_item_sequence=>1000
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156475728738436504)
,p_name=>'P521_COD_SUCURSAL'
,p_item_sequence=>1020
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156475817869436505)
,p_name=>'P521_COD_MODULO'
,p_item_sequence=>1040
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156475962782436506)
,p_name=>'P521_NOM_EMPRESA'
,p_item_sequence=>1010
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156476094023436507)
,p_name=>'P521_NOM_SUCURSAL'
,p_item_sequence=>1030
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156476152673436508)
,p_name=>'P521_EDITAR'
,p_item_sequence=>1050
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156476264607436509)
,p_name=>'P521_ELIMINAR'
,p_item_sequence=>1070
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156479127014436538)
,p_name=>'P521_FECHA_ALTA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(156478963258436536)
,p_prompt=>'Fecha de Alta'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156479249766436539)
,p_name=>'P521_CODIGO_USUARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(156478963258436536)
,p_prompt=>'Usuario'
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
 p_id=>wwv_flow_imp.id(156479405318436541)
,p_name=>'P521_INFO'
,p_item_sequence=>1060
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156479850242436545)
,p_name=>'P521_DEPARTAMENTO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(156479738863436544)
,p_prompt=>'Departamento'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:ADMINISTRACION;ADMINISTRACION,COMERCIAL;COMERCIAL,DIRECTORIO;DIRECTORIO,LOGISTICA;LOGISTICA,MARKETING;MARKETING,POSTVENTA;POSTVENTA,COMPRAS;COMPRAS,FACTURACION;FACTURACION,COBRANZAS;COBRANZAS,DISTRIBUCION;DISTRIBUCION,REPUESTOS;REPUESTOS,SERVI'
||'CIO TECNICO;SERVICIO TECNICO'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156480027212436547)
,p_name=>'P521_PROBLEMA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(156479738863436544)
,p_prompt=>'Problema'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct c.cod_motivo||'' - ''||NVL( C.descripcion, ''Sin Datos'') D,',
'                c.cod_motivo R',
'from problemas_conformidad C',
'where C.cod_empresa   =  ''1''',
'and c.estado=''S'''))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(156480171065436548)
,p_name=>'P521_ESTADO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(156479738863436544)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:ACTIVO;S,NO ACTIVO;N'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156480243081436549)
,p_name=>'P521_MOTIVO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(156479738863436544)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>650
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156525172638127211)
,p_name=>'P521_COD_MOTIVO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(156479738863436544)
,p_prompt=>unistr('C\00F3digo')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156525816011127218)
,p_name=>'P521_ERR'
,p_item_sequence=>1080
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(156478540298436532)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P521_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156478713936436534)
,p_event_id=>wwv_flow_imp.id(156478540298436532)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el motivo? ')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-trash-o'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156478670973436533)
,p_event_id=>wwv_flow_imp.id(156478540298436532)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    DELETE CA_PROBLEMAS_CONFORMIDAD',
'    WHERE ROWID = :P521_ELIMINAR;',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR(''Error al eliminar: ''||SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P521_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156478842007436535)
,p_event_id=>wwv_flow_imp.id(156478540298436532)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(156476416625436511)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(156479559485436542)
,p_name=>'DA_INFO'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P521_INFO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156479634008436543)
,p_event_id=>wwv_flow_imp.id(156479559485436542)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT FECHA_ALTA,',
'           CODIGO_USUARIO',
'    INTO :P521_FECHA_ALTA,',
'         :P521_CODIGO_USUARIO',
'    FROM CA_PROBLEMAS_CONFORMIDAD',
'    WHERE ROWID = :P521_INFO;',
'',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'                NULL;',
'        WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(''Error al asignar valores: ''||SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P521_INFO'
,p_attribute_03=>'P521_FECHA_ALTA,P521_CODIGO_USUARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(156524105594127201)
,p_name=>'DA_CERRAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(156480388570436550)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156524219332127202)
,p_event_id=>wwv_flow_imp.id(156524105594127201)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(156479738863436544)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(156524480171127204)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(156524377909127203)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156525708046127217)
,p_event_id=>wwv_flow_imp.id(156524480171127204)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'',
'V_ESTADO VARCHAR2(1);',
'',
'',
'BEGIN',
'',
'    :P521_ERR := null;',
'  IF :P521_EDITAR IS NULL THEN',
'        V_ESTADO := ''S'';',
'            INSERT INTO CA_PROBLEMAS_CONFORMIDAD(',
'                        COD_EMPRESA,',
'                        COD_MOTIVO,',
'                        DESCRIPCION,',
'                        RESPONSABLE,',
'                        ESTADO,',
'                        FECHA_ALTA,',
'                        CODIGO_USUARIO,',
'                        PROBLEMA_CABECERA',
'            )VALUES (',
'                    :P521_COD_EMPRESA,',
'                    :P521_COD_MOTIVO,',
'                    :P521_MOTIVO,',
'                    :P521_DEPARTAMENTO,',
'                    V_ESTADO,',
'                    SYSDATE,',
'                     NVL(:P_COD_USUARIO,USER),',
'                    :P521_PROBLEMA',
'            );',
'        ELSE',
'            UPDATE CA_PROBLEMAS_CONFORMIDAD',
'            SET',
'                DESCRIPCION = :P521_MOTIVO,',
'                RESPONSABLE = :P521_DEPARTAMENTO,',
'                ESTADO = :P521_ESTADO,',
'                FECHA_ALTA = SYSDATE,',
'                CODIGO_USUARIO = NVL(:P_COD_USUARIO,USER),',
'                PROBLEMA_CABECERA = :P521_PROBLEMA',
'            WHERE ROWID = :P521_EDITAR;',
'         --   APEX_DEBUG.ERROR(''Problema: '' ||:P521_PROBLEMA);',
'    END IF; ',
'',
'',
'    EXCEPTION',
'         WHEN NO_DATA_FOUND THEN',
'                    :P521_ERR := ''No se ha encontrado data'';',
'         WHEN OTHERS THEN',
'                    APEX_DEBUG.ERROR(''Error durante el guardado: ''||SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P521_EDITAR,P521_COD_MOTIVO,P521_MOTIVO,P521_PROBLEMA,P521_DEPARTAMENTO,P521_ESTADO,P521_COD_USUARIO,P521_COD_EMPRESA,P521_ESTADO,P_COD_USUARIO'
,p_attribute_03=>'P521_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156526181466127221)
,p_event_id=>wwv_flow_imp.id(156524480171127204)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(156476416625436511)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P521_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156524516669127205)
,p_event_id=>wwv_flow_imp.id(156524480171127204)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(156479738863436544)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P521_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(156524763628127207)
,p_name=>'DA_EDITAR'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P521_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156525555982127215)
,p_event_id=>wwv_flow_imp.id(156524763628127207)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P521_ESTADO'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P521_EDITAR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156524996786127209)
,p_event_id=>wwv_flow_imp.id(156524763628127207)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT COD_MOTIVO,',
'           DESCRIPCION ,',
'           RESPONSABLE,',
'           PROBLEMA_CABECERA/*||'' - ''||(select C.descripcion',
'                                      from problemas_conformidad C',
'                                      where C.cod_empresa   =  P.cod_empresa',
'                                      and C.cod_motivo = P.PROBLEMA_CABECERA)DESCRIPCION_CABECERA,*/,',
'           ESTADO',
'    INTO :P521_COD_MOTIVO,',
'         :P521_MOTIVO,',
'         :P521_DEPARTAMENTO,',
'         :P521_PROBLEMA,',
'         :P521_ESTADO',
'    FROM CA_PROBLEMAS_CONFORMIDAD p',
'    WHERE ROWID = :P521_EDITAR;',
'    ',
'    EXCEPTION',
'         WHEN NO_DATA_FOUND THEN ',
'                NULL ;',
'        WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(''Error en editar: ''||SQLERRM);      ',
'',
'END;'))
,p_attribute_02=>'P521_EDITAR'
,p_attribute_03=>'P521_MOTIVO,P521_DEPARTAMENTO,P521_PROBLEMA,P521_ESTADO,P521_COD_MOTIVO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156524890491127208)
,p_event_id=>wwv_flow_imp.id(156524763628127207)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(156479738863436544)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(156525269335127212)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(156525067128127210)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156525451461127214)
,p_event_id=>wwv_flow_imp.id(156525269335127212)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P521_EDITAR := null;',
':P521_COD_MOTIVO := null;',
':P521_MOTIVO := null;',
':P521_PROBLEMA := null;',
':P521_DEPARTAMENTO:= null;',
':P521_ESTADO := null;'))
,p_attribute_03=>'P521_ESTADO,P521_MOTIVO,P521_COD_MOTIVO,P521_DEPARTAMENTO,P521_EDITAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156526366774127223)
,p_event_id=>wwv_flow_imp.id(156525269335127212)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P521_EDITAR IS NULL THEN',
'    :P521_COD_MOTIVO := CAMDESNC.FN_COD_MOTIVO;',
'',
'    END IF;',
'',
'    EXCEPTION',
'          WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(''ERROR ASIGNANDO CODIGO: ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P521_EDITAR'
,p_attribute_03=>'P521_COD_MOTIVO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156525636737127216)
,p_event_id=>wwv_flow_imp.id(156525269335127212)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P521_ESTADO'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P521_EDITAR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156525324079127213)
,p_event_id=>wwv_flow_imp.id(156525269335127212)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(156479738863436544)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(156525964477127219)
,p_name=>'DA_ERR'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P521_ERR'
,p_condition_element=>'P521_ERR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156526086926127220)
,p_event_id=>wwv_flow_imp.id(156525964477127219)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P521_ERR.'
,p_attribute_03=>'information'
,p_attribute_04=>'fa-info-square-o'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(156475410609436501)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':p521_Cod_Usuario  := :P_Cod_Usuario;',
':p521_Cod_Empresa  := :P_Cod_Empresa;',
':p521_Nom_Empresa  := :P_Nom_Empresa;',
':p521_Cod_Sucursal := :P_Cod_Sucursal;',
':p521_Nom_Sucursal := :P_Nom_Sucursal;',
':p521_Cod_Modulo   := :P_Cod_Modulo;',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
