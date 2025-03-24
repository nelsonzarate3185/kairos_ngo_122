prompt --application/pages/page_00523
begin
--   Manifest
--     PAGE: 00523
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
 p_id=>523
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Control de Estado de Solicitud No Conforme - CACESNC'
,p_alias=>'CONTROL-DE-ESTADO-DE-SOLICITUD-NO-CONFORME-CACESNC'
,p_step_title=>'Control de Estado de Solicitud No Conforme - CACESNC'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'AIBANEZ'
,p_last_upd_yyyymmddhh24miss=>'20230503104035'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(156526515401127225)
,p_plug_name=>'Main'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1170
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(156527266397127232)
,p_plug_name=>'Cabecera'
,p_parent_plug_id=>wwv_flow_imp.id(156526515401127225)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(156527486433127234)
,p_plug_name=>'R1'
,p_parent_plug_id=>wwv_flow_imp.id(156527266397127232)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(156527542413127235)
,p_plug_name=>'R2'
,p_parent_plug_id=>wwv_flow_imp.id(156527266397127232)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(156527684610127236)
,p_plug_name=>'R3'
,p_parent_plug_id=>wwv_flow_imp.id(156527266397127232)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(156527332590127233)
,p_plug_name=>'Report'
,p_parent_plug_id=>wwv_flow_imp.id(156526515401127225)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    SELECT COD_EMPRESA,	',
'       NRO_SOLICITUD,',
'       FEC_SOLICITUD,',
'       TIPO_COMPROBANTE,	',
'       SER_SOLICITUD,',
'       NRO_COMPROBANTE_REF,',
'       SER_COMPROBANTE_REF,	',
'       OPERACION,',
'       (select ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia)))',
'		  from cc_clientes c, personas p',
'		  where c.cod_empresa = CC.cod_empresa',
'		  AND c.cod_cliente = CC.COD_CLIENTE',
'		  and c.cod_persona = p.cod_persona) NOMBRE,',
'       ROWID,',
'       NULL INFO',
'FROM CA_CONFORMIDAD CC',
'WHERE :P523_AUX_REPORT = ''S''',
'    AND (ESTADO = :P523_ESTADO OR :P523_ESTADO = ''TODOS'')',
'    AND (DEPARTAMENTO = :P523_DEPARTAMENTO OR :P523_DEPARTAMENTO = ''T'')',
'    ',
'    AND (TIPO_COMPROBANTE IN (SELECT Column_value',
'                              FROM TABLE(UTILS.ARRAY_VARCHARS(:P523_TIPO,'':''))) OR :P523_TIPO IS NULL)',
'    AND (OPERACION IN (SELECT Column_value',
'                              FROM TABLE(UTILS.ARRAY_VARCHARS(:P523_OPERACIONES,'':''))) OR :P523_OPERACIONES IS NULL)',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P523_AUX_REPORT,P523_ESTADO,P523_DEPARTAMENTO,P523_TIPO,P523_OPERACIONES'
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
 p_id=>wwv_flow_imp.id(156528797398127247)
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
,p_internal_uid=>156528797398127247
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156528820188127248)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156528936463127249)
,p_db_column_name=>'NRO_SOLICITUD'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nro Solicitud'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156529075858127250)
,p_db_column_name=>'FEC_SOLICITUD'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156713263275491701)
,p_db_column_name=>'SER_SOLICITUD'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Serie '
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156713366602491702)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156713409387491703)
,p_db_column_name=>'SER_COMPROBANTE_REF'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156713503083491704)
,p_db_column_name=>'NOMBRE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Nombre Cliente/Prov'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156713609609491705)
,p_db_column_name=>'ROWID'
,p_display_order=>80
,p_column_identifier=>'H'
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
 p_id=>wwv_flow_imp.id(156713753178491706)
,p_db_column_name=>'INFO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P523_INFO'',''#ROWID#'');'
,p_column_linktext=>'<span class="fa fa-eye" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156715434934491723)
,p_db_column_name=>'TIPO_COMPROBANTE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Tipo '
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(156777946360121314)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(156715559129491724)
,p_db_column_name=>'OPERACION'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>unistr('Operaci\00F3n')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(156780423059104386)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(156721695359491352)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1567217'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'INFO:NRO_SOLICITUD:SER_SOLICITUD:TIPO_COMPROBANTE:FEC_SOLICITUD:NRO_COMPROBANTE_REF:SER_COMPROBANTE_REF:NOMBRE:OPERACION:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(156713938423491708)
,p_plug_name=>'Info'
,p_parent_plug_id=>wwv_flow_imp.id(156526515401127225)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(156714610674491715)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(156527266397127232)
,p_button_name=>'BT_LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-trash-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(156528617678127246)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(156527266397127232)
,p_button_name=>'BT_ACTUALIZAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Actualizar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-window-search'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137094507043548649)
,p_name=>'P523_OPERACIONES'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(156527542413127235)
,p_prompt=>'Operaciones'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Cambio;CMB,Nota de Credito;NCR,Traslado;TRA'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-top-sm'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137094614929548650)
,p_name=>'P523_TIPO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(156527684610127236)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Factura de Compra;FC,Orden de Trabajo;OT,Factura de Venta;FV'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-top-sm'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156526659924127226)
,p_name=>'P523_COD_EMPRESA'
,p_item_sequence=>990
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156526744018127227)
,p_name=>'P523_COD_SUCURSAL'
,p_item_sequence=>1030
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156526825234127228)
,p_name=>'P523_COD_USUARIO'
,p_item_sequence=>1020
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156526999140127229)
,p_name=>'P523_COD_MODULO'
,p_item_sequence=>1040
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156527062933127230)
,p_name=>'P523_NOM_EMPRESA'
,p_item_sequence=>1000
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156527150445127231)
,p_name=>'P523_NOM_SUCURSAL'
,p_item_sequence=>1010
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156527819104127238)
,p_name=>'P523_ESTADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(156527486433127234)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:CREADO;CREADO,RECHAZADO;RECHAZADO,AUTORIZADO;AUTORIZADO,FINALIZADO;FINALIZADO,ANULADO;ANULADO,PROCESADO;PROCESADO'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_lov_null_value=>'TODOS'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156527945200127239)
,p_name=>'P523_DEPARTAMENTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(156527486433127234)
,p_prompt=>'Departamento Responsable'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:ADMINISTRACION;ADMINISTRACION,COMERCIAL;COMERCIAL,DIRECTORIO;DIRECTORIO,LOGISTICA;LOGISTICA,MARKETING;MARKETING,POSTVENTA;POSTVENTA,VENTAS;VENTAS,OT;OT,SERVICIO TECNICO;SERVICIO_TECNICO,PROVEEDOR;PROVEEDOR,STA;STA,REPUESTOS;REPUESTOS,COBRANZAS'
||';COBRANZAS'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_lov_null_value=>'T'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156713892658491707)
,p_name=>'P523_INFO'
,p_item_sequence=>1160
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156714123804491710)
,p_name=>'P523_INFO_ESTADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(156713938423491708)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156714204360491711)
,p_name=>'P523_DETALLES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(156713938423491708)
,p_prompt=>'Detalles'
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
 p_id=>wwv_flow_imp.id(156714968838491718)
,p_name=>'P523_AUX_REPORT'
,p_item_sequence=>1050
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156715784570491726)
,p_name=>'P523_CREA_USER'
,p_item_sequence=>1060
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156715861540491727)
,p_name=>'P523_FECHA_CREACION'
,p_item_sequence=>1070
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156715964422491728)
,p_name=>'P523_AUTORIZA_USER'
,p_item_sequence=>1120
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156716038064491729)
,p_name=>'P523_FINALIZA_USER'
,p_item_sequence=>1130
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156716190681491730)
,p_name=>'P523_ANULA_USER'
,p_item_sequence=>1140
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156716269376491731)
,p_name=>'P523_FECHA_AUTORIZA'
,p_item_sequence=>1080
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156716348063491732)
,p_name=>'P523_FECHA_ANULA'
,p_item_sequence=>1090
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156716425822491733)
,p_name=>'P523_FECHA_RECHAZO'
,p_item_sequence=>1100
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156716513572491734)
,p_name=>'P523_RECHAZA_USER'
,p_item_sequence=>1150
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156716821423491737)
,p_name=>'P523_FECHA_FINALIZA'
,p_item_sequence=>1110
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(156714382529491712)
,p_name=>'DA_INFO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P523_INFO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156716792246491736)
,p_event_id=>wwv_flow_imp.id(156714382529491712)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P523_INFO IS NOT NULL THEN',
'    SELECT FECHA_AUTORIZA,	',
'           FECHA_CREACION,	',
'           FECHA_RECHAZO,	',
'           FECHA_FINALIZA,	',
'           RECHAZA_USER,	',
'           FINALIZA_USER,',
'           ANULA_USER,	',
'           CREA_USER',
'    INTO :P523_FECHA_AUTORIZA,',
'         :P523_FECHA_CREACION,',
'         :P523_FECHA_RECHAZO,',
'         :P523_FECHA_FINALIZA,',
'         :P523_RECHAZA_USER,',
'         :P523_FINALIZA_USER,',
'         :P523_ANULA_USER,',
'         :P523_CREA_USER',
'    FROM CA_CONFORMIDAD',
'    WHERE ROWID = :P523_INFO;',
'',
'    END IF ;',
'    EXCEPTION',
'         WHEN NO_DATA_FOUND THEN',
'               NULL;',
'        WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(''Error en valores pre-info: ''||SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P523_AUX_REPORT,P523_INFO'
,p_attribute_03=>'P523_CREA_USER,P523_FECHA_CREACION,P523_FECHA_AUTORIZA,P523_FECHA_ANULA,P523_FECHA_RECHAZO,P523_FECHA_FINALIZA,P523_AUTORIZA_USER,P523_FINALIZA_USER,P523_ANULA_USER,P523_RECHAZA_USER'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P523_AUX_REPORT'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156714452092491713)
,p_event_id=>wwv_flow_imp.id(156714382529491712)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT ESTADO',
'           ',
'    INTO :P523_INFO_ESTADO',
'    FROM CA_CONFORMIDAD',
'    WHERE ROWID = :P523_INFO;',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(''Error estado: ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P523_INFO'
,p_attribute_03=>'P523_INFO_ESTADO,P523_DETALLES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156716945300491738)
,p_event_id=>wwv_flow_imp.id(156714382529491712)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    IF :P523_ESTADO=''CREADO''  THEN ',
'        :P523_DETALLES:= UPPER(''Creado por ''||NVL(:P523_CREA_USER,''Usuario sin Definir'')||'' en fecha ''||to_date(:P523_FECHA_CREACION,''DD/MM/YYYY HH24:MI''));',
'    ELSIF :P523_ESTADO=''AUTORIZADO'' THEN ',
'        :P523_DETALLES:= UPPER(''Autorizado por ''||NVL(:P523_AUTORIZA_USER,''Usuario sin Definir'')||'' en fecha ''||to_date(:P523_FECHA_AUTORIZA,''DD/MM/YYYY HH24:MI''));',
'    ELSIF :P523_ESTADO=''FINALIZADO'' THEN ',
'        :P523_DETALLES:= UPPER(''Finalizado por ''||NVL(:P523_FINALIZA_USER,''Usuario sin Definir'')||'' en fecha ''||to_date(:P523_FECHA_FINALIZA,''DD/MM/YYYY HH24:MI''));',
'    ELSIF :P523_ESTADO=''PROCESADO'' THEN ',
'        :P523_DETALLES:= UPPER(''En Proceso'');',
'    ELSIF :P523_ESTADO=''ANULADO'' THEN ',
'        :P523_DETALLES:= UPPER(''Anulado por ''||NVL(:P523_ANULA_USER,''Usuario sin Definir'')||'' en fecha ''||to_date(:P523_FECHA_ANULA,''DD/MM/YYYY HH24:MI''));',
'    ELSIF :P523_ESTADO=''RECHAZADO''  THEN ',
'        :P523_DETALLES:= UPPER(''Rechazado por ''||NVL(:P523_RECHAZA_USER, ''Usuario sin Definir'')||'' en fecha ''||to_date(:P523_FECHA_RECHAZO,''DD/MM/YYYY HH24:MI''));',
'    ELSE',
'        :P523_DETALLES:= ''NO HAY DATOS.'';',
'    END IF ;',
'',
'   EXCEPTION',
'        WHEN OTHERS THEN',
'                APEX_DEBUG.ERROR(''Error asignando detalles ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P523_FECHA_CREACION,P523_FECHA_AUTORIZA,P523_FECHA_ANULA,P523_FECHA_RECHAZO,P523_FECHA_FINALIZA,P523_CREA_USER,P523_AUTORIZA_USER,P523_FINALIZA_USER,P523_ANULA_USER,P523_RECHAZA_USER,P523_ESTADO'
,p_attribute_03=>'P523_DETALLES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(156714751114491716)
,p_name=>'DA_LIMPIAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(156714610674491715)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156714872487491717)
,p_event_id=>wwv_flow_imp.id(156714751114491716)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P523_ESTADO,P523_DEPARTAMENTO,P523_INFO_ESTADO,P523_DETALLES'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(156715029471491719)
,p_name=>'DA_BUSCAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(156528617678127246)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156715146503491720)
,p_event_id=>wwv_flow_imp.id(156715029471491719)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P523_AUX_REPORT := ''S'';',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN ',
'            NULL;',
'END;'))
,p_attribute_03=>'P523_AUX_REPORT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(156715392361491722)
,p_event_id=>wwv_flow_imp.id(156715029471491719)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(156527332590127233)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(156716660751491735)
,p_name=>'DA_ACTUALIZAR'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P523_AUX_REPORT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(156715251316491721)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(156526407304127224)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P523_Cod_Usuario  := :P_Cod_Usuario;',
':P523_Cod_Empresa  := :P_Cod_Empresa;',
':P523_Nom_Empresa  := :P_Nom_Empresa;',
':P523_Cod_Sucursal := :P_Cod_Sucursal;',
':P523_Nom_Sucursal := :P_Nom_Sucursal;',
':P523_Cod_Modulo   := :P_Cod_Modulo;',
':P523_AUX_REPORT := ''N'';'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
