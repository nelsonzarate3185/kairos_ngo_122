prompt --application/pages/page_00178
begin
--   Manifest
--     PAGE: 00178
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
 p_id=>178
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'STREMISI'
,p_alias=>'STREMISI'
,p_step_title=>'STREMISI'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function removeParam(key, sourceURL) {',
'    var rtn = sourceURL.split("?")[0],',
'        param,',
'        params_arr = [],',
'        queryString = (sourceURL.indexOf("?") !== -1) ? sourceURL.split("?")[1] : "";',
'    if (queryString !== "") {',
'        params_arr = queryString.split("&");',
'        for (var i = params_arr.length - 1; i >= 0; i -= 1) {',
'            param = params_arr[i].split("=")[0];',
'            if (param === key) {',
'                params_arr.splice(i, 1);',
'            }',
'        }',
'        rtn = rtn + "?" + params_arr.join("&");',
'    }',
'    return rtn;',
'}',
'',
'function doDescarga(p_cod_empresa, p_tip_comprobante, p_ser_comprobante, p_nro_comprobante, p_cod_cliente, p_ind_ean, p_usuario, p_reimpresion){',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/STREMAUT_FE.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa + ''&P_COD_CLIENTE=''+ p_cod_cliente + ''&P_TIP_COMPROBANTE='' + p_tip_comprobante  + ',
'            ''&P_SER_COMPROBANTE=''+ p_ser_comprobante + ''&P_NRO_COMPROBANTE=''+ p_nro_comprobante',
'            + ''&P_IND_EAN='' + p_ind_ean + ''&P_USUARIO='' + p_usuario + ''&P_REIMPRESION='' + p_reimpresion +''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'   console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'',
'}',
'',
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57;',
'}',
'',
'function seleccionar(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P178_ACCION'',''AGREGAR'');',
'      $s(''P178_SEQ_ID_OT'', cb.value,false);',
'  } else {',
'      $s(''P178_ACCION'',''QUITAR'');',
'      $s(''P178_SEQ_ID_OT'', cb.value,false);',
'  }',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20250319100509'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35475240576616306)
,p_plug_name=>unistr('Notas de Remisi\00F3n')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(35475367570616307)
,p_plug_name=>'CABECERA'
,p_parent_plug_id=>wwv_flow_imp.id(35475240576616306)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36456183965086710)
,p_plug_name=>'CAB1'
,p_parent_plug_id=>wwv_flow_imp.id(35475367570616307)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36457091303086719)
,p_plug_name=>'VARIABLES1'
,p_parent_plug_id=>wwv_flow_imp.id(36456183965086710)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>240
,p_plug_display_column=>3
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36456212219086711)
,p_plug_name=>'CAB2'
,p_parent_plug_id=>wwv_flow_imp.id(35475367570616307)
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
 p_id=>wwv_flow_imp.id(36456007148086709)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(35475240576616306)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36458477317086733)
,p_plug_name=>'REPORTE'
,p_parent_plug_id=>wwv_flow_imp.id(35475240576616306)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID,',
'       C001 COD_ARTICULO, ',
'       C002 DESCRIPCION_ART, ',
'       C003 CANTIDAD, ',
'       C004 COD_SUCURSAL, ',
'       C005 SER_OT,',
'       C006 NRO_OT, ',
'       C007 NRO_LOTE,',
'       C008 DESCRIPCION,',
'       null EDITAR,',
'       null ELIMINAR ',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''DETALLE_REPORTE_STREMISI''; '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE'
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
 p_id=>wwv_flow_imp.id(37141846540305542)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se han encontrado datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MARIANABLA'
,p_internal_uid=>37141846540305542
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37141989249305543)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('Art\00EDculo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37142019185305544)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('Descripci\00F3n si no se trata de un art\00EDculo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37142189065305545)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37142264184305546)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37142388057305547)
,p_db_column_name=>'SER_OT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Ser Ot'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37142445399305548)
,p_db_column_name=>'NRO_OT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nro Ot'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37142521472305549)
,p_db_column_name=>'NRO_LOTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Lote'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37142656950305550)
,p_db_column_name=>'DESCRIPCION_ART'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37348985732568301)
,p_db_column_name=>'EDITAR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P178_A_SEQ_ID'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
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
 p_id=>wwv_flow_imp.id(37349006184568302)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P178_ELIMINAR_REGISTRO'',''#SEQ_ID#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
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
 p_id=>wwv_flow_imp.id(37349785096568309)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(37334546873493851)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'373346'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_ARTICULO:DESCRIPCION_ART:NRO_LOTE:DESCRIPCION:CANTIDAD:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36458587919086734)
,p_plug_name=>'PIE'
,p_parent_plug_id=>wwv_flow_imp.id(35475240576616306)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36458666894086735)
,p_plug_name=>'PIE1'
,p_parent_plug_id=>wwv_flow_imp.id(36458587919086734)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36458785355086736)
,p_plug_name=>'PIE2'
,p_parent_plug_id=>wwv_flow_imp.id(36458587919086734)
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
 p_id=>wwv_flow_imp.id(36459977456086748)
,p_plug_name=>'PARAMETROS'
,p_parent_plug_id=>wwv_flow_imp.id(35475240576616306)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37351707713568329)
,p_plug_name=>'IMPRESION'
,p_parent_plug_id=>wwv_flow_imp.id(35475240576616306)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37352051970568332)
,p_plug_name=>unistr('Motivo de Impresi\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(37351707713568329)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38002163723313228)
,p_plug_name=>'OT'
,p_parent_plug_id=>wwv_flow_imp.id(35475240576616306)
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38002551533313232)
,p_plug_name=>'Carga de OT'
,p_parent_plug_id=>wwv_flow_imp.id(38002163723313228)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38003031097313237)
,p_plug_name=>'Carga de OT'
,p_parent_plug_id=>wwv_flow_imp.id(38002551533313232)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID,',
'       C001 COD_EMPRESA,',
'       C002 TIP_COMPROBANTE,',
'       C003 SER_COMPROBANTE,',
'       C004 NRO_COMPROBANTE,',
'       C005 COD_CLIENTE,',
'       C006 NOM_CLIENTE,',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'                           p_value       => SEQ_ID,',
'                           p_attributes  => (case C008',
'                                                 when ''S'' then ''checked ''',
'                                             else null',
'                                                 end ) ||''onclick="seleccionar(this)"'' ) as Carga',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''DETALLE_OT_STREMISI'';',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Carga de OT'
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
 p_id=>wwv_flow_imp.id(38003484292313241)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se han encontrado datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MARIANABLA'
,p_internal_uid=>38003484292313241
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38003562138313242)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38003659813313243)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38003779184313244)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tip. Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38003864495313245)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Ser. Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38003928853313246)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nro. Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38004053500313247)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('C\00F3digo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38004198241313248)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(38227469105965601)
,p_db_column_name=>'CARGA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Carga'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(38256885042169524)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'382569'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SEQ_ID:COD_EMPRESA:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:COD_CLIENTE:NOM_CLIENTE:CARGA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38229269547965619)
,p_plug_name=>'AGREGAR/EDITAR'
,p_parent_plug_id=>wwv_flow_imp.id(35475240576616306)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38230449849965631)
,p_plug_name=>'Editar detalle'
,p_parent_plug_id=>wwv_flow_imp.id(38229269547965619)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39302697269615729)
,p_plug_name=>'MOTIVOS'
,p_parent_plug_id=>wwv_flow_imp.id(35475240576616306)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40120082745263659)
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39303450957615737)
,p_plug_name=>unistr('Motivos de reimpresi\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(39302697269615729)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39302807018615731)
,p_plug_name=>unistr('Motivos de reimpresi\00F3n')
,p_parent_plug_id=>wwv_flow_imp.id(39303450957615737)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_usuario, c.fecha fec_impresion, nvl(m.descripcion,''IMPRESION'')MOTIVO',
'  from VT_CONTADOR_IMPRESION_FACT c, cc_MOTIVOS_IMPRESION_canje m',
'where c.cod_empresa=:P178_COD_EMPRESA',
'  and c.cod_motivo=m.cod_motivo(+)',
'  AND C.TIP_COMPROBANTE=:P178_TIP_COMPROBANTE',
'  AND C.SER_COMPROBANTE=:P178_SER_COMPROBANTE',
'  AND C.NRO_COMPROBANTE=:P178_NRO_COMPROBANTE;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P178_COD_EMPRESA,P178_TIP_COMPROBANTE,P178_SER_COMPROBANTE,P178_NRO_COMPROBANTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Motivos de reimpresi\00F3n')
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
 p_id=>wwv_flow_imp.id(39302931283615732)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se han encontrado datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MARIANABLA'
,p_internal_uid=>39302931283615732
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39303004181615733)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39303135967615734)
,p_db_column_name=>'FEC_IMPRESION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(39303276836615735)
,p_db_column_name=>'MOTIVO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Motivo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(39655513751755420)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'396556'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_USUARIO:FEC_IMPRESION:MOTIVO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(124773458405288703)
,p_plug_name=>'REMISIONES'
,p_parent_plug_id=>wwv_flow_imp.id(35475240576616306)
,p_region_css_classes=>'js-dialog-size1500x650'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    NULL SELECCIONAR,',
'    rowid row_id_remision,',
'    tip_comprobante,',
'    ser_comprobante,',
'    nro_comprobante,',
'    fec_comprobante,',
'    cod_cliente, cod_sucursal',
'FROM',
'    st_remision_cab',
'    WHERE COD_EMPRESA=:P_COD_EMPRESA;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REMISIONES'
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
 p_id=>wwv_flow_imp.id(132238167336802925)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>132238167336802925
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132238236892802926)
,p_db_column_name=>'SELECCIONAR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seleccionar'
,p_column_link=>'javascript:$s(''P178_ROW_ID_SEL_REMISION'',''#ROW_ID_REMISION#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132238385465802927)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132238424534802928)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132238505428802929)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132238657085802930)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fec Comprobante'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132238768574802931)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(132238933765802933)
,p_db_column_name=>'ROW_ID_REMISION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Row Id Remision'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(963953252447292729)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(132787101341385153)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1327872'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SELECCIONAR:TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:FEC_COMPROBANTE:COD_CLIENTE'
,p_sort_column_1=>'FEC_COMPROBANTE'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(36456985621086718)
,p_button_sequence=>230
,p_button_plug_id=>wwv_flow_imp.id(36457091303086719)
,p_button_name=>'OT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cargar OT'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_column_span=>2
,p_grid_column=>8
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(132239382761802937)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(124773458405288703)
,p_button_name=>'BTN_CERRAR_REMISION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cerrar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
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
 p_id=>wwv_flow_imp.id(37352787830568339)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(37352051970568332)
,p_button_name=>'VOLVER_IMPRESION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Volver '
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38740451062407607)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(38230449849965631)
,p_button_name=>'VOLVER1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Volver'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38227769837965604)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(38002551533313232)
,p_button_name=>'ACEPTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39303324067615736)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(39303450957615737)
,p_button_name=>'VOLVER2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Volver'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(37352613138568338)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(37352051970568332)
,p_button_name=>'IMPRIMIR1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38230965059965636)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(38230449849965631)
,p_button_name=>'GUARDAR1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(37139362323305517)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(35475240576616306)
,p_button_name=>'LIMPIAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Limpiar'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(37139461714305518)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(35475240576616306)
,p_button_name=>'IMPRIMIR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Imprimir'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(37139573811305519)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(35475240576616306)
,p_button_name=>'BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(37139684756305520)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(35475240576616306)
,p_button_name=>'GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
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
 p_id=>wwv_flow_imp.id(37139779531305521)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(35475240576616306)
,p_button_name=>'ACTUALIZAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Actualizar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(37139822379305522)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(35475240576616306)
,p_button_name=>'ELIMINAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Eliminar'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
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
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(37141205846305536)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(36458477317086733)
,p_button_name=>'CARGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cargar'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(37350670648568318)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(36458477317086733)
,p_button_name=>'AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35475592344616309)
,p_name=>'P178_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(36456007148086709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35475604752616310)
,p_name=>'P178_TIP_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(36456183965086710)
,p_prompt=>'Comprobante'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>3
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35475738579616311)
,p_name=>'P178_SER_COMPROBANTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(36456183965086710)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SERIE_COMPROBANTE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select serie, numero_inicial, numero_final, activo, fec_vencimiento, auto_impresion, timbrado',
'from talonarios',
'where cod_empresa  = :P_COD_EMPRESA',
'and tip_talonario  = :P178_TIP_COMPROBANTE',
'and cod_sucursal   = :P178_COD_SUCURSAL',
'and codigo_usuario = :P178_COD_USUARIO_VAR',
'and activo = ''S'''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P178_TIP_COMPROBANTE'
,p_ajax_items_to_submit=>'P178_TIP_COMPROBANTE,P178_COD_SUCURSAL,P178_COD_USUARIO_VAR'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'NUMERO_FINAL:P178_NUMERO_FINAL,AUTO_IMPRESION:P178_AUTOIMPRESO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35475861895616312)
,p_name=>'P178_NRO_COMPROBANTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(36456183965086710)
,p_prompt=>unistr('N\00FAmero')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35475927868616313)
,p_name=>'P178_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(36456183965086710)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSALES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_sucursal||'' - ''||descripcion L, ',
'         cod_sucursal V',
'    FROM sucursales ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY descripcion'))
,p_cSize=>30
,p_cMaxlength=>5
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
 p_id=>wwv_flow_imp.id(35476006175616314)
,p_name=>'P178_FEC_COMPROBANTE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(36456183965086710)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_colspan=>8
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
 p_id=>wwv_flow_imp.id(35476107514616315)
,p_name=>'P178_COD_CLIENTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(36456212219086711)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES_STREMISI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) nombre, c.cod_cliente R, c.cod_cliente ',
'from cc_clientes c, personas p ',
'where c.cod_empresa = :P_COD_EMPRESA',
'and c.cod_persona = p.cod_persona ',
'order by 1'))
,p_cSize=>30
,p_cMaxlength=>15
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'NOMBRE:P178_NOM_CLIENTE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35476243818616316)
,p_name=>'P178_NOM_CLIENTE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(36456212219086711)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35476361004616317)
,p_name=>'P178_COD_DIRECCION'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(36456212219086711)
,p_prompt=>'Punto de Llegada'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSAL_DIST_STREMISI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.nombre, p.direccion, p.telefono, P.cod_SUCURSAL R, P.cod_SUCURSAL || '' - '' || P.direccion D',
'  from cc_clientes c, BS_SUCURSAL_CLIENTE p',
' where c.cod_empresa=:P178_COD_EMPRESA',
'   and c.cod_cliente=:P178_COD_CLIENTE',
'   and c.cod_persona=p.cod_persona'))
,p_lov_cascade_parent_items=>'P178_COD_CLIENTE'
,p_ajax_items_to_submit=>'P178_COD_EMPRESA,P178_COD_CLIENTE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>5
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'DIRECCION:P178_DIRECCION'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35476443169616318)
,p_name=>'P178_DIRECCION'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(36456212219086711)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35476523189616319)
,p_name=>'P178_TELEFONO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(36456212219086711)
,p_prompt=>unistr('Tel\00E9fono')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35476659090616320)
,p_name=>'P178_RUC'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(36456212219086711)
,p_prompt=>'R.U.C.'
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
 p_id=>wwv_flow_imp.id(35476816510616322)
,p_name=>'P178_OBSERVACION'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(36456212219086711)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>200
,p_cHeight=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35477047147616324)
,p_name=>'P178_ESTADO_REPARTO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(35475367570616307)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35477241437616326)
,p_name=>'P178_COD_CONCEPTO_REM'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(36456183965086710)
,p_prompt=>'Concepto '
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CONCEPTOS_STREMISI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion D, cod_concepto_rem R, cod_concepto_rem dis',
'from st_conceptos_remision ',
'where cod_empresa = :P_COD_EMPRESA',
'order by 1'))
,p_cSize=>30
,p_cMaxlength=>5
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(35477331533616327)
,p_name=>'P178_TIP_CAMBIO_US'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(35475367570616307)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35477487444616328)
,p_name=>'P178_COD_DIRECCION_PART'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(36456212219086711)
,p_prompt=>'Punto de Partida'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSAL_SAL_STREMISI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion D, cod_sucursal R, cod_sucursal, COD_SUCURSAL || '' - '' || DESCRIPCION Partida',
'from sucursales ',
'where cod_empresa = :P_COD_EMPRESA',
'order by COD_SUCURSAL || '' - '' || DESCRIPCION --cod_sucursal'))
,p_cSize=>30
,p_cMaxlength=>5
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_10=>'D:P178_DIRECCION_PART'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35477579141616329)
,p_name=>'P178_DIRECCION_PART'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(36456212219086711)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35477645847616330)
,p_name=>'P178_TIP_COMPROBANTE_REF'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(36456183965086710)
,p_prompt=>'Referencia'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:NIN;NIN,FAC;FAC,ORT;ORT,ENV;ENV,TRA.OTS;TRAOTS'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35477726616616331)
,p_name=>'P178_SER_COMPROBANTE_REF'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(36456183965086710)
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
 p_id=>wwv_flow_imp.id(35477863903616332)
,p_name=>'P178_NRO_COMPROBANTE_REF'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(36456183965086710)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35477943813616333)
,p_name=>'P178_COMPROBADO'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(35475367570616307)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35478093268616334)
,p_name=>'P178_COD_SUCURSAL_ENT'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(35475367570616307)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35478194407616335)
,p_name=>'P178_IND_IMPRESO'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(35475367570616307)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35478226111616336)
,p_name=>'P178_MARCA_TRANS'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(36456183965086710)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35478383936616337)
,p_name=>'P178_TRANSPORTISTA'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(36456183965086710)
,p_prompt=>'Transportista'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''SERINCAR'' tt,''SERINCAR''  from dual ',
'union all',
'select ''TSI''  tt,''TSI'' from dual ',
'union all',
'select ''CONTACT COURIER'' tt,''CONTACT COURIER'' from dual ',
'union all',
'select ''NINGUNO'' tt,''NINGUNO'' from dual'))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35478479589616338)
,p_name=>'P178_CONDUCTOR'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(36456212219086711)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35478550776616339)
,p_name=>'P178_DIRECC_CONDUC'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(35475367570616307)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35478639045616340)
,p_name=>'P178_RUC_TRANSP'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(36456183965086710)
,p_prompt=>'R.U.C. Transp.'
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
 p_id=>wwv_flow_imp.id(35478789656616341)
,p_name=>'P178_CED_COND'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(36456212219086711)
,p_prompt=>unistr('C\00E9dula Conductor')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35478824055616342)
,p_name=>'P178_CHAPA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(36456212219086711)
,p_prompt=>'Chapa'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35478920988616343)
,p_name=>'P178_FEC_FIN_TRASLADO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(36456183965086710)
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
 p_id=>wwv_flow_imp.id(35479085759616344)
,p_name=>'P178_COD_CHOFER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(36456212219086711)
,p_prompt=>'Conductor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_REPARTIDORES_STREMISI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) D, r.cod_repartidor R, r.cod_repartidor DIS',
'from rp_repartidores r, personas p ',
'where r.cod_empresa = :P_COD_EMPRESA',
'and r.cod_persona = p.cod_persona ',
'order by 1'))
,p_cSize=>30
,p_cMaxlength=>20
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(35479180364616345)
,p_name=>'P178_COD_VEHICULO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(36456183965086710)
,p_prompt=>'Cod Vehiculo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VEHICULOS_STREMISI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select descripcion, cod_vehiculo, marca ',
'    from rp_vehiculos ',
'   where cod_empresa = :P_COD_EMPRESA',
'     and nvl(Activo,''S'')=''S''',
'order by descripcion'))
,p_cSize=>30
,p_cMaxlength=>20
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
 p_id=>wwv_flow_imp.id(35479223848616346)
,p_name=>'P178_NRO_GUIA_LEVANTE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(36456212219086711)
,p_prompt=>unistr('Nro. Gu\00EDa/Levante')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35479308219616347)
,p_name=>'P178_COSTO_ENVIO'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(36456212219086711)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35479458138616348)
,p_name=>'P178_COD_ZONA_REPARTO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(36456183965086710)
,p_prompt=>'Zona'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ZONAS_STREMISI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select descripcion D, ',
'        cod_zona_reparto R,',
'        cod_zona_reparto DIS',
'   from rp_zonas_reparto ',
'order by descripcion'))
,p_cSize=>30
,p_cMaxlength=>10
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(35479584664616349)
,p_name=>'P178_COD_AYUDANTE_1'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(36456212219086711)
,p_prompt=>'Ayudante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_AYU1_STREMISI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre, e.cod_empleado D, e.cod_empleado R ',
'from rh_empleados e, personas p ',
'where e.cod_empresa = :P_COD_EMPRESA',
'and e.cod_persona = p.cod_persona ',
'and nvl(e.activo, ''S'') = ''S'' ',
'AND COD_CARGO=''222''',
'order by e.cod_empleado '))
,p_cSize=>30
,p_cMaxlength=>10
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(35479658758616350)
,p_name=>'P178_COD_AYUDANTE_2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(36456212219086711)
,p_prompt=>'Ayudante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_AYU1_STREMISI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre, e.cod_empleado D, e.cod_empleado R ',
'from rh_empleados e, personas p ',
'where e.cod_empresa = :P_COD_EMPRESA',
'and e.cod_persona = p.cod_persona ',
'and nvl(e.activo, ''S'') = ''S'' ',
'AND COD_CARGO=''222''',
'order by e.cod_empleado '))
,p_cSize=>30
,p_cMaxlength=>10
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(36455239744086701)
,p_name=>'P178_C_COD_MOTIVO_ANU'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(36458785355086736)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ANULACION_STREMISI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select cod_motivo_anu||'' - ''||descripcion D, cod_motivo_anu R',
'    from vt_motivo_anulacion ',
'   where cod_empresa = :P_COD_EMPRESA ',
'     and tip_motivo = ''5'' ',
'order by 1'))
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
 p_id=>wwv_flow_imp.id(36455389438086702)
,p_name=>'P178_C_COD_USUARIO_ANU'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(36458785355086736)
,p_prompt=>'&nbsp'
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
 p_id=>wwv_flow_imp.id(36455584645086704)
,p_name=>'P178_MOTIVO_TRASLADO'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(36456183965086710)
,p_prompt=>'Traslado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:VENTA;VENTA,CANJE;CANJE,OTROS;OTROS,TRANSFERENCIA;TRANSFERENCIA'
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
 p_id=>wwv_flow_imp.id(36455656549086705)
,p_name=>'P178_NRO_REMISION_QM'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_imp.id(35475367570616307)
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
 p_id=>wwv_flow_imp.id(36455762510086706)
,p_name=>'P178_ID_GUARDA'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_imp.id(35475367570616307)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36455844704086707)
,p_name=>'P178_TIPO_ENTREGA'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_imp.id(35475367570616307)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36455934891086708)
,p_name=>'P178_FECHA_ENTREGA'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_imp.id(35475367570616307)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36456335200086712)
,p_name=>'P178_NUMERO_FINAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(36456183965086710)
,p_prompt=>unistr('N\00B0 Final')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36456441467086713)
,p_name=>'P178_AUTOIMPRESO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(36456183965086710)
,p_prompt=>'Autoimpreso'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36456563725086714)
,p_name=>'P178_DESC_CONCEPTO_REM'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(36456183965086710)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36456650815086715)
,p_name=>'P178_DESC_ZONA'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(36456183965086710)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36456722140086716)
,p_name=>'P178_IMPRIME_ART_CLIENTE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(36457091303086719)
,p_prompt=>unistr('Imprimir con C\00F3digo Art. Cliente')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36456834944086717)
,p_name=>'P178_IMPRIMIR_EAN'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(36457091303086719)
,p_prompt=>'Imprimir EAN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36457509348086724)
,p_name=>'P178_DESC_AYUDANTE_1'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(36456212219086711)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36457647986086725)
,p_name=>'P178_DESC_AYUDANTE_2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(36456212219086711)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36458827226086737)
,p_name=>'P178_C_COD_USUARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(36458666894086735)
,p_prompt=>'Usuario'
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
 p_id=>wwv_flow_imp.id(36458946923086738)
,p_name=>'P178_C_FEC_ALTA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(36458666894086735)
,p_prompt=>'Fecha de alta'
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
 p_id=>wwv_flow_imp.id(36459018829086739)
,p_name=>'P178_D_SER_OT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(36458666894086735)
,p_prompt=>'OT'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36459134235086740)
,p_name=>'P178_D_NRO_OT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(36458666894086735)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36459214743086741)
,p_name=>'P178_C_ANULADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(36458785355086736)
,p_prompt=>'Anulado'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Anulado;S'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36459311967086742)
,p_name=>'P178_C_FEC_ANULACION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(36458785355086736)
,p_prompt=>'Fecha'
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
 p_id=>wwv_flow_imp.id(36459703893086746)
,p_name=>'P178_COD_USUARIO_VAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(36456007148086709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36459879859086747)
,p_name=>'P178_COD_SUCURSAL_VAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(36456007148086709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36460065560086749)
,p_name=>'P178_P_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(36459977456086748)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(36460133400086750)
,p_name=>'P178_COD_MODULO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(36456007148086709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37137705611305501)
,p_name=>'P178_SER_REMISION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(36456007148086709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37137885414305502)
,p_name=>'P178_COD_FORMA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(36456007148086709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37137983479305503)
,p_name=>'P178_COD_ARTICULO_REM'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(36456007148086709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37138095771305504)
,p_name=>'P178_TIP_REMISION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(36456007148086709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37138129226305505)
,p_name=>'P178_CLIENTE_CONTADO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(36456007148086709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37138292762305506)
,p_name=>'P178_CAMBIA_NRO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(36456007148086709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37138333940305507)
,p_name=>'P178_CARGA_SUCURSAL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(36456007148086709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37138406147305508)
,p_name=>'P178_CAMBIA_FECHA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(36456007148086709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37138541997305509)
,p_name=>'P178_ANULA_REMISION'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(36456007148086709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37138645658305510)
,p_name=>'P178_ANULA_REMISION_ALL'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(36456007148086709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37138787464305511)
,p_name=>'P178_GENERA_EN_GUARDA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(36456007148086709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37138823191305512)
,p_name=>'P178_REIMPRIME'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(36456007148086709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37138990284305513)
,p_name=>'P178_P_NRO_REF'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(36459977456086748)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37139035578305514)
,p_name=>'P178_P_TIP_REF'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(36459977456086748)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37139188718305515)
,p_name=>'P178_P_SER_REF'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(36459977456086748)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37139223768305516)
,p_name=>'P178_P_COD_CLIENTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(36459977456086748)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37140153178305525)
,p_name=>'P178_C_TOT_CANTIDAD'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_imp.id(35475367570616307)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37140280507305526)
,p_name=>'P178_DESC_TIPO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(36456183965086710)
,p_prompt=>'&nbsp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>3
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37140385810305527)
,p_name=>'P178_P_ENVIO_PEND'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(36459977456086748)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37140483167305528)
,p_name=>'P178_P_COD_VEHICULO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(36459977456086748)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37140519539305529)
,p_name=>'P178_P_COD_REPARTIDOR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(36459977456086748)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37140640952305530)
,p_name=>'P178_P_COD_ZONA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(36459977456086748)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37140715501305531)
,p_name=>'P178_P_COD_AYUDANTE_1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(36459977456086748)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37140805882305532)
,p_name=>'P178_P_COD_AYUDANTE_2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(36459977456086748)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37140924140305533)
,p_name=>'P178_AUX_COSTO_ENVIO'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(36456212219086711)
,p_prompt=>unistr('Costo Env\00EDo')
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37141522622305539)
,p_name=>'P178_C_TOT_CANTIDAD_ANT'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_imp.id(35475367570616307)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37141692498305540)
,p_name=>'P178_CARGA_DETALLE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(36456007148086709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37141743661305541)
,p_name=>'P178_AUX_MSJ'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(36456007148086709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37349342064568305)
,p_name=>'P178_ABRE_EDITAR'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(36456007148086709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37349471479568306)
,p_name=>'P178_ELIMINAR_REGISTRO'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(36456007148086709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37350381415568315)
,p_name=>'P178_UPDATE_DETALLE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(36456007148086709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37351913044568331)
,p_name=>'P178_ABRE_IMPRIME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(37351707713568329)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37352113291568333)
,p_name=>'P178_COD_MOTIVO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(37352051970568332)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MOTIVO_REIMPRESION_VTNOTCRE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION D, ',
'       COD_MOTIVO R',
'  FROM cc_MOTIVOS_IMPRESION_canje'))
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
 p_id=>wwv_flow_imp.id(37352360499568335)
,p_name=>'P178_DESCRIPCION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(37352051970568332)
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
 p_id=>wwv_flow_imp.id(37352487208568336)
,p_name=>'P178_I_COD_USUARIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(37352051970568332)
,p_prompt=>'Usuario'
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
 p_id=>wwv_flow_imp.id(37352529358568337)
,p_name=>'P178_FECHA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(37352051970568332)
,p_prompt=>unistr('Fecha de impresi\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37999498698313201)
,p_name=>'P178_CANTIDAD_IMPRESION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(36458666894086735)
,p_prompt=>'Cant. Impresiones'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38002209082313229)
,p_name=>'P178_SEQ_ID_OT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(38002163723313228)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38002335764313230)
,p_name=>'P178_ACCION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(38002163723313228)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38003325465313240)
,p_name=>'P178_CARGA_DETALLES_VARIOS'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(36456007148086709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38228918394965616)
,p_name=>'P178_COD_CLIENTE_ANT'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(36456007148086709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38229376716965620)
,p_name=>'P178_A_SEQ_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(38229269547965619)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38229611983965623)
,p_name=>'P178_A_COD_ARTICULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(38230449849965631)
,p_prompt=>unistr('Art\00EDculo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS_STREMISI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  descripcion D, cod_articulo R, COD_ART_CORTO',
'from st_articulos ',
'where cod_empresa = :P_COD_EMPRESA ',
'and ( estado is null or estado <> ''I'' ) ',
'order by descripcion'))
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
 p_id=>wwv_flow_imp.id(38229751063965624)
,p_name=>'P178_A_NRO_LOTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(38230449849965631)
,p_prompt=>'Lote'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_LOTES_STREMISI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char( l.fec_vencimiento, ''DD/MM/YYYY'' ) fec_letras, l.nro_lote, l.fec_vencimiento, s.cant_dispon ',
'from st_lotes l, st_existencia_art s ',
'where s.cod_empresa = :P_COD_EMPRESA ',
'and s.cod_articulo = :P178_A_COD_ARTICULO',
'and s.cod_sucursal = :P178_COD_SUCURSAL ',
'and nvl( s.cant_dispon, 0 ) > 0 ',
'and s.cod_empresa = l.cod_empresa ',
'and s.cod_articulo = l.cod_articulo ',
'and s.nro_lote = l.nro_lote ',
'order by l.fec_vencimiento'))
,p_lov_cascade_parent_items=>'P178_A_COD_ARTICULO'
,p_ajax_items_to_submit=>'P178_A_COD_ARTICULO,P178_COD_SUCURSAL'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38229990465965626)
,p_name=>'P178_A_DESCRIPCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(38230449849965631)
,p_prompt=>unistr('Descripci\00F3n si no es un art\00EDculo')
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
 p_id=>wwv_flow_imp.id(38230005933965627)
,p_name=>'P178_A_CANTIDAD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(38230449849965631)
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
 p_id=>wwv_flow_imp.id(38741094251407613)
,p_name=>'P178_A_NRO_LOTE_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(38230449849965631)
,p_prompt=>'Lote'
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
 p_id=>wwv_flow_imp.id(38741513136407618)
,p_name=>'P178_NOTA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(36458666894086735)
,p_placeholder=>unistr('Observaci\00F3n: Para borrar la nota de remisi\00F3n es necesario anular.')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>95
,p_tag_attributes=>'readonly'
,p_grid_column=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186365556263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39301675968615719)
,p_name=>'P178_REPORTE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(36456007148086709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39301908815615722)
,p_name=>'P178_REIMPRESION'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(36456007148086709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39302003164615723)
,p_name=>'P178_SAVE_UPDATE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(36456007148086709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132238866327802932)
,p_name=>'P178_ROW_ID_SEL_REMISION'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(36456007148086709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(39301230526615715)
,p_validation_name=>'VA_COD_DIRECCION'
,p_validation_sequence=>10
,p_validation=>'P178_COD_DIRECCION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Debe seleccionar una direcci\00F3n.')
,p_associated_item=>wwv_flow_imp.id(35476361004616317)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(39301474513615717)
,p_validation_name=>'VA_COD_DIRECCION_PART'
,p_validation_sequence=>20
,p_validation=>'P178_COD_DIRECCION_PART'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Debe seleccionar una direcci\00F3n.')
,p_associated_item=>wwv_flow_imp.id(35477487444616328)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(39301576102615718)
,p_validation_name=>'VA_COD_MOTIVO_ANU'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P178_C_ANULADO = ''S'' AND :P178_C_COD_MOTIVO_ANU IS NULL THEN',
'    RETURN FALSE;',
'ELSE',
'    RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('Debe seleccionar un motivo de anulaci\00F3n.')
,p_associated_item=>wwv_flow_imp.id(36455239744086701)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(40690213903230917)
,p_validation_name=>'VA_SER_COMPROBANTE'
,p_validation_sequence=>40
,p_validation=>'P178_SER_COMPROBANTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Sebe ingresar una serie.'
,p_associated_item=>wwv_flow_imp.id(35475738579616311)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(40690331576230918)
,p_validation_name=>'VA_NRO_COMPROBANTE'
,p_validation_sequence=>50
,p_validation=>'P178_NRO_COMPROBANTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Debe ingresar un n\00FAmero.')
,p_associated_item=>wwv_flow_imp.id(35475861895616312)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37141033280305534)
,p_name=>'DA_COSTO_ENVIO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_COSTO_ENVIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37141195730305535)
,p_event_id=>wwv_flow_imp.id(37141033280305534)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P178_AUX_COSTO_ENVIO := :P178_COSTO_ENVIO;'
,p_attribute_02=>'P178_COSTO_ENVIO'
,p_attribute_03=>'P178_AUX_COSTO_ENVIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37141319344305537)
,p_name=>'DA_CARGA_COLECCION'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(37141205846305536)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37141450330305538)
,p_event_id=>wwv_flow_imp.id(37141319344305537)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P178_TIP_COMPROBANTE_REF IS NOT NULL AND :P178_SER_COMPROBANTE_REF IS NOT NULL AND :P178_NRO_COMPROBANTE_REF IS NOT NULL THEN',
'    APEX_DEBUG.ERROR(''ENTRA IF'');',
'    STREMISI.carga_coleccion(PI_COD_EMPRESA           => :P178_COD_EMPRESA,',
'                             PI_CARGA_DETALLE         => :P178_CARGA_DETALLE,',
'                             PO_CARGA_DETALLE         => :P178_CARGA_DETALLE,',
'                             PI_COD_SUCURSAL          => :P178_COD_SUCURSAL,',
'                             PI_TIP_COMPROBANTE_REF   => :P178_TIP_COMPROBANTE_REF,',
'                             PI_SER_COMPROBANTE_REF   => :P178_SER_COMPROBANTE_REF,',
'                             PI_NRO_COMPROBANTE_REF   => :P178_NRO_COMPROBANTE_REF,',
'                             PI_TOT_CANTIDAD_ANT      => TO_NUMBER(:P178_C_TOT_CANTIDAD_ANT),',
'                             PO_TOT_CANTIDAD_ANT      => :P178_C_TOT_CANTIDAD_ANT,',
'                             PI_TOT_CANTIDAD          => TO_NUMBER(:P178_C_TOT_CANTIDAD),',
'                             PO_TOT_CANTIDAD          => :P178_C_TOT_CANTIDAD);',
'    :P178_AUX_MSJ := null;',
'    ',
'ELSE',
'    :P178_AUX_MSJ := ''Debe completar los datos del comprobante de referencia.''; ',
'END IF;',
''))
,p_attribute_02=>'P178_TIP_COMPROBANTE_REF,P178_SER_COMPROBANTE_REF,P178_NRO_COMPROBANTE_REF,P178_COD_EMPRESA,P178_CARGA_DETALLE,P178_COD_SUCURSAL,P178_C_TOT_CANTIDAD_ANT,P178_C_TOT_CANTIDAD'
,p_attribute_03=>'P178_AUX_MSJ,P178_C_TOT_CANTIDAD_ANT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37349515347568307)
,p_event_id=>wwv_flow_imp.id(37141319344305537)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P178_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P178_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37349643246568308)
,p_event_id=>wwv_flow_imp.id(37141319344305537)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(36458477317086733)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P178_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37349895807568310)
,p_name=>'DA_ELIMINAR_REGISTRO'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_ELIMINAR_REGISTRO'
,p_condition_element=>'P178_UPDATE_DETALLE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37349986435568311)
,p_event_id=>wwv_flow_imp.id(37349895807568310)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_06=>'Aceptar'
,p_attribute_07=>'Cancelar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37350879727568320)
,p_event_id=>wwv_flow_imp.id(37349895807568310)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Se ha deshabilitado la actualizaci\00F3n del detalle.')
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_06=>'Aceptar'
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
 p_id=>wwv_flow_imp.id(37350018046568312)
,p_event_id=>wwv_flow_imp.id(37349895807568310)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VCANTIDAD NUMBER;',
'BEGIN',
'    SELECT TO_NUMBER(C003)',
'      INTO VCANTIDAD',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''DETALLE_REPORTE_STREMISI''',
'       AND SEQ_ID = :P178_ELIMINAR_REGISTRO;',
'',
'    :P178_C_TOT_CANTIDAD := TO_NUMBER(NVL(:P178_C_TOT_CANTIDAD,0)) - VCANTIDAD;',
'    APEX_COLLECTION.DELETE_MEMBER(p_collection_name => ''DETALLE_REPORTE_STREMISI'',',
'                                               p_seq => :P178_ELIMINAR_REGISTRO);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;',
'END;         '))
,p_attribute_02=>'P178_ELIMINAR_REGISTRO,P178_C_TOT_CANTIDAD'
,p_attribute_03=>'P178_C_TOT_CANTIDAD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39303973443615742)
,p_event_id=>wwv_flow_imp.id(37349895807568310)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(36458477317086733)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37350957973568321)
,p_name=>'DA_EDITAR'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_ABRE_EDITAR'
,p_condition_element=>'P178_UPDATE_DETALLE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37351154339568323)
,p_event_id=>wwv_flow_imp.id(37350957973568321)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Se ha deshabilitado la actualizaci\00F3n del detalle.')
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_06=>'Aceptar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37351253612568324)
,p_event_id=>wwv_flow_imp.id(37350957973568321)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VCANTIDAD NUMBER;',
'BEGIN',
'    SELECT TO_NUMBER(C003)',
'      INTO VCANTIDAD',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''DETALLE_REPORTE_STREMISI''',
'       AND SEQ_ID = :P178_ELIMINAR_REGISTRO;',
'',
'    :P178_C_TOT_CANTIDAD := TO_NUMBER(NVL(:P178_C_TOT_CANTIDAD,0)) - VCANTIDAD;',
'    APEX_COLLECTION.DELETE_MEMBER(p_collection_name => ''DETALLE_REPORTE_STREMISI'',',
'                                               p_seq => :P178_ELIMINAR_REGISTRO);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;',
'END;         '))
,p_attribute_02=>'P178_ELIMINAR_REGISTRO,P178_C_TOT_CANTIDAD'
,p_attribute_03=>'P178_C_TOT_CANTIDAD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37350182187568313)
,p_name=>'DA_BUSCAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(37139573811305519)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.item(''P178_TIP_COMPROBANTE'').getValue() != '''' && apex.item(''P178_SER_COMPROBANTE'').getValue() != '''' && apex.item(''P178_NRO_COMPROBANTE'').getValue() != '''''
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37350240480568314)
,p_event_id=>wwv_flow_imp.id(37350182187568313)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT COD_SUCURSAL,FEC_COMPROBANTE,COD_CLIENTE,NOM_CLIENTE,COD_DIRECCION,DIRECCION,TELEFONO,RUC,FEC_ALTA,OBSERVACION,COD_USUARIO,ESTADO_REPARTO,',
'           ANULADO,COD_CONCEPTO_REM,TIP_CAMBIO_US,COD_DIRECCION_PART,DIRECCION_PART,TIP_COMPROBANTE_REF,SER_COMPROBANTE_REF,NRO_COMPROBANTE_REF,COMPROBADO,',
'           COD_SUCURSAL_ENT,IND_IMPRESO,MARCA_TRANS,TRANSPORTISTA,CONDUCTOR,DIRECC_CONDUC,RUC_TRANSP,CED_COND,CHAPA,FEC_FIN_TRASLADO,COD_CHOFER,COD_VEHICULO,',
'           NRO_GUIA_LEVANTE,COSTO_ENVIO,COD_ZONA_REPARTO,COD_AYUDANTE_1,COD_AYUDANTE_2,COD_MOTIVO_ANU,COD_USUARIO_ANU,FEC_ANULACION,MOTIVO_TRASLADO,',
'           NRO_REMISION_QM,ID_GUARDA,TIPO_ENTREGA,FECHA_ENTREGA',
'      INTO :P178_COD_SUCURSAL, :P178_FEC_COMPROBANTE, :P178_COD_CLIENTE, :P178_NOM_CLIENTE, :P178_COD_DIRECCION, :P178_DIRECCION, :P178_TELEFONO, :P178_RUC, :P178_C_FEC_ALTA, :P178_OBSERVACION, :P178_C_COD_USUARIO, :P178_ESTADO_REPARTO,',
'           :P178_C_ANULADO, :P178_COD_CONCEPTO_REM, :P178_TIP_CAMBIO_US, :P178_COD_DIRECCION_PART, :P178_DIRECCION_PART, :P178_TIP_COMPROBANTE_REF, :P178_SER_COMPROBANTE_REF, :P178_NRO_COMPROBANTE_REF, :P178_COMPROBADO,    ',
'           :P178_COD_SUCURSAL_ENT, :P178_IND_IMPRESO, :P178_MARCA_TRANS, :P178_TRANSPORTISTA, :P178_CONDUCTOR, :P178_DIRECC_CONDUC, :P178_RUC_TRANSP, :P178_CED_COND, :P178_CHAPA, :P178_FEC_FIN_TRASLADO, :P178_COD_CHOFER, :P178_COD_VEHICULO,  ',
'           :P178_NRO_GUIA_LEVANTE, :P178_COSTO_ENVIO, :P178_COD_ZONA_REPARTO, :P178_COD_AYUDANTE_1, :P178_COD_AYUDANTE_2, :P178_C_COD_MOTIVO_ANU, :P178_C_COD_USUARIO_ANU, :P178_C_FEC_ANULACION, :P178_MOTIVO_TRASLADO,',
'           :P178_NRO_REMISION_QM, :P178_ID_GUARDA, :P178_TIPO_ENTREGA, :P178_FECHA_ENTREGA',
'      FROM ST_REMISION_CAB',
'     WHERE COD_EMPRESA = :P178_COD_EMPRESA',
'       AND TIP_COMPROBANTE = :P178_TIP_COMPROBANTE',
'       AND SER_COMPROBANTE = :P178_SER_COMPROBANTE',
'       AND NRO_COMPROBANTE = :P178_NRO_COMPROBANTE;',
'',
'    STREMISI.post_query_cabecera(PI_COD_EMPRESA        => :P178_COD_EMPRESA,',
'                                 PI_TIP_COMPROBANTE    => :P178_TIP_COMPROBANTE,',
'                                 PI_COD_CONCEPTO_REM   => :P178_COD_CONCEPTO_REM,',
'                                 PI_SER_COMPROBANTE    => :P178_SER_COMPROBANTE,',
'                                 PI_NRO_COMPROBANTE    => :P178_NRO_COMPROBANTE,',
'                                 PI_COD_SUCURSAL       => :P178_COD_SUCURSAL,',
'                                 PO_DESC_CONCEPTO_REM  => :P178_DESC_CONCEPTO_REM,',
'                                 PO_DESC_TIPO          => :P178_DESC_TIPO,',
'                                 PO_TOT_CANTIDAD       => :P178_C_TOT_CANTIDAD,',
'                                 PO_UPDATE_DETALLE     => :P178_UPDATE_DETALLE,',
'                                 PI_COD_ZONA_REPARTO   => :P178_COD_ZONA_REPARTO,',
'                                 PO_DESC_ZONA          => :P178_DESC_ZONA,',
'                                 PI_COD_AYUDANTE1      => :P178_COD_AYUDANTE_1,',
'                                 PO_DESC_AYUDANTE1     => :P178_DESC_AYUDANTE_1,',
'                                 PI_COD_AYUDANTE2      => :P178_COD_AYUDANTE_2,',
'                                 PO_DESC_AYUDANTE2     => :P178_DESC_AYUDANTE_2,',
'                                 PO_AUTOIMPRESO        => :P178_AUTOIMPRESO,',
'                                 PO_CANTIDAD_IMPRESION => :P178_CANTIDAD_IMPRESION);',
'',
'    STREMISI.busca_detalle(PI_COD_EMPRESA        => :P178_COD_EMPRESA,',
'                           PI_SER_COMPROBANTE    => :P178_SER_COMPROBANTE,',
'                           PI_NRO_COMPROBANTE    => :P178_NRO_COMPROBANTE,',
'                           PI_TIP_COMPROBANTE    => :P178_TIP_COMPROBANTE);                             ',
'END;                                 ',
'',
''))
,p_attribute_02=>'P178_TIP_COMPROBANTE,P178_SER_COMPROBANTE,P178_NRO_COMPROBANTE,P178_COD_EMPRESA'
,p_attribute_03=>'P178_CANTIDAD_IMPRESION,P178_DESC_CONCEPTO_REM,P178_DESC_TIPO,P178_C_TOT_CANTIDAD,P178_UPDATE_DETALLE,P178_DESC_ZONA,P178_DESC_AYUDANTE_1,P178_DESC_AYUDANTE_2,P178_AUTOIMPRESO,P178_COD_SUCURSAL,P178_FEC_COMPROBANTE,P178_COD_CLIENTE,P178_NOM_CLIENTE,P'
||'178_COD_DIRECCION,P178_DIRECCION,P178_TELEFONO,P178_RUC,P178_C_FEC_ALTA,P178_OBSERVACION,P178_C_COD_USUARIO,P178_ESTADO_REPARTO, P178_C_ANULADO,P178_COD_CONCEPTO_REM,P178_TIP_CAMBIO_US,P178_COD_DIRECCION_PART,P178_DIRECCION_PART,P178_TIP_COMPROBANTE_'
||'REF,P178_SER_COMPROBANTE_REF,P178_NRO_COMPROBANTE_REF,P178_COMPROBADO,P178_COD_SUCURSAL_ENT,P178_IND_IMPRESO,P178_MARCA_TRANS,P178_TRANSPORTISTA,P178_CONDUCTOR,P178_DIRECC_CONDUC,P178_RUC_TRANSP,P178_CED_COND,P178_CHAPA,P178_FEC_FIN_TRASLADO,P178_COD'
||'_CHOFER,P178_COD_VEHICULO,   P178_NRO_GUIA_LEVANTE,P178_COSTO_ENVIO,P178_COD_ZONA_REPARTO,P178_COD_AYUDANTE_1,P178_COD_AYUDANTE_2,P178_C_COD_MOTIVO_ANU,P178_C_COD_USUARIO_ANU,P178_C_FEC_ANULACION,P178_MOTIVO_TRASLADO, P178_NRO_REMISION_QM,P178_ID_GUA'
||'RDA,P178_TIPO_ENTREGA,P178_FECHA_ENTREGA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37999886937313205)
,p_event_id=>wwv_flow_imp.id(37350182187568313)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(37350670648568318)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P178_C_ANULADO'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37351310811568325)
,p_event_id=>wwv_flow_imp.id(37350182187568313)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe completar los datos del comprobante a buscar.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37999669494313203)
,p_event_id=>wwv_flow_imp.id(37350182187568313)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(37139822379305522)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P178_C_ANULADO'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37999704805313204)
,p_event_id=>wwv_flow_imp.id(37350182187568313)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(37139779531305521)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P178_C_ANULADO'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40689120163230906)
,p_event_id=>wwv_flow_imp.id(37350182187568313)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(37139684756305520)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38000153099313208)
,p_event_id=>wwv_flow_imp.id(37350182187568313)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(37350670648568318)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P178_C_ANULADO'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40689774847230912)
,p_event_id=>wwv_flow_imp.id(37350182187568313)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(37139461714305518)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37999965294313206)
,p_event_id=>wwv_flow_imp.id(37350182187568313)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(37139822379305522)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P178_C_ANULADO'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38000075560313207)
,p_event_id=>wwv_flow_imp.id(37350182187568313)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(37139779531305521)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P178_C_ANULADO'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38000224955313209)
,p_event_id=>wwv_flow_imp.id(37350182187568313)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P178_C_ANULADO'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P178_ANULA_REMISION'
,p_client_condition_expression=>'S'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38000433520313211)
,p_event_id=>wwv_flow_imp.id(37350182187568313)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P178_C_ANULADO'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P178_ANULA_REMISION_ALL'
,p_client_condition_expression=>'S'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40689204437230907)
,p_event_id=>wwv_flow_imp.id(37350182187568313)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.getElementById(''P178_C_ANULADO'').readOnly = true;'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P178_ANULA_REMISION_ALL'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40689316672230908)
,p_event_id=>wwv_flow_imp.id(37350182187568313)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.getElementById(''P178_C_ANULADO'').readOnly = true;'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P178_ANULA_REMISION'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38000318968313210)
,p_event_id=>wwv_flow_imp.id(37350182187568313)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P178_C_ANULADO'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'apex.item(''P178_ANULA_REMISION'').getValue() == ''S'' && apex.item(''P178_C_COD_USUARIO'').getValue() == apex.item(''P178_COD_USUARIO_VAR'').getValue()'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38001141611313218)
,p_event_id=>wwv_flow_imp.id(37350182187568313)
,p_event_result=>'TRUE'
,p_action_sequence=>160
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P178_COD_SUCURSAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39304581594615748)
,p_event_id=>wwv_flow_imp.id(37350182187568313)
,p_event_result=>'TRUE'
,p_action_sequence=>170
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.getElementById(''P178_COD_SUCURSAL'').readOnly = true;'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38001283228313219)
,p_event_id=>wwv_flow_imp.id(37350182187568313)
,p_event_result=>'TRUE'
,p_action_sequence=>180
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.getElementById(''P178_SER_COMPROBANTE'').readOnly = true;'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38001337002313220)
,p_event_id=>wwv_flow_imp.id(37350182187568313)
,p_event_result=>'TRUE'
,p_action_sequence=>190
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.getElementById(''P178_NRO_COMPROBANTE'').readOnly = true;'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39084718038140431)
,p_event_id=>wwv_flow_imp.id(37350182187568313)
,p_event_result=>'TRUE'
,p_action_sequence=>200
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(36458477317086733)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37350475866568316)
,p_name=>'DA_UPDATE_DETALLE'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_UPDATE_DETALLE'
,p_condition_element=>'P178_UPDATE_DETALLE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37350561182568317)
,p_event_id=>wwv_flow_imp.id(37350475866568316)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(37350670648568318)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37350747036568319)
,p_event_id=>wwv_flow_imp.id(37350475866568316)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(37350670648568318)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37352870358568340)
,p_name=>'DA_ABRE_IMPRIME'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_ABRE_IMPRIME'
,p_condition_element=>'P178_ABRE_IMPRIME'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37352966976568341)
,p_event_id=>wwv_flow_imp.id(37352870358568340)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(37351707713568329)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37353036676568342)
,p_name=>'DA_REIMPRESION'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(37352613138568338)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37353192183568343)
,p_event_id=>wwv_flow_imp.id(37353036676568342)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'STREMISI.copia (PI_COD_EMPRESA        => :P178_COD_EMPRESA,',
'                PI_SER_COMPROBANTE    => :P178_SER_COMPROBANTE,',
'                PI_NRO_COMPROBANTE    => :P178_NRO_COMPROBANTE,',
'                PI_TIP_COMPROBANTE    => :P178_TIP_COMPROBANTE);',
':P178_REIMPRESION := ''S'';                ',
':P178_REPORTE := 1;	',
'',
''))
,p_attribute_02=>'P178_COD_EMPRESA,P178_SER_COMPROBANTE,P178_NRO_COMPROBANTE,P178_TIP_COMPROBANTE,P178_IMPRIME_ART_CLIENTE'
,p_attribute_03=>'P178_REPORTE,P178_REIMPRESION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40689680384230911)
,p_event_id=>wwv_flow_imp.id(37353036676568342)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(37351707713568329)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37353217749568344)
,p_name=>'DA_IMPRIMIR'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(37139461714305518)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37353393551568345)
,p_event_id=>wwv_flow_imp.id(37353217749568344)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'		vnro NUMBER:=0;',
'	BEGIN',
'		BEGIN',
'		  select NVL(count(*) ,0)',
'	      into vnro',
'	      from VT_CONTADOR_IMPRESION_FACT   ',
'	      where cod_empresa =:P_COD_EMPRESA',
'	          and TIP_COMPROBANTE =:P178_TIP_COMPROBANTE',
'	          and SER_COMPROBANTE =:P178_SER_COMPROBANTE',
'	          and nro_comprobante = :P178_NRO_COMPROBANTE; ',
'		EXCEPTION',
'			WHEN OTHERS THEN ',
'			VNRO:=0;',
'		END;',
'    	VNRO:=0;',
'        :P178_ABRE_IMPRIME := 2;',
'        :P178_REPORTE := 2;    ',
'        :P178_REIMPRESION := NULL;',
'		if nvl(vnro,0)=0  then ',
'            :P178_REIMPRESION := ''N'';',
'			:P178_REPORTE := 1;			     		 	',
'			STREMISI.copia (PI_COD_EMPRESA        => :P_COD_EMPRESA,',
'                            PI_SER_COMPROBANTE    => :P178_SER_COMPROBANTE,',
'                            PI_NRO_COMPROBANTE    => :P178_NRO_COMPROBANTE,',
'                            PI_TIP_COMPROBANTE    => :P178_TIP_COMPROBANTE);	',
'		elsif nvl(vnro,0)>0 and NVL(:P178_REIMPRIME,''N'')=''S'' then',
'                :P178_ABRE_IMPRIME       := 1;',
'				:P178_I_COD_USUARIO   	 := :P178_COD_USUARIO_VAR;',
'				:P178_COD_MOTIVO         := null;',
'				:P178_FECHA              := sysdate; 				',
'		else',
'			raise_application_error(-20000, ''No posee permisos para reimprimir el comprobante'');',
'	  end if;	',
'end;',
''))
,p_attribute_02=>'P178_IMPRIME_ART_CLIENTE,P178_COD_EMPRESA,P178_TIP_COMPROBANTE,P178_SER_COMPROBANTE,P178_NRO_COMPROBANTE'
,p_attribute_03=>'P178_REIMPRESION,P178_REPORTE,P178_ABRE_IMPRIME,P178_I_COD_USUARIO,P178_COD_MOTIVO,P178_FECHA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37353476404568346)
,p_name=>'DA_VOLVER_REIMPRESION'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(37352787830568339)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37353551323568347)
,p_event_id=>wwv_flow_imp.id(37353476404568346)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(37351707713568329)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(37353655993568348)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(37139684756305520)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37353895572568350)
,p_event_id=>wwv_flow_imp.id(37353655993568348)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea guardar los cambios?')
,p_attribute_06=>'Aceptar'
,p_attribute_07=>'Cancelar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(37353709674568349)
,p_event_id=>wwv_flow_imp.id(37353655993568348)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--KEY-COMMIT',
'if NVL(:P178_C_ANULADO,''N'')=''S'' AND :P178_C_COD_MOTIVO_ANU  is null then',
'	RAISE_APPLICATION_ERROR(-20000, ''Debe cargar el MOTIVO DE ANULACION antes de grabar!'');',
'end if;',
'if :P178_C_ANULADO=''S'' AND :P178_COMPROBADO IS NULL  then',
'    :P178_COMPROBADO:=''S'';',
'    --anula;',
' end if;',
'',
''))
,p_attribute_02=>'P178_C_ANULADO,P178_C_COD_MOTIVO_ANU,P178_COMPROBADO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38002780964313234)
,p_event_id=>wwv_flow_imp.id(37353655993568348)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'GUARDAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38000502295313212)
,p_name=>'DA_PAGE_LOAD'
,p_event_sequence=>120
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38000630313313213)
,p_event_id=>wwv_flow_imp.id(38000502295313212)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(37139684756305520)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38740848018407611)
,p_event_id=>wwv_flow_imp.id(38000502295313212)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(37350670648568318)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38000772438313214)
,p_event_id=>wwv_flow_imp.id(38000502295313212)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P178_C_ANULADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38001473078313221)
,p_event_id=>wwv_flow_imp.id(38000502295313212)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P178_COD_SUCURSAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38001561775313222)
,p_event_id=>wwv_flow_imp.id(38000502295313212)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P178_SER_COMPROBANTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38001673673313223)
,p_event_id=>wwv_flow_imp.id(38000502295313212)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P178_NRO_COMPROBANTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38000819632313215)
,p_event_id=>wwv_flow_imp.id(38000502295313212)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(37139822379305522)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38000906091313216)
,p_event_id=>wwv_flow_imp.id(38000502295313212)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(37139779531305521)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39084424662140428)
,p_event_id=>wwv_flow_imp.id(38000502295313212)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(37141205846305536)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38003167573313238)
,p_name=>'DA_ABRE_OT'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(36456985621086718)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38003227987313239)
,p_event_id=>wwv_flow_imp.id(38003167573313238)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VCLIENTE VARCHAR2(30) := NULL;',
'BEGIN',
'    :P178_AUX_MSJ := NULL;',
'    IF :P178_TIP_COMPROBANTE_REF =''ORT'' THEN',
'        IF :P178_NRO_COMPROBANTE_REF IS NULL THEN',
'            IF APEX_COLLECTION.COLLECTION_EXISTS (p_collection_name => ''DETALLE_OT_STREMISI'') THEN        ',
'                BEGIN',
'                    SELECT C005',
'                      INTO VCLIENTE',
'                     FROM APEX_COLLECTIONS',
'                    WHERE COLLECTION_NAME = ''DETALLE_OT_STREMISI'' ',
'                      AND SEQ_ID = 1;',
'                EXCEPTION',
'                    WHEN OTHERS THEN',
'                        VCLIENTE := NULL;',
'                END;          ',
'            END IF;      ',
'            IF  VCLIENTE IS NULL OR VCLIENTE != :P178_COD_CLIENTE THEN    ',
'                    STREMISI.carga_coleccion_ot(PI_COD_EMPRESA                   => :P178_COD_EMPRESA,',
'                                                PI_COD_CLIENTE                   => :P178_COD_CLIENTE, ',
'                                                PI_TIP_COMPROBANTE               => :P178_TIP_COMPROBANTE,',
'                                                PI_SER_COMPROBANTE               => :P178_SER_COMPROBANTE,',
'                                                PI_NRO_COMPROBANTE               => :P178_NRO_COMPROBANTE,',
'                                                PI_TIP_COMPROBANTE_REF           => :P178_TIP_COMPROBANTE_REF,',
'                                                PI_NRO_COMPROBANTE_REF           => :P178_NRO_COMPROBANTE_REF,',
'                                                PI_COD_DIRECCION_PART            => :P178_COD_DIRECCION_PART,',
'                                                PO_CARGA_DETALLES_VARIOS         => :P178_CARGA_DETALLES_VARIOS);',
'            END IF;  ',
'        ELSE',
unistr('        :P178_AUX_MSJ := ''El n\00FAmero de referencia debe ser nulo para continuar. '';'),
'    END IF;     ',
'    ELSE',
'        :P178_AUX_MSJ := ''La referencia debe ser ORT para continuar. '';',
'    END IF;                                            ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al cargar las OT''||SQLERRM);',
'END;         '))
,p_attribute_02=>'P178_COD_EMPRESA,P178_COD_CLIENTE,P178_TIP_COMPROBANTE,P178_SER_COMPROBANTE,P178_NRO_COMPROBANTE,P178_TIP_COMPROBANTE_REF,P178_NRO_COMPROBANTE_REF,P178_COD_DIRECCION_PART'
,p_attribute_03=>'P178_AUX_MSJ,P178_CARGA_DETALLES_VARIOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40690067766230915)
,p_event_id=>wwv_flow_imp.id(38003167573313238)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P178_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P178_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40690112979230916)
,p_event_id=>wwv_flow_imp.id(38003167573313238)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P178_TIP_COMPROBANTE_REF'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P178_AUX_MSJ'
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
 p_id=>wwv_flow_imp.id(38004357161313250)
,p_event_id=>wwv_flow_imp.id(38003167573313238)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38003031097313237)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P178_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38228310761965610)
,p_event_id=>wwv_flow_imp.id(38003167573313238)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38002163723313228)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P178_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38227570069965602)
,p_name=>'DA_CHECK'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_SEQ_ID_OT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38227621570965603)
,p_event_id=>wwv_flow_imp.id(38227570069965602)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'stremisi.chequeado(:P178_SEQ_ID_OT, :P178_ACCION, ''DETALLE_OT_STREMISI'');',
''))
,p_attribute_02=>'P178_SEQ_ID_OT,P178_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38228585346965612)
,p_event_id=>wwv_flow_imp.id(38227570069965602)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VCHECK VARCHAR2(1);',
'BEGIN',
'    SELECT C008',
'      INTO VCHECK',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''DETALLE_OT_STREMISI''',
'       AND SEQ_ID = :P178_SEQ_ID_OT;',
'',
'    IF VCHECK = ''S'' THEN    ',
'        stremisi.cargar_ot (PI_CARGA_DETALLES_VARIOS       => :P178_CARGA_DETALLES_VARIOS,',
'                            PI_SEQ_ID_OT                   => :P178_SEQ_ID_OT,',
'                            PI_COD_EMPRESA                 => :P178_COD_EMPRESA);',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al cargar el detalle.''|| SQLERRM);',
'END;                                    '))
,p_attribute_02=>'P178_SEQ_ID_OT,P178_CARGA_DETALLES_VARIOS,P178_COD_EMPRESA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38228167844965608)
,p_event_id=>wwv_flow_imp.id(38227570069965602)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38003031097313237)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38228270535965609)
,p_event_id=>wwv_flow_imp.id(38227570069965602)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(36458477317086733)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38227842430965605)
,p_name=>'DA_ACEPTAR'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(38227769837965604)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38227979117965606)
,p_event_id=>wwv_flow_imp.id(38227842430965605)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38002163723313228)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38228031482965607)
,p_event_id=>wwv_flow_imp.id(38227842430965605)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P178_CARGA_DETALLES_VARIOS := ''N'';'
,p_attribute_03=>'P178_CARGA_DETALLES_VARIOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38229006672965617)
,p_name=>'DA_COD_CLIENTE'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(38227769837965604)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38229134134965618)
,p_event_id=>wwv_flow_imp.id(38229006672965617)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P178_COD_CLIENTE_ANT := :P178_COD_CLIENTE;'
,p_attribute_02=>'P178_COD_CLIENTE'
,p_attribute_03=>'P178_COD_CLIENTE_ANT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38230103781965628)
,p_name=>'DA_SOLO_NUM'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_A_CANTIDAD,P178_AUX_COSTO_ENVIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38230269167965629)
,p_event_id=>wwv_flow_imp.id(38230103781965628)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumeros(event)){',
'      event.preventDefault();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38230507860965632)
,p_name=>'DA_DESCRIPCION'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_A_DESCRIPCION'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.item(''P178_A_COD_ARTICULO'').getValue() != apex.item(''P178_COD_ARTICULO_REM'').getValue()'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38230681093965633)
,p_event_id=>wwv_flow_imp.id(38230507860965632)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P178_A_CANTIDAD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38230706682965634)
,p_name=>'DA_CANTIDAD'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_A_CANTIDAD'
,p_condition_element=>'P178_A_SEQ_ID'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38230863918965635)
,p_event_id=>wwv_flow_imp.id(38230706682965634)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P178_AUX_MSJ := NULL;',
'    STREMISI.valida_cantidad(PI_COD_EMPRESA            => :P178_COD_EMPRESA,',
'                             PI_TIP_COMPROBANTE_REF    => :P178_TIP_COMPROBANTE_REF,',
'                             PI_SER_COMPROBANTE_REF    => :P178_SER_COMPROBANTE_REF,',
'                             PI_NRO_COMPROBANTE_REF    => :P178_NRO_COMPROBANTE_REF,',
'                             PI_COD_ARTICULO           => :P178_A_COD_ARTICULO,',
'                             PI_CANTIDAD               => :P178_A_CANTIDAD,',
'                             PO_MENSAJE                => :P178_AUX_MSJ);',
'    IF :P178_AUX_MSJ IS NOT NULL THEN',
'        :P178_A_CANTIDAD := 0;',
'    END IF;                             ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;',
'END;',
'',
'',
'',
'',
'',
'',
'',
''))
,p_attribute_02=>'P178_COD_EMPRESA,P178_TIP_COMPROBANTE_REF,P178_SER_COMPROBANTE_REF,P178_NRO_COMPROBANTE_REF,P178_A_COD_ARTICULO,P178_A_CANTIDAD'
,p_attribute_03=>'P178_AUX_MSJ,P178_A_CANTIDAD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38231329603965640)
,p_event_id=>wwv_flow_imp.id(38230706682965634)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P178_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P178_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38231049145965637)
,p_name=>'DA_GUARDAR1'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(38230965059965636)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38231177835965638)
,p_event_id=>wwv_flow_imp.id(38231049145965637)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea guardar los cambios?')
,p_attribute_06=>'Aceptar'
,p_attribute_07=>'Cancelar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38231278068965639)
,p_event_id=>wwv_flow_imp.id(38231049145965637)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P178_C_TOT_CANTIDAD := nvl( :P178_C_TOT_CANTIDAD, 0 ) +',
'                            nvl( :P178_A_CANTIDAD, 0 ); ---',
'                            --nvl( :P178_C_TOT_CANTIDAD_ANT, 0 );',
'',
'--:P178_C_TOT_CANTIDAD_ANT := nvl( :P178_A_CANTIDAD, 0 );',
'NULL;'))
,p_attribute_02=>'P178_C_TOT_CANTIDAD,P178_A_CANTIDAD,P178_C_TOT_CANTIDAD_ANT'
,p_attribute_03=>'P178_C_TOT_CANTIDAD,P178_C_TOT_CANTIDAD_ANT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38232035953965647)
,p_event_id=>wwv_flow_imp.id(38231049145965637)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VDESC_ARTICULO VARCHAR2(100);',
'BEGIN',
'    :P178_AUX_MSJ := null;',
'    IF :P178_A_COD_ARTICULO IS NOT NULL AND :P178_A_CANTIDAD IS NOT NULL THEN        ',
'        IF NOT APEX_COLLECTION.COLLECTION_EXISTS (p_collection_name => ''DETALLE_REPORTE_STREMISI'') THEN',
'            APEX_COLLECTION.CREATE_COLLECTION(P_COLLECTION_NAME => ''DETALLE_REPORTE_STREMISI'');',
'        END IF;',
'        VDESC_ARTICULO := stremisi.desc_articulo(:P178_COD_EMPRESA, :P178_A_COD_ARTICULO);',
'        APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''DETALLE_REPORTE_STREMISI'',',
'                                              P_C001 => :P178_A_COD_ARTICULO,    --:b_detalle.cod_articulo',
'                                              P_C002 => VDESC_ARTICULO,     --:b_detalle.desc_articulo',
'                                              P_C003 => :P178_A_CANTIDAD, --:b_detalle.cantidad',
'                                              P_C004 => null,         --:b_detalle.cod_sucursal',
'                                              P_C005 => null, --:b_detalle.SER_OT',
'                                              P_C006 => null, --:b_detalle.NRO_OT',
'                                              P_C007 => :P178_A_NRO_LOTE,',
'                                              P_C008 => :P178_A_DESCRIPCION);',
'    ELSE',
unistr('        :P178_AUX_MSJ := ''Debe completar art\00EDculo y cantidad para agregar un registro.'';'),
'    END IF;                                          ',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al guardar el art\00EDculo.''||sqlerrm);'),
'END;        '))
,p_attribute_02=>'P178_A_COD_ARTICULO,P178_A_CANTIDAD,P178_A_NRO_LOTE,P178_A_DESCRIPCION'
,p_attribute_03=>'P178_AUX_MSJ'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P178_A_SEQ_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38739897896407601)
,p_event_id=>wwv_flow_imp.id(38231049145965637)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P178_AUX_MSJ := NULL;',
'    IF :P178_A_CANTIDAD IS NOT NULL THEN',
'        FOR CC IN (SELECT C001,C002,C003,C004,C005,C006,C007,C008',
'                     FROM APEX_COLLECTIONS',
'                    WHERE COLLECTION_NAME = ''DETALLE_REPORTE_STREMISI''',
'                      AND SEQ_ID = :P178_A_SEQ_ID)',
'        LOOP',
'            APEX_COLLECTION.UPDATE_MEMBER(P_COLLECTION_NAME => ''DETALLE_REPORTE_STREMISI'',',
'                                                      P_SEQ => :P178_A_SEQ_ID,',
'                                                     P_C001 => CC.C001,    --:b_detalle.cod_articulo',
'                                                     P_C002 => CC.C002,     --:b_detalle.desc_articulo',
'                                                     P_C003 => :P178_A_CANTIDAD, --:b_detalle.cantidad',
'                                                     P_C004 => CC.C004,         --:b_detalle.cod_sucursal',
'                                                     P_C005 => CC.C005, --:b_detalle.SER_OT',
'                                                     P_C006 => CC.C006, --:b_detalle.NRO_OT',
'                                                     P_C007 => CC.C007,',
'                                                     P_C008 => CC.C008);',
'        END LOOP;',
'    ELSE',
'        :P178_AUX_MSJ := ''Debe ingresar la cantidad.'';',
'    END IF;    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al guardar los cambios.'');',
'END;        ',
''))
,p_attribute_02=>'P178_A_SEQ_ID,P178_A_CANTIDAD'
,p_attribute_03=>'P178_AUX_MSJ'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P178_A_SEQ_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38232136284965648)
,p_event_id=>wwv_flow_imp.id(38231049145965637)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P178_AUX_MSJ.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P178_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38232280990965649)
,p_event_id=>wwv_flow_imp.id(38231049145965637)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38229269547965619)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P178_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38232397417965650)
,p_event_id=>wwv_flow_imp.id(38231049145965637)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(36458477317086733)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P178_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38740212809407605)
,p_event_id=>wwv_flow_imp.id(38231049145965637)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P178_A_COD_ARTICULO,P178_A_NRO_LOTE,P178_A_DESCRIPCION,P178_A_CANTIDAD'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P178_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38231469538965641)
,p_name=>'DA_CARGA_DATOS_EDITAR'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_A_SEQ_ID'
,p_condition_element=>'P178_A_SEQ_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38741419877407617)
,p_event_id=>wwv_flow_imp.id(38231469538965641)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P178_A_NRO_LOTE_1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38231572411965642)
,p_event_id=>wwv_flow_imp.id(38231469538965641)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT C001, C003, C005, C006, C007',
'      INTO :P178_A_COD_ARTICULO, :P178_A_CANTIDAD, :P178_D_SER_OT, :P178_D_NRO_OT, :P178_A_NRO_LOTE_1',
'     FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''DETALLE_REPORTE_STREMISI''',
'      AND SEQ_ID = :P178_A_SEQ_ID;  ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000, SQLERRM);',
'END;        '))
,p_attribute_02=>'P178_A_SEQ_ID'
,p_attribute_03=>'P178_A_COD_ARTICULO, P178_A_CANTIDAD, P178_D_SER_OT,P178_D_NRO_OT,P178_A_NRO_LOTE_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38741244839407615)
,p_event_id=>wwv_flow_imp.id(38231469538965641)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P178_A_NRO_LOTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38231666578965643)
,p_event_id=>wwv_flow_imp.id(38231469538965641)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38229269547965619)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38231985844965646)
,p_event_id=>wwv_flow_imp.id(38231469538965641)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P178_A_COD_ARTICULO,P178_A_NRO_LOTE,P178_A_DESCRIPCION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38231885655965645)
,p_event_id=>wwv_flow_imp.id(38231469538965641)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P178_A_COD_ARTICULO,P178_A_NRO_LOTE_1,P178_A_DESCRIPCION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38741175159407614)
,p_event_id=>wwv_flow_imp.id(38231469538965641)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P178_A_NRO_LOTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38741301609407616)
,p_event_id=>wwv_flow_imp.id(38231469538965641)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P178_A_NRO_LOTE_1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38739935519407602)
,p_name=>'DA_AGREGAR'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(37350670648568318)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38740060220407603)
,p_event_id=>wwv_flow_imp.id(38739935519407602)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P178_A_SEQ_ID := NULL;'
,p_attribute_03=>'P178_A_SEQ_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38740746842407610)
,p_event_id=>wwv_flow_imp.id(38739935519407602)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P178_A_COD_ARTICULO,P178_A_NRO_LOTE,P178_A_DESCRIPCION,P178_A_CANTIDAD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38740134128407604)
,p_event_id=>wwv_flow_imp.id(38739935519407602)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38229269547965619)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38740539809407608)
,p_name=>'DA_VOLVER1'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(38740451062407607)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38740666567407609)
,p_event_id=>wwv_flow_imp.id(38740539809407608)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38229269547965619)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38740332866407606)
,p_event_id=>wwv_flow_imp.id(38740539809407608)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P178_A_COD_ARTICULO,P178_A_NRO_LOTE,P178_A_DESCRIPCION,P178_A_CANTIDAD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39081717321140401)
,p_name=>'DA_SUCURSAL'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_COD_SUCURSAL'
,p_condition_element=>'P178_CARGA_SUCURSAL'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39081841365140402)
,p_event_id=>wwv_flow_imp.id(39081717321140401)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P178_TIP_COMPROBANTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39081933170140403)
,p_name=>'DA_SUCURSAL1'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_COD_SUCURSAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39082014771140404)
,p_event_id=>wwv_flow_imp.id(39081933170140403)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STREMISI.existe_autoimpreso(PI_COD_EMPRESA         => :P178_COD_EMPRESA,',
'                                PI_COD_SUCURSAL        => :P178_COD_SUCURSAL,',
'                                PI_COD_USUARIO         => :P178_C_COD_USUARIO, --CABECERA',
'                                PI_TIP_COMPROBANTE     => :P178_TIP_COMPROBANTE,',
'                                PO_SER_COMPROBANTE     => :P178_SER_COMPROBANTE, ',
'                                PO_AUTOIMPRESO         => :P178_AUTOIMPRESO, ',
'                                PO_NUMERO_FINAL        => :P178_NUMERO_FINAL); ',
'EXCEPTION   ',
'    WHEN OTHERS THEN',
'        NULL;',
'END;        '))
,p_attribute_02=>'P178_COD_EMPRESA,P178_COD_SUCURSAL,P178_C_COD_USUARIO,P178_TIP_COMPROBANTE'
,p_attribute_03=>'P178_SER_COMPROBANTE,P178_AUTOIMPRESO,P178_NUMERO_FINAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39082185847140405)
,p_name=>'DA_SER_COMPROBANTE'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_SER_COMPROBANTE'
,p_condition_element=>'P178_SER_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39082225100140406)
,p_event_id=>wwv_flow_imp.id(39082185847140405)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STREMISI.PF_NUMEROS_HAB(PI_COD_EMPRESA         => :P178_COD_EMPRESA,',
'                            PI_TIP_COMPROBANTE     => :P178_TIP_COMPROBANTE,',
'                            PI_SER_COMPROBANTE     => :P178_SER_COMPROBANTE,',
'                            PI_COD_SUCURSAL        => :P178_COD_SUCURSAL,',
'                            PI_AUTOIMPRESO         => :P178_AUTOIMPRESO,',
'                            PO_AUTOIMPRESO         => :P178_AUTOIMPRESO,',
'                            PO_NRO_COMPROBANTE     => :P178_NRO_COMPROBANTE,',
'                            --PO_SER_COMPROBANTE     => :P178_SER_COMPROBANTE,',
'                            PO_MENSAJE             => :P178_AUX_MSJ); ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000, SQLERRM); ',
'END;        '))
,p_attribute_02=>'P178_COD_EMPRESA,P178_TIP_COMPROBANTE,P178_SER_COMPROBANTE,P178_COD_SUCURSAL,P178_AUTOIMPRESO'
,p_attribute_03=>'P178_AUX_MSJ,P178_AUTOIMPRESO,P178_NRO_COMPROBANTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39082318891140407)
,p_event_id=>wwv_flow_imp.id(39082185847140405)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P178_AUX_MSJ.'
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_03=>'information'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P178_AUX_MSJ'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39082501217140409)
,p_name=>'DA_NRO_COMPROBANTE'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_NRO_COMPROBANTE'
,p_condition_element=>'P178_NRO_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39082608756140410)
,p_event_id=>wwv_flow_imp.id(39082501217140409)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STREMISI.valida_nro_comprobante(PI_COD_EMPRESA         => :P178_COD_EMPRESA,',
'                                    PI_TIP_COMPROBANTE     => :P178_TIP_COMPROBANTE,',
'                                    PI_SER_COMPROBANTE     => :P178_SER_COMPROBANTE,',
'                                    PI_NRO_COMPROBANTE     => :P178_NRO_COMPROBANTE);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000, SQLERRM);',
'END;        '))
,p_attribute_02=>'P178_COD_EMPRESA,P178_TIP_COMPROBANTE,P178_SER_COMPROBANTE,P178_NRO_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39082769615140411)
,p_name=>'DA_NRO_COMPROBANTE1'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_NRO_COMPROBANTE'
,p_condition_element=>'P178_AUTOIMPRESO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39082881968140412)
,p_event_id=>wwv_flow_imp.id(39082769615140411)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P178_AUTOIMPRESO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39082980746140413)
,p_name=>'DA_FEC_COMPROBANTE'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_FEC_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39083087909140414)
,p_event_id=>wwv_flow_imp.id(39082980746140413)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  vmensaje VARCHAR2(150);',
'  xerror   EXCEPTION;',
'  xfecha   VARCHAR2(50);',
'BEGIN',
'  xfecha := ltrim( rtrim( :P178_FEC_COMPROBANTE) );',
'  vmensaje := ver_fecha( :P178_COD_EMPRESA, :P178_COD_MODULO, xfecha );',
'  IF vmensaje IS NOT NULL THEN',
'    raise xerror;',
'  END IF;',
'EXCEPTION',
'  when xerror then',
'    raise_application_error(-20000, vmensaje);',
'  when others then',
'    NULL;',
'END; '))
,p_attribute_02=>'P178_FEC_COMPROBANTE,P178_COD_EMPRESA,P178_COD_MODULO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39083102981140415)
,p_name=>'DA_DESC_CONCEPTO_REM'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_COD_CONCEPTO_REM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39083226161140416)
,p_event_id=>wwv_flow_imp.id(39083102981140415)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STREMISI.desc_concepto_rem(PI_COD_EMPRESA       => :P178_COD_EMPRESA,',
'                               PI_COD_CONCEPTO_REM  => :P178_COD_CONCEPTO_REM,',
'                               PO_DESC_CONCEPTO_REM => :P178_DESC_CONCEPTO_REM);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000, SQLERRM);',
'END;        '))
,p_attribute_02=>'P178_COD_EMPRESA,P178_COD_CONCEPTO_REM'
,p_attribute_03=>'P178_DESC_CONCEPTO_REM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39083355500140417)
,p_name=>'DA_TIP_COMPROBANTE_REF'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_TIP_COMPROBANTE_REF'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39083488313140418)
,p_event_id=>wwv_flow_imp.id(39083355500140417)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P178_TIP_COMPROBANTE_REF IN (''ORT'',''TRAOTS'') THEN',
'    :P178_SER_COMPROBANTE_REF:=''A'';',
'END IF;'))
,p_attribute_02=>'P178_TIP_COMPROBANTE_REF'
,p_attribute_03=>'P178_SER_COMPROBANTE_REF'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39083555690140419)
,p_name=>'DA_NRO_COMPROBANTE_REF'
,p_event_sequence=>320
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_NRO_COMPROBANTE_REF'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item(''P178_TIP_COMPROBANTE_REF'').getValue() == ''ORT'' && apex.item(''P178_NRO_COMPROBANTE_REF'').getValue() == ''''',
'',
' '))
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
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
 p_id=>wwv_flow_imp.id(39083656479140420)
,p_event_id=>wwv_flow_imp.id(39083555690140419)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(36456985621086718)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39083719999140421)
,p_event_id=>wwv_flow_imp.id(39083555690140419)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(36456985621086718)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39083876640140422)
,p_name=>'DA_NRO_COMPROBANTE_REF1'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_NRO_COMPROBANTE_REF'
,p_condition_element=>'P178_TIP_COMPROBANTE_REF'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'NIN'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39083935678140423)
,p_event_id=>wwv_flow_imp.id(39083876640140422)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P178_COD_ZONA_REPARTO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39084082059140424)
,p_name=>'DA_NRO_COMPROBANTE_REF2'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_NRO_COMPROBANTE_REF'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39084174287140425)
,p_event_id=>wwv_flow_imp.id(39084082059140424)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P178_NRO_COMPROBANTE_REF IS NOT NULL AND :P178_TIP_COMPROBANTE_REF=''FAC'' THEN',
'        STREMISI.valida_nro_comp_fac(PI_COD_EMPRESA               => :P178_COD_EMPRESA,',
'                                  PI_TIP_COMPROBANTE_REF       => :P178_TIP_COMPROBANTE_REF,',
'                                  PI_SER_COMPROBANTE_REF       => :P178_SER_COMPROBANTE_REF,',
'                                  PI_NRO_COMPROBANTE_REF       => :P178_NRO_COMPROBANTE_REF,',
'                                  PI_GENERA_EN_GUARDA          => :P178_GENERA_EN_GUARDA);                     ',
'    ELSIF :P178_TIP_COMPROBANTE_REF =''ENV'' THEN',
'        STREMISI.valida_nro_comp_env(PI_COD_EMPRESA               => :P178_COD_EMPRESA,',
'                                  PI_TIP_COMPROBANTE_REF       => :P178_TIP_COMPROBANTE_REF,',
'                                  PI_SER_COMPROBANTE_REF       => :P178_SER_COMPROBANTE_REF,',
'                                  PI_NRO_COMPROBANTE_REF       => :P178_NRO_COMPROBANTE_REF);',
'    ELSIF :P178_NRO_COMPROBANTE_REF IS NOT NULL AND :P178_TIP_COMPROBANTE_REF = ''ORT'' THEN',
'        STREMISI.valida_nro_comp_ort(PI_COD_EMPRESA               => :P178_COD_EMPRESA,',
'                                  PI_TIP_COMPROBANTE_REF       => :P178_TIP_COMPROBANTE_REF,',
'                                  PI_SER_COMPROBANTE_REF       => :P178_SER_COMPROBANTE_REF,',
'                                  PI_NRO_COMPROBANTE_REF       => :P178_NRO_COMPROBANTE_REF);',
'    ELSIF :P178_TIP_COMPROBANTE_REF = ''TRAOTS'' THEN',
'            STREMISI.valida_nro_comp_traots(PI_COD_EMPRESA               => :P178_COD_EMPRESA,',
'                                  PI_TIP_COMPROBANTE_REF       => :P178_TIP_COMPROBANTE_REF,',
'                                  PI_SER_COMPROBANTE_REF       => :P178_SER_COMPROBANTE_REF,',
'                                  PI_NRO_COMPROBANTE_REF       => :P178_NRO_COMPROBANTE_REF);',
'    END IF;',
'    STREMISI.busca_pedido(PI_COD_EMPRESA               => :P178_COD_EMPRESA,',
'                          PI_TIP_COMPROBANTE_REF       => :P178_TIP_COMPROBANTE_REF,',
'                          PI_SER_COMPROBANTE_REF       => :P178_SER_COMPROBANTE_REF,',
'                          PI_NRO_COMPROBANTE_REF       => :P178_NRO_COMPROBANTE_REF,',
'                          PO_CARGA_DETALLE             => :P178_CARGA_DETALLE,',
'                          PO_COD_CLIENTE               => :P178_COD_CLIENTE,',
'                          PO_COD_DIRECCION             => :P178_COD_DIRECCION,',
'                          PO_TELEFONO                  => :P178_TELEFONO, ',
'                          PO_RUC                       => :P178_RUC, ',
'                          PO_DIRECCION                 => :P178_DIRECCION,',
'                          PO_NOM_CLIENTE               => :P178_NOM_CLIENTE);            ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000,SQLERRM);',
'END;        ',
''))
,p_attribute_02=>'P178_COD_EMPRESA,P178_TIP_COMPROBANTE_REF,P178_SER_COMPROBANTE_REF,P178_NRO_COMPROBANTE_REF,P178_GENERA_EN_GUARDA'
,p_attribute_03=>'P178_CARGA_DETALLE,P178_COD_CLIENTE,P178_COD_DIRECCION,P178_TELEFONO,P178_RUC,P178_DIRECCION,P178_NOM_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39084565281140429)
,p_event_id=>wwv_flow_imp.id(39084082059140424)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(37141205846305536)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39084259749140426)
,p_name=>'DA_COD_ZONA_REPARTO'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_COD_ZONA_REPARTO'
,p_condition_element=>'P178_COD_ZONA_REPARTO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39084397206140427)
,p_event_id=>wwv_flow_imp.id(39084259749140426)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    stremisi.desc_zona(PI_COD_CONA_REPARTO     => :P178_COD_ZONA_REPARTO,',
'                       PO_DESC_ZONA            => :P178_DESC_ZONA);',
'END;'))
,p_attribute_02=>'P178_COD_ZONA_REPARTO'
,p_attribute_03=>'P178_DESC_ZONA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39084846572140432)
,p_name=>'DA_COD_VEHICULO'
,p_event_sequence=>360
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_COD_VEHICULO'
,p_condition_element=>'P178_COD_VEHICULO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39084982264140433)
,p_event_id=>wwv_flow_imp.id(39084846572140432)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    stremisi.datos_vehiculo(PI_COD_EMPRESA     => :P178_COD_EMPRESA,',
'                            PI_COD_VEHICULO    => :P178_COD_VEHICULO,    ',
'                            PO_MARCA_TRANS     => :P178_MARCA_TRANS,',
'                            PO_TRANSPORTISTA   => :P178_TRANSPORTISTA,   ',
'                            PO_CHAPA           => :P178_CHAPA,',
'                            PO_COD_CHOFER      => :P178_COD_CHOFER);',
'END;                         ',
''))
,p_attribute_02=>'P178_COD_EMPRESA,P178_COD_VEHICULO'
,p_attribute_03=>'P178_MARCA_TRANS,P178_TRANSPORTISTA,P178_CHAPA,P178_COD_CHOFER'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39085069977140434)
,p_event_id=>wwv_flow_imp.id(39084846572140432)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P178_MARCA_TRANS := NULL;',
':P178_TRANSPORTISTA:= NULL;'))
,p_attribute_03=>'P178_MARCA_TRANS,P178_TRANSPORTISTA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39085106233140435)
,p_name=>'DA_COD_CLIENTE1'
,p_event_sequence=>370
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_COD_CLIENTE'
,p_condition_element=>'P178_COD_CLIENTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39085283175140436)
,p_event_id=>wwv_flow_imp.id(39085106233140435)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STREMISI.valida_cliente(PI_COD_EMPRESA         => :P178_COD_EMPRESA,',
'                            PI_COD_CLIENTE         => :P178_COD_CLIENTE,',
'                            PI_COD_DIRECCION       => :P178_COD_DIRECCION,',
'                            PI_COD_SUCURSAL        => :P178_COD_SUCURSAL,',
'                            PO_COD_DIRECCION       => :P178_COD_DIRECCION,',
'                            PO_DIRECCION           => :P178_DIRECCION,',
'                            PO_NOM_CLIENTE         => :P178_NOM_CLIENTE,',
'                            PO_TELEFONO            => :P178_TELEFONO,',
'                            PO_RUC                 => :P178_RUC,',
'                            PO_DIRECCION_PART      => :P178_DIRECCION_PART, ',
'                            PO_COD_DIRECCION_PART  => :P178_COD_DIRECCION_PART);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000, SQLERRM);',
'END;        ',
''))
,p_attribute_02=>'P178_COD_EMPRESA,P178_COD_CLIENTE,P178_COD_DIRECCION,P178_COD_SUCURSAL'
,p_attribute_03=>'P178_COD_DIRECCION,P178_DIRECCION,P178_NOM_CLIENTE,P178_TELEFONO,P178_RUC,P178_DIRECCION_PART,P178_COD_DIRECCION_PART'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39085308654140437)
,p_event_id=>wwv_flow_imp.id(39085106233140435)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Favor ingrese un codigo de cliente.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39085466742140438)
,p_name=>'DA_NOM_CLIENTE'
,p_event_sequence=>380
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_NOM_CLIENTE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item(''P178_COD_CLIENTE'').getValue() != apex.item(''P178_CLIENTE_CONTADO'').getValue() ',
''))
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39085518543140439)
,p_event_id=>wwv_flow_imp.id(39085466742140438)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P178_COD_DIRECCION_PART'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39086478754140448)
,p_name=>'DA_TELEFONO'
,p_event_sequence=>390
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_TELEFONO'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item(''P178_COD_CLIENTE'').getValue() != apex.item(''P178_CLIENTE_CONTADO'').getValue() ',
''))
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39086587247140449)
,p_event_id=>wwv_flow_imp.id(39086478754140448)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P178_RUC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39086687120140450)
,p_name=>'DA_RUC'
,p_event_sequence=>400
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_RUC'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item(''P178_COD_CLIENTE'').getValue() != apex.item(''P178_CLIENTE_CONTADO'').getValue() ',
''))
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39299848016615701)
,p_event_id=>wwv_flow_imp.id(39086687120140450)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P178_RUC,P178_CONDUCTOR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39085658231140440)
,p_name=>'DA_DIRECCION_PART'
,p_event_sequence=>410
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_COD_DIRECCION_PART'
,p_condition_element=>'P178_COD_DIRECCION_PART'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39085782583140441)
,p_event_id=>wwv_flow_imp.id(39085658231140440)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STREMISI.direccion_part(PI_COD_EMPRESA             =>:P178_COD_EMPRESA,',
'                            PI_COD_DIRECCION_PART      =>:P178_COD_DIRECCION_PART,',
'                            PO_DIRECCION_PART          =>:P178_DIRECCION_PART);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL;',
'END;        '))
,p_attribute_02=>'P178_COD_EMPRESA,P178_COD_DIRECCION_PART'
,p_attribute_03=>'P178_DIRECCION_PART'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39085851528140442)
,p_name=>'DA_DIRECCION_PART1'
,p_event_sequence=>420
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_DIRECCION_PART'
,p_condition_element=>'P178_DIRECCION_PART'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39085978836140443)
,p_event_id=>wwv_flow_imp.id(39085851528140442)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P178_COD_DIRECCION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39086262378140446)
,p_name=>'DA_DIRECCION'
,p_event_sequence=>430
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_DIRECCION'
,p_condition_element=>'P178_DIRECCION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39086345051140447)
,p_event_id=>wwv_flow_imp.id(39086262378140446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P178_TELEFONO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39086092463140444)
,p_name=>'DA_COD_DIRECCION'
,p_event_sequence=>440
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_COD_DIRECCION'
,p_condition_element=>'P178_COD_DIRECCION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39086169663140445)
,p_event_id=>wwv_flow_imp.id(39086092463140444)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STREMISI.direccion(PI_COD_EMPRESA             => :P178_COD_EMPRESA,',
'                       PI_COD_CLIENTE             => :P178_COD_CLIENTE,',
'                       PI_COD_DIRECCION           => :P178_COD_DIRECCION,',
'                       PO_DIRECCION               => :P178_DIRECCION);',
'END;'))
,p_attribute_02=>'P178_COD_EMPRESA,P178_COD_CLIENTE,P178_COD_DIRECCION'
,p_attribute_03=>'P178_DIRECCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39299933573615702)
,p_name=>'DA_AYUDANTE1'
,p_event_sequence=>450
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_COD_AYUDANTE_1'
,p_condition_element=>'P178_COD_AYUDANTE_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39300071208615703)
,p_event_id=>wwv_flow_imp.id(39299933573615702)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    STREMISI.ayudante1(PI_COD_EMPRESA                 => :P178_COD_EMPRESA,',
'                       PI_COD_AYUDANTE_1              => :P178_COD_AYUDANTE_1,',
'                       PO_DESC_AYUDANTE_1             => :P178_DESC_AYUDANTE_1);',
'END;'))
,p_attribute_02=>'P178_COD_EMPRESA,P178_COD_AYUDANTE_1'
,p_attribute_03=>'P178_DESC_AYUDANTE_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39300166027615704)
,p_name=>'DA_AYUDANTE2'
,p_event_sequence=>460
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_COD_AYUDANTE_2'
,p_condition_element=>'P178_COD_AYUDANTE_2'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39300280401615705)
,p_event_id=>wwv_flow_imp.id(39300166027615704)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF nvl(:P178_COD_AYUDANTE_2,''03'')=nvl(:P178_COD_AYUDANTE_1,''05'') THEN ',
'	  RAISE_APPLICATION_ERROR(-20010,''Error no se puede cargar el mismo ayudante dos veces '' ); ',
'	ELSE',
'        STREMISI.ayudante1(PI_COD_EMPRESA                 => :P178_COD_EMPRESA,',
'                           PI_COD_AYUDANTE_1              => :P178_COD_AYUDANTE_2,',
'                           PO_DESC_AYUDANTE_1             => :P178_DESC_AYUDANTE_2);',
'    END IF;                           ',
'END;'))
,p_attribute_02=>'P178_COD_EMPRESA,P178_COD_AYUDANTE_2,P178_COD_AYUDANTE_1'
,p_attribute_03=>'P178_DESC_AYUDANTE_2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39300523915615708)
,p_name=>'DA_ANULADO'
,p_event_sequence=>470
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_C_ANULADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39300640401615709)
,p_event_id=>wwv_flow_imp.id(39300523915615708)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF NVL(:P178_C_ANULADO,''N'') =''S'' THEN',
'	:P178_C_FEC_ANULACION := SYSDATE;',
'	:P178_C_COD_USUARIO_ANU := :P178_COD_USUARIO_VAR;',
'ELSE',
'   	:P178_C_FEC_ANULACION := NULL;',
'	:P178_C_COD_USUARIO_ANU := NULL; ',
'    :P178_C_COD_MOTIVO_ANU := NULL; ',
'END IF;    '))
,p_attribute_02=>'P178_C_ANULADO'
,p_attribute_03=>'P178_C_FEC_ANULACION,P178_C_COD_USUARIO_ANU,P178_C_COD_MOTIVO_ANU'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39300745526615710)
,p_event_id=>wwv_flow_imp.id(39300523915615708)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P178_C_COD_MOTIVO_ANU'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P178_C_ANULADO'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39301779211615720)
,p_name=>'DA_IMPRIME_REPORTE'
,p_event_sequence=>480
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_REPORTE'
,p_condition_element=>'P178_REPORTE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39301888712615721)
,p_event_id=>wwv_flow_imp.id(39301779211615720)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*doDescarga(apex.item(''P178_COD_EMPRESA'').getValue(), apex.item(''P178_TIP_COMPROBANTE'').getValue(), apex.item(''P178_SER_COMPROBANTE'').getValue(), ',
'apex.item(''P178_NRO_COMPROBANTE'').getValue(), apex.item(''P178_COD_CLIENTE'').getValue(), apex.item(''P178_IMPRIMIR_EAN'').getValue(), ',
'apex.item(''P178_COD_USUARIO_VAR'').getValue(), apex.item(''P178_REIMPRESION'').getValue())',
'',
'',
' var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/STREMAUT_FE.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa + ''&P_COD_CLIENTE=''+ p_cod_cliente + ''&P_TIP_COMPROBANTE='' + p_tip_comprobante  + ',
'            ''&P_SER_COMPROBANTE=''+ p_ser_comprobante + ''&P_NRO_COMPROBANTE=''+ p_nro_comprobante',
'            + ''&P_IND_EAN='' + p_ind_ean + ''&P_USUARIO='' + p_usuario + ''&P_REIMPRESION='' + p_reimpresion +''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'*/',
'var comprobante = document.getElementById("P178_NRO_COMPROBANTE").value; ',
'var params = []',
'var empresa = apex.item("P_COD_EMPRESA").getValue();',
'var tip_comprobante =''REM'';',
'var ser_comprobante = apex.item("P178_SER_COMPROBANTE").getValue();',
'var nro_comprobante = apex.item("P178_NRO_COMPROBANTE").getValue();',
'',
'var usuario = ''&APP_USER.'';',
'var vfacnom = "";',
'//var vfacnom = "STREMAUT_FE";',
'if (empresa == "1") {',
'    vfacnom = "STREMAUT_FE";',
'} else if (empresa == "18") {',
'    vfacnom = "STREMAUT_FE_BH_NEW";',
'}',
'',
'params.push({ name: ''P_COD_EMPRESA'', value: empresa})',
'params.push({ name: ''P_TIP_COMPROBANTE'', value: tip_comprobante})',
'params.push({ name: ''P_SER_COMPROBANTE'', value: ser_comprobante}) ',
'params.push({ name: ''P_NRO_COMPROBANTE'', value: nro_comprobante}) ',
'',
'createReportUrl(vfacnom, params)',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39303561050615738)
,p_name=>'DA_VOLVER2'
,p_event_sequence=>490
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39303324067615736)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39303641598615739)
,p_event_id=>wwv_flow_imp.id(39303561050615738)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(39302697269615729)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39303705611615740)
,p_name=>'DA_ABRE_MOTIVOS'
,p_event_sequence=>500
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_CANTIDAD_IMPRESION'
,p_bind_type=>'bind'
,p_bind_event_type=>'dblclick'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39303897147615741)
,p_event_id=>wwv_flow_imp.id(39303705611615740)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(39302697269615729)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40688921593230904)
,p_name=>'DA_COD_CHOFER'
,p_event_sequence=>510
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_COD_CHOFER'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40689000381230905)
,p_event_id=>wwv_flow_imp.id(40688921593230904)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STREMISI.datos_chofer(PI_COD_EMPRESA    => :P178_COD_EMPRESA,',
'                      PI_COD_CHOFER     => :P178_COD_CHOFER,',
'                      PO_CONDUCTOR      => :P178_CONDUCTOR,',
'                      PO_DIRECC_CONDUC  => :P178_DIRECC_CONDUC,',
'                      PO_CED_COND       => :P178_CED_COND);',
''))
,p_attribute_02=>'P178_COD_EMPRESA,P178_COD_CHOFER'
,p_attribute_03=>'P178_CONDUCTOR,P178_DIRECC_CONDUC,P178_CED_COND'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40689490089230909)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>520
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(37139822379305522)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40689571572230910)
,p_event_id=>wwv_flow_imp.id(40689490089230909)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el comprobante?')
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_03=>'warning'
,p_attribute_06=>'Aceptar'
,p_attribute_07=>'Cancelar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40690499335230919)
,p_event_id=>wwv_flow_imp.id(40689490089230909)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'ELIMINAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40690543536230920)
,p_name=>'DA_ACTUALIZAR'
,p_event_sequence=>530
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(37139779531305521)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40690625734230921)
,p_event_id=>wwv_flow_imp.id(40690543536230920)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea guardar los cambios?')
,p_attribute_06=>'Aceptar'
,p_attribute_07=>'Cancelar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40690716152230922)
,p_event_id=>wwv_flow_imp.id(40690543536230920)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'ACTUALIZAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(124773547553288704)
,p_name=>'DA_ABRIR_REGION_'
,p_event_sequence=>540
,p_condition_element=>'P178_P_TIP_REF'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124773602256288705)
,p_event_id=>wwv_flow_imp.id(124773547553288704)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124773458405288703)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132239047040802934)
,p_name=>'DA_SETEAR_DATOS_REMISION'
,p_event_sequence=>550
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_ROW_ID_SEL_REMISION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132239294178802936)
,p_event_id=>wwv_flow_imp.id(132239047040802934)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT',
'    tip_comprobante,',
'    ser_comprobante,',
'    nro_comprobante,',
'    cod_sucursal,',
'    fec_comprobante,',
'    cod_cliente,',
'    tip_comprobante_ref,',
'    ser_comprobante_ref,',
'    nro_comprobante_ref,',
'    cod_direccion,',
'    direccion,',
'    telefono,',
'    ruc,',
'    fec_alta,',
'    observacion,',
'    cod_usuario,',
'    estado_reparto,',
'    anulado,',
'    cod_concepto_rem,',
'    tip_cambio_us,',
'    cod_direccion_part,',
'    direccion_part,',
'    comprobado,',
'    cod_sucursal_ent,',
'    ind_impreso,',
'    marca_trans,',
'    transportista,',
'    conductor,',
'    direcc_conduc,',
'    ruc_transp,',
'    ced_cond,',
'    chapa,',
'    fec_fin_traslado,',
'    cod_chofer,',
'    cod_vehiculo,',
'    nro_guia_levante,',
'    costo_envio,',
'    cod_zona_reparto,        ',
'    cod_ayudante_1,',
'    cod_ayudante_2,',
'    cod_motivo_anu,',
'    cod_usuario_anu,',
'    fec_anulacion,',
'    motivo_traslado,',
'    nro_remision_qm,',
'    id_guarda,',
'    tipo_entrega,',
'    fecha_entrega',
'    INTO',
'    :P178_TIP_COMPROBANTE,',
'    :P178_SER_COMPROBANTE,',
'    :P178_NRO_COMPROBANTE,',
'    :P178_COD_SUCURSAL,',
'    :P178_FEC_COMPROBANTE,',
'    :P178_COD_CLIENTE,',
'    :P178_TIP_COMPROBANTE_REF,',
'    :P178_SER_COMPROBANTE_REF,',
'    :P178_NRO_COMPROBANTE_REF,',
'    :P178_COD_DIRECCION,',
'    :P178_DIRECCION,',
'    :P178_TELEFONO,',
'    :P178_RUC,',
'    :P178_C_FEC_ALTA,',
'    :P178_OBSERVACION,',
'    :P178_C_COD_USUARIO,',
'    :P178_ESTADO_REPARTO,',
'    :P178_C_ANULADO,',
'    :P178_COD_CONCEPTO_REM,',
'    :P178_TIP_CAMBIO_US,',
'    :P178_COD_DIRECCION_PART,',
'    :P178_DIRECCION_PART,',
'    :P178_COMPROBADO,',
'    :P178_COD_SUCURSAL_ENT,',
'    :P178_IND_IMPRESO,',
'    :P178_MARCA_TRANS,',
'    :P178_TRANSPORTISTA,',
'    :P178_CONDUCTOR,',
'    :P178_DIRECC_CONDUC,',
'    :P178_RUC_TRANSP,',
'    :P178_CED_COND,',
'    :P178_CHAPA,',
'    :P178_FEC_FIN_TRASLADO,',
'    :P178_COD_CHOFER,',
'    :P178_COD_VEHICULO,',
'    :P178_NRO_GUIA_LEVANTE,',
'    :P178_COSTO_ENVIO,',
'    :P178_COD_ZONA_REPARTO,',
'    :P178_P_COD_AYUDANTE_1,',
'    :P178_P_COD_AYUDANTE_2,',
'    :P178_C_COD_MOTIVO_ANU,',
'    :P178_C_COD_USUARIO_ANU,',
'    :P178_C_FEC_ANULACION,',
'    :P178_MOTIVO_TRASLADO,',
'    :P178_NRO_REMISION_QM,',
'    :P178_ID_GUARDA,',
'    :P178_TIPO_ENTREGA,',
'    :P178_FECHA_ENTREGA',
'FROM',
'    st_remision_cab',
'WHERE ROWID = :P178_ROW_ID_SEL_REMISION;',
'',
'',
'',
'IF :P178_TIP_COMPROBANTE_REF IS NOT NULL AND :P178_SER_COMPROBANTE_REF IS NOT NULL AND :P178_NRO_COMPROBANTE_REF IS NOT NULL THEN',
' ',
'    STREMISI.carga_coleccion(PI_COD_EMPRESA           => :P178_COD_EMPRESA,',
'                             PI_CARGA_DETALLE         => :P178_CARGA_DETALLE,',
'                             PO_CARGA_DETALLE         => :P178_CARGA_DETALLE,',
'                             PI_COD_SUCURSAL          => :P178_COD_SUCURSAL,',
'                             PI_TIP_COMPROBANTE_REF   => :P178_TIP_COMPROBANTE_REF,',
'                             PI_SER_COMPROBANTE_REF   => :P178_SER_COMPROBANTE_REF,',
'                             PI_NRO_COMPROBANTE_REF   => :P178_NRO_COMPROBANTE_REF,',
'                             PI_TOT_CANTIDAD_ANT      => TO_NUMBER(:P178_C_TOT_CANTIDAD_ANT),',
'                             PO_TOT_CANTIDAD_ANT      => :P178_C_TOT_CANTIDAD_ANT,',
'                             PI_TOT_CANTIDAD          => TO_NUMBER(:P178_C_TOT_CANTIDAD),',
'                             PO_TOT_CANTIDAD          => :P178_C_TOT_CANTIDAD);',
'    :P178_AUX_MSJ := null;',
'    ',
'ELSE',
'    :P178_AUX_MSJ := ''Debe completar los datos del comprobante de referencia.''; ',
'END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'',
'',
'',
''))
,p_attribute_02=>'P178_ROW_ID_SEL_REMISION'
,p_attribute_03=>'P178_TIP_COMPROBANTE,P178_SER_COMPROBANTE,P178_NRO_COMPROBANTE,P178_COD_SUCURSAL,P178_FEC_COMPROBANTE,P178_COD_CLIENTE,P178_TIP_COMPROBANTE_REF,P178_SER_COMPROBANTE_REF,P178_NRO_COMPROBANTE_REF,P178_COD_DIRECCION,P178_DIRECCION,P178_TELEFONO,P178_RUC'
||',P178_C_FEC_ALTA,P178_OBSERVACION,P178_C_COD_USUARIO,P178_ESTADO_REPARTO,P178_C_ANULADO,P178_COD_CONCEPTO_REM,P178_TIP_CAMBIO_US,P178_COD_DIRECCION_PART,P178_DIRECCION_PART,P178_COMPROBADO,P178_COD_SUCURSAL_ENT,P178_IND_IMPRESO,P178_MARCA_TRANS,P178_'
||'TRANSPORTISTA,P178_CONDUCTOR,P178_DIRECC_CONDUC,P178_RUC_TRANSP,P178_CED_COND,P178_CHAPA,P178_FEC_FIN_TRASLADO,P178_COD_CHOFER,P178_COD_VEHICULO,P178_NRO_GUIA_LEVANTE,P178_COSTO_ENVIO,P178_COD_ZONA_REPARTO,P178_P_COD_AYUDANTE_1,P178_P_COD_AYUDANTE_2,'
||'P178_C_COD_MOTIVO_ANU,P178_C_COD_USUARIO_ANU,P178_C_FEC_ANULACION,P178_MOTIVO_TRASLADO,P178_NRO_REMISION_QM,P178_ID_GUARDA,P178_TIPO_ENTREGA,P178_FECHA_ENTREGA'
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
 p_id=>wwv_flow_imp.id(739760384720900444)
,p_event_id=>wwv_flow_imp.id(132239047040802934)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'',
'',
'',
'',
'IF :P178_TIP_COMPROBANTE_REF IS NOT NULL AND :P178_SER_COMPROBANTE_REF IS NOT NULL AND :P178_NRO_COMPROBANTE_REF IS NOT NULL THEN',
'   STREMISI.busca_detalle(PI_COD_EMPRESA        => :P178_COD_EMPRESA,',
'                           PI_SER_COMPROBANTE    => :P178_SER_COMPROBANTE,',
'                           PI_NRO_COMPROBANTE    => :P178_NRO_COMPROBANTE,',
'                           PI_TIP_COMPROBANTE    => :P178_TIP_COMPROBANTE);                             ',
'END if;                                 ',
'     ',
'     ',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;',
'',
'',
'',
'',
''))
,p_attribute_02=>'P178_ROW_ID_SEL_REMISION,P_COD_EMPRESA,P178_CARGA_DETALLE,P178_TIP_COMPROBANTE_REF,P178_SER_COMPROBANTE_REF,P178_NRO_COMPROBANTE_REF'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(739760407592900445)
,p_event_id=>wwv_flow_imp.id(132239047040802934)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(36458477317086733)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(739759544315900436)
,p_event_id=>wwv_flow_imp.id(132239047040802934)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(37139779531305521)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(739760123913900442)
,p_event_id=>wwv_flow_imp.id(132239047040802934)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(37139684756305520)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132239106946802935)
,p_event_id=>wwv_flow_imp.id(132239047040802934)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124773458405288703)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(739759792302900438)
,p_name=>'DA_SETEAR_DATOS_REMISION_1'
,p_event_sequence=>560
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P178_ROW_ID_SEL_REMISION'
,p_condition_element=>'P178_ROW_ID_SEL_REMISION'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(739759989588900440)
,p_event_id=>wwv_flow_imp.id(739759792302900438)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(37139779531305521)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(739760280322900443)
,p_event_id=>wwv_flow_imp.id(739759792302900438)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(37139684756305520)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(739760061286900441)
,p_event_id=>wwv_flow_imp.id(739759792302900438)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124773458405288703)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132239437406802938)
,p_name=>'DA_CERRAR_REG_REMISION'
,p_event_sequence=>570
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(132239382761802937)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132239561432802939)
,p_event_id=>wwv_flow_imp.id(132239437406802938)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124773458405288703)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(36459650067086745)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--PRE-FORM',
':P_COD_MODULO := ''ST'';',
':P_COD_SUCURSAL := NVL(:P_COD_SUCURSAL, ''01'');',
'--INICIALIZA_GLOBALES',
':P178_COD_EMPRESA := NVL(:P_COD_EMPRESA, ''1'');',
':P178_COD_USUARIO_VAR := NVL(:P_COD_USUARIO, :APP_USER);',
':P178_COD_SUCURSAL_VAR := NVL(:P178_P_COD_SUCURSAL,:P_COD_SUCURSAL);',
':P178_COD_MODULO := :P_COD_MODULO;',
'',
':P178_SER_REMISION          := BS_busca_parametro( :P178_COD_MODULO, ''SERIE_REMISION'' );',
':P178_SER_REMISION          := ''D'';',
':P178_COD_ARTICULO_REM      := BS_busca_parametro( :P178_COD_MODULO, ''COD_ARTICULO_REM'' );',
':P178_TIP_REMISION          := BS_busca_parametro( :P178_COD_MODULO, ''TIPO_REMISION'' );',
':P178_CLIENTE_CONTADO       := BS_busca_parametro( :P178_COD_MODULO, ''CLIENTE_CONTADO'' );',
':P178_CAMBIA_NRO            := busca_permiso( :P178_COD_EMPRESA,',
'                                               ''STREMISI'',',
'                                               :P178_COD_USUARIO_VAR,',
'                                               ''CAMBIA_NUMERO_FAC'' );',
':P178_CARGA_SUCURSAL        := busca_permiso( :P178_COD_EMPRESA,',
'                                               ''STREMISI'',',
'                                               :P178_COD_USUARIO_VAR,',
'                                               ''CARGA_SUCURSAL'' );',
':P178_CAMBIA_FECHA          := busca_permiso( :P178_COD_EMPRESA,',
'                                               ''STREMISI'',',
'                                               :P178_COD_USUARIO_VAR,',
'                                               ''CAMBIA_FECHA'' );',
':P178_ANULA_REMISION        := busca_permiso( :P178_COD_EMPRESA,',
'                                               ''STREMISI'',',
'                                               :P178_COD_USUARIO_VAR,',
'                                               ''PERMITE_ANULAR'' );',
':P178_ANULA_REMISION_ALL    := busca_permiso( :P178_COD_EMPRESA,',
'                                               ''STREMISI'',',
'                                               :P178_COD_USUARIO_VAR,',
'                                               ''PERMITE_ANULAR_ALL'' );',
':P178_GENERA_EN_GUARDA      := busca_permiso( :P178_COD_EMPRESA,',
'                                               ''STREMISI'',',
'                                               :P178_COD_USUARIO_VAR,',
'                                               ''GENERA_EN_GUARDA'' );',
'  ',
':P178_REIMPRIME             := busca_permiso( :P178_COD_EMPRESA, ',
'                                               ''STREMISI'', ',
'                                               :P178_COD_USUARIO_VAR,',
'                                               ''REIMPRIME_REM'' ) ;                                             ',
':P178_IMPRIME_ART_CLIENTE   := ''N'';',
':P178_IMPRIMIR_EAN          := ''N'';',
'',
'--WHEN NEW FORM INSTANCE',
'IF   :P178_P_NRO_REF  IS NOT NULL AND :P178_P_SER_REF IS NOT NULL AND :P178_P_TIP_REF IS NOT NULL THEN ',
'		:P178_TIP_COMPROBANTE_REF := :P178_P_TIP_REF ;',
'		:P178_SER_COMPROBANTE_REF := :P178_P_SER_REF ;',
'		:P178_NRO_COMPROBANTE_REF := :P178_P_NRO_REF ; ',
'		:P178_COD_CLIENTE         := :P178_P_COD_CLIENTE;',
'END IF;',
'',
':P178_UPDATE_DETALLE := ''1'';'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37140078336305524)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT_CABECERA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--WHEN CREATE RECORD',
':P178_COD_SUCURSAL := :P178_COD_SUCURSAL_VAR;',
':P178_TIP_COMPROBANTE := :P178_TIP_REMISION;',
'--:P178_ser_comprobante := ''D1'';--:variables.ser_remision;',
':P178_FEC_COMPROBANTE := trae_fecha( :P178_COD_EMPRESA, :P178_COD_MODULO );',
':P178_FEC_FIN_TRASLADO := trae_fecha( :P178_COD_EMPRESA, :P178_COD_MODULO );',
':P178_C_TOT_CANTIDAD := 0;',
':P178_C_COD_USUARIO := :P178_COD_USUARIO_VAR;',
':P178_COD_CONCEPTO_REM:=''1'';',
':P178_IMPRIME_ART_CLIENTE := ''N'';',
':P178_C_ANULADO := null;',
':P178_COD_ZONA_REPARTO:=''01'';',
':P178_COD_VEHICULO:=''95'';',
':P178_COD_CHOFER:=''11'';',
'BEGIN',
'  select descripcion',
'    into :P178_DESC_TIPO',
'    from tipos_comprobantes',
'   where cod_empresa = :P178_COD_EMPRESA',
'     and tip_comprobante = :P178_TIP_COMPROBANTE;',
'EXCEPTION',
'  when others then',
'    :P178_DESC_TIPO := NULL;',
'END;',
'',
':P178_TIP_COMPROBANTE_REF:=''NIN'';',
'',
'if :P178_COD_SUCURSAL in (''190'',''209'',''220'') then ',
'	:P178_SER_COMPROBANTE := ''SL1'';--:variables.ser_remision;',
'end if;',
'',
'if :P178_P_ENVIO_PEND is not null then ',
'	:P178_TIP_COMPROBANTE_REF:=''ENV'';',
'	:P178_SER_COMPROBANTE_REF:=''A'';',
'	:P178_NRO_COMPROBANTE_REF:=:P178_P_ENVIO_PEND;',
'	:P178_COD_CLIENTE:=''2998'';',
'	:P178_COD_VEHICULO:=nvl(:P178_P_COD_VEHICULO,''100'');',
'	:P178_COD_CHOFER:=nvl(:P178_P_COD_REPARTIDOR,''94'');',
'	:P178_COD_ZONA_REPARTO:=nvl(:P178_P_COD_ZONA,''01'');',
'	:P178_COD_AYUDANTE_1:= :P178_P_COD_AYUDANTE_1;',
'	:P178_COD_AYUDANTE_2:= :P178_P_COD_AYUDANTE_2;',
'end if;',
'',
'if :P178_SER_COMPROBANTE_REF is null then',
'	 :P178_SER_COMPROBANTE_REF:=''C'';',
'end if;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37351649246568328)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GUARDAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'STREMISI.pre_insert_cabecera(PI_NRO_COMPROBANTE       => TO_NUMBER(:P178_NRO_COMPROBANTE),',
'                             PI_AUTOIMPRESO           => :P178_AUTOIMPRESO,',
'                             PI_COD_EMPRESA           => :P178_COD_EMPRESA,',
'                             PI_TIP_COMPROBANTE       => :P178_TIP_COMPROBANTE,',
'                             PI_SER_COMPROBANTE       => :P178_SER_COMPROBANTE,',
'                             PO_NRO_COMPROBANTE       => :P178_NRO_COMPROBANTE);',
'stremisi.inserta_cabecera(PI_COD_EMPRESA => :P178_COD_EMPRESA,PI_TIP_COMPROBANTE => :P178_TIP_COMPROBANTE,PI_SER_COMPROBANTE => :P178_SER_COMPROBANTE,PI_NRO_COMPROBANTE => :P178_NRO_COMPROBANTE,',
'           PI_COD_SUCURSAL => :P178_COD_SUCURSAL, PI_FEC_COMPROBANTE => :P178_FEC_COMPROBANTE, ',
'           PI_COD_CLIENTE => :P178_COD_CLIENTE, PI_NOM_CLIENTE => :P178_NOM_CLIENTE, PI_COD_DIRECCION => :P178_COD_DIRECCION, PI_DIRECCION => :P178_DIRECCION , PI_TELEFONO => :P178_TELEFONO , ',
'           PI_RUC => :P178_RUC, PI_FEC_ALTA => :P178_C_FEC_ALTA, PI_OBSERVACION => :P178_OBSERVACION, ',
'           PI_C_COD_USUARIO => :P178_C_COD_USUARIO, PI_ESTADO_REPARTO => :P178_ESTADO_REPARTO,PI_C_ANULADO => :P178_C_ANULADO , PI_COD_CONCEPTO_REM => :P178_COD_CONCEPTO_REM, PI_TIP_CAMBIO_US => :P178_TIP_CAMBIO_US, ',
'           PI_COD_DIRECCION_PART => :P178_COD_DIRECCION_PART, PI_DIRECCION_PART => :P178_DIRECCION_PART, PI_TIP_COMPROBANTE_REF => :P178_TIP_COMPROBANTE_REF, PI_SER_COMPROBANTE_REF => :P178_SER_COMPROBANTE_REF, ',
'           PI_NRO_COMPROBANTE_REF => :P178_NRO_COMPROBANTE_REF, PI_COMPROBADO => :P178_COMPROBADO, PI_COD_SUCURSAL_ENT => :P178_COD_SUCURSAL_ENT, PI_IND_IMPRESO => :P178_IND_IMPRESO, PI_MARCA_TRANS => :P178_MARCA_TRANS, ',
'           PI_TRANSPORTISTA => :P178_TRANSPORTISTA, PI_CONDUCTOR => :P178_CONDUCTOR, PI_DIRECC_CONDUC => :P178_DIRECC_CONDUC, PI_RUC_TRANSP => :P178_RUC_TRANSP, ',
'           PI_CED_COND => :P178_CED_COND, PI_CHAPA => :P178_CHAPA, PI_FEC_FIN_TRASLADO => :P178_FEC_FIN_TRASLADO, PI_COD_CHOFER => :P178_COD_CHOFER, PI_COD_VEHICULO => :P178_COD_VEHICULO , ',
'           PI_NRO_GUIA_LEVANTE => :P178_NRO_GUIA_LEVANTE, PI_COSTO_ENVIO => :P178_COSTO_ENVIO, PI_COD_ZONA_REPARTO => :P178_COD_ZONA_REPARTO , PI_COD_AYUDANTE_1 => :P178_COD_AYUDANTE_1, ',
'           PI_COD_AYUDANTE_2 => :P178_COD_AYUDANTE_2 , PI_C_COD_MOTIVO_ANU => :P178_C_COD_MOTIVO_ANU , PI_C_COD_USUARIO_ANU => :P178_C_COD_USUARIO_ANU, PI_C_FEC_ANULACION => :P178_C_FEC_ANULACION, ',
'           PI_MOTIVO_TRASLADO => :P178_MOTIVO_TRASLADO,PI_NRO_REMISION_QM => :P178_NRO_REMISION_QM, PI_ID_GUARDA => :P178_ID_GUARDA, PI_TIPO_ENTREGA => :P178_TIPO_ENTREGA , PI_FECHA_ENTREGA => :P178_FECHA_ENTREGA);',
'',
'stremisi.inserta_detalle(PI_COD_EMPRESA => :P178_COD_EMPRESA,PI_TIP_COMPROBANTE => :P178_TIP_COMPROBANTE,PI_SER_COMPROBANTE => :P178_SER_COMPROBANTE,PI_NRO_COMPROBANTE => :P178_NRO_COMPROBANTE,',
'                          PI_COD_ARTICULO_REM   => :P178_COD_ARTICULO_REM);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000, sqlerrm);',
'END;                   ',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(37139684756305520)
,p_process_success_message=>'El comprobante &P178_SER_COMPROBANTE. &P178_NRO_COMPROBANTE. se ha guardado correctamente.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38002939186313236)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'IMPRIMIR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('-- Dejo disponible esta posibilidad de que salga la impresi\00F3n en el link. Solo poner para que se ejecute cuando se presiona el bot\00F3n guardar--'),
'BEGIN',
'stremisi.copia (:P178_COD_EMPRESA, :P178_TIP_COMPROBANTE, :P178_SER_COMPROBANTE, :P178_NRO_COMPROBANTE);',
'stremisi.imprimir(PI_COD_EMPRESA => :P178_COD_EMPRESA,',
'                  PI_COD_CLIENTE => :P178_COD_CLIENTE,',
'                  PI_COD_USUARIO => :P178_COD_USUARIO_VAR,',
'                  PI_IND_EAN     => :P178_IMPRIMIR_EAN,',
'                  PI_TIP_COMPROBANTE => :P178_TIP_COMPROBANTE,',
'                  PI_SER_COMPROBANTE => :P178_SER_COMPROBANTE,',
'                  PI_NRO_COMPROBANTE => :P178_NRO_COMPROBANTE);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al imprmir el comprobante. ''||sqlerrm);',
'END;                          '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38001713778313224)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ACTUALIZAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    ',
'    stremisi.actualiza_cabecera(PI_COD_EMPRESA => :P178_COD_EMPRESA,PI_TIP_COMPROBANTE => :P178_TIP_COMPROBANTE,PI_SER_COMPROBANTE => :P178_SER_COMPROBANTE,PI_NRO_COMPROBANTE => :P178_NRO_COMPROBANTE,',
'           PI_COD_SUCURSAL => :P178_COD_SUCURSAL, PI_FEC_COMPROBANTE => :P178_FEC_COMPROBANTE, ',
'           PI_COD_CLIENTE => :P178_COD_CLIENTE, PI_NOM_CLIENTE => :P178_NOM_CLIENTE, PI_COD_DIRECCION => :P178_COD_DIRECCION, PI_DIRECCION => :P178_DIRECCION , PI_TELEFONO => :P178_TELEFONO , ',
'           PI_RUC => :P178_RUC, PI_FEC_ALTA => :P178_C_FEC_ALTA, PI_OBSERVACION => :P178_OBSERVACION, ',
'           PI_C_COD_USUARIO => :P178_C_COD_USUARIO, PI_ESTADO_REPARTO => :P178_ESTADO_REPARTO,PI_C_ANULADO => :P178_C_ANULADO , PI_COD_CONCEPTO_REM => :P178_COD_CONCEPTO_REM, PI_TIP_CAMBIO_US => :P178_TIP_CAMBIO_US, ',
'           PI_COD_DIRECCION_PART => :P178_COD_DIRECCION_PART, PI_DIRECCION_PART => :P178_DIRECCION_PART, PI_TIP_COMPROBANTE_REF => :P178_TIP_COMPROBANTE_REF, PI_SER_COMPROBANTE_REF => :P178_SER_COMPROBANTE_REF, ',
'           PI_NRO_COMPROBANTE_REF => :P178_NRO_COMPROBANTE_REF, PI_COMPROBADO => :P178_COMPROBADO, PI_COD_SUCURSAL_ENT => :P178_COD_SUCURSAL_ENT, PI_IND_IMPRESO => :P178_IND_IMPRESO, PI_MARCA_TRANS => :P178_MARCA_TRANS, ',
'           PI_TRANSPORTISTA => :P178_TRANSPORTISTA, PI_CONDUCTOR => :P178_CONDUCTOR, PI_DIRECC_CONDUC => :P178_DIRECC_CONDUC, PI_RUC_TRANSP => :P178_RUC_TRANSP, ',
'           PI_CED_COND => :P178_CED_COND, PI_CHAPA => :P178_CHAPA, PI_FEC_FIN_TRASLADO => :P178_FEC_FIN_TRASLADO, PI_COD_CHOFER => :P178_COD_CHOFER, PI_COD_VEHICULO => :P178_COD_VEHICULO , ',
'           PI_NRO_GUIA_LEVANTE => :P178_NRO_GUIA_LEVANTE, PI_COSTO_ENVIO => :P178_COSTO_ENVIO, PI_COD_ZONA_REPARTO => :P178_COD_ZONA_REPARTO , PI_COD_AYUDANTE_1 => :P178_COD_AYUDANTE_1, ',
'           PI_COD_AYUDANTE_2 => :P178_COD_AYUDANTE_2 , PI_C_COD_MOTIVO_ANU => :P178_C_COD_MOTIVO_ANU , PI_C_COD_USUARIO_ANU => :P178_C_COD_USUARIO_ANU, PI_C_FEC_ANULACION => :P178_C_FEC_ANULACION, ',
'           PI_MOTIVO_TRASLADO => :P178_MOTIVO_TRASLADO,PI_NRO_REMISION_QM => :P178_NRO_REMISION_QM, PI_ID_GUARDA => :P178_ID_GUARDA, PI_TIPO_ENTREGA => :P178_TIPO_ENTREGA , PI_FECHA_ENTREGA => :P178_FECHA_ENTREGA);',
'',
'    stremisi.actualiza_detalle(PI_COD_EMPRESA => :P178_COD_EMPRESA,',
'                               PI_TIP_COMPROBANTE => :P178_TIP_COMPROBANTE,',
'                               PI_SER_COMPROBANTE => :P178_SER_COMPROBANTE,',
'                               PI_NRO_COMPROBANTE => :P178_NRO_COMPROBANTE,',
'                               PI_COD_ARTICULO_REM => :P178_COD_ARTICULO_REM);    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000, sqlerrm);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(37139779531305521)
,p_process_success_message=>'El comprobante &P178_TIP_COMPROBANTE. &P178_SER_COMPROBANTE. &P178_NRO_COMPROBANTE. se ha guardado correctamente.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38001871916313225)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ELIMINAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    stremisi.elimina_cabecera(PI_COD_EMPRESA         => :P178_COD_EMPRESA,',
'                              PI_TIP_COMPROBANTE     => :P178_TIP_COMPROBANTE,',
'                              PI_SER_COMPROBANTE     => :P178_SER_COMPROBANTE,',
'                              PI_NRO_COMPROBANTE     => :P178_NRO_COMPROBANTE);',
'',
'    stremisi.elimina_detalle(PI_COD_EMPRESA         => :P178_COD_EMPRESA,',
'                             PI_TIP_COMPROBANTE     => :P178_TIP_COMPROBANTE,',
'                             PI_SER_COMPROBANTE     => :P178_SER_COMPROBANTE,',
'                             PI_NRO_COMPROBANTE     => :P178_NRO_COMPROBANTE);                        ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000, sqlerrm);',
'END;        '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(37139822379305522)
,p_process_success_message=>unistr('El comprobante se elimin\00F3 correctamente.')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(37139953587305523)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'CLEAR_SESSION'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(37139362323305517)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(39084631780140430)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CLEAR_SESSION_1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF APEX_COLLECTION.COLLECTION_EXISTS (p_collection_name => ''DETALLE_REPORTE_STREMISI'') THEN',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''DETALLE_REPORTE_STREMISI'');',
'END IF;',
'',
'IF APEX_COLLECTION.COLLECTION_EXISTS (p_collection_name => ''DETALLE_OT_STREMISI'') THEN',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''DETALLE_OT_STREMISI'');',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(37139362323305517)
);
wwv_flow_imp.component_end;
end;
/
