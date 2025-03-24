prompt --application/pages/page_00436
begin
--   Manifest
--     PAGE: 00436
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
 p_id=>436
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Ciudades - BSCIUDAD'
,p_alias=>'BSCIUDAD'
,p_step_title=>'Ciudades - BSCIUDAD'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'FCARDOZO'
,p_last_upd_yyyymmddhh24miss=>'20230322105328'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(131555646095658638)
,p_plug_name=>'Crear/Editar'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(131712548057077725)
,p_plug_name=>'Ciudades'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(128371228994470950)
,p_plug_name=>'REPORT'
,p_parent_plug_id=>wwv_flow_imp.id(131712548057077725)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>990
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.COD_PAIS,',
'       c.COD_PAIS DescripcionPais,',
'       c.COD_PROVINCIA,',
'       (  select p.descripcion',
'			from provincias p',
'			 where p.cod_pais      = c.cod_pais',
'			  and p.cod_provincia = c.cod_provincia) DescripcionProvincia,',
'       c.COD_CIUDAD,',
'       c.DESCRIPCION,',
'       c.ABREVIATURA,',
'       c.VALOR,',
'       c.FECHA,',
'       c.COD_USUARIO,',
'       c.ZONA,',
'       c.ZONA_ENTREGA,',
'       c.DEPOSITO_ENTREGA,',
'       c.COD_DEPARTAMENTO_SET,',
'       c.COD_DISTRITO_SET,',
'       c.COD_LOCALIDAD_SET,',
'       NULL EDITAR,',
'       NULL ELIMINAR,',
'       ROWID',
'  from CIUDADES c',
'  order by lpad(ltrim(rtrim(c.cod_pais)),5,'' ''), lpad(ltrim(rtrim(c.cod_provincia)),5,'' ''), lpad(ltrim(rtrim(c.cod_ciudad)),5,'' '');'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORT'
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
 p_id=>wwv_flow_imp.id(131552036507658602)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'FCARDOZO'
,p_internal_uid=>131552036507658602
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131552152863658603)
,p_db_column_name=>'COD_PAIS'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('Pa\00EDs')
,p_column_link=>'javascript:$s(''P436_AUX_ROW_ID'',''#ROWID#'');'
,p_column_linktext=>'#COD_PAIS#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131552259197658604)
,p_db_column_name=>'COD_PROVINCIA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Prov.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131552333029658605)
,p_db_column_name=>'COD_CIUDAD'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ciudad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131552464396658606)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131552505261658607)
,p_db_column_name=>'ABREVIATURA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Abrev.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131552636471658608)
,p_db_column_name=>'VALOR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Valor'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131552774006658609)
,p_db_column_name=>'FECHA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131552888686658610)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131552978017658611)
,p_db_column_name=>'ZONA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Zona'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131553068458658612)
,p_db_column_name=>'ZONA_ENTREGA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Zona Entrega'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131553150110658613)
,p_db_column_name=>'DEPOSITO_ENTREGA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Deposito Entrega'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131553283791658614)
,p_db_column_name=>'COD_DEPARTAMENTO_SET'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Dpto. SET'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131553383370658615)
,p_db_column_name=>'COD_DISTRITO_SET'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Ciu. SET'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131553407672658616)
,p_db_column_name=>'COD_LOCALIDAD_SET'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Cod Localidad Set'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131554803069658630)
,p_db_column_name=>'DESCRIPCIONPROVINCIA'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Desc. provincia'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(131615351492514947)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131554968341658631)
,p_db_column_name=>'EDITAR'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P436_EDITAR'',''#ROWID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'/*IF :APP_USER = ''ETRINIDAD'' THEN',
'   RETURN TRUE;',
'   ELSE*/',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); ',
'',
'    IF VCONTROL = 0 or :P9_MODIFICABLE = ''-1'' THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;    ',
'   --END IF;                                                 ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131555075544658632)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P436_ELIMINAR'',''#ROWID#'');'
,p_column_linktext=>'<span class="fa fa-trash-o" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'/*IF :APP_USER = ''ETRINIDAD'' THEN',
'   RETURN TRUE;',
'   ELSE*/',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 1); ',
'',
'    IF VCONTROL = 0 or :P9_MODIFICABLE = ''-1'' THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;    ',
'   --END IF;                                                 ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131556511759658647)
,p_db_column_name=>'ROWID'
,p_display_order=>190
,p_column_identifier=>'S'
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
 p_id=>wwv_flow_imp.id(131712428234077724)
,p_db_column_name=>'DESCRIPCIONPAIS'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>unistr('Desc. pa\00EDs')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(131622721549449667)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(131592501909569634)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1315926'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDITAR:COD_PAIS:COD_PROVINCIA:DESCRIPCIONPROVINCIA:COD_CIUDAD:DESCRIPCION:ABREVIATURA:COD_DEPARTAMENTO_SET:COD_DISTRITO_SET:ELIMINAR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(131551942515658601)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(131712548057077725)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1000
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(131711396018077713)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(131555646095658638)
,p_button_name=>'Cancelar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(131710497734077704)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(131555646095658638)
,p_button_name=>'Guardar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(131556611725658648)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(128371228994470950)
,p_button_name=>'BT_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'/*IF :APP_USER = ''ETRINIDAD'' THEN',
'   RETURN TRUE;',
'   ELSE*/',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 1); ',
'',
'    IF VCONTROL = 0 or :P9_MODIFICABLE = ''-1'' THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;    ',
'   --END IF;                                                 ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131553504523658617)
,p_name=>'P436_DERECHOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(131551942515658601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131553603225658618)
,p_name=>'P436_COD_MODULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(131551942515658601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131553780995658619)
,p_name=>'P436_NOM_MODULO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(131551942515658601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131553827578658620)
,p_name=>'P436_NOM_SUCURSAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(131551942515658601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131553956287658621)
,p_name=>'P436_COD_FORMA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(131551942515658601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131554001090658622)
,p_name=>'P436_NOM_EMPRESA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(131551942515658601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131554111463658623)
,p_name=>'P436_COD_SUCURSAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(131551942515658601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131554238325658624)
,p_name=>'P436_COD_USUARIO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(131551942515658601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131554387591658625)
,p_name=>'P436_COD_IDIOMA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(131551942515658601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131554468586658626)
,p_name=>'P436_CODSISMENU'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(131551942515658601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131554593208658627)
,p_name=>'P436_DESC_DEPARTAMENTO_SET'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(131551942515658601)
,p_prompt=>'Dpto. SET'
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
 p_id=>wwv_flow_imp.id(131554607213658628)
,p_name=>'P436_DESC_DISTRITO_SET'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(131551942515658601)
,p_prompt=>'Ciudad SET'
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
 p_id=>wwv_flow_imp.id(131555101913658633)
,p_name=>'P436_COD_PROVINCIA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(131555646095658638)
,p_prompt=>'Prov.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PROVINCIAS_BSCIUDAD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion D, cod_provincia R',
'from provincias ',
'where cod_pais = :P436_COD_PAIS',
'order by descripcion'))
,p_lov_cascade_parent_items=>'P436_COD_PAIS'
,p_ajax_items_to_submit=>'P436_COD_PAIS'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(131555253903658634)
,p_name=>'P436_EDITAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(128371228994470950)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131555535667658637)
,p_name=>'P436_ELIMINAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(128371228994470950)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131555751760658639)
,p_name=>'P436_COD_PAIS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(131555646095658638)
,p_prompt=>unistr('Pa\00EDs')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PAISES_BSCIUDAD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion D, cod_pais R',
'from paises ',
'order by descripcion'))
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
 p_id=>wwv_flow_imp.id(131555841882658640)
,p_name=>'P436_COD_CIUDAD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(131555646095658638)
,p_prompt=>'Nro. Ciudad'
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
 p_id=>wwv_flow_imp.id(131555971345658641)
,p_name=>'P436_DESCRIPCION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(131555646095658638)
,p_prompt=>'Descripcion'
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
 p_id=>wwv_flow_imp.id(131556005814658642)
,p_name=>'P436_ABREVIACION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(131555646095658638)
,p_prompt=>unistr('Abreviaci\00F3n')
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
 p_id=>wwv_flow_imp.id(131556139338658643)
,p_name=>'P436_COD_DEPARTAMENTO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(131555646095658638)
,p_prompt=>'Dpto. SET'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_departamento',
'from bs_departamentos_set',
'order by descripcion asc'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131556201528658644)
,p_name=>'P436_COD_DISTRITO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(131555646095658638)
,p_prompt=>'Ciu. SET'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_DEPARTAMENTO_BSCIUDAD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion D, cod_distrito R',
'from bs_distritos_set',
'where cod_departamento = :P436_cod_departamento',
'order by descripcion asc'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P436_COD_DEPARTAMENTO'
,p_ajax_items_to_submit=>'P436_COD_DEPARTAMENTO'
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
 p_id=>wwv_flow_imp.id(131710238258077702)
,p_name=>'P436_ROWID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(128371228994470950)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131710745973077707)
,p_name=>'P436_ERR'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(131555646095658638)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131711725768077717)
,p_name=>'P436_AUX_ROW_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(131551942515658601)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(131555330952658635)
,p_name=>'DA_EDITAR'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P436_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131556382632658645)
,p_event_id=>wwv_flow_imp.id(131555330952658635)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(131555646095658638)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131556434540658646)
,p_event_id=>wwv_flow_imp.id(131555330952658635)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P436_EDITAR is not null then',
'        select COD_PAIS,',
'            COD_PROVINCIA,',
'            COD_CIUDAD,',
'            DESCRIPCION,',
'            ABREVIATURA,',
'            COD_DEPARTAMENTO_SET,',
'            COD_DISTRITO_SET',
'        into ',
'         :P436_COD_PAIS,',
'        :P436_COD_PROVINCIA,',
'        :P436_COD_CIUDAD,',
'        :P436_DESCRIPCION,',
'        :P436_ABREVIACION,',
'        :P436_COD_DEPARTAMENTO,',
'        :P436_COD_DISTRITO',
'        from CIUDADES',
'        where rowid = :P436_EDITAR;',
'    end if;',
'exception',
'    when others then    ',
'    apex_debug.error(sqlerrm);',
'end;'))
,p_attribute_02=>'P436_EDITAR'
,p_attribute_03=>'P436_COD_PAIS,P436_COD_PROVINCIA,P436_COD_CIUDAD, P436_DESCRIPCION,P436_ABREVIACION,P436_COD_DEPARTAMENTO,P436_COD_DISTRITO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(131556724844658649)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(131556611725658648)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131556898808658650)
,p_event_id=>wwv_flow_imp.id(131556724844658649)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P436_COD_PAIS,P436_COD_PROVINCIA,P436_COD_CIUDAD, P436_DESCRIPCION,P436_ABREVIACION,P436_COD_DEPARTAMENTO,P436_COD_DISTRITO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131710181744077701)
,p_event_id=>wwv_flow_imp.id(131556724844658649)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P436_COD_CIUDAD := BSCIUDAD.FN_COD_CIUDAD;',
''))
,p_attribute_03=>'P436_ROWID,P436_COD_CIUDAD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131710353190077703)
,p_event_id=>wwv_flow_imp.id(131556724844658649)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(131555646095658638)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(131710510315077705)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(131710497734077704)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131710650566077706)
,p_event_id=>wwv_flow_imp.id(131710510315077705)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' ',
':P436_ERR := null;',
'    IF :P436_COD_PAIS is not null ',
'    and :P436_COD_PROVINCIA is not null and :P436_COD_CIUDAD is not null then',
'            IF :P436_EDITAR IS NULL THEN',
'                --INSERTAR REGISTRO',
'                INSERT INTO CIUDADES (',
'                        COD_PAIS,',
'                        COD_PROVINCIA,',
'                        COD_CIUDAD,',
'                        DESCRIPCION,',
'                        ABREVIATURA,',
'                        COD_DEPARTAMENTO_SET,',
'                        COD_DISTRITO_SET',
'                ) VALUES (',
'                        :P436_COD_PAIS,',
'                        :P436_COD_PROVINCIA,',
'                        :P436_COD_CIUDAD,',
'                        :P436_DESCRIPCION,',
'                        :P436_ABREVIACION,',
'                        :P436_COD_DEPARTAMENTO,',
'                        :P436_COD_DISTRITO',
'                );',
'            ELSE ',
'                ',
'                --ACTUALIZO EL REGISTRO',
'                UPDATE CIUDADES SET',
'                        COD_PAIS =:P436_COD_PAIS,',
'                        COD_PROVINCIA =:P436_COD_PROVINCIA,',
'                        COD_CIUDAD =:P436_COD_CIUDAD,',
'                        DESCRIPCION =:P436_DESCRIPCION,',
'                        ABREVIATURA =:P436_ABREVIACION,',
'                        COD_DEPARTAMENTO_SET =:P436_COD_DEPARTAMENTO,',
'                        COD_DISTRITO_SET =:P436_COD_DISTRITO',
'                WHERE ROWID = :P436_EDITAR;',
'            END IF;',
'    ELSE',
'        CASE',
unistr('            when :P436_COD_PAIS is null then :P436_ERR := ''Por favor: ingrese el campo "Pa\00EDs" '';'),
'            when :P436_COD_PROVINCIA is null then :P436_ERR := ''Por favor: ingrese el campo "Provincia"''; ',
'            when :P436_COD_CIUDAD is null then :P436_ERR := ''Por favor: ingrese el campo "Ciudad" '';       ',
'',
'        end case;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN ',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P436_COD_PAIS,P436_COD_PROVINCIA,P436_COD_CIUDAD, P436_DESCRIPCION,P436_ABREVIACION,P436_COD_DEPARTAMENTO,P436_COD_DISTRITO'
,p_attribute_03=>'P436_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131711026377077710)
,p_event_id=>wwv_flow_imp.id(131710510315077705)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(128371228994470950)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131711112396077711)
,p_event_id=>wwv_flow_imp.id(131710510315077705)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(131555646095658638)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P436_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131711223507077712)
,p_event_id=>wwv_flow_imp.id(131710510315077705)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('apex.message.showPageSuccess(''La ciudad se guard\00F3 correctamente.'');')
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P436_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(131710865573077708)
,p_name=>'DA_ERR'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P436_ERR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131710995654077709)
,p_event_id=>wwv_flow_imp.id(131710865573077708)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P436_ERR.'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P436_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(131711413571077714)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(131711396018077713)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
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
 p_id=>wwv_flow_imp.id(131711535304077715)
,p_event_id=>wwv_flow_imp.id(131711413571077714)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(131555646095658638)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(131711813590077718)
,p_name=>'DA_MOSTRAR_DETALLE'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P436_AUX_ROW_ID'
,p_condition_element=>'P436_AUX_ROW_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131711946179077719)
,p_event_id=>wwv_flow_imp.id(131711813590077718)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BSCIUDAD.PR_DETALLE(PI_ROWID => :P436_AUX_ROW_ID, ',
'                        PO_DESC_departamento_Set =>:P436_DESC_DEPARTAMENTO_SET,',
'                        PO_DESC_DISTRITO_Set => :P436_DESC_DISTRITO_SET);'))
,p_attribute_02=>'P436_COD_PAIS,P436_AUX_ROW_ID'
,p_attribute_03=>'P436_DESC_DEPARTAMENTO_SET,P436_DESC_DISTRITO_SET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(131712079756077720)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P436_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131712140875077721)
,p_event_id=>wwv_flow_imp.id(131712079756077720)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEsta seguro/a de borrar?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131712296037077722)
,p_event_id=>wwv_flow_imp.id(131712079756077720)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'',
'    DELETE CIUDADES',
'    WHERE ROWID = :P436_ELIMINAR;',
'    EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'',
'',
'END;'))
,p_attribute_02=>'P436_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131712318338077723)
,p_event_id=>wwv_flow_imp.id(131712079756077720)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(128371228994470950)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(131711687383077716)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>':P431_COD_USUARIO := NVL(:P_COD_USUARIO,:APP_USER) ;'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
