prompt --application/pages/page_00265
begin
--   Manifest
--     PAGE: 00265
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
 p_id=>265
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'SMREGCAP'
,p_alias=>'SMREGCAP'
,p_step_title=>'SMREGCAP'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JASIS'
,p_last_upd_yyyymmddhh24miss=>'20221221122808'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61741877988391435)
,p_plug_name=>'REGISTRO DE CAPACITACIONES'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61741990274391436)
,p_plug_name=>'ELEMENTOS'
,p_parent_plug_id=>wwv_flow_imp.id(61741877988391435)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_display_column=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64417937189474211)
,p_plug_name=>'REPORTE_SMRREGCAP'
,p_parent_plug_id=>wwv_flow_imp.id(61741877988391435)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ca.fecha_capacitacion,',
'       ca.tipo_capacitacion,',
'       ca.tipo_participante,',
'       nvl(pe.nomb_fantasia,pe.nombre)nombre,',
'       ca.suc_cliente suc,',
'       ca.cod_art_corto,',
'       ar.descripcion producto,',
'       ma.descripcion marca,',
'       ca.cant_capacitados,',
'       ca.observacion',
'from   sm_capacitacion_mkt ca,',
'       personas pe,',
'       st_articulos ar,',
'       st_marcas ma',
'where :P265_AUX_CONTROL_REPORTE IS NOT NULL',
'AND ca.cod_persona=pe.cod_persona',
'and  ca.cod_empresa=ar.cod_empresa',
'and   ca.cod_art_corto=ar.cod_art_corto',
'and   ar.cod_marca=ma.cod_marca',
'and ( ca.cod_persona = :P265_COD_PERSONA or :P265_COD_PERSONA is null)',
'and ( ca.tipo_participante = :P265_TIPO_CAPACITACION or :P265_TIPO_CAPACITACION is null)',
'and ( ca.tipo_capacitacion = :P265_TIPO_PARTICIPANTE or :P265_TIPO_PARTICIPANTE is null)',
'and ( ca.fecha_capacitacion >= TO_DATE(:P265_FEC_INICIAL,''DD/MM/YYYY'') or :P265_FEC_INICIAL is null)',
'and ( ca.fecha_capacitacion <= TO_DATE(:P265_FEC_FINAL,''DD/MM/YYYY'') or :P265_FEC_FINAL is null)',
'and ( ca.cod_art_corto=:P265_COD_ART_CORTO  or :P265_COD_ART_CORTO  is null )',
';',
' '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P265_AUX_CONTROL_REPORTE,P265_TIPO_CAPACITACION,P265_TIPO_PARTICIPANTE,P265_COD_PERSONA,P265_COD_ART_CORTO,P265_FEC_INICIAL,P265_FEC_FINAL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE_SMRREGCAP'
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
 p_id=>wwv_flow_imp.id(64418028735474212)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'NO SE ENCONTRARON REGISTROS'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>64418028735474212
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64418153941474213)
,p_db_column_name=>'FECHA_CAPACITACION'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64418262943474214)
,p_db_column_name=>'TIPO_CAPACITACION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Evento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64418348632474215)
,p_db_column_name=>'TIPO_PARTICIPANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Participante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64418429430474216)
,p_db_column_name=>'NOMBRE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64418580937474217)
,p_db_column_name=>'SUC'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Suc'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64418685649474218)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64418796326474219)
,p_db_column_name=>'PRODUCTO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Producto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64418865343474220)
,p_db_column_name=>'MARCA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64418946575474221)
,p_db_column_name=>'CANT_CAPACITADOS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cant Capacitados'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64419071129474222)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(64445354443554716)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'644454'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FECHA_CAPACITACION:TIPO_CAPACITACION:TIPO_PARTICIPANTE:NOMBRE:SUC:COD_ART_CORTO:PRODUCTO:MARCA:CANT_CAPACITADOS:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(63662976597742970)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(40070279985263645)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(40189153869263678)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(63984959361406507)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(63984410409406502)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(61741990274391436)
,p_button_name=>'BT_LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'LIMPIAR'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61743190975391448)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(61741990274391436)
,p_button_name=>'BT_EJECUTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61742088360391437)
,p_name=>'P265_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(61741990274391436)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61742199723391438)
,p_name=>'P265_USUARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(61741990274391436)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61742229834391439)
,p_name=>'P265_TIPO_CAPACITACION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(61741990274391436)
,p_prompt=>'Tipo Evento'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:CAPAC. DE PRODUCTOS; CAPAC. DE PRODUCTOS,CAPAC. T\00C9CNICAS Y MOTIVACION;CAPAC. T\00C9CNICAS Y MOTIVACION,CONVENCION;CONVENCION,UBUNTU;UBUNTU,VALORES NGO;VALORES NGO')
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- seleccione -'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61742321917391440)
,p_name=>'P265_TIPO_PARTICIPANTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(61741990274391436)
,p_prompt=>'Tipo Participante'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:VENDEDOR;VENDEDOR,PROMOTOR;PROMOTOR,SERV.TEC.;SERV.TEC.,DISTRIB/CLIENTE;DISTRIB/CLIENTE,STAFF;STAFF'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61742410697391441)
,p_name=>'P265_COD_PERSONA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(61741990274391436)
,p_prompt=>'Nombre'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PERSONAS_SMREGCAP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia))) nombre , p.cod_persona',
'  from  personas p ',
'',
'  where p.cod_persona in ( select distinct cod_persona',
'                             from fv_vendedores',
'                             where cod_empresa= :P_COD_EMPRESA',
'                             and estado =''A''',
'                             and :P_TIPO_PARTICIPANTE=''VENDEDOR'')',
'  OR ',
' ',
' p.cod_persona in (  ',
'                      SELECT DISTINCT EE.cod_persona',
'                      FROM FV_PROMOTORAS PP,',
'                           RH_EMPLEADOS EE',
'                      WHERE PP.COD_EMPRESA= :P_COD_EMPRESA',
'                      AND   PP.COD_EMPRESA=EE.COD_EMPRESA',
'                      AND   PP.COD_EMPLEADO=EE.COD_EMPLEADO',
'                      AND   EE.ACTIVO=''S''',
'                   and :P_TIPO_PARTICIPANTE=''PROMOTOR'')',
'                   ',
'                   ',
'',
'  OR ',
' ',
' p.cod_persona in (   SELECT DISTINCT PP.COD_PERSONA',
'                         FROM CM_PROVEEDORES  PP',
'                         WHERE PP.COD_EMPRESA=:P_COD_EMPRESA',
'                         AND   PP.ESTADO=''A''',
'                         and :P_TIPO_PARTICIPANTE=''SERV.TEC.'') ',
' ',
'  OR ',
' ',
' p.cod_persona in (    SELECT DISTINCT CC.COD_PERSONA',
'                       FROM CC_CLIENTES  CC',
'                       WHERE CC.COD_EMPRESA=:P_COD_EMPRESA',
'                       AND   CC.ESTADO=''A''',
'                         and :P_TIPO_PARTICIPANTE=''DISTRIB/CLIENTE'')  ',
'',
' OR ( p.cod_persona in (''6101'',''196590'') AND :P_TIPO_PARTICIPANTE=''STAFF'')',
'',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione -'
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
 p_id=>wwv_flow_imp.id(61742509582391442)
,p_name=>'P265_NOM_PERSONA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(61741990274391436)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61742665144391443)
,p_name=>'P265_COD_ART_CORTO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(61741990274391436)
,p_prompt=>'Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS_SMREGCAP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion,',
'    cod_articulo, ',
'    cod_origen_art,',
'    cod_art_corto ',
' from st_articulos ',
' where cod_empresa = :P_COD_EMPRESA ',
'and ( estado is null or estado in (''A'',''S'') ) ',
'order by descripcion'))
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
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61742728092391444)
,p_name=>'P265_DESC_ARTICULO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(61741990274391436)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61742896035391445)
,p_name=>'P265_FEC_INICIAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(61741990274391436)
,p_prompt=>'Fecha Inicial'
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
 p_id=>wwv_flow_imp.id(61742970079391446)
,p_name=>'P265_FEC_FINAL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(61741990274391436)
,p_prompt=>'Fecha Final'
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
 p_id=>wwv_flow_imp.id(61743007528391447)
,p_name=>'P265_RADIO_FECHA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(61741990274391436)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:Dia;1,Mes;2,A\00F1o;3,General;4')
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'5'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63984346989406501)
,p_name=>'P_TIPO_PARTICIPANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(61741877988391435)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63985016643406508)
,p_name=>'P265_COD_USUARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(63984959361406507)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63985187837406509)
,p_name=>'P265_NOM_EMPRESA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(63984959361406507)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63985248771406510)
,p_name=>'P265_COD_SUCURSAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(63984959361406507)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63985302552406511)
,p_name=>'P265_NOM_SUCURSAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(63984959361406507)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63985497632406512)
,p_name=>'P265_COD_MODULO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(63984959361406507)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64419469243474226)
,p_name=>'P265_AUX_CONTROL_REPORTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(63984959361406507)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64420166878474233)
,p_name=>'P265_AUX_MSJ_CONTROL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(63984959361406507)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(61743243206391449)
,p_name=>'DA_CAMBIO_TIPO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P265_TIPO_PARTICIPANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61743370993391450)
,p_event_id=>wwv_flow_imp.id(61743243206391449)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P_TIPO_PARTICIPANTE := :P265_TIPO_PARTICIPANTE;',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR(''ERROR EN SETEO DE ELEMENTO TIPO PARTICIPANTE'');',
'END;',
''))
,p_attribute_02=>'P265_TIPO_PARTICIPANTE'
,p_attribute_03=>'P_TIPO_PARTICIPANTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63985775852406515)
,p_event_id=>wwv_flow_imp.id(61743243206391449)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P265_COD_PERSONA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(63984577507406503)
,p_name=>'DA_LIMPIAR_PARAMETROS'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(63984410409406502)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63984643328406504)
,p_event_id=>wwv_flow_imp.id(63984577507406503)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P_TIPO_PARTICIPANTE,P265_TIPO_CAPACITACION,P265_TIPO_PARTICIPANTE,P265_COD_PERSONA,P265_COD_ART_CORTO,P265_FEC_INICIAL,P265_FEC_FINAL,P265_RADIO_FECHA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(63985522621406513)
,p_name=>'DA_CAMBIO_RADIO'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P265_RADIO_FECHA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63985628119406514)
,p_event_id=>wwv_flow_imp.id(63985522621406513)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'     if :P265_RADIO_FECHA = 1 then',
'          :P265_FEC_INICIAL := SYSDATE ;',
'          :P265_FEC_FINAL := SYSDATE ;',
'     end if;',
'     if :P265_RADIO_FECHA = 2 then',
'          :P265_FEC_INICIAL := to_date(''01/''||substr(to_char(SYSDATE,''dd/mm/yyyy''),4,10),''dd/mm/yyyy'') ;',
'          :P265_FEC_FINAL := last_day(add_months(SYSDATE,0)) ;',
'     end if;',
'     if :P265_RADIO_FECHA = 3 then',
'          :P265_FEC_INICIAL := to_date(''01/01/''||substr(to_char(SYSDATE,''dd/mm/yyyy''),7,10),''dd/mm/yyyy'') ;',
'          :P265_FEC_FINAL    := to_date(''31/12/''||substr(to_char(SYSDATE,''dd/mm/yyyy''),7,10),''dd/mm/yyyy'') ;',
'     end if;',
'     if :P265_RADIO_FECHA = 4 then',
'          :P265_FEC_INICIAL := null ;',
'          :P265_FEC_FINAL    := null ;',
'     end if;',
'   EXCEPTION',
'   WHEN OTHERS THEN',
'   APEX_DEBUG.ERROR(''ERROR EN CAMBIO FECHA'');',
'END;'))
,p_attribute_02=>'P265_RADIO_FECHA'
,p_attribute_03=>'P265_FEC_INICIAL,P265_FEC_FINAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64419580077474227)
,p_name=>'DA_EJECUTAR_REPORTE'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(61743190975391448)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64419661833474228)
,p_event_id=>wwv_flow_imp.id(64419580077474227)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF TO_DATE(:P265_FEC_INICIAL, ''dd/mm/yyyy'') > TO_DATE(:P265_FEC_FINAL, ''dd/mm/yyyy'') THEN',
'            :P265_AUX_MSJ_CONTROL := ''LA FECHA INICIAL NO PUEDE SER MAYOR A LA FECHA FINAL''; ',
'    ELSE ',
'',
'        BEGIN',
'            :P265_AUX_CONTROL_REPORTE := ''EJECUTAR'';',
'            :P265_AUX_MSJ_CONTROL := NULL; ',
'        END;',
'END IF;'))
,p_attribute_02=>'P265_FEC_INICIAL,P265_FEC_FINAL'
,p_attribute_03=>'P265_AUX_MSJ_CONTROL ,P265_AUX_CONTROL_REPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64420254463474234)
,p_event_id=>wwv_flow_imp.id(64419580077474227)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P265_AUX_MSJ_CONTROL.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P265_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64419776982474229)
,p_event_id=>wwv_flow_imp.id(64419580077474227)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(64417937189474211)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P265_AUX_CONTROL_REPORTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64420023790474232)
,p_event_id=>wwv_flow_imp.id(64419580077474227)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(64417937189474211)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P265_AUX_CONTROL_REPORTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64419830665474230)
,p_name=>'DA_OCULTAR_REGION'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64419925321474231)
,p_event_id=>wwv_flow_imp.id(64419830665474230)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(64417937189474211)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(63984752988406505)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(63984871256406506)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'     ',
'   :P265_COD_USUARIO := NVL(:P_COD_USUARIO, USER);',
'   :P265_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'');',
'   :P265_NOM_EMPRESA := NVL(:P_NOM_EMPRESA, NULL);',
'   :P265_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,NULL);',
'   :P265_NOM_SUCURSAL := NVL(:P_NOM_SUCURSAL,NULL);',
'   :P265_AUX_CONTROL_REPORTE := null;',
'   :P265_AUX_MSJ_CONTROL := null;',
'  EXCEPTION',
'  WHEN OTHERS THEN',
'  APEX_DEBUG.ERROR(''ERROR EN PR_INIT'');',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
