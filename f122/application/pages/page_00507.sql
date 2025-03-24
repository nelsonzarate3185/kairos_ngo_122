prompt --application/pages/page_00507
begin
--   Manifest
--     PAGE: 00507
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
 p_id=>507
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Lotes de Art\00EDculos - STLOTES')
,p_alias=>'STLOTES'
,p_step_title=>unistr('Lotes de Art\00EDculos - STLOTES')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function seleccionar(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P507_ACCION'',''AGREGAR'');',
'      $s(''P507_AUX_CHECK'', cb.value,false);',
'  } else {',
'      $s(''P507_ACCION'',''QUITAR'');',
'      $s(''P507_AUX_CHECK'', cb.value,false);',
'  }',
'  ',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'FCARDOZO'
,p_last_upd_yyyymmddhh24miss=>'20230426145840'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(153299350572473023)
,p_plug_name=>unistr('Lotes de Art\00EDculos - STLOTES')
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(153299161329473021)
,p_plug_name=>'REPORT'
,p_parent_plug_id=>wwv_flow_imp.id(153299350572473023)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>990
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.COD_EMPRESA,',
'       c.COD_ARTICULO,',
'       (select a.descripcion from st_articulos a where a.cod_empresa = :P_cod_empresa and a.cod_articulo=c.cod_articulo) DESC_ARTICULO,',
'       c.NRO_LOTE,',
'       c.COD_IVA,',
'       c.FEC_VENCIMIENTO,',
'       c.CANTIDAD,',
'       c.COSTO_PROM_NUE,',
'       APEX_ITEM.CHECKBOX(p_idx => 1 , ',
'                            p_value => ROWID, ',
'                            p_attributes => (case ACTIVO when ''S'' then ''checked '' else null end )||''onclick="seleccionar(this)"'' ) as ACTIVO,',
'       c.COD_ART_CORTO,',
'       ROWID,',
'       NULL EDITAR,',
'       NULL ELIMINAR',
'  from ST_LOTES c',
'  where cod_empresa = :p_cod_empresa',
'  order by lpad( ltrim( rtrim( cod_articulo ) ), 20, '' '' ), lpad( ltrim( rtrim( nro_lote ) ), 20, '' '' )'))
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
 p_id=>wwv_flow_imp.id(153300652462473036)
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
,p_internal_uid=>153300652462473036
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153300713357473037)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153300800625473038)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153300931384473039)
,p_db_column_name=>'NRO_LOTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Lote'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153301068713473040)
,p_db_column_name=>'COD_IVA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod. IVA'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153301198288473041)
,p_db_column_name=>'FEC_VENCIMIENTO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Vencimiento'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153301287858473042)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153301316006473043)
,p_db_column_name=>'COSTO_PROM_NUE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Costo Prom Nue'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153301473521473044)
,p_db_column_name=>'ACTIVO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Activo'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153301527575473045)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Codigo Corto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153301666381473046)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Desc Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(153301747269473047)
,p_db_column_name=>'ROWID'
,p_display_order=>110
,p_column_identifier=>'K'
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
 p_id=>wwv_flow_imp.id(153301861836473048)
,p_db_column_name=>'EDITAR'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P507_EDITAR'',''#ROWID#'');'
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
 p_id=>wwv_flow_imp.id(153301982417473049)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P507_ELIMINAR'',''#ROWID#'');'
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
'                                                         pdm_boto     => 3); ',
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
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(153747123060202844)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1537472'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDITAR:COD_ART_CORTO:COD_ARTICULO:DESC_ARTICULO:NRO_LOTE:COD_IVA:FEC_VENCIMIENTO:ACTIVO:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(153299266087473022)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(153299350572473023)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1000
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(153771685390109411)
,p_plug_name=>'Crear/Editar'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(153774724399109442)
,p_plug_name=>'Editar'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320:margin-top-sm'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(153775243142109447)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(153774724399109442)
,p_button_name=>'bt_Cancelar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(153772831577109423)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(153771685390109411)
,p_button_name=>'Cancelar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(153775173425109446)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(153774724399109442)
,p_button_name=>'bt_Guardar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(153772788987109422)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(153771685390109411)
,p_button_name=>'Guardar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(153772197061109416)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(153299161329473021)
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
 p_id=>wwv_flow_imp.id(153299450679473024)
,p_name=>'P507_DERECHOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(153299266087473022)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153299575627473025)
,p_name=>'P507_COD_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(153299266087473022)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153299642757473026)
,p_name=>'P507_NOM_MODULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(153299266087473022)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153299789285473027)
,p_name=>'P507_COD_FORMA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(153299266087473022)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153299873262473028)
,p_name=>'P507_NOM_FORMA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(153299266087473022)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153299907031473029)
,p_name=>'P507_COD_EMPRESA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(153299266087473022)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153300093870473030)
,p_name=>'P507_NOM_EMPRESA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(153299266087473022)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153300113058473031)
,p_name=>'P507_COD_SUCURSAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(153299266087473022)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153300232679473032)
,p_name=>'P507_NOM_SUCURSAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(153299266087473022)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153300375308473033)
,p_name=>'P507_COD_USUARIO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(153299266087473022)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153300444931473034)
,p_name=>'P507_COD_IDIOMA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(153299266087473022)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153300548607473035)
,p_name=>'P507_CODSISMENU'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(153299266087473022)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153302079664473050)
,p_name=>'P507_AUX_CHECK'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(153299161329473021)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153770803342109403)
,p_name=>'P507_ACCION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(153299161329473021)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153770940983109404)
,p_name=>'P507_ERR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(153299161329473021)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153771045447109405)
,p_name=>'P507_EDITAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(153299161329473021)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153771148876109406)
,p_name=>'P507_ELIMINAR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(153299161329473021)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153771207320109407)
,p_name=>'P507_ROWID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(153299161329473021)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153772253288109417)
,p_name=>'P507_COD_ART_CORTO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(153771685390109411)
,p_prompt=>unistr('C\00F3digo Corto')
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
 p_id=>wwv_flow_imp.id(153772327203109418)
,p_name=>'P507_COD_ARTICULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(153771685390109411)
,p_prompt=>'Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS_STLOTES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_articulo ',
'from st_articulos ',
'where cod_empresa = :P_cod_empresa ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153772481333109419)
,p_name=>'P507_NRO_LOTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(153771685390109411)
,p_prompt=>'Nro Lote'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153772592522109420)
,p_name=>'P507_COD_IVA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(153771685390109411)
,p_prompt=>'Cod. IVA'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_IVA_STLOTES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_iva, porc_iva_compra, porc_iva_venta, fec_vigencia,',
'(porc_iva_compra||''-''||porc_iva_venta||''-''||fec_vigencia) D  ',
'from st_iva'))
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
 p_id=>wwv_flow_imp.id(153772620109109421)
,p_name=>'P507_FEC_VENCIMIENTO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(153771685390109411)
,p_prompt=>'Vencimiento'
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
 p_id=>wwv_flow_imp.id(153773396558109428)
,p_name=>'P507_ACTIVO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(153299266087473022)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153774216400109437)
,p_name=>'P507_DESC_ARTICULO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(153771685390109411)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(153774888960109443)
,p_name=>'P507_COD_IVA_AUX'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(153774724399109442)
,p_prompt=>'Cod. IVA'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_IVA_STLOTES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_iva, porc_iva_compra, porc_iva_venta, fec_vigencia,',
'(porc_iva_compra||''-''||porc_iva_venta||''-''||fec_vigencia) D  ',
'from st_iva'))
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
 p_id=>wwv_flow_imp.id(153774903257109444)
,p_name=>'P507_FEC_VENCIMIENTO_AUX'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(153774724399109442)
,p_prompt=>'Vencimiento'
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
 p_id=>wwv_flow_imp.id(153775000164109445)
,p_name=>'P507_COD_ART_CORTO_AUX'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(153774724399109442)
,p_prompt=>unistr('C\00F3digo Corto')
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
 p_id=>wwv_flow_imp.id(153934995584339202)
,p_name=>'P507_ACTIVO_AUX'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(153299266087473022)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153770623732109401)
,p_name=>'DA_AUX_CHECK'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P507_AUX_CHECK'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153770790954109402)
,p_event_id=>wwv_flow_imp.id(153770623732109401)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'STLOTES.PR_CHECK(P_ROWID => :P507_AUX_CHECK, P_ACCION => :P507_ACCION);'
,p_attribute_02=>'P507_ACCION,P507_AUX_CHECK'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153771363226109408)
,p_name=>'DA_EDITAR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P507_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153771415237109409)
,p_event_id=>wwv_flow_imp.id(153771363226109408)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(153774724399109442)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153774646613109441)
,p_event_id=>wwv_flow_imp.id(153771363226109408)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P507_EDITAR is not null then',
'        select  ',
'                COD_ARTICULO,',
'                COD_ART_CORTO,',
'                COD_IVA,',
'                FEC_VENCIMIENTO,',
'                ACTIVO',
'        into  ',
'             :P507_COD_ARTICULO,',
'             :P507_COD_ART_CORTO_AUX,',
'             :P507_COD_IVA_AUX,',
'             :P507_FEC_VENCIMIENTO_AUX,',
'             :P507_ACTIVO_AUX',
'        from ST_LOTES',
'        where rowid = :P507_EDITAR;',
'    end if;',
'exception',
'    when others then    ',
'    apex_debug.error(sqlerrm);',
'end;'))
,p_attribute_02=>'P507_EDITAR'
,p_attribute_03=>'P507_COD_IVA_AUX,P507_FEC_VENCIMIENTO_AUX,P507_COD_ART_CORTO_AUX,P507_ACTIVO_AUX,P507_COD_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153771792193109412)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P507_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153771822868109413)
,p_event_id=>wwv_flow_imp.id(153771792193109412)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEsta seguro/a de borrar?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153771989348109414)
,p_event_id=>wwv_flow_imp.id(153771792193109412)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'',
'    DELETE ST_LOTES',
'    WHERE ROWID = :P507_ELIMINAR;',
'    EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'',
'',
'END;'))
,p_attribute_02=>'P507_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153772079062109415)
,p_event_id=>wwv_flow_imp.id(153771792193109412)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(153299161329473021)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153772911084109424)
,p_name=>'DA_CANCELAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(153772831577109423)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153773095882109425)
,p_event_id=>wwv_flow_imp.id(153772911084109424)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(153771685390109411)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153773149854109426)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(153772788987109422)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153773266347109427)
,p_event_id=>wwv_flow_imp.id(153773149854109426)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' ',
':P507_ERR := null;',
'    IF :P507_COD_ARTICULO is not null and :P507_NRO_LOTE is not null then',
'            IF :P507_EDITAR IS NULL THEN',
'                :P507_ACTIVO:=''S'';',
'                --INSERTAR REGISTRO',
'                INSERT INTO ST_LOTES (',
'                        COD_EMPRESA,',
'                        COD_ARTICULO,',
'                        NRO_LOTE,',
'                        COD_ART_CORTO,',
'                        COD_IVA,',
'                        FEC_VENCIMIENTO,',
'                        ACTIVO',
'                ) VALUES (',
'                         :P507_COD_EMPRESA,',
'                         :P507_COD_ARTICULO,',
'                         :P507_NRO_LOTE,',
'                         :P507_COD_ART_CORTO,',
'                         :P507_COD_IVA,',
'                         :P507_FEC_VENCIMIENTO,',
'                         :P507_ACTIVO',
'                );',
'',
'                ',
'                --ACTUALIZO EL REGISTRO',
'                UPDATE ST_LOTES SET',
'              --          COD_EMPRESA=:P507_COD_EMPRESA,',
'              --          COD_ARTICULO =:P507_COD_ARTICULO,',
'              --          NRO_LOTE =:P507_NRO_LOTE,',
'                        COD_ART_CORTO =:P507_COD_ART_CORTO,',
'                        COD_IVA =:P507_COD_IVA,',
'                        FEC_VENCIMIENTO =:P507_FEC_VENCIMIENTO,',
'                        ACTIVO=:P507_ACTIVO',
'                WHERE ROWID = :P507_EDITAR;',
'            END IF;',
'    ELSE',
'        :P507_ERR := ''Por favor: complete todos los campos obligatorios '';',
'end IF;',
'EXCEPTION',
'    WHEN OTHERS THEN ',
'        APEX_DEBUG.ERROR(SQLERRM);',
unistr('        :P507_ERR := ''Lo siento, no se puede agregar el art\00EDculo ya que el n\00FAmero de lote: ''||:P507_NRO_LOTE|| '' para el art\00EDculo: ''||:P507_COD_ARTICULO|| '' ya existe'';'),
'END;',
''))
,p_attribute_02=>'P507_COD_ARTICULO,P507_NRO_LOTE,P_COD_EMPRESA,P507_COD_IVA,P507_COD_EMPRESA,P507_FEC_VENCIMIENTO,P507_COD_ART_CORTO'
,p_attribute_03=>'P507_ERR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153773499766109429)
,p_event_id=>wwv_flow_imp.id(153773149854109426)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(153299161329473021)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P507_ERR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153773599836109430)
,p_event_id=>wwv_flow_imp.id(153773149854109426)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(153771685390109411)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P507_ERR'
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
 p_id=>wwv_flow_imp.id(153773605271109431)
,p_name=>'DA_ERR'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P507_ERR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153773747592109432)
,p_event_id=>wwv_flow_imp.id(153773605271109431)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P507_ERR.'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P507_ERR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153773829959109433)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(153772197061109416)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153774095329109435)
,p_event_id=>wwv_flow_imp.id(153773829959109433)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153774129543109436)
,p_event_id=>wwv_flow_imp.id(153773829959109433)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(153771685390109411)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153774392333109438)
,p_name=>'DA_COD_ARTICULO'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P507_COD_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153774420735109439)
,p_event_id=>wwv_flow_imp.id(153774392333109438)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct s.descripcion ',
'into :P507_DESC_ARTICULO',
'from st_articulos s,st_lotes a ',
'where s.cod_empresa = a.cod_empresa and s.cod_articulo=a.cod_articulo and a.nro_lote=:P507_NRO_LOTE;'))
,p_attribute_02=>'P507_COD_ARTICULO,P507_NRO_LOTE'
,p_attribute_03=>'P507_DESC_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153775384682109448)
,p_name=>'DA_CANCELAR_AUX'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(153775243142109447)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153775430126109449)
,p_event_id=>wwv_flow_imp.id(153775384682109448)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(153774724399109442)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(153775522099109450)
,p_name=>'DA_GUARDAR_AUX'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(153775173425109446)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153934821366339201)
,p_event_id=>wwv_flow_imp.id(153775522099109450)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'        UPDATE ST_LOTES SET',
'      --          COD_EMPRESA=:P507_COD_EMPRESA,',
'      --          COD_ARTICULO =:P507_COD_ARTICULO,',
'      --          NRO_LOTE =:P507_NRO_LOTE,',
'                COD_ART_CORTO =:P507_COD_ART_CORTO_AUX,',
'                COD_IVA =:P507_COD_IVA_AUX,',
'                FEC_VENCIMIENTO =:P507_FEC_VENCIMIENTO_AUX,',
'                ACTIVO=:P507_ACTIVO_AUX',
'        WHERE ROWID = :P507_EDITAR;',
'EXCEPTION',
'    WHEN OTHERS THEN ',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P507_COD_IVA_AUX,P507_COD_ART_CORTO_AUX,P507_FEC_VENCIMIENTO_AUX'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153935075712339203)
,p_event_id=>wwv_flow_imp.id(153775522099109450)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(153299161329473021)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(153935157997339204)
,p_event_id=>wwv_flow_imp.id(153775522099109450)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(153774724399109442)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(153774566576109440)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P507_COD_USUARIO := NVL(:P_COD_USUARIO,:APP_USER) ;',
':P507_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'') ;',
':P507_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'') ;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
