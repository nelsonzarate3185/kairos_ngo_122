prompt --application/pages/page_00102
begin
--   Manifest
--     PAGE: 00102
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
 p_id=>102
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'BSPERSON'
,p_alias=>'BSPERSON'
,p_step_title=>'ABM Persona'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function seleccionar(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P102_DIR_ACCION'',''AGREGAR'');',
'      $s(''P102_DIR_AUX_SEQ_ID'', cb.value,false);',
'  } else {',
'      $s(''P102_DIR_ACCION'',''QUITAR'');',
'      $s(''P102_DIR_AUX_SEQ_ID'', cb.value,false);',
'  }',
'}',
'',
'function seleccionar_por_defecto(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P102_TEL_ACCION_DEF'',''AGREGAR'');',
'      $s(''P102_TEL_AUX_SEQ_ID_DEF'', cb.value,false);',
'  } else {',
'      $s(''P102_TEL_ACCION_DEF'',''QUITAR'');',
'      $s(''P102_TEL_AUX_SEQ_ID_DEF'', cb.value,false);',
'  }',
'}',
'',
'function seleccionar_fact(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P102_TEL_ACCION_FACT'',''AGREGAR'');',
'      $s(''P102_TEL_AUX_SEQ_ID_FACT'', cb.value,false);',
'  } else {',
'      $s(''P102_TEL_ACCION_FACT'',''QUITAR'');',
'      $s(''P102_TEL_AUX_SEQ_ID_FACT'', cb.value,false);',
'  }',
'}',
'',
'function Deshabilitar(){',
'    apex.item(''P102_PERS_LUCRATIVA'').disable();',
'    apex.item(''P102_PERS_ESTATAL'').disable();',
'}',
'',
'function Habilitar(){',
'    apex.item(''P102_PERS_LUCRATIVA'').enable();',
'    apex.item(''P102_PERS_ESTATAL'').enable();',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'ETRINIDAD'
,p_last_upd_yyyymmddhh24miss=>'20221229150018'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24033201006736924)
,p_plug_name=>'Personas'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24033320812736925)
,p_plug_name=>'B_PERSONAS'
,p_parent_plug_id=>wwv_flow_imp.id(24033201006736924)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24035210462736944)
,p_plug_name=>'Para Ganadera'
,p_parent_plug_id=>wwv_flow_imp.id(24033320812736925)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="margin-top:8px;"'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_display_column=>7
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24035331251736945)
,p_plug_name=>'Tipo de persona'
,p_parent_plug_id=>wwv_flow_imp.id(24033320812736925)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="margin-top:8px;"'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24035568729736947)
,p_plug_name=>'B_PERSONAS_SUB'
,p_parent_plug_id=>wwv_flow_imp.id(24033320812736925)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>5
,p_plug_grid_column_span=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25388214928954514)
,p_plug_name=>'Datos Varios'
,p_parent_plug_id=>wwv_flow_imp.id(24033320812736925)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25388408521954516)
,p_plug_name=>'Lugar de Trabajo'
,p_parent_plug_id=>wwv_flow_imp.id(25388214928954514)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29541104193173421)
,p_plug_name=>'BOTON'
,p_parent_plug_id=>wwv_flow_imp.id(24033320812736925)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>25
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24033460275736926)
,p_plug_name=>'PARAMETROS'
,p_parent_plug_id=>wwv_flow_imp.id(24033201006736924)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>5
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25389224503954524)
,p_plug_name=>'Regiones'
,p_parent_plug_id=>wwv_flow_imp.id(24033201006736924)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(40132096801263663)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25389372874954525)
,p_plug_name=>'Direcciones'
,p_parent_plug_id=>wwv_flow_imp.id(25389224503954524)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(40132096801263663)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25990744012875425)
,p_plug_name=>unistr('Direcci\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(25389372874954525)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25485059527430546)
,p_plug_name=>'REPORTE_DIRECCIONES'
,p_parent_plug_id=>wwv_flow_imp.id(25990744012875425)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40097087111263653)
,p_plug_display_sequence=>180
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID,',
'       C001 COD_PERSONA,',
'       C002 COD_DIRECCION,',
'       C004 DESC_TIP_DIRECCION,',
'       C005 CODIGO_POSTAL,',
'       C006 DETALLE,',
'       C007||'' - ''|| C008 PAIS,',
'       C009||'' - ''||C010 PROVINCIA,',
'       C011||'' - ''||C012 CIUDAD,',
'       C013||'' - ''||C014 BARRIO,',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'                           p_value       => seq_id,',
'                           p_attributes  => (case C015',
'                                                when ''S'' then ''checked ''',
'                                                else null',
'                                              end ) ||''onclick="seleccionar(this)"'' )as "casilla",',
'       C016 CASILLA_CORREO,',
'       NULL EDITAR,',
'       NULL ELIMINAR,',
'       C017 CONTROL,',
'       C018 ROW_ID',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_DIRECCION''',
'   AND (C017 = ''I'' OR C017 = ''U'' OR C017 IS NULL)',
' ORDER BY C015 DESC,',
'          COD_DIRECCION;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE_DIRECCIONES'
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
 p_id=>wwv_flow_imp.id(25485178715430547)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>25485178715430547
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25989004030875408)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25485263533430548)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25485312354430549)
,p_db_column_name=>'COD_DIRECCION'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>unistr('C\00F3d.')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25988476589875402)
,p_db_column_name=>'DETALLE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('Direcci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25989113849875409)
,p_db_column_name=>'casilla'
,p_display_order=>60
,p_column_identifier=>'K'
,p_column_label=>'Defecto'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25988524321875403)
,p_db_column_name=>'PAIS'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Pais'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25988614790875404)
,p_db_column_name=>'PROVINCIA'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Departamento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25988761194875405)
,p_db_column_name=>'CIUDAD'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Ciudad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25988865322875406)
,p_db_column_name=>'BARRIO'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Barrio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25989695893875414)
,p_db_column_name=>'CASILLA_CORREO'
,p_display_order=>110
,p_column_identifier=>'L'
,p_column_label=>'C. Correo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25988336151875401)
,p_db_column_name=>'CODIGO_POSTAL'
,p_display_order=>120
,p_column_identifier=>'D'
,p_column_label=>'C. Postal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25990253000875420)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P102_DIR_AUX_SEQ_ID_ELIMINAR'',#SEQ_ID#);'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
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
 p_id=>wwv_flow_imp.id(25993076771875448)
,p_db_column_name=>'EDITAR'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Editar'
,p_column_link=>'f?p=&APP_ID.:118:&SESSION.::&DEBUG.:Y,118:P118_DIR_AUX_SEQ_ID,P118_DIR_COD_PERSONA:#SEQ_ID#,#COD_PERSONA#'
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26485575002363204)
,p_db_column_name=>'CONTROL'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26485611216363205)
,p_db_column_name=>'ROW_ID'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27349035253508028)
,p_db_column_name=>'DESC_TIP_DIRECCION'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(26032058933307405)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'260321'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_DIRECCION:DESC_TIP_DIRECCION:DETALLE:casilla:PAIS:PROVINCIA:CIUDAD:BARRIO:CASILLA_CORREO:CODIGO_POSTAL:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25389516974954527)
,p_plug_name=>unistr('Tel\00E9fonos')
,p_parent_plug_id=>wwv_flow_imp.id(25389224503954524)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(40132096801263663)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26485916121363208)
,p_plug_name=>unistr('Tel\00E9fono')
,p_parent_plug_id=>wwv_flow_imp.id(25389516974954527)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26487180320363220)
,p_plug_name=>'REPORTE_TELEFONOS'
,p_parent_plug_id=>wwv_flow_imp.id(26485916121363208)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>200
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID,',
'       C001 COD_PERSONA,',
'       C002 CODIGO_AREA,',
'       C003 NUM_TELEFONO,',
'       C005 DESC_TIP_TELEFONO,',
'       C007 DESC_TEL_UBICACION,',
'       C008 NOTA,',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'                           p_value       => seq_id,',
'                           p_attributes  => (case C009',
'                                                when ''S'' then ''checked ''',
'                                                else null',
'                                              end ) ||''onclick="seleccionar_por_defecto(this)"'' )as "POR_DEFECTO",',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'                           p_value       => seq_id,',
'                           p_attributes  => (case C011',
'                                                when ''S'' then ''checked ''',
'                                                else null',
'                                              end ) ||''onclick="seleccionar_fact(this)"'' )as "PARA_INFORME",',
'       C010 COD_DIRECCION,',
'       N001 INTERNO,',
'       C012 CONTROL,',
'       C013 ROW_ID,',
'       NULL EDITAR,',
'       NULL ELIMINAR',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_TELEFONO''',
'   AND (C012 = ''I'' OR C012 = ''U'' OR C012 IS NULL )',
' ORDER BY C011 DESC;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE_TELEFONOS'
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
 p_id=>wwv_flow_imp.id(26487261692363221)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>26487261692363221
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26487352829363222)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26487468583363223)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26487558193363224)
,p_db_column_name=>'CODIGO_AREA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('\00C1rea')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26487660847363225)
,p_db_column_name=>'NUM_TELEFONO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('Tel\00E9fono')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26488381835363232)
,p_db_column_name=>'INTERNO'
,p_display_order=>70
,p_column_identifier=>'K'
,p_column_label=>'Interno'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26487983431363228)
,p_db_column_name=>'NOTA'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Nota'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26488063983363229)
,p_db_column_name=>'POR_DEFECTO'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Defecto'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26488131078363230)
,p_db_column_name=>'COD_DIRECCION'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Cod Direccion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26488224200363231)
,p_db_column_name=>'PARA_INFORME'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Factura'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26488643473363235)
,p_db_column_name=>'DESC_TIP_TELEFONO'
,p_display_order=>120
,p_column_identifier=>'M'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26488741499363236)
,p_db_column_name=>'DESC_TEL_UBICACION'
,p_display_order=>130
,p_column_identifier=>'N'
,p_column_label=>unistr('Ubicaci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27350070330508038)
,p_db_column_name=>'EDITAR'
,p_display_order=>140
,p_column_identifier=>'O'
,p_column_label=>'Editar'
,p_column_link=>'f?p=&APP_ID.:117:&SESSION.::&DEBUG.:Y,117:P117_TEL_AUX_SEQ_ID:#SEQ_ID#'
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27350163623508039)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>150
,p_column_identifier=>'P'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P102_TEL_AUX_SEQ_ID_ELIMINAR'',#SEQ_ID#);'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--PERMISO PARA ELIMINAR',
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
'END;',
''))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28305257082408618)
,p_db_column_name=>'CONTROL'
,p_display_order=>160
,p_column_identifier=>'Q'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28305326944408619)
,p_db_column_name=>'ROW_ID'
,p_display_order=>170
,p_column_identifier=>'R'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(26899072882382864)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'268991'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CODIGO_AREA:NUM_TELEFONO:DESC_TIP_TELEFONO:DESC_TEL_UBICACION:INTERNO:NOTA:POR_DEFECTO:PARA_INFORME:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25389699302954528)
,p_plug_name=>'Garantes'
,p_parent_plug_id=>wwv_flow_imp.id(25389224503954524)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(40132096801263663)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27080259720471226)
,p_plug_name=>'Garante'
,p_parent_plug_id=>wwv_flow_imp.id(25389699302954528)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27080373176471227)
,p_plug_name=>'REPORTE_GARANTES'
,p_parent_plug_id=>wwv_flow_imp.id(27080259720471226)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>80
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID,',
'       C001 COD_PERSONA,',
'       C002 COD_PERSONA_REF,',
'       C003 NOMBRE,',
'       C004 FEC_NACIMIENTO,',
'       C005 NACIONALIDAD,',
'       C006 CEDULA,',
'       C007 CARGO,',
'       NULL EDITAR,',
'       NULL ELIMINAR,',
'       C008 CONTROL,',
'       C009 ROW_ID',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_GARANTE''',
'   AND (C008 = ''I'' OR C008 = ''U'' OR C008 IS NULL);',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE_GARANTES'
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
 p_id=>wwv_flow_imp.id(27080589176471229)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>27080589176471229
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27080646958471230)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27080781131471231)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27080831017471232)
,p_db_column_name=>'COD_PERSONA_REF'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('C\00F3digo')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27080927516471233)
,p_db_column_name=>'NOMBRE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27081055556471234)
,p_db_column_name=>'FEC_NACIMIENTO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fec. Nacimiento'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27081158754471235)
,p_db_column_name=>'NACIONALIDAD'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nacionalidad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27081202640471236)
,p_db_column_name=>'CEDULA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>unistr('C\00E9dula')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27081344490471237)
,p_db_column_name=>'CARGO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cargo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28629155935262301)
,p_db_column_name=>'EDITAR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Editar'
,p_column_link=>'f?p=&APP_ID.:124:&SESSION.::&DEBUG.:Y,124:P124_GAR_AUX_SEQ_ID:#SEQ_ID#'
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28629294212262302)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P102_GAR_AUX_SEQ_ID_ELIMINAR'',#SEQ_ID#);'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
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
 p_id=>wwv_flow_imp.id(28629353408262303)
,p_db_column_name=>'CONTROL'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28629436791262304)
,p_db_column_name=>'ROW_ID'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(27319826566277354)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'273199'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_PERSONA_REF:NOMBRE:FEC_NACIMIENTO:NACIONALIDAD:CEDULA:CARGO:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25389762188954529)
,p_plug_name=>'Documentos'
,p_parent_plug_id=>wwv_flow_imp.id(25389224503954524)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(40132096801263663)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26489028954363239)
,p_plug_name=>'Documento'
,p_parent_plug_id=>wwv_flow_imp.id(25389762188954529)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26489239648363241)
,p_plug_name=>'REPORTE_DOCUMENTOS'
,p_parent_plug_id=>wwv_flow_imp.id(26489028954363239)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>120
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID,',
'       C001 COD_PERSONA,',
'       C002||'' - ''||C003 COD_IDENT,',
'       C004 NUMERO,',
'       C005 NUMERO_AGENTE_INF,',
'       C006 DV_AGENTE_INF,',
'       D001 FEC_VENCIMIENTO,',
'       NULL EDITAR,',
'       NULL ELIMINAR,',
'       C007 CONTROL,',
'       C008 ROW_ID',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_DOCUMENTO''',
'   AND (C007 = ''I'' OR C007 = ''U'' OR C007 IS NULL);'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE_DOCUMENTOS'
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
 p_id=>wwv_flow_imp.id(26489443763363243)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>26489443763363243
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26489541958363244)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26489678797363245)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26489765117363246)
,p_db_column_name=>'COD_IDENT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26489855207363247)
,p_db_column_name=>'NUMERO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('N\00FAmero')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26489973377363248)
,p_db_column_name=>'NUMERO_AGENTE_INF'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('N\00FAmero agente inf.')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26490000177363249)
,p_db_column_name=>'DV_AGENTE_INF'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'DV agente inf.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26490106488363250)
,p_db_column_name=>'FEC_VENCIMIENTO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Vencimiento'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28306057405408626)
,p_db_column_name=>'EDITAR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Editar'
,p_column_link=>'f?p=&APP_ID.:119:&SESSION.::&DEBUG.:Y,119:P119_DOC_AUX_SEQ_ID:#SEQ_ID#'
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28306166996408627)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P102_DOC_AUX_SEQ_ID_ELIMINAR'',#SEQ_ID#);'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--PERMISO PARA ELIMINAR',
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
'END;',
''))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28306286761408628)
,p_db_column_name=>'CONTROL'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28306376608408629)
,p_db_column_name=>'ROW_ID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(27084302034473029)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'270844'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_IDENT:NUMERO:NUMERO_AGENTE_INF:DV_AGENTE_INF:FEC_VENCIMIENTO:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25389856661954530)
,p_plug_name=>'Contactos'
,p_parent_plug_id=>wwv_flow_imp.id(25389224503954524)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(40132096801263663)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27081914013471243)
,p_plug_name=>'Contacto'
,p_parent_plug_id=>wwv_flow_imp.id(25389856661954530)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27082048028471244)
,p_plug_name=>'REPORTE_CONTACTOS'
,p_parent_plug_id=>wwv_flow_imp.id(27081914013471243)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>110
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID,',
'       C001 COD_PERSONA,',
'       C002 NOM_CONTACTO,',
'       C003 ASUNTO,',
'       C004 CARGO,',
'       C005 TELEFONO,',
'       NULL EDITAR,',
'       NULL ELIMINAR,',
'       C006 CONTROL,',
'       C007 ROW_ID',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_CONTACTO''',
'   AND (C006 = ''I'' OR C006 = ''U'' OR C006 IS NULL);',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'New'
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
 p_id=>wwv_flow_imp.id(27082248992471246)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>27082248992471246
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27082329566471247)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27082491909471248)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27082577537471249)
,p_db_column_name=>'NOM_CONTACTO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27082641836471250)
,p_db_column_name=>'ASUNTO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Asunto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27346357412508001)
,p_db_column_name=>'CARGO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cargo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27346424041508002)
,p_db_column_name=>'TELEFONO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('Tel\00E9fono')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28632651061262336)
,p_db_column_name=>'EDITAR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Editar'
,p_column_link=>'f?p=&APP_ID.:128:&SESSION.::&DEBUG.:Y,128:P128_CON_AUX_SEQ_ID:#SEQ_ID#'
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28632752566262337)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P102_CON_AUX_SEQ_ID_ELIMINAR'',#SEQ_ID#);'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
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
 p_id=>wwv_flow_imp.id(28632817086262338)
,p_db_column_name=>'CONTROL'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28632923912262339)
,p_db_column_name=>'ROW_ID'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(27354543154510728)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'273546'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOM_CONTACTO:ASUNTO:CARGO:TELEFONO:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25389997909954531)
,p_plug_name=>'Resp. Legales'
,p_parent_plug_id=>wwv_flow_imp.id(25389224503954524)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(40132096801263663)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27078535386471209)
,p_plug_name=>'Responsable Legal'
,p_parent_plug_id=>wwv_flow_imp.id(25389997909954531)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27078719883471211)
,p_plug_name=>'REPORTE_RESPONSABLES'
,p_parent_plug_id=>wwv_flow_imp.id(27078535386471209)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>80
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID,',
'       C001 COD_PERSONA,',
'       C002 COD_PERSONA_REF,',
'       C003 NOMBRE,',
'       C004 FEC_NACIMIENTO,',
'       C005 NACIONALIDAD,',
'       C006 CEDULA,',
'       C007 CARGO,',
'       NULL EDITAR,',
'       NULL ELIMINAR,',
'       C008 CONTROL,',
'       C009 ROW_ID',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''COL_RESPONSABLE''',
'   AND (C008 = ''I'' OR C008 = ''U'' OR C008 IS NULL);'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE_RESPONSABLES'
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
 p_id=>wwv_flow_imp.id(27078805897471212)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>27078805897471212
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27078966021471213)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27079008138471214)
,p_db_column_name=>'COD_PERSONA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Persona'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27079170595471215)
,p_db_column_name=>'COD_PERSONA_REF'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('C\00F3digo')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27079279651471216)
,p_db_column_name=>'NOMBRE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27079370603471217)
,p_db_column_name=>'FEC_NACIMIENTO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fec. Nacimiento'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27079495201471218)
,p_db_column_name=>'NACIONALIDAD'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nacionalidad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27079502367471219)
,p_db_column_name=>'CEDULA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>unistr('Nro. C\00E9dula')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27079607569471220)
,p_db_column_name=>'CARGO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cargo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28601237353538721)
,p_db_column_name=>'EDITAR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Editar'
,p_column_link=>'f?p=&APP_ID.:123:&SESSION.::&DEBUG.:Y,123:P123_RESP_AUX_SEQ_ID:#SEQ_ID#'
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28601396314538722)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P102_RESP_AUX_SEQ_ID_ELIMINAR'',#SEQ_ID#);'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
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
 p_id=>wwv_flow_imp.id(28601436107538723)
,p_db_column_name=>'CONTROL'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Control'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28601575441538724)
,p_db_column_name=>'ROW_ID'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Row Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(27298466634082019)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'272985'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_PERSONA_REF:NOMBRE:FEC_NACIMIENTO:NACIONALIDAD:CEDULA:CARGO:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25390225966954534)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(24033201006736924)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25481514224430511)
,p_plug_name=>unistr('B\00FAsqueda')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25482008409430516)
,p_plug_name=>'B_PERSONAS 2'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25481733054430513)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(25481514224430511)
,p_button_name=>'BT_BUSCAR'
,p_button_static_id=>'BT_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_button_cattributes=>'style="margin-top:9px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29541034000173420)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(29541104193173421)
,p_button_name=>'BT_EMAIL_CONTACTOS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'E-mail de Contactos'
,p_button_redirect_url=>'f?p=&APP_ID.:132:&SESSION.::&DEBUG.:132:P132_COD_PERSONA:&P102_PERS_COD_PERSONA.'
,p_button_cattributes=>'style="margin-top:9px; width:100%"'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25484664001430542)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(25990744012875425)
,p_button_name=>'BT_AGREGAR_DIR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-top:9px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27079965169471223)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(27078535386471209)
,p_button_name=>'BT_AGREGAR_RESP'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-top:9px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27081653488471240)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(27080259720471226)
,p_button_name=>'BT_AGREGAR_GARANTE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-top:9px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28633051567262340)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(27081914013471243)
,p_button_name=>'BT_AGREGAR_CONTACTO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-top:9px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27078320057471207)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(26489028954363239)
,p_button_name=>'BT_AGREGAR_DOC'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P102_VBLE_CARGA_IDENTIFICACION'
,p_button_condition2=>'S'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_button_cattributes=>'style="margin-top:9px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26488808505363237)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(26485916121363208)
,p_button_name=>'BT_AGREGAR_TEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="margin-top:9px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25483074935430526)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(24033201006736924)
,p_button_name=>'BT_CREAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'EDIT'
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
'    END IF;  ',
'    ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(50720394714458510)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(25481514224430511)
,p_button_name=>'BTVOLVER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Volver'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:215:&SESSION.::&DEBUG.:215::'
,p_button_condition=>'P102_CONTROL_PAG_ORIG'
,p_button_condition2=>'215'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27347424568508012)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(26485916121363208)
,p_button_name=>'BT_CONFIRMAR_TELEFONO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar Cambios'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27347997930508017)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27081914013471243)
,p_button_name=>'BT_CONFIRMAR_CONTACTO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar Cambios'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28822972559754642)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(24033201006736924)
,p_button_name=>'BT_GUARDAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Cambios'
,p_button_position=>'EDIT'
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
'    END IF;                                                       ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30440409291751935)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(25481514224430511)
,p_button_name=>'BT_LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Limpiar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28821974824754632)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(24033201006736924)
,p_button_name=>'BT_ELIMINAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Eliminar'
,p_button_position=>'EDIT'
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
'                                                         pdm_boto     => 3); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;  ',
'    ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27347792606508015)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(27078535386471209)
,p_button_name=>'BT_CONFIRMAR_RESPONSABLE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar Cambios'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27347818744508016)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(27080259720471226)
,p_button_name=>'BT_CONFIRMAR_GARANTE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar Cambios'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27347659200508014)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(26489028954363239)
,p_button_name=>'BT_CONFIRMAR_DOCUMENTO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar Cambios'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25990874600875426)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_imp.id(25990744012875425)
,p_button_name=>'BT_CONFIRMAR_DIRE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar Cambios'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24033502982736927)
,p_name=>'P102_P_COD_PERSONA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(24033460275736926)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24033609947736928)
,p_name=>'P102_P_COD_EMPRESA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(24033460275736926)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24033785324736929)
,p_name=>'P102_P_COD_CLIENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(24033460275736926)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24033970080736931)
,p_name=>'P102_PERS_COD_PERSONA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(25481514224430511)
,p_prompt=>unistr('C\00F3digo')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24034078878736932)
,p_name=>'P102_PERS_COD_SECTOR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(25388214928954514)
,p_prompt=>'Sector'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SECTOR_ECO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_SECTOR||'' - ''||DESCRIPCION D,',
'	   COD_SECTOR R,',
'       DESCRIPCION',
'  FROM SECTORES_ECON',
' ORDER BY 1'))
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
,p_attribute_07=>unistr('Consulta de Sectores Econ\00F3micos')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24034144754736933)
,p_name=>'P102_PERS_NOMBRE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(24035568729736947)
,p_prompt=>'Nombre y Apellido'
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
 p_id=>wwv_flow_imp.id(24034219595736934)
,p_name=>'P102_PERS_COD_PAIS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(25388214928954514)
,p_prompt=>'Nacionalidad'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_NACIONALIDAD_BSPERSON'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NACIONALIDAD D,',
'	   COD_PAIS R,',
'       NACIONALIDAD',
'  FROM PAISES '))
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
 p_id=>wwv_flow_imp.id(24034315821736935)
,p_name=>'P102_PERS_APENOMBRE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(24035568729736947)
,p_prompt=>'Apellido y Nombre'
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
 p_id=>wwv_flow_imp.id(24034434676736936)
,p_name=>'P102_PERS_NIVEL_ESTUDIOS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(25388214928954514)
,p_prompt=>'Nivel estudios'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_NIVEL_ESTUDIO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_NIVEL||'' - ''||DESCRIPCION D, ',
'	   COD_NIVEL R',
'  FROM NIVEL_ESTUDIOS'))
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
 p_id=>wwv_flow_imp.id(24034525950736937)
,p_name=>'P102_PERS_ES_UNIPERSONAL'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(25388214928954514)
,p_prompt=>'Unipersonal'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24034682909736938)
,p_name=>'P102_PERS_NOMB_FANTASIA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(24035568729736947)
,p_prompt=>unistr('Nom. Fantas\00EDa')
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
 p_id=>wwv_flow_imp.id(24034751898736939)
,p_name=>'P102_PERS_ES_PROPIETARIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(24035210462736944)
,p_prompt=>'Es propietario'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24034814246736940)
,p_name=>'P102_PERS_PROFESION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(25388214928954514)
,p_prompt=>unistr('Profesi\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PROFESIONALES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT COD_PROFESION||'' - ''||DESCRIPCION D, ',
'		COD_PROFESION  R',
'   FROM PROFESIONES '))
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>'Consulta de Profesiones'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24034910334736941)
,p_name=>'P102_PERS_TIPO_SOCIEDAD'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(25388214928954514)
,p_prompt=>'Tip. Sociedad'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_TIPOS_SOCIEDADES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TIPO_SOCIEDAD||'' - ''||DESCRIPCION D, ',
'	   TIPO_SOCIEDAD R',
'  FROM TIPOS_SOCIEDAD '))
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
 p_id=>wwv_flow_imp.id(24035036264736942)
,p_name=>'P102_PERS_TIEMPO_RESISDENCIA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(25388214928954514)
,p_prompt=>'Residencia'
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
 p_id=>wwv_flow_imp.id(24035182388736943)
,p_name=>'P102_PERS_IND_VIVIENDA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(25388214928954514)
,p_prompt=>'Casa/ Local'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Propia;P,Alquilada;A,Otra;O'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'< DESCONOCIDO >'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24035481163736946)
,p_name=>'P102_PERS_ES_FISICA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(24035331251736945)
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>unistr('STATIC:F\00EDsica;S,Jur\00EDdica;N')
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24035633457736948)
,p_name=>'P102_PERS_REFERENCIA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(25388214928954514)
,p_prompt=>'Observaciones'
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
 p_id=>wwv_flow_imp.id(24035761529736949)
,p_name=>'P102_PERS_NUM_HIJOS'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(25388214928954514)
,p_prompt=>'Hijos'
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
 p_id=>wwv_flow_imp.id(24035880426736950)
,p_name=>'P102_PERS_PAGINA_WEB'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(25388214928954514)
,p_prompt=>unistr('P\00E1gina Web')
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
 p_id=>wwv_flow_imp.id(25386972175954501)
,p_name=>'P102_PERS_ES_MAL_DEUDOR'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(25388214928954514)
,p_prompt=>'Mal deudor'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25387030982954502)
,p_name=>'P102_PERS_CONYUGUE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(25388214928954514)
,p_prompt=>unistr('C\00F3nyugue')
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
 p_id=>wwv_flow_imp.id(25387157005954503)
,p_name=>'P102_PERS_FEC_NACIMIENTO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(25388214928954514)
,p_prompt=>'Fec. Nacimiento'
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
 p_id=>wwv_flow_imp.id(25387250425954504)
,p_name=>'P102_PERS_ESTATAL'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(25388214928954514)
,p_item_default=>'N'
,p_prompt=>'Estatal'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25387407645954506)
,p_name=>'P102_PERS_DIREC_ELECTRONICA'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(25388214928954514)
,p_prompt=>'E-Mail'
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
 p_id=>wwv_flow_imp.id(25387556260954507)
,p_name=>'P102_PERS_DIREC_ELECTRONICA_ST'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(25388214928954514)
,p_prompt=>'E-Mail ST'
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
 p_id=>wwv_flow_imp.id(25387603896954508)
,p_name=>'P102_PERS_TOTAL_INGRESOS'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(25388214928954514)
,p_prompt=>'Total Ingresos'
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
 p_id=>wwv_flow_imp.id(25387786254954509)
,p_name=>'P102_PERS_NUM_DEPENDIENTES'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(25388214928954514)
,p_prompt=>'Dependientes'
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
 p_id=>wwv_flow_imp.id(25387880076954510)
,p_name=>'P102_PERS_SEXO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(25388214928954514)
,p_prompt=>'Sexo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Femenino;F,Masculino;M'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25387904053954511)
,p_name=>'P102_PERS_LUCRATIVA'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(25388214928954514)
,p_item_default=>'N'
,p_prompt=>'Lucrativa'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25388025114954512)
,p_name=>'P102_PERS_COD_ESTADO_CIVIL'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(25388214928954514)
,p_prompt=>'Estado Civil'
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
 p_id=>wwv_flow_imp.id(25388525769954517)
,p_name=>'P102_PERS_LUGAR_TRABAJO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(25388408521954516)
,p_prompt=>'Empresa'
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
 p_id=>wwv_flow_imp.id(25388670169954518)
,p_name=>'P102_PERS_COD_SECTOR_TRAB'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(25388408521954516)
,p_prompt=>'Sector'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SECTOR_ECO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_SECTOR||'' - ''||DESCRIPCION D,',
'	   COD_SECTOR R,',
'       DESCRIPCION',
'  FROM SECTORES_ECON',
' ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione - '
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
 p_id=>wwv_flow_imp.id(25388743576954519)
,p_name=>'P102_PERS_DIRECCION_TRAB'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(25388408521954516)
,p_prompt=>unistr(' Direcci\00F3n')
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
 p_id=>wwv_flow_imp.id(25388884630954520)
,p_name=>'P102_PERS_TELEFONO_TRAB'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(25388408521954516)
,p_prompt=>unistr('Tel\00E9fono')
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
 p_id=>wwv_flow_imp.id(25388967537954521)
,p_name=>'P102_PERS_CARGO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(25388408521954516)
,p_prompt=>'Cargo'
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
 p_id=>wwv_flow_imp.id(25389035438954522)
,p_name=>'P102_PERS_ANTIGUEDAD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(25388408521954516)
,p_prompt=>unistr('Antig\00FCedad')
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
 p_id=>wwv_flow_imp.id(25390414166954536)
,p_name=>'P102_VBLE_COD_USUARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(25390225966954534)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25390526048954537)
,p_name=>'P102_VBLE_COD_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(25390225966954534)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25390698673954538)
,p_name=>'P102_VBLE_NOM_MODULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(25390225966954534)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25390777034954539)
,p_name=>'P102_VBLE_COD_SUCURSAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(25390225966954534)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25390894338954540)
,p_name=>'P102_VBLE_COD_PROCESO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(25390225966954534)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25390917956954541)
,p_name=>'P102_VBLE_COD_EMPRESA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(25390225966954534)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25391033916954542)
,p_name=>'P102_VBLE_DERECHOS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(25390225966954534)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25391158780954543)
,p_name=>'P102_VBLE_COD_FORMA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(25390225966954534)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25391286395954544)
,p_name=>'P102_VBLE_GRABANDO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(25390225966954534)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25391322738954545)
,p_name=>'P102_VBLE_CARGA_DIRECCION'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(25390225966954534)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25391464974954546)
,p_name=>'P102_VBLE_CARGA_CONTACTO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(25390225966954534)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25391525075954547)
,p_name=>'P102_VBLE_CARGA_ATRIBUTO_CLI'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(25390225966954534)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25391620181954548)
,p_name=>'P102_VBLE_CARGA_IDENTIFICACION'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(25390225966954534)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25391745974954549)
,p_name=>'P102_VBLE_CARGA_TELEFONO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(25390225966954534)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_imp.id(25391877497954550)
,p_name=>'P102_VBLE_MOD_LIM_CREDITO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(25390225966954534)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25480522779430501)
,p_name=>'P102_VBLE_CARGANDO_DO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(25390225966954534)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25480614411430502)
,p_name=>'P102_VBLE_NOM_FORMA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(25390225966954534)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25480743698430503)
,p_name=>'P102_VBLE_NOM_EMPRESA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(25390225966954534)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25480961349430505)
,p_name=>'P102_VBLE_COD_IDIOMA'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(25390225966954534)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25481180147430507)
,p_name=>'P102_VBLE_NOM_SUCURSAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(25390225966954534)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25481222645430508)
,p_name=>'P102_VBLE_CODSISMENU'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(25390225966954534)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25482274744430518)
,p_name=>'P102_DATOS_INSERCION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(25482008409430516)
,p_prompt=>unistr('Datos Inserci\00F3n')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25482309700430519)
,p_name=>'P102_PERS_ALTA_POR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(25482008409430516)
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
 p_id=>wwv_flow_imp.id(25482435999430520)
,p_name=>'P102_PERS_FEC_ALTA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(25482008409430516)
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
 p_id=>wwv_flow_imp.id(25482578918430521)
,p_name=>'P102_DATOS_ACTUALIZACION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(25482008409430516)
,p_prompt=>unistr('Datos Actualizaci\00F3n')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25482740164430523)
,p_name=>'P102_PERS_ACTUALIZADO_POR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(25482008409430516)
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
 p_id=>wwv_flow_imp.id(25482896964430524)
,p_name=>'P102_PERS_FEC_ACTUALIZACION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(25482008409430516)
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
 p_id=>wwv_flow_imp.id(25482925087430525)
,p_name=>'P102_PERS_NACIONALIDAD'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(25388214928954514)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25483105203430527)
,p_name=>'P102_DIR_COD_PERSONA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(25990744012875425)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25483664077430532)
,p_name=>'P102_DIR_COD_DIRECCION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(25990744012875425)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25483725309430533)
,p_name=>'P102_DIR_TIP_DIRECCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(25990744012875425)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_TIPO_DIRECCION'
,p_lov=>'.'||wwv_flow_imp.id(26608862961811087)||'.'
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
 p_id=>wwv_flow_imp.id(25483880101430534)
,p_name=>'P102_DIR_DETALLE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(25990744012875425)
,p_prompt=>'Detalle'
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
 p_id=>wwv_flow_imp.id(25483901099430535)
,p_name=>'P102_DIR_POR_DEFECTO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(25990744012875425)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25484011487430536)
,p_name=>'P102_DIR_COD_PAIS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(25990744012875425)
,p_prompt=>unistr('Pa\00EDs')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PAISES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select descripcion',
'			, cod_pais',
'			    from paises'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione -'
,p_cSize=>30
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(25484197252430537)
,p_name=>'P102_DIR_COD_PROVINCIA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(25990744012875425)
,p_prompt=>'Ciudad'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_PROVINCIA||'' - ''||DESCRIPCION D,',
'	   COD_PROVINCIA R',
'  FROM PROVINCIAS ',
' WHERE COD_PAIS = :P102_DIR_COD_PAIS ',
' ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione -'
,p_lov_cascade_parent_items=>'P102_DIR_COD_PAIS'
,p_ajax_items_to_submit=>'P102_DIR_COD_PAIS'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(25484228844430538)
,p_name=>'P102_DIR_COD_CIUDAD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(25990744012875425)
,p_prompt=>'Ciudad'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_CIUDAD||'' - ''||DESCRIPCION D, ',
'		COD_CIUDAD R',
'   FROM CIUDADES ',
'  WHERE COD_PAIS = :P102_DIR_COD_PAIS ',
'    AND COD_PROVINCIA = :P102_DIR_COD_PROVINCIA ',
'  ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione - '
,p_lov_cascade_parent_items=>'P102_DIR_COD_PAIS,P102_DIR_COD_PROVINCIA'
,p_ajax_items_to_submit=>'P102_DIR_COD_PAIS,P102_DIR_COD_PROVINCIA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(25484305849430539)
,p_name=>'P102_DIR_COD_BARRIO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(25990744012875425)
,p_prompt=>'Barrio'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_BARRIO||'' - ''||DESCRIPCION D, ',
'       COD_BARRIO R',
'  FROM BARRIOS ',
' WHERE COD_PAIS = :P102_DIR_COD_PAIS ',
'   AND COD_PROVINCIA = :P102_DIR_COD_PROVINCIA ',
'   AND COD_CIUDAD = :P102_DIR_COD_CIUDAD ',
' ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione - '
,p_lov_cascade_parent_items=>'P102_DIR_COD_PAIS,P102_DIR_COD_PROVINCIA,P102_DIR_COD_CIUDAD'
,p_ajax_items_to_submit=>'P102_DIR_COD_PAIS,P102_DIR_COD_PROVINCIA,P102_DIR_COD_CIUDAD'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(25484470833430540)
,p_name=>'P102_DIR_CASILLA_CORREO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(25990744012875425)
,p_prompt=>'C. Correo'
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
 p_id=>wwv_flow_imp.id(25484554026430541)
,p_name=>'P102_DIR_CODIGO_POSTAL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(25990744012875425)
,p_prompt=>'C. Postal'
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
 p_id=>wwv_flow_imp.id(25989226901875410)
,p_name=>'P102_DIR_ACCION'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(25990744012875425)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25989345249875411)
,p_name=>'P102_DIR_AUX_SEQ_ID'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(25990744012875425)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25990323815875421)
,p_name=>'P102_DIR_AUX_SEQ_ID_ELIMINAR'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(25990744012875425)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26485377531363202)
,p_name=>'P102_DIR_URL'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(25990744012875425)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26486025660363209)
,p_name=>'P102_TEL_CODIGO_AREA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(26485916121363208)
,p_prompt=>unistr('\00C1rea')
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
 p_id=>wwv_flow_imp.id(26486104611363210)
,p_name=>'P102_TEL_NUM_TELEFONO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(26485916121363208)
,p_prompt=>unistr('Tel\00E9fono')
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
 p_id=>wwv_flow_imp.id(26486258752363211)
,p_name=>'P102_TEL_TIP_TELEFONO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(26485916121363208)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:L\00EDnea Directa;D,Celular;C,Fax;F')
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26486363176363212)
,p_name=>'P102_TEL_TEL_UBICACION'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(26485916121363208)
,p_prompt=>unistr('Ubicaci\00F3n')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Casa;C,Trabajo;T,Otro;O'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26486459913363213)
,p_name=>'P102_TEL_NOTA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(26485916121363208)
,p_prompt=>'Nota'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26486555846363214)
,p_name=>'P102_TEL_INTERNO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(26485916121363208)
,p_prompt=>'Interno'
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
 p_id=>wwv_flow_imp.id(26486609737363215)
,p_name=>'P102_TEL_POR_DEFECTO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(26485916121363208)
,p_prompt=>'Defecto'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26486781905363216)
,p_name=>'P102_TEL_PARA_INFORME'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(26485916121363208)
,p_prompt=>'Factura'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26486828210363217)
,p_name=>'P102_TEL_COD_PERSONA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26485916121363208)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26486980608363218)
,p_name=>'P102_TEL_COD_DIRECCION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(26485916121363208)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27077860729471202)
,p_name=>'P102_DOC_COD_IDENT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(26489028954363239)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_IDENTIFICACIONES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION, ',
'	   COD_IDENT ',
'  FROM IDENTIFICACIONES '))
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
 p_id=>wwv_flow_imp.id(27077974337471203)
,p_name=>'P102_DOC_NUMERO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(26489028954363239)
,p_prompt=>unistr('N\00FAmero')
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
 p_id=>wwv_flow_imp.id(27078016344471204)
,p_name=>'P102_DOC_DV_AGENTE_INF'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(26489028954363239)
,p_prompt=>'DV agente inf.'
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
 p_id=>wwv_flow_imp.id(27078114511471205)
,p_name=>'P102_DOC_NUMERO_AGENTE_INF'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(26489028954363239)
,p_prompt=>unistr('N\00FAmero agente inf.')
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
 p_id=>wwv_flow_imp.id(27078293460471206)
,p_name=>'P102_DOC_FEC_VENDIMIENTO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(26489028954363239)
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
 p_id=>wwv_flow_imp.id(27078440393471208)
,p_name=>'P102_DOC_COD_PERSONA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26489028954363239)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27078643762471210)
,p_name=>'P102_RESP_COD_PERSONA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27078535386471209)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27079897122471222)
,p_name=>'P102_RESP_COD_PERSONA_REF'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(27078535386471209)
,p_prompt=>'Responsable'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_RESPONSABLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_PERSONA||'' - ''||LTRIM( RTRIM( NVL( NOMBRE, NOMB_FANTASIA ) ) ) NOMBRE, ',
'	   COD_PERSONA	 ',
'  FROM PERSONAS ',
' WHERE ES_FISICA = ''S''',
' ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione -'
,p_cSize=>30
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(27081408326471238)
,p_name=>'P102_GAR_COD_PERSONA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27080259720471226)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27081544329471239)
,p_name=>'P102_GAR_COD_PERSONA_REF'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(27080259720471226)
,p_prompt=>'Garante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_GARANTES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_PERSONA||'' - ''||LTRIM( RTRIM( NVL( NOMBRE, NOMB_FANTASIA ) ) ) NOMBRE,',
'	   COD_PERSONA ',
'  FROM PERSONAS ',
' WHERE ES_FISICA = ''S'' ',
' ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione -'
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
 p_id=>wwv_flow_imp.id(27346638963508004)
,p_name=>'P102_TEL_AUX_SEQ_ID_FACT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(26485916121363208)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27346720333508005)
,p_name=>'P102_TEL_AUX_SEQ_ID_DEF'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(26485916121363208)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27346894157508006)
,p_name=>'P102_TEL_ACCION_DEF'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(26485916121363208)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27346917226508007)
,p_name=>'P102_TEL_ACCION_FACT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(26485916121363208)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27348244975508020)
,p_name=>'P102_TEL_ERROR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(26485916121363208)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27349974042508037)
,p_name=>'P102_TEL_AUX_SEQ_ID_ELIMINAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(26485916121363208)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28304009727408606)
,p_name=>'P102_TEL_URL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(26485916121363208)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28305977289408625)
,p_name=>'P102_DOC_AUX_SEQ_ID_ELIMINAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(26489028954363239)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28306951257408635)
,p_name=>'P102_DOC_ERROR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(26489028954363239)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28307727377408643)
,p_name=>'P102_DOC_URL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(26489028954363239)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28601179638538720)
,p_name=>'P102_RESP_AUX_SEQ_ID_ELIMINAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(27078535386471209)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28601621105538725)
,p_name=>'P102_RESP_ERROR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(27078535386471209)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28604034234538749)
,p_name=>'P102_GAR_AUX_SEQ_ID_ELIMINAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(27080259720471226)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28604104508538750)
,p_name=>'P102_GAR_ERROR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(27080259720471226)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28630850957262318)
,p_name=>'P102_RESP_URL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(27078535386471209)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28630947364262319)
,p_name=>'P102_GAR_URL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(27080259720471226)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28631502699262325)
,p_name=>'P102_CON_NOM_CONTACTO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(27081914013471243)
,p_prompt=>'Nombre'
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
 p_id=>wwv_flow_imp.id(28631664498262326)
,p_name=>'P102_CON_CARGO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(27081914013471243)
,p_prompt=>'Cargo'
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
 p_id=>wwv_flow_imp.id(28631724346262327)
,p_name=>'P102_CON_ASUNTO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(27081914013471243)
,p_prompt=>'Asunto'
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
 p_id=>wwv_flow_imp.id(28631864142262328)
,p_name=>'P102_CON_TELEFONO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(27081914013471243)
,p_prompt=>unistr('Tel\00E9fono')
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
 p_id=>wwv_flow_imp.id(28632254174262332)
,p_name=>'P102_CON_COD_PERSONA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27081914013471243)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28632304536262333)
,p_name=>'P102_CON_AUX_SEQ_ID_ELIMINAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(27081914013471243)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28632507699262335)
,p_name=>'P102_CON_ERROR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(27081914013471243)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28819540497754608)
,p_name=>'P102_CON_URL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(27081914013471243)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28823063980754643)
,p_name=>'P102_PERS_ERROR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(24035568729736947)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28857164773336447)
,p_name=>'P102_ES_FISICA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(24035331251736945)
,p_prompt=>'Es Fisica'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>unistr('STATIC:F\00EDsica;S')
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28857215807336448)
,p_name=>'P102_ES_JURIDICA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(24035331251736945)
,p_prompt=>'Es Juridica'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>unistr('STATIC:Jur\00EDdica;N')
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50720242025458509)
,p_name=>'P102_CONTROL_PAG_ORIG'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(25390225966954534)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69760234517374321)
,p_name=>'P102_VISITA'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(28822817171754641)
,p_validation_name=>'VA_NOMBRE_NO_NULL'
,p_validation_sequence=>10
,p_validation=>'P102_PERS_NOMBRE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe ingresar Nombre y/o Apellido'
,p_when_button_pressed=>wwv_flow_imp.id(25483074935430526)
,p_associated_item=>wwv_flow_imp.id(24034144754736933)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25481844513430514)
,p_name=>'DA_BUSCAR_PERSONA'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25481733054430513)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25481965583430515)
,p_event_id=>wwv_flow_imp.id(25481844513430514)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_DIRECCION'');',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_TELEFONO'');',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_DOCUMENTO'');',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_RESPONSABLE'');',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_GARANTE'');',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_CONTACTO'');',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_EMAIL'');',
'    :P102_PERS_ERROR := 0;',
'    IF :P102_PERS_COD_PERSONA IS NOT NULL THEN',
'        BSPERSON.CARGA_PERSONA(PI_P_COD_PERSONA 	  	 	=>  :P102_PERS_COD_PERSONA,',
'        					   PO_PERS_ES_FISICA 	  	 	=>  :P102_PERS_ES_FISICA,',
'        					   PO_PERS_NOMBRE 	 	  	 	=>  :P102_PERS_NOMBRE,',
'        					   PO_PERS_NOMB_FANTASIA  	 	=>  :P102_PERS_NOMB_FANTASIA,',
'        					   PO_PERS_SEXO 		  	 	=>  :P102_PERS_SEXO,',
'        					   PO_PERS_FEC_NACIMIENTO 	 	=>  :P102_PERS_FEC_NACIMIENTO,',
'        					   PO_PERS_NIVEL_ESTUDIOS 	 	=>  :P102_PERS_NIVEL_ESTUDIOS,',
'        					   PO_PERS_PROFESION 	  	 	=>  :P102_PERS_PROFESION,',
'        					   PO_PERS_COD_SECTOR 	  	 	=>  :P102_PERS_COD_SECTOR,',
'        					   PO_PERS_COD_PAIS 	  	 	=>  :P102_PERS_COD_PAIS,',
'        					   PO_PERS_NACIONALIDAD 	 	=>  :P102_PERS_NACIONALIDAD,',
'        					   PO_PERS_COD_ESTADO_CIVIL  	=>  :P102_PERS_COD_ESTADO_CIVIL,',
'        					   PO_PERS_CONYUGUE 			=>  :P102_PERS_CONYUGUE,',
'        					   PO_PERS_NUM_HIJOS 		 	=>  :P102_PERS_NUM_HIJOS,',
'        					   PO_PERS_NUM_DEPENDIENTES  	=>  :P102_PERS_NUM_DEPENDIENTES,',
'        					   PO_PERS_TOTAL_INGRESOS 	 	=>  :P102_PERS_TOTAL_INGRESOS,',
'        					   PO_PERS_ES_MAL_DEUDOR 	 	=>  :P102_PERS_ES_MAL_DEUDOR,',
'        					   PO_PERS_DIREC_ELECTRONICA 	=>  :P102_PERS_DIREC_ELECTRONICA,',
'        					   PO_PERS_PAGINA_WEB 		 	=>  :P102_PERS_PAGINA_WEB,',
'        					   PO_PERS_TIPO_SOCIEDAD 	 	=>  :P102_PERS_TIPO_SOCIEDAD,',
'        					   PO_PERS_LUCRATIVA 		 	=>  :P102_PERS_LUCRATIVA,',
'        					   PO_PERS_ESTATAL 			 	=>  :P102_PERS_ESTATAL,',
'        					   PO_PERS_ALTA_POR 		 	=>  :P102_PERS_ALTA_POR,',
'        					   PO_PERS_FEC_ALTA 		 	=>  :P102_PERS_FEC_ALTA,',
'        					   PO_PERS_ACTUALIZADO_POR 	 	=>  :P102_PERS_ACTUALIZADO_POR,',
'        					   PO_PERS_FEC_ACTUALIZACION 	=>  :P102_PERS_FEC_ACTUALIZACION,',
'        					   PO_PERS_REFERENCIA 		 	=>  :P102_PERS_REFERENCIA,',
'        					   PO_PERS_TIEMPO_RESIDENCIA 	=>  :P102_PERS_TIEMPO_RESISDENCIA,',
'        					   PO_PERS_IND_VIVIENDA 	 	=>  :P102_PERS_IND_VIVIENDA,',
'        					   PO_PERS_LUGAR_TRABAJO 	 	=>  :P102_PERS_LUGAR_TRABAJO,',
'        					   PO_PERS_COD_SECTOR_TRAB 	 	=>  :P102_PERS_COD_SECTOR_TRAB,',
'        					   PO_PERS_DIRECCION_TRAB 	 	=>  :P102_PERS_DIRECCION_TRAB,',
'        					   PO_PERS_TELEFONO_TRAB 		=>  :P102_PERS_TELEFONO_TRAB,',
'        					   PO_PERS_CARGO 			 	=>  :P102_PERS_CARGO,',
'        					   PO_PERS_ANTIGUEDAD 		 	=>  :P102_PERS_ANTIGUEDAD,',
'        					   PO_PERS_ES_UNIPERSONAL 	 	=>  :P102_PERS_ES_UNIPERSONAL,',
'        					   PO_PERS_ES_PROPIETARIO 	 	=>  :P102_PERS_ES_PROPIETARIO,',
'        					   PO_PERS_APENOMBRE 		 	=>  :P102_PERS_APENOMBRE,',
'        					   PO_PERS_DIREC_ELECTRONICA_ST =>  :P102_PERS_DIREC_ELECTRONICA_ST);',
'    ELSE ',
'        :P102_PERS_ERROR := 1;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_BUSCAR_PERSONA - BSPERSON.CARGA_PERSONA - ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P102_PERS_COD_PERSONA'
,p_attribute_03=>'P102_PERS_ES_FISICA,P102_PERS_NOMBRE,P102_PERS_NOMB_FANTASIA,P102_PERS_SEXO,P102_PERS_FEC_NACIMIENTO,P102_PERS_NIVEL_ESTUDIOS,P102_PERS_PROFESION,P102_PERS_COD_SECTOR,P102_PERS_COD_PAIS,P102_PERS_NACIONALIDAD,P102_PERS_COD_ESTADO_CIVIL,P102_PERS_CONY'
||'UGUE,P102_PERS_NUM_HIJOS,P102_PERS_NUM_DEPENDIENTES,P102_PERS_TOTAL_INGRESOS,P102_PERS_ES_MAL_DEUDOR,P102_PERS_DIREC_ELECTRONICA,P102_PERS_PAGINA_WEB,P102_PERS_TIPO_SOCIEDAD,P102_PERS_LUCRATIVA,P102_PERS_ESTATAL,P102_PERS_ALTA_POR,P102_PERS_FEC_ALTA,'
||'P102_PERS_ACTUALIZADO_POR,P102_PERS_FEC_ACTUALIZACION,P102_PERS_REFERENCIA,P102_PERS_TIEMPO_RESISDENCIA,P102_PERS_IND_VIVIENDA,P102_PERS_LUGAR_TRABAJO,P102_PERS_COD_SECTOR_TRAB,P102_PERS_DIRECCION_TRAB,P102_PERS_TELEFONO_TRAB,P102_PERS_CARGO,P102_PER'
||'S_ANTIGUEDAD,P102_PERS_ES_UNIPERSONAL,P102_PERS_ES_PROPIETARIO,P102_PERS_APENOMBRE,P102_PERS_DIREC_ELECTRONICA_ST,P102_PERS_ERROR'
,p_attribute_04=>'N'
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28823151842754644)
,p_event_id=>wwv_flow_imp.id(25481844513430514)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Para la consulta debe ingresar un c\00F3digo de persona.')
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P102_PERS_ERROR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25989930221875417)
,p_event_id=>wwv_flow_imp.id(25481844513430514)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_DIRECCION'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_TELEFONO'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_DOCUMENTO'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_RESPONSABLE'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_GARANTE'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_CONTACTO'');',
'',
'BSPERSON.BUSCA_DIRECCION(PI_DIR_COD_PERSONA => :P102_PERS_COD_PERSONA);',
'BSPERSON.BUSCA_TELEFONO(PI_TEL_COD_PERSONA => :P102_PERS_COD_PERSONA);',
'BSPERSON.BUSCA_DOCUMENTO(PI_DOC_COD_PERSONA => :P102_PERS_COD_PERSONA);',
'BSPERSON.BUSCA_RESPONSABLE (PI_RESP_COD_PERSONA     => :P102_PERS_COD_PERSONA,',
'						    PI_RESP_COD_PERSONA_REF => NULL);',
'BSPERSON.BUSCA_GARANTE (PI_GAR_COD_PERSONA 	   => :P102_PERS_COD_PERSONA,',
'						PI_GAR_COD_PERSONA_REF => NULL);',
'BSPERSON.BUSCA_CONTACTO(PI_CON_COD_PERSONA      => :P102_PERS_COD_PERSONA,',
'						 PI_CON_NOMBRE_CONTACTO => NULL,',
'						 PI_CON_ASUNTO 			=> NULL,',
'						 PI_CON_CARGO 			=> NULL,',
'						 PI_CON_TELEFONO 		=> NULL);'))
,p_attribute_02=>'P102_PERS_COD_PERSONA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P102_PERS_COD_PERSONA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29539475514173404)
,p_event_id=>wwv_flow_imp.id(25481844513430514)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(28822972559754642)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25990091879875418)
,p_event_id=>wwv_flow_imp.id(25481844513430514)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25485059527430546)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26487078409363219)
,p_event_id=>wwv_flow_imp.id(25481844513430514)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26487180320363220)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27077718819471201)
,p_event_id=>wwv_flow_imp.id(25481844513430514)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26489239648363241)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27079779150471221)
,p_event_id=>wwv_flow_imp.id(25481844513430514)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27078719883471211)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27080441601471228)
,p_event_id=>wwv_flow_imp.id(25481844513430514)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27080373176471227)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27346587704508003)
,p_event_id=>wwv_flow_imp.id(25481844513430514)
,p_event_result=>'TRUE'
,p_action_sequence=>160
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27082048028471244)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29541312521173423)
,p_event_id=>wwv_flow_imp.id(25481844513430514)
,p_event_result=>'TRUE'
,p_action_sequence=>180
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSPERSON.CARGA_EMAIL_CONTACTO (PI_PERS_COD_PERSONA 	        => :P102_PERS_COD_PERSONA,',
'								   PI_PERS_DIREC_ELECTRONICA    => :P102_PERS_DIREC_ELECTRONICA,',
'                                   PI_PERS_DIREC_ELECTRONICA_ST => :P102_PERS_DIREC_ELECTRONICA_ST,',
'								   PI_PERS_NOMBRE 			    => :P102_PERS_NOMBRE);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(-20000,''DA_CARGAR_MAIL - BSPERSON.CARGA_EMAIL_CONTACTO - ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P102_PERS_COD_PERSONA,P102_PERS_DIREC_ELECTRONICA,P102_PERS_DIREC_ELECTRONICA_ST,P102_PERS_NOMBRE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31074210863852850)
,p_name=>'DA_BUSCAR_PERSONA_POR_PARA'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P102_P_COD_PERSONA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34238324980797312)
,p_event_id=>wwv_flow_imp.id(31074210863852850)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P102_PERS_COD_PERSONA := :P102_P_COD_PERSONA;'
,p_attribute_02=>'P102_P_COD_PERSONA'
,p_attribute_03=>'P102_PERS_COD_PERSONA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34237201166797301)
,p_event_id=>wwv_flow_imp.id(31074210863852850)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_DIRECCION'');',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_TELEFONO'');',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_DOCUMENTO'');',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_RESPONSABLE'');',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_GARANTE'');',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_CONTACTO'');',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_EMAIL'');',
'    :P102_PERS_ERROR := 0;',
'    IF :P102_PERS_COD_PERSONA IS NOT NULL THEN',
'        BSPERSON.CARGA_PERSONA(PI_P_COD_PERSONA 	  	 	=>  :P102_PERS_COD_PERSONA,',
'        					   PO_PERS_ES_FISICA 	  	 	=>  :P102_PERS_ES_FISICA,',
'        					   PO_PERS_NOMBRE 	 	  	 	=>  :P102_PERS_NOMBRE,',
'        					   PO_PERS_NOMB_FANTASIA  	 	=>  :P102_PERS_NOMB_FANTASIA,',
'        					   PO_PERS_SEXO 		  	 	=>  :P102_PERS_SEXO,',
'        					   PO_PERS_FEC_NACIMIENTO 	 	=>  :P102_PERS_FEC_NACIMIENTO,',
'        					   PO_PERS_NIVEL_ESTUDIOS 	 	=>  :P102_PERS_NIVEL_ESTUDIOS,',
'        					   PO_PERS_PROFESION 	  	 	=>  :P102_PERS_PROFESION,',
'        					   PO_PERS_COD_SECTOR 	  	 	=>  :P102_PERS_COD_SECTOR,',
'        					   PO_PERS_COD_PAIS 	  	 	=>  :P102_PERS_COD_PAIS,',
'        					   PO_PERS_NACIONALIDAD 	 	=>  :P102_PERS_NACIONALIDAD,',
'        					   PO_PERS_COD_ESTADO_CIVIL  	=>  :P102_PERS_COD_ESTADO_CIVIL,',
'        					   PO_PERS_CONYUGUE 			=>  :P102_PERS_CONYUGUE,',
'        					   PO_PERS_NUM_HIJOS 		 	=>  :P102_PERS_NUM_HIJOS,',
'        					   PO_PERS_NUM_DEPENDIENTES  	=>  :P102_PERS_NUM_DEPENDIENTES,',
'        					   PO_PERS_TOTAL_INGRESOS 	 	=>  :P102_PERS_TOTAL_INGRESOS,',
'        					   PO_PERS_ES_MAL_DEUDOR 	 	=>  :P102_PERS_ES_MAL_DEUDOR,',
'        					   PO_PERS_DIREC_ELECTRONICA 	=>  :P102_PERS_DIREC_ELECTRONICA,',
'        					   PO_PERS_PAGINA_WEB 		 	=>  :P102_PERS_PAGINA_WEB,',
'        					   PO_PERS_TIPO_SOCIEDAD 	 	=>  :P102_PERS_TIPO_SOCIEDAD,',
'        					   PO_PERS_LUCRATIVA 		 	=>  :P102_PERS_LUCRATIVA,',
'        					   PO_PERS_ESTATAL 			 	=>  :P102_PERS_ESTATAL,',
'        					   PO_PERS_ALTA_POR 		 	=>  :P102_PERS_ALTA_POR,',
'        					   PO_PERS_FEC_ALTA 		 	=>  :P102_PERS_FEC_ALTA,',
'        					   PO_PERS_ACTUALIZADO_POR 	 	=>  :P102_PERS_ACTUALIZADO_POR,',
'        					   PO_PERS_FEC_ACTUALIZACION 	=>  :P102_PERS_FEC_ACTUALIZACION,',
'        					   PO_PERS_REFERENCIA 		 	=>  :P102_PERS_REFERENCIA,',
'        					   PO_PERS_TIEMPO_RESIDENCIA 	=>  :P102_PERS_TIEMPO_RESISDENCIA,',
'        					   PO_PERS_IND_VIVIENDA 	 	=>  :P102_PERS_IND_VIVIENDA,',
'        					   PO_PERS_LUGAR_TRABAJO 	 	=>  :P102_PERS_LUGAR_TRABAJO,',
'        					   PO_PERS_COD_SECTOR_TRAB 	 	=>  :P102_PERS_COD_SECTOR_TRAB,',
'        					   PO_PERS_DIRECCION_TRAB 	 	=>  :P102_PERS_DIRECCION_TRAB,',
'        					   PO_PERS_TELEFONO_TRAB 		=>  :P102_PERS_TELEFONO_TRAB,',
'        					   PO_PERS_CARGO 			 	=>  :P102_PERS_CARGO,',
'        					   PO_PERS_ANTIGUEDAD 		 	=>  :P102_PERS_ANTIGUEDAD,',
'        					   PO_PERS_ES_UNIPERSONAL 	 	=>  :P102_PERS_ES_UNIPERSONAL,',
'        					   PO_PERS_ES_PROPIETARIO 	 	=>  :P102_PERS_ES_PROPIETARIO,',
'        					   PO_PERS_APENOMBRE 		 	=>  :P102_PERS_APENOMBRE,',
'        					   PO_PERS_DIREC_ELECTRONICA_ST =>  :P102_PERS_DIREC_ELECTRONICA_ST);',
'    ELSE ',
'        :P102_PERS_ERROR := 1;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_BUSCAR_PERSONA - BSPERSON.CARGA_PERSONA - ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P102_PERS_COD_PERSONA'
,p_attribute_03=>'P102_PERS_ES_FISICA,P102_PERS_NOMBRE,P102_PERS_NOMB_FANTASIA,P102_PERS_SEXO,P102_PERS_FEC_NACIMIENTO,P102_PERS_NIVEL_ESTUDIOS,P102_PERS_PROFESION,P102_PERS_COD_SECTOR,P102_PERS_COD_PAIS,P102_PERS_NACIONALIDAD,P102_PERS_COD_ESTADO_CIVIL,P102_PERS_CONY'
||'UGUE,P102_PERS_NUM_HIJOS,P102_PERS_NUM_DEPENDIENTES,P102_PERS_TOTAL_INGRESOS,P102_PERS_ES_MAL_DEUDOR,P102_PERS_DIREC_ELECTRONICA,P102_PERS_PAGINA_WEB,P102_PERS_TIPO_SOCIEDAD,P102_PERS_LUCRATIVA,P102_PERS_ESTATAL,P102_PERS_ALTA_POR,P102_PERS_FEC_ALTA,'
||'P102_PERS_ACTUALIZADO_POR,P102_PERS_FEC_ACTUALIZACION,P102_PERS_REFERENCIA,P102_PERS_TIEMPO_RESISDENCIA,P102_PERS_IND_VIVIENDA,P102_PERS_LUGAR_TRABAJO,P102_PERS_COD_SECTOR_TRAB,P102_PERS_DIRECCION_TRAB,P102_PERS_TELEFONO_TRAB,P102_PERS_CARGO,P102_PER'
||'S_ANTIGUEDAD,P102_PERS_ES_UNIPERSONAL,P102_PERS_ES_PROPIETARIO,P102_PERS_APENOMBRE,P102_PERS_DIREC_ELECTRONICA_ST,P102_PERS_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34237376657797302)
,p_event_id=>wwv_flow_imp.id(31074210863852850)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Para la consulta debe ingresar un c\00F3digo de persona.')
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P102_PERS_ERROR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34237439819797303)
,p_event_id=>wwv_flow_imp.id(31074210863852850)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_DIRECCION'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_TELEFONO'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_DOCUMENTO'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_RESPONSABLE'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_GARANTE'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_CONTACTO'');',
'',
'BSPERSON.BUSCA_DIRECCION(PI_DIR_COD_PERSONA => :P102_PERS_COD_PERSONA);',
'BSPERSON.BUSCA_TELEFONO(PI_TEL_COD_PERSONA => :P102_PERS_COD_PERSONA);',
'BSPERSON.BUSCA_DOCUMENTO(PI_DOC_COD_PERSONA => :P102_PERS_COD_PERSONA);',
'BSPERSON.BUSCA_RESPONSABLE (PI_RESP_COD_PERSONA     => :P102_PERS_COD_PERSONA,',
'						    PI_RESP_COD_PERSONA_REF => NULL);',
'BSPERSON.BUSCA_GARANTE (PI_GAR_COD_PERSONA 	   => :P102_PERS_COD_PERSONA,',
'						PI_GAR_COD_PERSONA_REF => NULL);',
'BSPERSON.BUSCA_CONTACTO(PI_CON_COD_PERSONA      => :P102_PERS_COD_PERSONA,',
'						 PI_CON_NOMBRE_CONTACTO => NULL,',
'						 PI_CON_ASUNTO 			=> NULL,',
'						 PI_CON_CARGO 			=> NULL,',
'						 PI_CON_TELEFONO 		=> NULL);'))
,p_attribute_02=>'P102_PERS_COD_PERSONA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P102_PERS_COD_PERSONA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34237553044797304)
,p_event_id=>wwv_flow_imp.id(31074210863852850)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(28822972559754642)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34237603123797305)
,p_event_id=>wwv_flow_imp.id(31074210863852850)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25485059527430546)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34237748063797306)
,p_event_id=>wwv_flow_imp.id(31074210863852850)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26487180320363220)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34237853552797307)
,p_event_id=>wwv_flow_imp.id(31074210863852850)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26489239648363241)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34237950457797308)
,p_event_id=>wwv_flow_imp.id(31074210863852850)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27078719883471211)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34238061469797309)
,p_event_id=>wwv_flow_imp.id(31074210863852850)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27080373176471227)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34238177754797310)
,p_event_id=>wwv_flow_imp.id(31074210863852850)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27082048028471244)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34238232738797311)
,p_event_id=>wwv_flow_imp.id(31074210863852850)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSPERSON.CARGA_EMAIL_CONTACTO (PI_PERS_COD_PERSONA 	        => :P102_PERS_COD_PERSONA,',
'								   PI_PERS_DIREC_ELECTRONICA    => :P102_PERS_DIREC_ELECTRONICA,',
'                                   PI_PERS_DIREC_ELECTRONICA_ST => :P102_PERS_DIREC_ELECTRONICA_ST,',
'								   PI_PERS_NOMBRE 			    => :P102_PERS_NOMBRE);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(-20000,''DA_CARGAR_MAIL - BSPERSON.CARGA_EMAIL_CONTACTO - ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P102_PERS_COD_PERSONA,P102_PERS_DIREC_ELECTRONICA,P102_PERS_DIREC_ELECTRONICA_ST,P102_PERS_NOMBRE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25484753050430543)
,p_name=>'DA_CARGAR_DIRECCION'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25484664001430542)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25484855132430544)
,p_event_id=>wwv_flow_imp.id(25484753050430543)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P102_DIR_TIP_DIRECCION IS NOT NULL AND :P102_DIR_DETALLE IS NULL THEN',
unistr('        RAISE_APPLICATION_ERROR(-20000,''Debe cargar la direcci\00F3n del cliente.'');'),
'    END IF;',
'    BSPERSON.CARGAR_COLECCION_DIRECCION (PI_DIR_COD_PERSONA    => :P102_DIR_COD_PERSONA,',
'    									 PI_DIR_COD_PAIS       => :P102_DIR_COD_PAIS,',
'    									 PI_DIR_COD_PROVINCIA  => :P102_DIR_COD_PROVINCIA,',
'    									 PI_DIR_COD_CIUDAD     => :P102_DIR_COD_CIUDAD,',
'    									 PI_DIR_COD_BARRIO     => :P102_DIR_COD_BARRIO,',
'    									 PI_DIR_COD_DIRECCION  => :P102_DIR_COD_DIRECCION,',
'    									 PI_DIR_TIP_DIRECCION  => :P102_DIR_TIP_DIRECCION,',
'    									 PI_DIR_CODIGO_POSTAL  => :P102_DIR_CODIGO_POSTAL,',
'    									 PI_DIR_DETALLE 	   => :P102_DIR_DETALLE,',
'    									 PI_DIR_POR_DEFECTO    => :P102_DIR_POR_DEFECTO,',
'                                         PI_DIR_CASILLA_CORREO => :P102_DIR_CASILLA_CORREO,',
'                                         PI_ROWID              => NULL);',
'END;'))
,p_attribute_02=>'P102_DIR_COD_PERSONA,P102_DIR_COD_PAIS,P102_DIR_COD_PROVINCIA,P102_DIR_COD_CIUDAD,P102_DIR_COD_BARRIO,P102_DIR_COD_DIRECCION,P102_DIR_TIP_DIRECCION,P102_DIR_CODIGO_POSTAL,P102_DIR_DETALLE,P102_DIR_POR_DEFECTO,P102_DIR_CASILLA_CORREO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25990133292875419)
,p_event_id=>wwv_flow_imp.id(25484753050430543)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25485059527430546)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25989460985875412)
,p_name=>'DA_ACCION_CHECKBOX'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P102_DIR_AUX_SEQ_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25989570305875413)
,p_event_id=>wwv_flow_imp.id(25989460985875412)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSPERSON.PR_CHECK(PI_SEQ_ID    => :P102_DIR_AUX_SEQ_ID, ',
'        			  PI_ACCION    => :P102_DIR_ACCION, ',
'        			  PI_COLECCION => ''COL_DIRECCION'',',
'                      PI_ATTR      => 14);',
'    EXCEPTION',
'        WHEN OTHERS THEN ',
unistr('            APEX_DEBUG.ERROR(''Error al completar la transacci\00F3n, favor de contactarse con el equipo de soporte. ''||SQLERRM);'),
'END;'))
,p_attribute_02=>'P102_DIR_AUX_SEQ_ID,P102_DIR_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25989768798875415)
,p_name=>'DA_ASIGNA_COD_PERSONA'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P102_PERS_COD_PERSONA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25989813374875416)
,p_event_id=>wwv_flow_imp.id(25989768798875415)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P102_DIR_COD_PERSONA  := :P102_PERS_COD_PERSONA;',
':P102_TEL_COD_PERSONA  := :P102_PERS_COD_PERSONA;',
':P102_DOC_COD_PERSONA  := :P102_PERS_COD_PERSONA;',
':P102_RESP_COD_PERSONA := :P102_PERS_COD_PERSONA;',
':P102_GAR_COD_PERSONA  := :P102_PERS_COD_PERSONA;',
':P102_CON_COD_PERSONA  := :P102_PERS_COD_PERSONA;',
''))
,p_attribute_02=>'P102_PERS_COD_PERSONA'
,p_attribute_03=>'P102_DIR_COD_PERSONA,P102_TEL_COD_PERSONA,P102_DOC_COD_PERSONA,P102_RESP_COD_PERSONA,P102_GAR_COD_PERSONA,P102_CON_COD_PERSONA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P102_PERS_COD_PERSONA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25990461196875422)
,p_name=>'DA_ELIMINAR_DIRECCION'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P102_DIR_AUX_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25990583422875423)
,p_event_id=>wwv_flow_imp.id(25990461196875422)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSPERSON.ELIMINAR_DIRECCION(PI_NOM_COL => ''COL_DIRECCION'',',
'							    PI_SEQ_ID => :P102_DIR_AUX_SEQ_ID_ELIMINAR);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_ELIMINAR_DIRECCION - ELIMINAR_DIRECCION - ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P102_DIR_AUX_SEQ_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25990612271875424)
,p_event_id=>wwv_flow_imp.id(25990461196875422)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25485059527430546)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25993289974875450)
,p_name=>'DA_EDITAR_DIRECCION'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P102_DIR_AUX_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26485243868363201)
,p_event_id=>wwv_flow_imp.id(25993289974875450)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APEX_PAGE.GET_URL (  p_page => 118,',
'                            p_items => ''P118_DIR_AUX_SEQ_ID'',',
'                            p_values => :P102_DIR_AUX_SEQ_ID_EDITAR) f_url_1',
'  INTO :P102_DIR_URL',
'  FROM DUAL;'))
,p_attribute_02=>'P102_DIR_AUX_SEQ_ID_EDITAR'
,p_attribute_03=>'P102_DIR_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26485401095363203)
,p_event_id=>wwv_flow_imp.id(25993289974875450)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	var url = apex.item("P102_DIR_URL").getValue();',
'',
'	apex.navigation.redirect (url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26485786855363206)
,p_name=>'DA_CONFIRMAR_DIRECCION'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25990874600875426)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26485852647363207)
,p_event_id=>wwv_flow_imp.id(26485786855363206)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSPERSON.GUARDAR_DIRECCION();',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_CONFIRMAR_DIRECCION - BSPERSON.GUARDAR_DIRECCION - ''||SQLERRM);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27348872370508026)
,p_event_id=>wwv_flow_imp.id(26485786855363206)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Los cambios en la direcci\00F3n fueron registrados correctamente.')
,p_attribute_02=>'Cambios guardados'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27349430660508032)
,p_event_id=>wwv_flow_imp.id(26485786855363206)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_DIRECCION'');',
'BSPERSON.BUSCA_DIRECCION(PI_DIR_COD_PERSONA => :P102_PERS_COD_PERSONA);'))
,p_attribute_02=>'P102_PERS_COD_PERSONA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27348955119508027)
,p_event_id=>wwv_flow_imp.id(26485786855363206)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25485059527430546)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27080072018471224)
,p_name=>'DA_AGREGAR_RESPONSABLE'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27079965169471223)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27080145923471225)
,p_event_id=>wwv_flow_imp.id(27080072018471224)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P102_RESP_ERROR := 0;',
'    IF :P102_RESP_COD_PERSONA_REF IS NULL THEN',
'        :P102_RESP_ERROR := 1;',
'    ELSE',
'        BSPERSON.BUSCA_RESPONSABLE (PI_RESP_COD_PERSONA 	=> :P102_RESP_COD_PERSONA,',
'    							    PI_RESP_COD_PERSONA_REF => :P102_RESP_COD_PERSONA_REF);',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_AGREGAR_RESPONSABLE - ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P102_RESP_COD_PERSONA_REF,P102_RESP_COD_PERSONA'
,p_attribute_03=>'P102_RESP_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28601770016538726)
,p_event_id=>wwv_flow_imp.id(27080072018471224)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe ingresar un responsble legal.'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P102_RESP_ERROR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28601833481538727)
,p_event_id=>wwv_flow_imp.id(27080072018471224)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P102_RESP_COD_PERSONA_REF := NULL;'
,p_attribute_03=>'P102_RESP_COD_PERSONA_REF'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28601907995538728)
,p_event_id=>wwv_flow_imp.id(27080072018471224)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27078719883471211)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27081746131471241)
,p_name=>'DA_AGREGAR_GARANTE'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27081653488471240)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27081827785471242)
,p_event_id=>wwv_flow_imp.id(27081746131471241)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P102_GAR_ERROR := 0;',
'IF :P102_GAR_COD_PERSONA_REF IS NULL THEN',
'    :P102_GAR_ERROR := 1;',
'ELSE ',
'    BSPERSON.BUSCA_GARANTE (PI_GAR_COD_PERSONA 	   => :P102_GAR_COD_PERSONA,',
'						    PI_GAR_COD_PERSONA_REF => :P102_GAR_COD_PERSONA_REF);',
'END IF;'))
,p_attribute_02=>'P102_GAR_COD_PERSONA,P102_GAR_COD_PERSONA_REF'
,p_attribute_03=>'P102_GAR_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28631942613262329)
,p_event_id=>wwv_flow_imp.id(27081746131471241)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe ingresar un garante.'
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P102_GAR_ERROR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28632044252262330)
,p_event_id=>wwv_flow_imp.id(27081746131471241)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P102_GAR_COD_PERSONA_REF := NULL;'
,p_attribute_03=>'P102_GAR_COD_PERSONA_REF'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28632178417262331)
,p_event_id=>wwv_flow_imp.id(27081746131471241)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27080373176471227)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28633911291262349)
,p_name=>'DA_AGREGAR_CONTACTO'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(28633051567262340)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28634003664262350)
,p_event_id=>wwv_flow_imp.id(28633911291262349)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P102_CON_ERROR := 0;',
'IF :P102_CON_NOM_CONTACTO IS NULL AND :P102_CON_TELEFONO IS NULL  THEN',
'    :P102_CON_ERROR := 1;',
'ELSIF :P102_CON_TELEFONO IS NULL THEN',
'    :P102_CON_ERROR := 2;',
'ELSE ',
'    BSPERSON.BUSCA_CONTACTO (PI_CON_COD_PERSONA     => :P102_CON_COD_PERSONA,',
'    						 PI_CON_NOMBRE_CONTACTO => :P102_CON_NOM_CONTACTO,',
'    						 PI_CON_ASUNTO 			=> :P102_CON_ASUNTO,',
'    						 PI_CON_CARGO 			=> :P102_CON_CARGO,',
'    						 PI_CON_TELEFONO 		=> :P102_CON_TELEFONO);',
'END IF;'))
,p_attribute_02=>'P102_CON_COD_PERSONA,P102_CON_NOM_CONTACTO,P102_CON_ASUNTO,P102_CON_CARGO,P102_CON_TELEFONO'
,p_attribute_03=>'P102_CON_ERROR'
,p_attribute_04=>'N'
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28818856825754601)
,p_event_id=>wwv_flow_imp.id(28633911291262349)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Debe ingresar al menos un nombre y tel\00E9fono de contacto.')
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P102_CON_ERROR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28819142153754604)
,p_event_id=>wwv_flow_imp.id(28633911291262349)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Debe ingresar un n\00FAmero de tel\00E9fono.')
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P102_CON_ERROR'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28818909255754602)
,p_event_id=>wwv_flow_imp.id(28633911291262349)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P102_CON_NOM_CONTACTO := NULL;',
':P102_CON_ASUNTO := NULL;',
':P102_CON_CARGO := NULL;',
':P102_CON_TELEFONO := NULL;'))
,p_attribute_03=>'P102_CON_NOM_CONTACTO,P102_CON_ASUNTO,P102_CON_CARGO,,P102_CON_TELEFONO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28819005480754603)
,p_event_id=>wwv_flow_imp.id(28633911291262349)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27082048028471244)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27347096281508008)
,p_name=>'DA_CHECKBOX_DEF'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P102_TEL_AUX_SEQ_ID_DEF'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27347106941508009)
,p_event_id=>wwv_flow_imp.id(27347096281508008)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSPERSON.PR_CHECK(PI_SEQ_ID    => :P102_TEL_AUX_SEQ_ID_DEF, ',
'            	      PI_ACCION    => :P102_TEL_ACCION_DEF, ',
'            	      PI_COLECCION => ''COL_TELEFONO'',',
'                      PI_ATTR      => 9);',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        APEX_DEBUG.ERROR(''Error al completar la transacci\00F3n, favor de contactarse con el equipo de soporte.''||SQLERRM);'),
'END;'))
,p_attribute_02=>'P102_TEL_AUX_SEQ_ID_DEF,P102_TEL_ACCION_DEF'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27347267463508010)
,p_name=>'DA_CHECKBOX_FACT'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P102_TEL_AUX_SEQ_ID_FACT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27347382535508011)
,p_event_id=>wwv_flow_imp.id(27347267463508010)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSPERSON.PR_CHECK(PI_SEQ_ID    => :P102_TEL_AUX_SEQ_ID_FACT, ',
'            	      PI_ACCION    => :P102_TEL_ACCION_FACT, ',
'            	      PI_COLECCION => ''COL_TELEFONO'',',
'                      PI_ATTR      => 11);',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        APEX_DEBUG.ERROR(''Error al completar la transacci\00F3n, favor de contactarse con el equipo de soporte.''||SQLERRM);'),
'END;'))
,p_attribute_02=>'P102_TEL_AUX_SEQ_ID_FACT,P102_TEL_ACCION_FACT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27348007756508018)
,p_name=>'DA_AGREGAR_TELEFONO'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(26488808505363237)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27348142158508019)
,p_event_id=>wwv_flow_imp.id(27348007756508018)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P102_TEL_ERROR := 0;',
'IF :P102_TEL_CODIGO_AREA IS NULL AND :P102_TEL_NUM_TELEFONO IS NULL AND :P102_TEL_TEL_UBICACION IS NULL ',
'   OR (:P102_TEL_CODIGO_AREA IS NULL OR :P102_TEL_NUM_TELEFONO IS NULL) THEN',
'    :P102_TEL_ERROR := 1;',
'END IF;'))
,p_attribute_02=>'P102_TEL_ERROR,P102_TEL_CODIGO_AREA,P102_TEL_NUM_TELEFONO,P102_TEL_TIP_TELEFONO,P102_TEL_TEL_UBICACION'
,p_attribute_03=>'P102_TEL_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27348383665508021)
,p_event_id=>wwv_flow_imp.id(27348007756508018)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Debe ingresar al menos un c\00F3digo de \00E1rea, n\00FAmero, tipo y ubicaci\00F3n del tel\00E9fono.')
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P102_TEL_ERROR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27348649907508024)
,p_event_id=>wwv_flow_imp.id(27348007756508018)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSPERSON.CARGAR_COLECCION_TELEFONO (PI_TEL_COD_PERSONA   => :P102_TEL_COD_PERSONA,',
'    									PI_TEL_COD_AREA 	 => :P102_TEL_CODIGO_AREA,',
'    									PI_TEL_NUM_TELEFONO  => :P102_TEL_NUM_TELEFONO,',
'    									PI_TEL_TIP_TELEFONO  => :P102_TEL_TIP_TELEFONO,',
'    									PI_TEL_TEL_UBICACION => :P102_TEL_TEL_UBICACION,',
'    									PI_TEL_NOTA 		 => :P102_TEL_NOTA,',
'    									PI_TEL_COD_DIRECCION => :P102_TEL_COD_DIRECCION,',
'    									PI_TEL_POR_DEFECTO   => :P102_TEL_POR_DEFECTO,',
'    									PI_TEL_PARA_INFORME  => :P102_TEL_PARA_INFORME,',
'    									PI_TEL_INTERNO 	     => :P102_TEL_INTERNO,',
'    									PI_TEL_ROWID 		 => NULL);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''BSPERSON.CARGAR_COLECCION_TELEFONO - ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P102_TEL_COD_PERSONA,P102_TEL_CODIGO_AREA,P102_TEL_NUM_TELEFONO,P102_TEL_TIP_TELEFONO,P102_TEL_TEL_UBICACION,P102_TEL_NOTA,P102_TEL_COD_DIRECCION,P102_TEL_POR_DEFECTO,P102_TEL_PARA_INFORME,P102_TEL_INTERNO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28305439980408620)
,p_event_id=>wwv_flow_imp.id(27348007756508018)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P102_TEL_CODIGO_AREA := NULL;',
':P102_TEL_NUM_TELEFONO := NULL;',
':P102_TEL_TIP_TELEFONO := NULL;',
':P102_TEL_TEL_UBICACION := NULL;',
':P102_TEL_INTERNO := NULL;',
':P102_TEL_NOTA := NULL;',
':P102_TEL_POR_DEFECTO := ''N'';',
':P102_TEL_PARA_INFORME := ''N'';'))
,p_attribute_03=>'P102_TEL_CODIGO_AREA ,P102_TEL_NUM_TELEFONO ,P102_TEL_TIP_TELEFONO ,P102_TEL_TEL_UBICACION,P102_TEL_INTERNO,P102_TEL_NOTA,P102_TEL_POR_DEFECTO,P102_TEL_PARA_INFORME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27348793121508025)
,p_event_id=>wwv_flow_imp.id(27348007756508018)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26487180320363220)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27451683324134532)
,p_name=>'DA_REGRESA_DIRECCION'
,p_event_sequence=>150
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(25485059527430546)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27451798995134533)
,p_event_id=>wwv_flow_imp.id(27451683324134532)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25485059527430546)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28303890760408604)
,p_name=>'DA_EDITAR_TELEFONO'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P102_TEL_AUX_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28303920390408605)
,p_event_id=>wwv_flow_imp.id(28303890760408604)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APEX_PAGE.GET_URL (  p_page => 117,',
'                            p_items => ''P117_TEL_AUX_SEQ_ID'',',
'                            p_values => :P102_TEL_AUX_SEQ_ID_EDITAR) f_url_1',
'  INTO :P102_TEL_URL',
'  FROM DUAL;'))
,p_attribute_02=>'P102_TEL_AUX_SEQ_ID_EDITAR'
,p_attribute_03=>'P102_TEL_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28304112999408607)
,p_event_id=>wwv_flow_imp.id(28303890760408604)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	var url = apex.item("P102_TEL_URL").getValue();',
'',
'	apex.navigation.redirect (url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28304225077408608)
,p_name=>'DA_ELIMINAR_TELEFONO'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P102_TEL_AUX_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28304389097408609)
,p_event_id=>wwv_flow_imp.id(28304225077408608)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSPERSON.ELIMINAR_TELEFONO(PI_NOM_COL => ''COL_TELEFONO'',',
'							   PI_SEQ_ID  => :P102_TEL_AUX_SEQ_ID_ELIMINAR);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_ELIMINAR_TELEFONO - BSPERSON.ELIMINAR_TELEFONO - ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P102_TEL_AUX_SEQ_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28304465802408610)
,p_event_id=>wwv_flow_imp.id(28304225077408608)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26487180320363220)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28304575942408611)
,p_name=>'DA_GUARDAR_TELEFONO'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27347424568508012)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28304670463408612)
,p_event_id=>wwv_flow_imp.id(28304575942408611)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSPERSON.GUARDAR_TELEFONO;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_GUARDAR_TELEFONO - BSPERSON.GUARDAR_TELEFONO - ''||SQLERRM);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28304710648408613)
,p_event_id=>wwv_flow_imp.id(28304575942408611)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Los cambios en el tel\00E9fonos fueron registrados correctamente.')
,p_attribute_02=>'Cambios guardados'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28305524297408621)
,p_event_id=>wwv_flow_imp.id(28304575942408611)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_TELEFONO'');',
'BEGIN',
'    BSPERSON.BUSCA_TELEFONO(PI_TEL_COD_PERSONA => :P102_PERS_COD_PERSONA);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_GUARDAR_TELEFONO - BSPERSON.BUSCA_TELEFONO - ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P102_PERS_COD_PERSONA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28304829777408614)
,p_event_id=>wwv_flow_imp.id(28304575942408611)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26487180320363220)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28305659309408622)
,p_name=>'DA_REGRESA_TELEFONO'
,p_event_sequence=>190
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(26487180320363220)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28305708563408623)
,p_event_id=>wwv_flow_imp.id(28305659309408622)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26487180320363220)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28306603139408632)
,p_name=>'DA_AGREGAR_DOCUMENTO'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27078320057471207)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28306778158408633)
,p_event_id=>wwv_flow_imp.id(28306603139408632)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P102_DOC_ERROR := 0;',
'BEGIN',
'    IF :P102_DOC_NUMERO IS NULL THEN',
'        :P102_DOC_ERROR := 1;',
'    ELSE',
'        BSPERSON.CARGAR_COLECCION_DOCUMENTO (PI_DOC_COD_PERSONA    => :P102_DOC_COD_PERSONA,',
'    									     PI_DOC_COD_IDENT 	   => :P102_DOC_COD_IDENT,',
'    									     PI_DOC_NUMERO		   => :P102_DOC_NUMERO,',
'    									     PI_DOC_NRO_AGENTE_INF => :P102_DOC_NUMERO_AGENTE_INF,',
'    									     PI_DOC_DV_AGENTE_INF  => :P102_DOC_DV_AGENTE_INF,',
'    									     PI_DOC_FEC_VENC	   => :P102_DOC_FEC_VENDIMIENTO);',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_AGREGAR_DOCUMENTO - BSPERSON.CARGAR_COLECCION_DOCUMENTO - ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P102_DOC_COD_PERSONA,P102_DOC_COD_IDENT,P102_DOC_NUMERO,P102_DOC_NUMERO_AGENTE_INF,P102_DOC_DV_AGENTE_INF,P102_DOC_FEC_VENDIMIENTO'
,p_attribute_03=>'P102_DOC_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28307052595408636)
,p_event_id=>wwv_flow_imp.id(28306603139408632)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Debe ingresar un n\00FAmero para el tipo de documento seleccionado.')
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P102_DOC_ERROR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28823363171754646)
,p_event_id=>wwv_flow_imp.id(28306603139408632)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P102_DOC_COD_IDENT := NULL;',
':P102_DOC_NUMERO := NULL;',
':P102_DOC_NUMERO_AGENTE_INF := NULL;',
':P102_DOC_DV_AGENTE_INF := NULL;',
':P102_DOC_FEC_VENDIMIENTO := NULL;'))
,p_attribute_03=>'P102_DOC_COD_IDENT,P102_DOC_NUMERO,P102_DOC_NUMERO_AGENTE_INF,P102_DOC_DV_AGENTE_INF,P102_DOC_FEC_VENDIMIENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28306893411408634)
,p_event_id=>wwv_flow_imp.id(28306603139408632)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26489239648363241)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28307438983408640)
,p_name=>'DA_ELIMINAR_DOC'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P102_DOC_AUX_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28307522387408641)
,p_event_id=>wwv_flow_imp.id(28307438983408640)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSPERSON.ELIMINAR_DOCUMENTO(PI_NOM_COL => ''COL_DOCUMENTO'',',
'							    PI_SEQ_ID  => :P102_DOC_AUX_SEQ_ID_ELIMINAR);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_ELIMINAR_DOC - BSPERSON.ELIMINAR_DOCUMENTO - ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P102_DOC_AUX_SEQ_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28307622600408642)
,p_event_id=>wwv_flow_imp.id(28307438983408640)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26489239648363241)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28307882598408644)
,p_name=>'DA_EDITAR_DOC'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P102_DOC_AUX_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28307956135408645)
,p_event_id=>wwv_flow_imp.id(28307882598408644)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APEX_PAGE.GET_URL (  p_page => 119,',
'                            p_items => ''P119_DOC_AUX_SEQ_ID'',',
'                            p_values => :P102_DOC_AUX_SEQ_ID_EDITAR) f_url_1',
'  INTO :P102_DOC_URL',
'  FROM DUAL;'))
,p_attribute_02=>'P102_DOC_AUX_SEQ_ID_EDITAR'
,p_attribute_03=>'P102_DOC_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28308339926408649)
,p_event_id=>wwv_flow_imp.id(28307882598408644)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	var url = apex.item("P102_DOC_URL").getValue();',
'',
'	apex.navigation.redirect (url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28630510639262315)
,p_name=>'DA_EDITAR_RESPONSABLE'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P102_RESP_AUX_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28630678875262316)
,p_event_id=>wwv_flow_imp.id(28630510639262315)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APEX_PAGE.GET_URL (  p_page => 123,',
'                            p_items => ''P123_RESP_AUX_SEQ_ID'',',
'                            p_values => :P102_RESP_AUX_SEQ_ID_EDITAR) f_url_1',
'  INTO :P102_RESP_URL',
'  FROM DUAL;'))
,p_attribute_02=>'P102_RESP_AUX_SEQ_ID_EDITAR'
,p_attribute_03=>'P102_RESP_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28630793466262317)
,p_event_id=>wwv_flow_imp.id(28630510639262315)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	var url = apex.item("P102_RESP_URL").getValue();',
'',
'	apex.navigation.redirect (url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28631029639262320)
,p_name=>'DA_EDITAR_GARANTE'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P102_GAR_AUX_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28631185701262321)
,p_event_id=>wwv_flow_imp.id(28631029639262320)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APEX_PAGE.GET_URL (  p_page => 124,',
'                            p_items => ''P124_GAR_AUX_SEQ_ID'',',
'                            p_values => :P102_GAR_AUX_SEQ_ID_EDITAR) f_url_1',
'  INTO :P102_GAR_URL',
'  FROM DUAL;'))
,p_attribute_02=>'P102_GAR_AUX_SEQ_ID_EDITAR'
,p_attribute_03=>'P102_GAR_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28631252506262322)
,p_event_id=>wwv_flow_imp.id(28631029639262320)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	var url = apex.item("P102_GAR_URL").getValue();',
'',
'	apex.navigation.redirect (url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28819221815754605)
,p_name=>'DA_EDITAR_CONTACTO'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P102_CON_AUX_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28819310963754606)
,p_event_id=>wwv_flow_imp.id(28819221815754605)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APEX_PAGE.GET_URL (  p_page => 128,',
'                            p_items => ''P128_CON_AUX_SEQ_ID'',',
'                            p_values => :P102_CON_AUX_SEQ_ID_EDITAR) f_url_1',
'  INTO :P102_CON_URL',
'  FROM DUAL;'))
,p_attribute_02=>'P102_CON_AUX_SEQ_ID_EDITAR'
,p_attribute_03=>'P102_CON_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28819437650754607)
,p_event_id=>wwv_flow_imp.id(28819221815754605)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	var url = apex.item("P102_CON_URL").getValue();',
'',
'	apex.navigation.redirect (url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28600314889538712)
,p_name=>'DA_REGRESA_DOCUMENTO'
,p_event_sequence=>260
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(26489028954363239)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28600400953538713)
,p_event_id=>wwv_flow_imp.id(28600314889538712)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26489239648363241)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28600506077538714)
,p_name=>'DA_GUARDAR_DOCUMENTO'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27347659200508014)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28600605742538715)
,p_event_id=>wwv_flow_imp.id(28600506077538714)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSPERSON.GUARDAR_DOCUMENTO;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_GUARDAR_DOCUMENTO - BSPERSON.GUARDAR_DOCUMENTO - ''||SQLERRM);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28600727934538716)
,p_event_id=>wwv_flow_imp.id(28600506077538714)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Los cambios en documentos fueron registrados correctamente.'
,p_attribute_02=>'Cambios guardados'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28600802835538717)
,p_event_id=>wwv_flow_imp.id(28600506077538714)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_DOCUMENTO'');',
'BEGIN',
'    BSPERSON.BUSCA_DOCUMENTO(PI_DOC_COD_PERSONA => :P102_PERS_COD_PERSONA);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_GUARDAR_DOCUMENTO - BSPERSON.BUSCA_DOCUMENTO - ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P102_PERS_COD_PERSONA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28600931747538718)
,p_event_id=>wwv_flow_imp.id(28600506077538714)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26489239648363241)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28602081912538729)
,p_name=>'DA_ELIMINAR_RESPONSABLE'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P102_RESP_AUX_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28602132603538730)
,p_event_id=>wwv_flow_imp.id(28602081912538729)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSPERSON.ELIMINAR_RESPONSABLE(PI_NOM_COL => ''COL_RESPONSABLE'',',
'							      PI_SEQ_ID  => :P102_RESP_AUX_SEQ_ID_ELIMINAR);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_ELIMINAR_RESPONSABLE - BSPERSON.ELIMINAR_RESPONSABLE - ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P102_RESP_AUX_SEQ_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28602285341538731)
,p_event_id=>wwv_flow_imp.id(28602081912538729)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27078719883471211)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28603236442538741)
,p_name=>'DA_REGRESA_RESPONSABLE'
,p_event_sequence=>290
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(27078535386471209)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28603305608538742)
,p_event_id=>wwv_flow_imp.id(28603236442538741)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27078719883471211)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28631385729262323)
,p_name=>'DA_REGRESA_GARANTE'
,p_event_sequence=>300
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(27080259720471226)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28631416580262324)
,p_event_id=>wwv_flow_imp.id(28631385729262323)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27080373176471227)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31073809113852846)
,p_name=>'DA_REGRESA_CONTACTO'
,p_event_sequence=>310
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(27082048028471244)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31073930314852847)
,p_event_id=>wwv_flow_imp.id(31073809113852846)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27082048028471244)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28603488302538743)
,p_name=>'DA_GUARDAR_RESPONSABLE'
,p_event_sequence=>320
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27347792606508015)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28603577028538744)
,p_event_id=>wwv_flow_imp.id(28603488302538743)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSPERSON.GUARDAR_RESPONSABLE(PI_NOM_COL => ''COL_RESPONSABLE'');',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_GUARDAR_RESPONSABLE - BSPERSON.GUARDAR_RESPONSABLE - ''||SQLERRM);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28603607138538745)
,p_event_id=>wwv_flow_imp.id(28603488302538743)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Los cambios en responsables fueron registrados correctamente.'
,p_attribute_02=>'Cambios guardados'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28603723377538746)
,p_event_id=>wwv_flow_imp.id(28603488302538743)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_RESPONSABLE'');',
'BEGIN',
'    BSPERSON.BUSCA_RESPONSABLE (PI_RESP_COD_PERSONA     => :P102_PERS_COD_PERSONA,',
'						        PI_RESP_COD_PERSONA_REF => NULL);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_GUARDAR_RESPONSABLE - BSPERSON.BUSCA_RESPONSABLE - ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P102_PERS_COD_PERSONA'
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28603844495538747)
,p_event_id=>wwv_flow_imp.id(28603488302538743)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27078719883471211)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28630011579262310)
,p_name=>'DA_GUARDAR_GARANTE'
,p_event_sequence=>330
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27347818744508016)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28630129552262311)
,p_event_id=>wwv_flow_imp.id(28630011579262310)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSPERSON.GUARDAR_RESPONSABLE(PI_NOM_COL => ''COL_GARANTE'');',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_GUARDAR_RESPONSABLE - BSPERSON.GUARDAR_RESPONSABLE - ''||SQLERRM);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28630204910262312)
,p_event_id=>wwv_flow_imp.id(28630011579262310)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Los cambios en garantes fueron registrados correctamente.'
,p_attribute_02=>'Cambios guardados'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28630306457262313)
,p_event_id=>wwv_flow_imp.id(28630011579262310)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_GARANTE'');',
'BEGIN',
'    BSPERSON.BUSCA_GARANTE (PI_GAR_COD_PERSONA 	   => :P102_PERS_COD_PERSONA,',
'						    PI_GAR_COD_PERSONA_REF => NULL);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_GUARDAR_GARANTE - BSPERSON.BUSCA_GARANTE - ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P102_PERS_COD_PERSONA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28630411325262314)
,p_event_id=>wwv_flow_imp.id(28630011579262310)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27080373176471227)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28633498625262344)
,p_name=>'DA_GUARDAR_CONTACTO'
,p_event_sequence=>340
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27347997930508017)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28633588194262345)
,p_event_id=>wwv_flow_imp.id(28633498625262344)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSPERSON.GUARDAR_CONTACTO;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_GUARDAR_CONTACTO - BSPERSON.GUARDAR_CONTACTO - ''||SQLERRM);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28633666887262346)
,p_event_id=>wwv_flow_imp.id(28633498625262344)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Los cambios en contactos fueron registrados correctamente.'
,p_attribute_02=>'Cambios guardados'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28633777330262347)
,p_event_id=>wwv_flow_imp.id(28633498625262344)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_CONTACTO'');',
'BEGIN',
'    BSPERSON.BUSCA_CONTACTO(PI_CON_COD_PERSONA      => :P102_PERS_COD_PERSONA,',
'    						 PI_CON_NOMBRE_CONTACTO => NULL,',
'    						 PI_CON_ASUNTO 			=> NULL,',
'    						 PI_CON_CARGO 			=> NULL,',
'    						 PI_CON_TELEFONO 		=> NULL);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_GUARDAR_CONTACTO - BSPERSON.BUSCA_CONTACTO - ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P102_PERS_COD_PERSONA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28633870453262348)
,p_event_id=>wwv_flow_imp.id(28633498625262344)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27082048028471244)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28629558884262305)
,p_name=>'DA_ELIMINAR_GARANTE'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P102_GAR_AUX_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28629620791262306)
,p_event_id=>wwv_flow_imp.id(28629558884262305)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    --SE USA EL MISMO PROC PARA GARANTE',
'    BSPERSON.ELIMINAR_RESPONSABLE(PI_NOM_COL => ''COL_GARANTE'',',
'							      PI_SEQ_ID  => :P102_GAR_AUX_SEQ_ID_ELIMINAR);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_ELIMINAR_GARANTE - BSPERSON.ELIMINAR_RESPONSABLE - ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P102_GAR_AUX_SEQ_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28629852523262308)
,p_event_id=>wwv_flow_imp.id(28629558884262305)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27080373176471227)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28633178029262341)
,p_name=>'DA_ELIMINAR_CONTACTO'
,p_event_sequence=>360
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P102_CON_AUX_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28633285534262342)
,p_event_id=>wwv_flow_imp.id(28633178029262341)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSPERSON.ELIMINAR_CONTACTO(PI_NOM_COL => ''COL_CONTACTO'',',
'						       PI_SEQ_ID  => :P102_CON_AUX_SEQ_ID_ELIMINAR);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''DA_ELIMINAR_CONTACTO - BSPERSON.ELIMINAR_CONTACTO - ''||SQLERRM);',
'END;'))
,p_attribute_02=>'P102_CON_AUX_SEQ_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28633302167262343)
,p_event_id=>wwv_flow_imp.id(28633178029262341)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27082048028471244)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28822033096754633)
,p_name=>'DA_HABILITAR_DELETE'
,p_event_sequence=>370
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25481733054430513)
,p_condition_element=>'P102_PERS_COD_PERSONA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28822172156754634)
,p_event_id=>wwv_flow_imp.id(28822033096754633)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(28821974824754632)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31072513523852833)
,p_event_id=>wwv_flow_imp.id(28822033096754633)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(28821974824754632)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30440593113751936)
,p_name=>'DA_LIMPIAR'
,p_event_sequence=>380
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(30440409291751935)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30440772820751938)
,p_event_id=>wwv_flow_imp.id(30440593113751936)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_DIRECCION'');',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_TELEFONO'');',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_DOCUMENTO'');',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_RESPONSABLE'');',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_GARANTE'');',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_CONTACTO'');',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_EMAIL'');'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30440686974751937)
,p_event_id=>wwv_flow_imp.id(30440593113751936)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P102_PERS_COD_PERSONA := NULL;',
':P102_PERS_ES_FISICA   := NULL;',
':P102_PERS_LUGAR_TRABAJO := NULL;',
':P102_PERS_NOMBRE        := NULL;',
':P102_PERS_COD_SECTOR_TRAB := NULL;',
':P102_PERS_ALTA_POR        := NULL;',
':P102_PERS_NOMB_FANTASIA   := NULL;',
':P102_PERS_DIRECCION_TRAB  := NULL;',
':P102_PERS_FEC_ALTA := NULL;',
':P102_PERS_APENOMBRE := NULL;',
':P102_PERS_TELEFONO_TRAB := NULL;',
':P102_PERS_ES_PROPIETARIO := NULL;',
':P102_PERS_CARGO := NULL;',
':P102_PERS_ACTUALIZADO_POR := NULL;',
':P102_PERS_COD_SECTOR := NULL;',
':P102_PERS_FEC_ACTUALIZACION := NULL;',
':P102_PERS_PROFESION := NULL;',
':P102_PERS_ANTIGUEDAD := NULL;',
':P102_PERS_NIVEL_ESTUDIOS := NULL;',
':P102_PERS_TIPO_SOCIEDAD := NULL;',
':P102_PERS_COD_PAIS := NULL;',
':P102_PERS_NACIONALIDAD := NULL;',
':P102_PERS_TIEMPO_RESISDENCIA := NULL;',
':P102_PERS_ES_UNIPERSONAL := NULL;',
':P102_PERS_IND_VIVIENDA := NULL;',
':P102_PERS_REFERENCIA := NULL;',
':P102_PERS_DIREC_ELECTRONICA := NULL;',
':P102_PERS_DIREC_ELECTRONICA_ST := NULL;',
':P102_PERS_PAGINA_WEB := NULL;',
':P102_PERS_FEC_NACIMIENTO := NULL;',
':P102_PERS_SEXO := NULL;',
':P102_PERS_COD_ESTADO_CIVIL := NULL;',
':P102_PERS_CONYUGUE := NULL;',
':P102_PERS_TOTAL_INGRESOS := NULL;',
':P102_PERS_NUM_DEPENDIENTES := NULL;',
':P102_PERS_NUM_HIJOS := NULL;',
':P102_PERS_ESTATAL := NULL;',
':P102_PERS_LUCRATIVA  := NULL;',
':P102_PERS_ES_MAL_DEUDOR  := NULL;',
':P102_DIR_COD_PERSONA  := NULL;',
':P102_TEL_COD_PERSONA  := NULL;',
':P102_DOC_COD_PERSONA  := NULL;',
':P102_RESP_COD_PERSONA := NULL;',
':P102_GAR_COD_PERSONA  := NULL;',
':P102_CON_COD_PERSONA  := NULL;',
''))
,p_attribute_02=>'P102_PERS_COD_PERSONA'
,p_attribute_03=>'P102_PERS_COD_PERSONA,P102_PERS_ES_FISICA,P102_PERS_LUGAR_TRABAJO,P102_PERS_NOMBRE,P102_PERS_COD_SECTOR_TRAB,P102_PERS_ALTA_POR,P102_PERS_NOMB_FANTASIA,P102_PERS_DIRECCION_TRAB,P102_PERS_FEC_ALTA,P102_PERS_APENOMBRE,P102_PERS_TELEFONO_TRAB,P102_PERS_'
||'ES_PROPIETARIO,P102_PERS_CARGO,P102_PERS_ACTUALIZADO_POR,P102_PERS_COD_SECTOR,P102_PERS_FEC_ACTUALIZACION,P102_PERS_PROFESION,P102_PERS_ANTIGUEDAD,P102_PERS_NIVEL_ESTUDIOS,P102_PERS_TIPO_SOCIEDAD,P102_PERS_COD_PAIS,P102_PERS_NACIONALIDAD,P102_PERS_TI'
||'EMPO_RESISDENCIA,P102_PERS_ES_UNIPERSONAL,P102_PERS_IND_VIVIENDA,P102_PERS_REFERENCIA,P102_PERS_DIREC_ELECTRONICA,P102_PERS_DIREC_ELECTRONICA_ST,P102_PERS_PAGINA_WEB,P102_PERS_FEC_NACIMIENTO,P102_PERS_SEXO,P102_PERS_COD_ESTADO_CIVIL,P102_PERS_CONYUGU'
||'E,P102_PERS_TOTAL_INGRESOS,P102_PERS_NUM_DEPENDIENTES,P102_PERS_NUM_HIJOS,P102_PERS_ESTATAL,P102_PERS_LUCRATIVA,P102_PERS_ES_MAL_DEUDOR,P102_DIR_COD_PERSONA,P102_TEL_COD_PERSONA,P102_DOC_COD_PERSONA,P102_RESP_COD_PERSONA,P102_GAR_COD_PERSONA,P102_CON'
||'_COD_PERSONA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31072486138852832)
,p_event_id=>wwv_flow_imp.id(30440593113751936)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P102_PERS_COD_PERSONA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31072864942852836)
,p_event_id=>wwv_flow_imp.id(30440593113751936)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24033201006736924)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31072955001852837)
,p_event_id=>wwv_flow_imp.id(30440593113751936)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25485059527430546)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31073062968852838)
,p_event_id=>wwv_flow_imp.id(30440593113751936)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26487180320363220)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31073187113852839)
,p_event_id=>wwv_flow_imp.id(30440593113751936)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26489239648363241)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31073267217852840)
,p_event_id=>wwv_flow_imp.id(30440593113751936)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27078719883471211)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31073359785852841)
,p_event_id=>wwv_flow_imp.id(30440593113751936)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27080373176471227)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31073449076852842)
,p_event_id=>wwv_flow_imp.id(30440593113751936)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27082048028471244)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31070900167852817)
,p_name=>'DA_INHABILITAR_DELETE_1'
,p_event_sequence=>390
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(30440409291751935)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'ITEM_IS_NULL'
,p_display_when_cond=>'P102_PERS_COD_PERSONA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31071093173852818)
,p_event_id=>wwv_flow_imp.id(31070900167852817)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(28821974824754632)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28823459266754647)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>400
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(28821974824754632)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28823504138754648)
,p_event_id=>wwv_flow_imp.id(28823459266754647)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea continuar con la eliminaci\00F3n de la persona: &P102_PERS_COD_PERSONA.?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28823660465754649)
,p_event_id=>wwv_flow_imp.id(28823459266754647)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'BT_ELIMINAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29539550434173405)
,p_name=>'DA_INHABILITAR_GUARDAR'
,p_event_sequence=>410
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29539628357173406)
,p_event_id=>wwv_flow_imp.id(29539550434173405)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(28822972559754642)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29539778567173407)
,p_name=>'DA_HABILITAR_GUARDAR'
,p_event_sequence=>420
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25481733054430513)
,p_condition_element=>'P102_PERS_COD_PERSONA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29539883101173408)
,p_event_id=>wwv_flow_imp.id(29539778567173407)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(28822972559754642)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31072690679852834)
,p_event_id=>wwv_flow_imp.id(29539778567173407)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(28822972559754642)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31070678963852814)
,p_name=>'DA_HABILITAR_CREAR'
,p_event_sequence=>430
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(30440409291751935)
,p_condition_element=>'P102_PERS_COD_PERSONA'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31070726081852815)
,p_event_id=>wwv_flow_imp.id(31070678963852814)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(28822972559754642)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30440143757751932)
,p_name=>'DA_HABILITAR_CONTACTOS'
,p_event_sequence=>440
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25481733054430513)
,p_condition_element=>'P102_PERS_COD_PERSONA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30440228567751933)
,p_event_id=>wwv_flow_imp.id(30440143757751932)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(29541034000173420)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31072703319852835)
,p_event_id=>wwv_flow_imp.id(30440143757751932)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(29541034000173420)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31071593407852823)
,p_name=>'DA_DESHABILITAR_CONTACTOS'
,p_event_sequence=>450
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(30440409291751935)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'ITEM_IS_NULL'
,p_display_when_cond=>'P102_PERS_COD_PERSONA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31071609947852824)
,p_event_id=>wwv_flow_imp.id(31071593407852823)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(29541034000173420)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29540015281173410)
,p_name=>'DA_HABILITA_CHECK'
,p_event_sequence=>460
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P102_PERS_ES_FISICA'
,p_condition_element=>'P102_PERS_ES_FISICA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29540180259173411)
,p_event_id=>wwv_flow_imp.id(29540015281173410)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P102_PERS_LUCRATIVA := ''N'';',
':P102_PERS_ESTATAL := ''N'';'))
,p_attribute_03=>'P102_PERS_LUCRATIVA,P102_PERS_ESTATAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29540231281173412)
,p_event_id=>wwv_flow_imp.id(29540015281173410)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P102_PERS_LUCRATIVA := ''S'';',
':P102_PERS_ESTATAL := ''N'';'))
,p_attribute_03=>'P102_PERS_LUCRATIVA,P102_PERS_ESTATAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29540384239173413)
,p_event_id=>wwv_flow_imp.id(29540015281173410)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P102_PERS_LUCRATIVA,P102_PERS_ESTATAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29540476149173414)
,p_event_id=>wwv_flow_imp.id(29540015281173410)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P102_PERS_LUCRATIVA,P102_PERS_ESTATAL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28857371880336449)
,p_name=>'DA_CAMBIA_JURIDICA'
,p_event_sequence=>470
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P102_ES_FISICA'
,p_condition_element=>'P102_ES_FISICA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28857486944336450)
,p_event_id=>wwv_flow_imp.id(28857371880336449)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P102_ES_JURIDICA'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30805797365914201)
,p_name=>'DA_CAMBIA_FISICA'
,p_event_sequence=>480
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P102_ES_JURIDICA'
,p_condition_element=>'P102_ES_JURIDICA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30805838121914202)
,p_event_id=>wwv_flow_imp.id(30805797365914201)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P102_ES_FISICA'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30440831102751939)
,p_name=>'DA_DESHABILITA'
,p_event_sequence=>490
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P102_ES_FISICA'
,p_condition_element=>'P102_ES_FISICA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30440942674751940)
,p_event_id=>wwv_flow_imp.id(30440831102751939)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P102_PERS_LUCRATIVA := ''N'';',
':P102_PERS_ESTATAL := ''N'';'))
,p_attribute_03=>'P102_PERS_LUCRATIVA,P102_PERS_ESTATAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31069915578852807)
,p_event_id=>wwv_flow_imp.id(30440831102751939)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'Habilitar();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31069701372852805)
,p_event_id=>wwv_flow_imp.id(30440831102751939)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>' Deshabilitar();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30441192796751942)
,p_name=>'DA_HABILITA'
,p_event_sequence=>500
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P102_ES_JURIDICA'
,p_condition_element=>'P102_ES_JURIDICA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30441305112751944)
,p_event_id=>wwv_flow_imp.id(30441192796751942)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P102_PERS_LUCRATIVA := ''S'';',
':P102_PERS_ESTATAL := ''N'';'))
,p_attribute_03=>'P102_PERS_LUCRATIVA,P102_PERS_ESTATAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31070029738852808)
,p_event_id=>wwv_flow_imp.id(30441192796751942)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'Deshabilitar();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31069875357852806)
,p_event_id=>wwv_flow_imp.id(30441192796751942)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'Habilitar();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31071822041852826)
,p_name=>'DA_INHABILITAR_CREAR'
,p_event_sequence=>510
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(25481733054430513)
,p_condition_element=>'P102_PERS_COD_PERSONA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31071941260852827)
,p_event_id=>wwv_flow_imp.id(31071822041852826)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(25483074935430526)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31072175061852829)
,p_event_id=>wwv_flow_imp.id(31071822041852826)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(25483074935430526)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31072260703852830)
,p_name=>'DA_DESHABILITAR_GUARDAR'
,p_event_sequence=>520
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(30440409291751935)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'ITEM_IS_NULL'
,p_display_when_cond=>'P102_PERS_COD_PERSONA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31072364636852831)
,p_event_id=>wwv_flow_imp.id(31072260703852830)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(28822972559754642)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69760029670374319)
,p_name=>'Carga_Desde_Otra_Pagina'
,p_event_sequence=>530
,p_condition_element=>'P102_P_COD_PERSONA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69760144898374320)
,p_event_id=>wwv_flow_imp.id(69760029670374319)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//alert(''oiko'');',
'$(document).ready(function(){',
'$(''#BT_BUSCAR'').trigger(''click'');',
'});',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69760310935374322)
,p_event_id=>wwv_flow_imp.id(69760029670374319)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P102_VISITA := ''N'';'
,p_attribute_03=>'P102_VISITA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28821876176754631)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CREAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P102_PERS_NOMBRE IS NOT NULL THEN',
'        BSPERSON.GUARDAR_PERSONA (PI_PERS_COD_PERSONA 			=> :P102_PERS_COD_PERSONA,',
'    						      PI_PERS_ES_FISICA   			=> NVL(:P102_ES_FISICA,:P102_ES_JURIDICA),',
'    						      PI_PERS_NOMBRE				=> :P102_PERS_NOMBRE,',
'    						      PI_PERS_NOMB_FANTASIA 		=> :P102_PERS_NOMB_FANTASIA,',
'    						      PI_PERS_SEXO 				    => :P102_PERS_SEXO,',
'    						      PI_PERS_FEC_NACIMIENTO 		=> :P102_PERS_FEC_NACIMIENTO,',
'    						      PI_PERS_NIVEL_ESTUDIOS 		=> :P102_PERS_NIVEL_ESTUDIOS,',
'    						      PI_PERS_PROFESION 			=> :P102_PERS_PROFESION,',
'    						      PI_PERS_COD_SECTOR 			=> :P102_PERS_COD_SECTOR,',
'    						      PI_PERS_COD_PAIS 			    => :P102_PERS_COD_PAIS,',
'    						      PI_PERS_NACIONALIDAD 		    => :P102_PERS_NACIONALIDAD,',
'    						      PI_PERS_COD_ESTADO_CIVIL  	=> :P102_PERS_COD_ESTADO_CIVIL,',
'    						      PI_PERS_CONYUGUE 			    => :P102_PERS_CONYUGUE,',
'    						      PI_PERS_NUM_HIJOS 			=> :P102_PERS_NUM_HIJOS,',
'    						      PI_PERS_NUM_DEPENDIENTES 	    => :P102_PERS_NUM_DEPENDIENTES,',
'    						      PI_PERS_TOTAL_INGRESOS 		=> :P102_PERS_TOTAL_INGRESOS,',
'    						      PI_PERS_ES_MAL_DEUDOR 		=> :P102_PERS_ES_MAL_DEUDOR,',
'    						      PI_PERS_DIREC_ELECTRONICA 	=> :P102_PERS_DIREC_ELECTRONICA,',
'    						      PI_PERS_PAGINA_WEB 			=> :P102_PERS_PAGINA_WEB,',
'    						      PI_PERS_TIPO_SOCIEDAD 		=> :P102_PERS_TIPO_SOCIEDAD,',
'    						      PI_PERS_LUCRATIVA 			=> :P102_PERS_LUCRATIVA,',
'    						      PI_PERS_ESTATAL 				=> :P102_PERS_ESTATAL,',
'    						      PI_PERS_ALTA_POR 			    => :P102_PERS_ALTA_POR,',
'    						      PI_PERS_FEC_ALTA 			    => :P102_PERS_FEC_ALTA,',
'    						      PI_PERS_ACTUALIZADO_POR 		=> :P102_PERS_ACTUALIZADO_POR,',
'    						      PI_PERS_FEC_ACTUALIZACION 	=> :P102_PERS_FEC_ACTUALIZACION,',
'    						      PI_PERS_REFERENCIA 			=> :P102_PERS_REFERENCIA,',
'    						      PI_PERS_TIEMPO_RESISDENCIA 	=> :P102_PERS_TIEMPO_RESISDENCIA,',
'    						      PI_PERS_IND_VIVIENDA 	  	    => :P102_PERS_IND_VIVIENDA,',
'    						      PI_PERS_LUGAR_TRABAJO 	  	=> :P102_PERS_LUGAR_TRABAJO,',
'    						      PI_PERS_COD_SECTOR_TRAB 		=> :P102_PERS_COD_SECTOR_TRAB,',
'    						      PI_PERS_DIRECCION_TRAB 		=> :P102_PERS_DIRECCION_TRAB,',
'    						      PI_PERS_TELEFONO_TRAB 		=> :P102_PERS_TELEFONO_TRAB,',
'    						      PI_PERS_CARGO 				=> :P102_PERS_CARGO,',
'    						      PI_PERS_ANTIGUEDAD 			=> :P102_PERS_ANTIGUEDAD,',
'    						      PI_PERS_ES_UNIPERSONAL 		=> :P102_PERS_ES_UNIPERSONAL,',
'    						      PI_PERS_ES_PROPIETARIO 		=> :P102_PERS_ES_PROPIETARIO,',
'    						      PI_PERS_APENOMBRE 			=> :P102_PERS_APENOMBRE,',
'    						      PI_PERS_DIREC_ELECTRONICA_ST  => :P102_PERS_DIREC_ELECTRONICA_ST,',
'                                  PO_PERS_COD_PERSONA           => :P102_PERS_COD_PERSONA);',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''PR_GUARDAR - BSPERSON.GUARDAR_PERSONA - ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(25483074935430526)
,p_process_success_message=>unistr('La persona fue dada de alta con el c\00F3digo: &P102_PERS_COD_PERSONA.')
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
 p_id=>wwv_flow_imp.id(29539132054173401)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_ACTUALIZAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    BSPERSON.ACTUALIZAR_PERSONA  (PI_PERS_COD_PERSONA 			=> :P102_PERS_COD_PERSONA,',
'    						      PI_PERS_ES_FISICA   			=> NVL(:P102_ES_FISICA,:P102_ES_JURIDICA),',
'    						      PI_PERS_NOMBRE				=> :P102_PERS_NOMBRE,',
'    						      PI_PERS_NOMB_FANTASIA 		=> :P102_PERS_NOMB_FANTASIA,',
'    						      PI_PERS_SEXO 				    => :P102_PERS_SEXO,',
'    						      PI_PERS_FEC_NACIMIENTO 		=> TO_DATE(:P102_PERS_FEC_NACIMIENTO,''DD/MM/YYYY''),',
'    						      PI_PERS_NIVEL_ESTUDIOS 		=> :P102_PERS_NIVEL_ESTUDIOS,',
'    						      PI_PERS_PROFESION 			=> :P102_PERS_PROFESION,',
'    						      PI_PERS_COD_SECTOR 			=> :P102_PERS_COD_SECTOR,',
'    						      PI_PERS_COD_PAIS 			    => :P102_PERS_COD_PAIS,',
'    						      PI_PERS_NACIONALIDAD 		    => :P102_PERS_NACIONALIDAD,',
'    						      PI_PERS_COD_ESTADO_CIVIL  	=> :P102_PERS_COD_ESTADO_CIVIL,',
'    						      PI_PERS_CONYUGUE 			    => :P102_PERS_CONYUGUE,',
'    						      PI_PERS_NUM_HIJOS 			=> TO_NUMBER(:P102_PERS_NUM_HIJOS),',
'    						      PI_PERS_NUM_DEPENDIENTES 	    => TO_NUMBER(:P102_PERS_NUM_DEPENDIENTES),',
'    						      PI_PERS_TOTAL_INGRESOS 		=> TO_NUMBER(:P102_PERS_TOTAL_INGRESOS),',
'    						      PI_PERS_ES_MAL_DEUDOR 		=> :P102_PERS_ES_MAL_DEUDOR,',
'    						      PI_PERS_DIREC_ELECTRONICA 	=> :P102_PERS_DIREC_ELECTRONICA,',
'    						      PI_PERS_PAGINA_WEB 			=> :P102_PERS_PAGINA_WEB,',
'    						      PI_PERS_TIPO_SOCIEDAD 		=> :P102_PERS_TIPO_SOCIEDAD,',
'    						      PI_PERS_LUCRATIVA 			=> :P102_PERS_LUCRATIVA,',
'    						      PI_PERS_ESTATAL 				=> :P102_PERS_ESTATAL,',
'    						      PI_PERS_ALTA_POR 			    => :P102_PERS_ALTA_POR,',
'    						      PI_PERS_FEC_ALTA 			    => TO_DATE(:P102_PERS_FEC_ALTA,''DD/MM/YYYY HH24:MI''),',
'    						      PI_PERS_ACTUALIZADO_POR 		=> :P102_PERS_ACTUALIZADO_POR,',
'    						      PI_PERS_FEC_ACTUALIZACION 	=> TO_DATE(:P102_PERS_FEC_ACTUALIZACION,''DD/MM/YYYY HH24:MI''),',
'    						      PI_PERS_REFERENCIA 			=> :P102_PERS_REFERENCIA,',
'    						      PI_PERS_TIEMPO_RESISDENCIA 	=> :P102_PERS_TIEMPO_RESISDENCIA,',
'    						      PI_PERS_IND_VIVIENDA 	  	    => :P102_PERS_IND_VIVIENDA,',
'    						      PI_PERS_LUGAR_TRABAJO 	  	=> :P102_PERS_LUGAR_TRABAJO,',
'    						      PI_PERS_COD_SECTOR_TRAB 		=> :P102_PERS_COD_SECTOR_TRAB,',
'    						      PI_PERS_DIRECCION_TRAB 		=> :P102_PERS_DIRECCION_TRAB,',
'    						      PI_PERS_TELEFONO_TRAB 		=> :P102_PERS_TELEFONO_TRAB,',
'    						      PI_PERS_CARGO 				=> :P102_PERS_CARGO,',
'    						      PI_PERS_ANTIGUEDAD 			=> :P102_PERS_ANTIGUEDAD,',
'    						      PI_PERS_ES_UNIPERSONAL 		=> :P102_PERS_ES_UNIPERSONAL,',
'    						      PI_PERS_ES_PROPIETARIO 		=> :P102_PERS_ES_PROPIETARIO,',
'    						      PI_PERS_APENOMBRE 			=> :P102_PERS_APENOMBRE,',
'    						      PI_PERS_DIREC_ELECTRONICA_ST  => :P102_PERS_DIREC_ELECTRONICA_ST);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''PR_ACTUALIZAR - BSPERSON.ACTUALIZAR_PERSONA - ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28823720779754650)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_ELIMINAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_DEBUG.ERROR(''PR_ELIMINAR'');',
'    BSPERSON.ELIMINAR_PERSONA(PI_PERS_COD_PERSONA => :P102_PERS_COD_PERSONA);',
'    :P102_PERS_COD_PERSONA := NULL;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(''PR_ELIMINAR - BSPERSON.ELIMINAR_PERSONA - ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'BT_ELIMINAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>unistr('La persona con c\00F3digo &P102_PERS_COD_PERSONA. fue dada de baja.')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25390181350954533)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_DIRECCION'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_TELEFONO'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_DOCUMENTO'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_RESPONSABLE'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_GARANTE'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_CONTACTO'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_EMAIL'');',
':P102_PERS_ERROR := 0;',
'',
':P102_PERS_LUCRATIVA := ''N'';',
':P102_PERS_ESTATAL := ''N'';',
'',
':P_COD_MODULO := ''BS'';',
'--INICIALIZA GLOBALES',
':P102_VBLE_COD_USUARIO := NVL(:P_COD_USUARIO,:APP_USER);',
':P102_VBLE_COD_EMPRESA := NVL(:P_COD_EMPRESA,''01'');',
':P102_VBLE_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'');',
':P102_VBLE_COD_MODULO := NVL(:P_COD_MODULO,''BS'');',
'--INICIALIZA LOCALES',
':P102_VBLE_COD_FORMA := ''BSPERSON'';',
':P102_VBLE_DERECHOS := UTILS.DERECHO_FORMA(:P102_VBLE_COD_USUARIO,',
'                                           :P102_VBLE_COD_FORMA);',
'',
'/*IF :P102_VBLE_DERECHOS = ''NNNN'' THEN',
'    RAISE_APPLICATION_ERROR(-20000,''El usuario ''||:P102_VBLE_COD_USUARIO||'' no posee permisos para acceder a este formulario. Formulario: ''||:P102_VBLE_COD_FORMA);',
'END IF;*/',
'LIBRERIA_FORMAS.RUTINA_INICIAL(:P102_VBLE_COD_MODULO,',
'                               :P102_VBLE_COD_FORMA,',
'                               :P102_VBLE_NOM_MODULO,',
'                               :P102_VBLE_NOM_FORMA,',
'                               :P102_VBLE_NOM_MODULO,',
'                               :P102_VBLE_NOM_FORMA);',
'',
'--WHEN-NEW-FORM-INSTANCE',
'--VERIFICA_PERMISOS',
'BEGIN',
'    :P102_VBLE_CARGA_DIRECCION := BUSCA_PERMISO(:P102_VBLE_COD_EMPRESA,',
'                                                :P102_VBLE_COD_FORMA,',
'                                                :P102_VBLE_COD_USUARIO,',
'                                                ''CAR_DIR_PERSONA'');',
'    :P102_VBLE_CARGA_TELEFONO := BUSCA_PERMISO(:P102_VBLE_COD_EMPRESA,',
'                                               :P102_VBLE_COD_FORMA,',
'                                               :P102_VBLE_COD_USUARIO,',
'                                               ''CAR_TEL_PERSONA'');',
'    :P102_VBLE_CARGA_IDENTIFICACION := BUSCA_PERMISO(:P102_VBLE_COD_EMPRESA,',
'                                                     :P102_VBLE_COD_FORMA,',
'                                                     :P102_VBLE_COD_USUARIO,',
'                                                     ''CAR_IDE_PERSONA'');',
'    :P102_VBLE_CARGA_CONTACTO := BUSCA_PERMISO(:P102_VBLE_COD_EMPRESA,',
'                                               :P102_VBLE_COD_FORMA,',
'                                               :P102_VBLE_COD_USUARIO,',
'                                               ''CAR_CON_PERSONA'');',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000,''Error al verificar los permisos del formulario - ''||SQLERRM);',
'END;',
'',
'IF :P102_P_COD_PERSONA IS NULL THEN',
'    :P102_DIR_COD_PAIS      := ''PAR'';',
'    :P102_DIR_TIP_DIRECCION := ''C'';',
'    :P102_DIR_POR_DEFECTO   := ''N'';',
'    :P102_DIR_COD_DIRECCION := ''0''; ',
'END IF;',
'--WHEN-CREATE-RECORD B_TELEFONO',
':P102_TEL_TIP_TELEFONO := ''D'';',
':P102_TEL_TEL_UBICACION := ''C'';',
':P102_TEL_POR_DEFECTO := ''N'';',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
