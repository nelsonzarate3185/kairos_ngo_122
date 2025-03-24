prompt --application/pages/page_00723
begin
--   Manifest
--     PAGE: 00723
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
 p_id=>723
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Acuerdo Comercial'
,p_alias=>'ACUERDO-COMERCIAL'
,p_step_title=>'Acuerdo Comercial'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#util_generico#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
' formatMiles(''P723_MONTO_OBJETIVO''); ',
'  formatMiles(''P723_MONTO_OBJETIVO_2''); '))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color: #FFED00 !important;',
'   border-color: #8f0000 !important;',
'}',
'',
'.apex-item-select,  .apex-item-text , .apex-item-textarea , .apex-item-group, .display_only {',
'  border-color: #b4c6dd !important;',
'  background-color: #f8f6ea !important;',
'}',
'',
'',
'tr:last-child td[headers="TOTAL"] { ',
'    font-size: large; ',
'    background: #d9ed92; ',
'}',
'',
'.t-Body-content{',
'   background-color:  #d0e0f783!important;}',
'',
'',
'',
'  .tabla_color   td.t-Report-cell , .t-Form-label  {',
'  color: #003a85  !important;',
'  border-color: #003a85 !important;',
'}',
'',
'  th.t-Report-colHead,  th.t-Report-colHead a{',
'  background-color:  #fff6a4  !important;',
'  color: #003a85  !important;',
'  border-color: #487ab8;',
'}',
'',
' .a-IRR-header{',
'      background-color: #fff6a4  !important;',
'	  font-weight: bold !important;',
'      border:0.5px solid #16488a !important;',
'   }',
'',
'  .a-IRR-headerLink{',
'    background-color: #fff6a4  !important;',
'	  color: #003a85 !important;    }',
'   ',
'.a-IRR-table tr td { ',
'        color: black !important;',
'   }',
' ',
'.a-IRR-table td {',
'    border: 1px solid #003a85b7 !important;',
'}',
'',
' ',
' .divcol{text-align: right;}',
'',
' #sinstock{ background-color: #ff5636;}',
' #stockperif{ background-color: #e9ff70; }',
' #stockcompleto{background-color: #b7e4c7;}',
' #anulado{background-color: lightgray;}',
'  ',
' '))
,p_page_css_classes=>'CSS_CLASS'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240909101159'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(278717078817441706)
,p_plug_name=>'Adjuntar'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>90
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(278717947189441715)
,p_plug_name=>'Comentario'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>120
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(279151069711711701)
,p_plug_name=>'Menu Principal'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(279151141977711702)
,p_plug_name=>'Principal'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(277497768916993316)
,p_plug_name=>'Procesos'
,p_parent_plug_id=>wwv_flow_imp.id(279151141977711702)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_column=>7
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(279151800830711709)
,p_name=>'Adjunto'
,p_parent_plug_id=>wwv_flow_imp.id(279151141977711702)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nro_comprobante, comentario,cod_usuario, fecha,sys.dbms_lob.getlength(archivo_adjunto) archivo_adjuntO, MIMETYPE,CREATED_DATE, filename',
'from vt_ADJUNTO_acuerdo_comercial',
'where cod_empresa=:P_COD_EMPRESA',
'and nro_comprobante=:P723_NRO_ACUERDO'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P723_NRO_ACUERDO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'Sin Imagenes'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279151906766711710)
,p_query_column_id=>1
,p_column_alias=>'NRO_COMPROBANTE'
,p_column_display_sequence=>10
,p_column_heading=>'Nro Comprobante'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279152087055711711)
,p_query_column_id=>2
,p_column_alias=>'COMENTARIO'
,p_column_display_sequence=>20
,p_column_heading=>'Comentario'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279152128310711712)
,p_query_column_id=>3
,p_column_alias=>'COD_USUARIO'
,p_column_display_sequence=>30
,p_column_heading=>'Cod Usuario'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279152257818711713)
,p_query_column_id=>4
,p_column_alias=>'FECHA'
,p_column_display_sequence=>40
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279155881106711749)
,p_query_column_id=>5
,p_column_alias=>'ARCHIVO_ADJUNTO'
,p_column_display_sequence=>90
,p_column_heading=>'Archivo Adjunto'
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:VT_ADJUNTO_ACUERDO_COMERCIAL:ARCHIVO_ADJUNTO:NRO_COMPROBANTE::MIMETYPE:FILENAME:CREATED_DATE::attachment::'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279152452080711715)
,p_query_column_id=>6
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>60
,p_column_heading=>'Tipo Archivo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279152589363711716)
,p_query_column_id=>7
,p_column_alias=>'CREATED_DATE'
,p_column_display_sequence=>70
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279152680225711717)
,p_query_column_id=>8
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>80
,p_column_heading=>'Nombre del Archivo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(314659146572505101)
,p_plug_name=>'CABECERA'
,p_parent_plug_id=>wwv_flow_imp.id(279151141977711702)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(314660688705505116)
,p_plug_name=>'DETALLE'
,p_parent_plug_id=>wwv_flow_imp.id(279151141977711702)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
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
'    ',
'        to_number(c015) ejecutado,',
'        c016 porcentaje,',
'              to_number(c017)		MONTO_OBJETIVO2 ,  ',
'           (c018) porcentaje2,',
'        seq_id,                                    ',
'        null Detalle,',
'        null Editar,',
'        null Eliminar',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''DETALLE_ACUERDO''',
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
 p_id=>wwv_flow_imp.id(314660763477505117)
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
,p_internal_uid=>314660763477505117
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(276738129118515825)
,p_db_column_name=>'P_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(276738596637515826)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(276740166095515827)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(276740519002515827)
,p_db_column_name=>'COD_MARCA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(276740979158515828)
,p_db_column_name=>'COD_CATEGORIA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Categoria'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(276741329926515828)
,p_db_column_name=>'FECHA_INICIO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Fecha Inicio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(276741743929515828)
,p_db_column_name=>'FECHA_FIN'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Fecha Fin'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(276742131298515828)
,p_db_column_name=>'ANIO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Anio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(276742551410515828)
,p_db_column_name=>'ESTADO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(276742981249515828)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(276743389073515829)
,p_db_column_name=>'V_DESC_CATEGORIA'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(276743788173515829)
,p_db_column_name=>'V_DESC_MARCA'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(276744134163515829)
,p_db_column_name=>'MONTO_OBJETIVO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Monto Objetivo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(276738952973515826)
,p_db_column_name=>'DETALLE'
,p_display_order=>190
,p_column_identifier=>'C'
,p_column_label=>'Detalle'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(276739355159515827)
,p_db_column_name=>'EDITAR'
,p_display_order=>200
,p_column_identifier=>'D'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P723_SEQ_ID_EDITAR'',''#SEQ_ID#'');'
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
 p_id=>wwv_flow_imp.id(276739722764515827)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>210
,p_column_identifier=>'E'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P723_SEQ_ID_ELIMINAR'',''#SEQ_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-trash"></span>'
,p_column_type=>'STRING'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'  if :P723_ESTADO<>''PENDIENTE_REVISION'' THEN',
'       RETURN FALSE;',
'    END IF;',
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
'    END IF;         ',
'',
'  ',
'',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(276744576189515829)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>220
,p_column_identifier=>'S'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(280540849574066429)
,p_db_column_name=>'PORCENTAJE'
,p_display_order=>240
,p_column_identifier=>'U'
,p_column_label=>'Porcentaje'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(650045769139536513)
,p_db_column_name=>'EJECUTADO'
,p_display_order=>250
,p_column_identifier=>'V'
,p_column_label=>'Ejecutado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(373228410608924201)
,p_db_column_name=>'MONTO_OBJETIVO2'
,p_display_order=>260
,p_column_identifier=>'W'
,p_column_label=>'Monto Objetivo2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(373228659272924203)
,p_db_column_name=>'PORCENTAJE2'
,p_display_order=>270
,p_column_identifier=>'Y'
,p_column_label=>'Porcentaje2'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(314944462444454902)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'382213'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'FECHA_INICIO:FECHA_FIN:MONTO_OBJETIVO:EJECUTADO:PORCENTAJE:MONTO_OBJETIVO2:PORCENTAJE2:ELIMINAR:'
,p_sort_column_1=>'FECHA_INICIO'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'SEQ_ID'
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
 p_id=>wwv_flow_imp.id(279151299501711703)
,p_plug_name=>'Comentarios'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(279155920413711750)
,p_plug_name=>'Seguimientos'
,p_parent_plug_id=>wwv_flow_imp.id(279151299501711703)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ''Fecha: ''||fec_movimiento  ||  '' COMENTARIO: *************''  || a.observacion   || ''*************''|| '' USUARIO: '' ||',
'                                                        a.cod_usuario',
' observacion',
'from vt_seguimientos_acuerdo a where cod_empresa=:p_cod_empresa and NRO_ACUERDO=:P723_NRO_ACUERDO',
'ORDER BY FEC_MOVIMIENTO DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P723_NRO_ACUERDO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Seguimientos'
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
 p_id=>wwv_flow_imp.id(280538053423066401)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'NZARATE'
,p_internal_uid=>280538053423066401
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(280538162226066402)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(280543802073075586)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2805439'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'OBSERVACION'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(314658441962505094)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(315528269283155396)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>130
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(315529014019155404)
,p_plug_name=>'Agregar/Editar'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>140
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(354908414723081132)
,p_plug_name=>'Segmentacion'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>110
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(354908538123081133)
,p_plug_name=>'Segmentacio'
,p_parent_plug_id=>wwv_flow_imp.id(354908414723081132)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.descripcion_segmento segmentacion, case when a.porc_apoyo_desce=a.porc_apoyo_hasta then',
'porc_apoyo_hasta ||''%''',
'else porc_apoyo_desce ||''% ''||porc_apoyo_hasta||''% '' end  apoyo',
' from inv.cc_segmentacion_linea a ',
'  order by cod_tip_segmento asc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Segmentacio'
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
 p_id=>wwv_flow_imp.id(354908783425081135)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'NZARATE'
,p_internal_uid=>354908783425081135
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(354908860466081136)
,p_db_column_name=>'SEGMENTACION'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Segmentacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(354908970651081137)
,p_db_column_name=>'APOYO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Apoyo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(372169547581719174)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3721696'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SEGMENTACION:APOYO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(278716830339441704)
,p_button_sequence=>240
,p_button_plug_id=>wwv_flow_imp.id(314659146572505101)
,p_button_name=>'Adjuntar'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Adjuntar'
,p_button_redirect_url=>'f?p=&APP_ID.:732:&SESSION.::&DEBUG.:732:P732_NRO_TICKET:&P723_NRO_ACUERDO.'
,p_icon_css_classes=>'fa-file-text'
,p_grid_new_row=>'Y'
,p_grid_column_span=>3
,p_grid_column=>10
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(278718141854441717)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(278717947189441715)
,p_button_name=>'Volver_comentario'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(278717425703441710)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(278717078817441706)
,p_button_name=>'Volver'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Volver'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(276732352273515822)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(315529014019155404)
,p_button_name=>'P723_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(278717350969441709)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(278717078817441706)
,p_button_name=>'Guardar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Guardar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(278721433448441750)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(278717947189441715)
,p_button_name=>'aCEPTAR_comentario'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(276731531534515821)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(315529014019155404)
,p_button_name=>'P723_ACEPTAR_CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(276731928082515821)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(315529014019155404)
,p_button_name=>'P723_ACEPTAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(276745290460515831)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(314660688705505116)
,p_button_name=>'AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Objetivo'
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
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-plus'
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
 p_id=>wwv_flow_imp.id(277496237851993301)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(314659146572505101)
,p_button_name=>'Crear'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear Acuerdo'
,p_button_position=>'EDIT'
,p_button_condition=>'P723_NRO_ACUERDO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'u-color-33-bg'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(277496463888993303)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(314659146572505101)
,p_button_name=>'actualizar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Cambios'
,p_button_position=>'EDIT'
,p_button_condition=>'P723_NRO_ACUERDO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'u-color-33-bg'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(285245413877611308)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(314659146572505101)
,p_button_name=>'anular'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Anular'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P723_NRO_ACUERDO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'u-color-9'
,p_icon_css_classes=>'fa-eraser'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(277496509583993304)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(314659146572505101)
,p_button_name=>'Imprimir'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P723_ESTADO_GG  = ''S''',
'OR :P723_PUEDE_GERENCIA_GENERAL =''S'' THEN',
'RETURN TRUE;',
'ELSE ',
'RETURN FALSE;',
'END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(276723761732515807)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(314659146572505101)
,p_button_name=>'BUSCAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:733:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'u-color-29-bg u-normal-text'
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(354909071967081138)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(354908538123081133)
,p_button_name=>'Volver_seg'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cerrar'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-backward'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(276725396806515814)
,p_name=>'P723_C_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(314659146572505101)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(276725722978515817)
,p_name=>'P723_C_DESCRIPCION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(314659146572505101)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(276726123879515817)
,p_name=>'P723_C_COD_CLIENTE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(314659146572505101)
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
,p_tag_attributes=>'READONLY'
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(276726508060515818)
,p_name=>'P723_C_ANIO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(314659146572505101)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(276727332628515818)
,p_name=>'P723_REPRESENTADO_POR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(314659146572505101)
,p_prompt=>'Representado Por'
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
 p_id=>wwv_flow_imp.id(276727720108515818)
,p_name=>'P723_PORCENTAJE_APOYO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(314659146572505101)
,p_prompt=>'% de Apoyo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(276728113294515818)
,p_name=>'P723_FECHA_INICIO_ACUERDO'
,p_is_required=>true
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(314659146572505101)
,p_prompt=>'Fecha Inicio Acuerdo'
,p_placeholder=>'DD/MM/AAAA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'onfocusout="this.value= isValidDate(this.value);" onkeyup = "setDateFormat(this);"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(276728844868515820)
,p_name=>'P723_COD_USUARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(314658441962505094)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(276729297861515820)
,p_name=>'P723_COD_EMPRESA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(314658441962505094)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(276729626515515820)
,p_name=>'P723_NOM_EMPRESA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(314658441962505094)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(276730065951515821)
,p_name=>'P723_COD_SUCURSAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(314658441962505094)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(276730463825515821)
,p_name=>'P723_NOM_SUCURSAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(314658441962505094)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(276730823118515821)
,p_name=>'P723_COD_MODULO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(314658441962505094)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(276733504265515822)
,p_name=>'P723_FECHA_INICIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(315529014019155404)
,p_prompt=>'Fecha Inicio'
,p_placeholder=>'DD/MM/AAAA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'onfocusout="this.value= isValidDate(this.value);" onkeyup = "setDateFormat(this);"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(276733999221515822)
,p_name=>'P723_FECHA_FIN'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(315529014019155404)
,p_prompt=>'Fecha Fin'
,p_placeholder=>'DD/MM/AAAA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'onfocusout="this.value= isValidDate(this.value);" onkeyup = "setDateFormat(this);"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(276734749405515822)
,p_name=>'P723_MONTO_OBJETIVO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(315529014019155404)
,p_prompt=>'Monto Objetivo'
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
 p_id=>wwv_flow_imp.id(276735455239515823)
,p_name=>'P723_ACCION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(315528269283155396)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(276735888175515823)
,p_name=>'P723_SEQ_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(315528269283155396)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(276736237882515823)
,p_name=>'P723_SEQ_ID_EDITAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(315528269283155396)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(276736622057515823)
,p_name=>'P723_SEQ_ID_ELIMINAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(315528269283155396)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(276737083131515823)
,p_name=>'P723_URL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(315528269283155396)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(276737482581515824)
,p_name=>'P723_AUX_CONTROL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(315528269283155396)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(277496310995993302)
,p_name=>'P723_NRO_ACUERDO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(314659146572505101)
,p_prompt=>'Nro Acuerdo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(277496686163993305)
,p_name=>'P723_NOM_CLIENTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(314659146572505101)
,p_prompt=>'Cliente'
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
 p_id=>wwv_flow_imp.id(277496967203993308)
,p_name=>'P723_RUC'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(314659146572505101)
,p_prompt=>'RUC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cattributes_element=>'readonly'
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(277497071670993309)
,p_name=>'P723_DIR_CLIENTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(314659146572505101)
,p_prompt=>'Direccion'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cattributes_element=>'readonly'
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(277497105187993310)
,p_name=>'P723_TEL_CLIENTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(314659146572505101)
,p_prompt=>'Telefono'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cattributes_element=>'readonly'
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
 p_id=>wwv_flow_imp.id(277497233161993311)
,p_name=>'P723_VIGENCIA'
,p_is_required=>true
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(314659146572505101)
,p_prompt=>'Vigencia'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:BIMESTRAL;B,TRIMESTRAL;T,SEMESTRAL;S,ANUAL;A'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(277497355909993312)
,p_name=>'P723_FECHA_FIN_ACUERDO'
,p_is_required=>true
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(314659146572505101)
,p_prompt=>'Fecha Fin Acuerdo'
,p_placeholder=>'DD/MM/AAAA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'onfocusout="this.value= isValidDate(this.value);" onkeyup = "setDateFormat(this);"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(277497860243993317)
,p_name=>'P723_ESTADO_INGRESO_ACUERDO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(277497768916993316)
,p_prompt=>'Estado Ingreso'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Revisado;S,Pendiente Revision;N'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(277497987704993318)
,p_name=>'P723_FECHA_INGRESO_ACUERDO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(277497768916993316)
,p_prompt=>'Fecha Ingreso'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(277498072194993319)
,p_name=>'P723_USUARIO_INGRESO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(277497768916993316)
,p_prompt=>'Usuario Ingreso'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(277498107373993320)
,p_name=>'P723_USUARIO_REVISION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(277497768916993316)
,p_prompt=>'Usuario Revision'
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
 p_id=>wwv_flow_imp.id(277498278279993321)
,p_name=>'P723_FECHA_REVISION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(277497768916993316)
,p_prompt=>'Fecha Revision'
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
 p_id=>wwv_flow_imp.id(277498310488993322)
,p_name=>'P723_ESTADO_REVISION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(277497768916993316)
,p_prompt=>'Estado Revision'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Revisado;S,Rechazado;N'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(277498429991993323)
,p_name=>'P723_USUARIO_GC'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(277497768916993316)
,p_prompt=>'Usuario Gerencia Comercial'
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
 p_id=>wwv_flow_imp.id(277498584757993324)
,p_name=>'P723_FECHA_GC'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(277497768916993316)
,p_prompt=>'Fecha Ingreso Gerencia Comercial'
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
 p_id=>wwv_flow_imp.id(277498654452993325)
,p_name=>'P723_ESTADO_GC'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(277497768916993316)
,p_prompt=>'Estado Gerencia Comercial'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Aprobado;S,Rechazado;N'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(277498701008993326)
,p_name=>'P723_USUARIO_CO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(277497768916993316)
,p_prompt=>'Usuario Cobranzas'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(277498885117993327)
,p_name=>'P723_FECHA_CO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(277497768916993316)
,p_prompt=>'Fecha Revision Cobranzas'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(277498966476993328)
,p_name=>'P723_ESTADO_CO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(277497768916993316)
,p_prompt=>'Estado Cobranzas'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Cliente al Dia;1,Moroso;2,Riesgoso;3,No Recomendado;4'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'4'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(277499021260993329)
,p_name=>'P723_USUARIO_GG'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(277497768916993316)
,p_prompt=>'Usuario Gerencia General'
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
 p_id=>wwv_flow_imp.id(277499164089993330)
,p_name=>'P723_FECHA_GG'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(277497768916993316)
,p_prompt=>'Fecha Gerencia General'
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
 p_id=>wwv_flow_imp.id(277499270459993331)
,p_name=>'P723_ESTADO_GG'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(277497768916993316)
,p_prompt=>'Estado Gerencia General'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Aprobado;S,Rechazado;N'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(277499365125993332)
,p_name=>'P723_USUARIO_AU'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(277497768916993316)
,p_prompt=>'Usuario Auditoria'
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
 p_id=>wwv_flow_imp.id(277499425912993333)
,p_name=>'P723_ESTADO_AU'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(277497768916993316)
,p_prompt=>'Estado Verificacion Auditoria'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Aprobado;S,Acuerdo No Recomendado;N'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(277499533144993334)
,p_name=>'P723_FECHA_AU'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(277497768916993316)
,p_prompt=>'Fecha Verificacion Auditoria'
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
 p_id=>wwv_flow_imp.id(277499606175993335)
,p_name=>'P723_USUARIO_FIRMA'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(277497768916993316)
,p_prompt=>'Usuario Firma Contrato'
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
 p_id=>wwv_flow_imp.id(277499730317993336)
,p_name=>'P723_ESTADO_FIRMA'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(277497768916993316)
,p_prompt=>'Estado Verificacion Firma'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Firmado;S,Pendiente Firma;N'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(277499870917993337)
,p_name=>'P723_FECHA_FIRMA'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(277497768916993316)
,p_prompt=>'Fecha Firma Contrato'
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
 p_id=>wwv_flow_imp.id(277499981949993338)
,p_name=>'P723_USUARIO_CONTRATO'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(277497768916993316)
,p_prompt=>'Usuario Archivo Contrato'
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
 p_id=>wwv_flow_imp.id(277500084036993339)
,p_name=>'P723_ESTADO_CONTRATO'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(277497768916993316)
,p_prompt=>'Estado Gerencia General'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Archivado;S,Pendiente Archivo;N'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(277500175628993340)
,p_name=>'P723_FECHA_CONTRATO'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(277497768916993316)
,p_prompt=>'Fecha Archivo Contrato'
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
 p_id=>wwv_flow_imp.id(277500208506993341)
,p_name=>'P723_FILE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(278717078817441706)
,p_prompt=>'Imagen:'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(277500329231993342)
,p_name=>'P723_FILENAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(278717078817441706)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(277500499133993343)
,p_name=>'P723_MIMETYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(278717078817441706)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(278718072137441716)
,p_name=>'P723_COMENTARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(278717947189441715)
,p_prompt=>'Comentario'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(278718666746441722)
,p_name=>'P723_TIPO_PROCESO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(278717947189441715)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279151672450711707)
,p_name=>'P723_FECHA_ACUERDO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(314659146572505101)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Acuerdo'
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
 p_id=>wwv_flow_imp.id(279155487454711745)
,p_name=>'P723_PARAM_NRO_ACUERDO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(314658441962505094)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279155564732711746)
,p_name=>'P723_ESTADO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(314659146572505101)
,p_prompt=>'Estado'
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
 p_id=>wwv_flow_imp.id(285247312610611327)
,p_name=>'P723_PUEDE_REVISAR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(314658441962505094)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(285247478048611328)
,p_name=>'P723_PUEDE_COBRANZA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(314658441962505094)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(285247530202611329)
,p_name=>'P723_PUEDE_GERENCIA_COMERCIAL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(314658441962505094)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(285247697984611330)
,p_name=>'P723_PUEDE_AUDITORIA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(314658441962505094)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(285247785217611331)
,p_name=>'P723_PUEDE_GERENCIA_GENERAL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(314658441962505094)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(285247844008611332)
,p_name=>'P723_PUEDE_FIRMA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(314658441962505094)
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
 p_id=>wwv_flow_imp.id(285247928352611333)
,p_name=>'P723_PUEDE_ARCHIVAR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(314658441962505094)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(285248049907611334)
,p_name=>'P723_PUEDE_ANULAR'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(314658441962505094)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(354907506040081123)
,p_name=>'P723_VENDEDOR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(314659146572505101)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select f.descripcion, f.cod_vendedor from fv_vendedores f',
'where f.cod_empresa=:p_cod_empresa'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_cattributes_element=>'readonly'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(354907690990081124)
,p_name=>'P723_PORCENTAJE_APOYO_2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(314659146572505101)
,p_prompt=>'% de Apoyo 2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(354907772735081125)
,p_name=>'P723_TIPO_ACUERDO'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(314659146572505101)
,p_prompt=>'Tipo de Acuerdo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:ESTANDAR;ESTANDAR,SUPER META;SUPER_META,MULTIPLES CLIENTES;MULTIPLES_CLIENTES'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(354907892926081126)
,p_name=>'P723_TIPO_APOYO_CO'
,p_is_required=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(314659146572505101)
,p_prompt=>'Apoyo Comercial'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:SI;S,NO;N'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(354908199559081129)
,p_name=>'P723_TIPO_APOYO_MKT'
,p_is_required=>true
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(314659146572505101)
,p_prompt=>'Apoyo MKT'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:SI;S,NO;N'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(354908293415081130)
,p_name=>'P723_TIPO_APOYONGO_DIGITAL'
,p_is_required=>true
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(314659146572505101)
,p_prompt=>'Apoyo NGO Digital'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:SI;S,NO;N'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(354908398558081131)
,p_name=>'P723_SEGMENTACION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(314659146572505101)
,p_prompt=>'Segmentacion'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cattributes_element=>'readonly'
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
 p_id=>wwv_flow_imp.id(354910250359081150)
,p_name=>'P723_MONTO_OBJETIVO_2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(315529014019155404)
,p_prompt=>'Monto Objetivo 2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(276766622688515857)
,p_name=>'DA_CHECK'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P723_SEQ_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276767151654515857)
,p_event_id=>wwv_flow_imp.id(276766622688515857)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'vtacuerdo.PR_CHECK(P_SEQ_ID => :P723_SEQ_ID,',
'                  P_ACCION => :P723_ACCION,',
'                  P_COLECCION => ''DETALLE_CARTERA_CLIENTE'');',
'exception',
'when others then',
unistr('    RAISE_APPLICATION_ERROR(-20010,''Error al completar la transacci\00F3n, favor de contactarse con el equipo de soporte.'');'),
'END;',
''))
,p_attribute_02=>'P723_SEQ_ID,P723_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(276757699814515854)
,p_name=>'DA_REGRESAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(276732352273515822)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276758199563515854)
,p_event_id=>wwv_flow_imp.id(276757699814515854)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(315529014019155404)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(276750453523515851)
,p_name=>'ABRIR_AGREGAR_EDITAR'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(276745290460515831)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(373231252269924229)
,p_event_id=>wwv_flow_imp.id(276750453523515851)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P723_AUX_CONTROL := null;',
'IF  :P723_FECHA_INICIO_ACUERDO IS NULL THEN',
'    :P723_AUX_CONTROL := ''Debe ingresar la fecha inicio.'';',
'    RAISE_APPLICATION_ERROR(-20000, ''Debe ingresar la fecha inicio.'');',
' ELSIF :P723_FECHA_FIN_ACUERDO IS NULL THEN',
'    :P723_AUX_CONTROL := ''Debe ingresar la fecha fin.'';',
'      RAISE_APPLICATION_ERROR(-20000, ''Debe ingresar la fecha fin.'');',
'  elsif :P723_FECHA_INICIO_ACUERDO>:P723_FECHA_FIN_ACUERDO then',
'    :P723_AUX_CONTROL := ''Fecha Inicio no debe ser mayor a la fecha final.'';',
'      RAISE_APPLICATION_ERROR(-20000, ''Fecha Inicio no debe ser mayor a la fecha final.'');',
'/*elsif :P723_VIGENCIA=''A'' AND ',
'(TO_CHAR(:P723_FECHA_INICIO,''DD/MM'')<>''01/01'' OR TO_CHAR(:P723_FECHA_FIN,''DD/MM'')<>''31/12'') then',
'    :P723_AUX_CONTROL := ''El periodo de Vigencia no aplica a la fecha.'';',
'',
'elsif :P723_VIGENCIA=''S'' AND ',
'(TO_CHAR(:P723_FECHA_INICIO,''DD/MM'') NOT IN (''01/01'',''01/07'') OR TO_CHAR(:P723_FECHA_FIN,''DD/MM'')NOT IN (''30/06'',''31/12'')) then',
'    :P723_AUX_CONTROL := ''El periodo de Vigencia no aplica a la fecha.'';    */',
'  ',
'END IF;',
' '))
,p_attribute_02=>'P723_FECHA_INICIO_ACUERDO,P723_FECHA_FIN_ACUERDO'
,p_attribute_03=>'P723_AUX_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276750914475515851)
,p_event_id=>wwv_flow_imp.id(276750453523515851)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P723_FECHA_FIN,P723_MONTO_OBJETIVO,P723_FECHA_INICIO,P723_MONTO_OBJETIVO_2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276751495285515851)
,p_event_id=>wwv_flow_imp.id(276750453523515851)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(276731928082515821)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276751949225515852)
,p_event_id=>wwv_flow_imp.id(276750453523515851)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(276731531534515821)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276752459698515852)
,p_event_id=>wwv_flow_imp.id(276750453523515851)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(315529014019155404)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(276758510168515854)
,p_name=>'DA_GUARDAR_detalle'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(276731531534515821)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276760575643515855)
,p_event_id=>wwv_flow_imp.id(276758510168515854)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P723_AUX_CONTROL := null;',
'IF :P723_MONTO_OBJETIVO IS NULL THEN',
'    :P723_AUX_CONTROL := ''Debe ingresar el monto.''; ',
' ELSIF :P723_FECHA_INICIO IS NULL THEN',
'    :P723_AUX_CONTROL := ''Debe ingresar la fecha inicio.'';',
' ELSIF :P723_FECHA_FIN IS NULL THEN',
'    :P723_AUX_CONTROL := ''Debe ingresar la fecha fin.'';',
'  elsif :P723_FECHA_INICIO>:P723_FECHA_FIN then',
'    :P723_AUX_CONTROL := ''Fecha Inicio no debe ser mayor a la fecha final.'';',
'/*elsif :P723_VIGENCIA=''A'' AND ',
'(TO_CHAR(:P723_FECHA_INICIO,''DD/MM'')<>''01/01'' OR TO_CHAR(:P723_FECHA_FIN,''DD/MM'')<>''31/12'') then',
'    :P723_AUX_CONTROL := ''El periodo de Vigencia no aplica a la fecha.'';',
'',
'elsif :P723_VIGENCIA=''S'' AND ',
'(TO_CHAR(:P723_FECHA_INICIO,''DD/MM'') NOT IN (''01/01'',''01/07'') OR TO_CHAR(:P723_FECHA_FIN,''DD/MM'')NOT IN (''30/06'',''31/12'')) then',
'    :P723_AUX_CONTROL := ''El periodo de Vigencia no aplica a la fecha.'';    */',
' ELSE',
'BEGIN',
'     vtacuerdo.pr_agregar_miembro_collection (',
'               ',
'        PI_COD_EMPRESA      =>  :P723_COD_EMPRESA ,',
'        PI_COD_CLIENTE      =>  :P723_C_COD_CLIENTE ,        ',
'        PI_NRO_ACUERDO      =>  :P723_NRO_ACUERDO ,  ',
'        PI_FECHA_INICIO     =>  :P723_FECHA_INICIO,',
'        PI_FECHA_FIN        =>  :P723_FECHA_FIN,        ',
'        PI_MONTO_OBJETIVO   =>  REPLACE(:P723_MONTO_OBJETIVO,''.'') ,',
'          PI_MONTO_OBJETIVO_2   =>  REPLACE(:P723_MONTO_OBJETIVO_2,''.'')   );',
'',
'    EXCEPTION',
'',
'        WHEN OTHERS THEN',
'            apex_debug.error(sqlerrm);',
'    END;',
'END IF;'))
,p_attribute_02=>'P723_COD_EMPRESA,P723_C_COD_CLIENTE,P723_FECHA_INICIO_ACUERDO,P723_FECHA_FIN,P723_MONTO_OBJETIVO,P723_FECHA_INICIO,P723_FECHA_FIN,P723_NRO_ACUERDO,P723_MONTO_OBJETIVO_2'
,p_attribute_03=>'P723_AUX_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276761015009515855)
,p_event_id=>wwv_flow_imp.id(276758510168515854)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P723_AUX_CONTROL.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'ACEPTAR'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P723_AUX_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276759037088515854)
,p_event_id=>wwv_flow_imp.id(276758510168515854)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(314660688705505116)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P723_AUX_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276759528672515854)
,p_event_id=>wwv_flow_imp.id(276758510168515854)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(315529014019155404)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P723_AUX_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(373231376704924230)
,p_event_id=>wwv_flow_imp.id(276758510168515854)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P723_FECHA_FIN,P723_MONTO_OBJETIVO,P723_FECHA_INICIO,P723_MONTO_OBJETIVO_2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(276752865980515852)
,p_name=>'DA_GUARDAR_CAMBIOS'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(276731928082515821)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276754859798515853)
,p_event_id=>wwv_flow_imp.id(276752865980515852)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    vtacuerdo.pr_borrar_miembro_collection(:P723_SEQ_ID_ELIMINAR);',
'    EXCEPTION',
'',
'    WHEN OTHERS THEN',
'',
'        apex_debug.ERROR(sqlerrm);',
'',
'END;'))
,p_attribute_02=>'P723_SEQ_ID_EDITAR,P723_FECHA_INICIO_ACUERDO,P723_FECHA_FIN,P723_MONTO_OBJETIVO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276754391902515852)
,p_event_id=>wwv_flow_imp.id(276752865980515852)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(314660688705505116)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276753363824515852)
,p_event_id=>wwv_flow_imp.id(276752865980515852)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(315529014019155404)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276753852812515852)
,p_event_id=>wwv_flow_imp.id(276752865980515852)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Registro actualizado con \00E9xito')
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(276755268736515853)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P723_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276757280510515853)
,p_event_id=>wwv_flow_imp.id(276755268736515853)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el registro?')
,p_attribute_02=>'ELIMINAR'
,p_attribute_03=>'warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276756207966515853)
,p_event_id=>wwv_flow_imp.id(276755268736515853)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    vtacuerdo.pr_borrar_miembro_collection(:P723_SEQ_ID_ELIMINAR);',
'    EXCEPTION',
'',
'    WHEN OTHERS THEN',
'',
'        apex_debug.ERROR(sqlerrm);',
'',
'END;'))
,p_attribute_02=>'P723_SEQ_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276756716649515853)
,p_event_id=>wwv_flow_imp.id(276755268736515853)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(314660688705505116)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(276755726693515853)
,p_event_id=>wwv_flow_imp.id(276755268736515853)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Registro eliminado con \00E9xito')
,p_attribute_02=>'ELIMINADO'
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(277496709173993306)
,p_name=>'da_nombre_cliente'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P723_C_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(277496826771993307)
,p_event_id=>wwv_flow_imp.id(277496709173993306)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  begin',
'    select  ',
'           d.detalle || ''-'' || ci.descripcion dir_cliente,',
'           t.codigo_area || '' '' || t.num_telefono,',
'           i.numero,',
'          nombre,  c.cod_vendedor, c.cod_segmento_linea',
'      INTO ',
'           :P723_DIR_CLIENTE,',
'           :P723_TEL_CLIENTE,',
'           :P723_RUC,',
'           :P723_NOM_CLIENTE,:P723_VENDEDOR,:P723_SEGMENTACION',
'      from cc_clientes    c,',
'           personas       p,',
'           cc_causales    b,',
'           direc_personas d,',
'           telef_personas t,',
'           ident_personas i,',
'           CIUDADES       CI',
'     where c.cod_empresa = ''1''',
'       and c.cod_cliente = :P723_C_COD_CLIENTE',
'       and c.cod_persona = p.cod_persona',
'       and c.cod_causal = b.cod_causal(+)',
'       and c.cod_persona = d.cod_persona(+)',
'       and nvl(d.por_defecto(+), ''N'') = ''S''',
'       and c.cod_persona = t.cod_persona(+)',
'       and nvl(t.por_defecto(+), ''N'') = ''S''',
'       and c.cod_persona = i.cod_persona(+)',
'       and nvl(i.cod_ident(+), ''X'') = ''RUC''',
'       AND CI.COD_PAIS(+) = D.COD_PAIS',
'       AND CI.COD_PROVINCIA(+) = D.COD_PROVINCIA',
'       AND CI.COD_CIUDAD(+) = D.COD_CIUDAD',
'       and rownum = 1;',
'  END;  ',
'',
'',
'  begin select descripcion_segmento into :P723_SEGMENTACION from cc_segmentacion_linea where cod_empresa=:P_COD_EMPRESA and :P723_SEGMENTACION=cod_tip_segmento;',
'exception when others then :P723_SEGMENTACION:=null;end;',
'',
'  begin    select f.descripcion INTO :P723_VENDEDOR from fv_vendedores f',
'where f.cod_empresa=:p_cod_empresa',
'AND F.COD_VENDEDOR=:P723_VENDEDOR;',
'exception when others then :P723_VENDEDOR:=null;end;',
'end;',
''))
,p_attribute_02=>'P723_C_COD_CLIENTE'
,p_attribute_03=>'P723_NOM_CLIENTE,P723_RUC,P723_DIR_CLIENTE,P723_TEL_CLIENTE,P723_VENDEDOR,P723_SEGMENTACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(278717545951441711)
,p_name=>'cerrar_region'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(278717425703441710)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(278717676298441712)
,p_event_id=>wwv_flow_imp.id(278717545951441711)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(278717078817441706)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(354909228278081140)
,p_name=>'cerrar_region_1'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(354909071967081138)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(354909366520081141)
,p_event_id=>wwv_flow_imp.id(354909228278081140)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(354908414723081132)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(278718477571441720)
,p_name=>'cerrar_region_comentario'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(278718141854441717)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(278718548353441721)
,p_event_id=>wwv_flow_imp.id(278718477571441720)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(278717947189441715)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(278717795478441713)
,p_name=>'da_INGRESO_ACUERDO'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P723_ESTADO_INGRESO_ACUERDO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(278718799332441723)
,p_event_id=>wwv_flow_imp.id(278717795478441713)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P723_TIPO_PROCESO:=''PENDIENTE REVISION'';',
':p723_usuario_ingReso:=:P_COD_USUARIO;',
':P723_FECHA_INGRESO_ACUERDO:=TRUNC(SYSDATE);',
'',
'/*ACUERDO INGRESO*/',
'IF :P723_ESTADO_INGRESO_ACUERDO=''S'' THEN',
':P723_ESTADO:= ''INGRESO ACUERDO REVISADO'';',
'ELSIF  :P723_ESTADO_INGRESO_ACUERDO=''N'' THEN',
':P723_ESTADO:= ''INGRESO ACUERDO PENDIENTE'';',
'END IF;',
'',
'',
'',
'END;'))
,p_attribute_02=>'P723_ESTADO_INGRESO_ACUERDO'
,p_attribute_03=>'P723_TIPO_PROCESO,P723_FECHA_INGRESO_ACUERDO,P723_USUARIO_INGRESO,P723_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(278717827426441714)
,p_event_id=>wwv_flow_imp.id(278717795478441713)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(278717947189441715)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(278718889429441724)
,p_name=>'da_REVISION_ACUERDO'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P723_ESTADO_REVISION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(278718987019441725)
,p_event_id=>wwv_flow_imp.id(278718889429441724)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P723_TIPO_PROCESO:=''REVISION_ACUERDO'';',
':P723_USUARIO_REVISION:=:P_COD_USUARIO;',
':P723_FECHA_REVISION:=TRUNC(SYSDATE);',
':P723_COMENTARIO:=NULL;',
'',
'/*ACUERDO REVISION*/',
'IF :P723_ESTADO_REVISION=''S'' THEN',
':P723_ESTADO:= ''REVISADO OK'';',
'ELSIF  :P723_ESTADO_REVISION=''N'' THEN',
':P723_ESTADO:= ''RECHAZADO'';',
'END IF;',
'',
'END;'))
,p_attribute_02=>'P723_ESTADO_REVISION'
,p_attribute_03=>'P723_TIPO_PROCESO,P723_USUARIO_REVISION,P723_FECHA_REVISION,P723_ESTADO,P723_COMENTARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(278719046241441726)
,p_event_id=>wwv_flow_imp.id(278718889429441724)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(278717947189441715)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(278719104376441727)
,p_name=>'da_REVISION_ACUERDO_GC'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P723_ESTADO_GC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(278719206455441728)
,p_event_id=>wwv_flow_imp.id(278719104376441727)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P723_TIPO_PROCESO:=''REVISION GERENCIA COMERCIAL'';',
':P723_USUARIO_GC:=:P_COD_USUARIO;',
':P723_FECHA_GC:=TRUNC(SYSDATE);',
'',
'/*ACUERDO REVISION*/',
'IF :P723_ESTADO_GC=''S'' THEN',
':P723_ESTADO:= ''REVISADO OK GC'';',
'ELSIF  :P723_ESTADO_GC=''N'' THEN',
':P723_ESTADO:= ''RECHAZADO GC'';',
'END IF;',
'',
'END;'))
,p_attribute_02=>'P723_ESTADO_GC'
,p_attribute_03=>'P723_TIPO_PROCESO,P723_FECHA_GC,P723_USUARIO_GC,P723_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(278719389813441729)
,p_event_id=>wwv_flow_imp.id(278719104376441727)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(278717947189441715)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(278719428594441730)
,p_name=>'da_REVISION__CO'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P723_ESTADO_CO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(278719589130441731)
,p_event_id=>wwv_flow_imp.id(278719428594441730)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P723_TIPO_PROCESO:=''INFORME COBRANZA'';',
':P723_USUARIO_CO:=:P_COD_USUARIO;',
':P723_FECHA_CO:=TRUNC(SYSDATE);',
'',
'/*ACUERDO COBRANZA*/',
'IF :P723_ESTADO_CO=''1'' THEN',
':P723_ESTADO:= ''INFORME COBRANZA CLIENTE AL DIA'';',
'ELSIF  :P723_ESTADO_CO=''2'' THEN',
':P723_ESTADO:= ''INFORME CO CLIENTE MOROSO'';',
'ELSIF  :P723_ESTADO_CO=''3'' THEN',
':P723_ESTADO:= ''INFORME CO CLIENTE RIESGOSO'';',
'ELSIF  :P723_ESTADO_CO=''4'' THEN',
':P723_ESTADO:= ''INFORME CO CLIENTE NO RECOMENDADO'';',
'END IF;',
'',
'',
'END;'))
,p_attribute_02=>'P723_ESTADO_CO'
,p_attribute_03=>'P723_TIPO_PROCESO,P723_FECHA_CO,P723_USUARIO_CO,P723_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(280539401089066415)
,p_event_id=>wwv_flow_imp.id(278719428594441730)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P723_ESTADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(278719690817441732)
,p_event_id=>wwv_flow_imp.id(278719428594441730)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(278717947189441715)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(278719724165441733)
,p_name=>'da_REVISION_GG'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P723_ESTADO_GG'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(278719817220441734)
,p_event_id=>wwv_flow_imp.id(278719724165441733)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P723_TIPO_PROCESO:=''REVISION GERENCIA GENERAL'';',
':P723_USUARIO_GG:=:P_COD_USUARIO;',
':P723_FECHA_GG:=TRUNC(SYSDATE);',
'',
'',
'/*GERENCIA GENERAL*/',
'IF :P723_ESTADO_GG=''S'' THEN',
':P723_ESTADO:= ''GG APROBADO'';',
'ELSIF  :P723_ESTADO_GG=''N'' THEN',
':P723_ESTADO:= ''GG RECHAZADO''; ',
'END IF;',
'',
'END;'))
,p_attribute_02=>'P723_ESTADO_GG'
,p_attribute_03=>'P723_TIPO_PROCESO,P723_FECHA_GG,P723_USUARIO_GG,P723_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(278719925804441735)
,p_event_id=>wwv_flow_imp.id(278719724165441733)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(278717947189441715)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(278720045543441736)
,p_name=>'da_REVISION_AU'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P723_ESTADO_AU'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(278720130655441737)
,p_event_id=>wwv_flow_imp.id(278720045543441736)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P723_TIPO_PROCESO:=''REVISION AUDITORIA'';',
':P723_USUARIO_AU:=:P_COD_USUARIO;',
':P723_FECHA_AU:=TRUNC(SYSDATE);',
'',
'/*REVISION AU */',
'IF :P723_ESTADO_AU=''S'' THEN',
':P723_ESTADO:= ''AUDIT OK'';',
'ELSIF  :P723_ESTADO_AU=''N'' THEN',
':P723_ESTADO:= ''AUDIT RECHAZADO''; ',
'END IF;',
'',
'END;'))
,p_attribute_02=>'P723_ESTADO_AU'
,p_attribute_03=>'P723_TIPO_PROCESO,P723_FECHA_AU,P723_USUARIO_AU,P723_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(278720253524441738)
,p_event_id=>wwv_flow_imp.id(278720045543441736)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(278717947189441715)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(278720365928441739)
,p_name=>'da_REVISION_FIRMA'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P723_ESTADO_FIRMA'
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
 p_id=>wwv_flow_imp.id(278720465912441740)
,p_event_id=>wwv_flow_imp.id(278720365928441739)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P723_TIPO_PROCESO:=''FIRMA CONTRATO'';',
':P723_USUARIO_FIRMA:=:P_COD_USUARIO;',
':P723_FECHA_FIRMA:=TRUNC(SYSDATE);',
'',
'',
'/*REVISION FIRMA */',
'IF :P723_ESTADO_FIRMA=''S'' THEN',
':P723_ESTADO:= ''ACUERDO FIRMADO'';',
'ELSIF  :P723_ESTADO_FIRMA=''N'' THEN',
':P723_ESTADO:= ''PENDIENTE FIRMA''; ',
'END IF;',
'',
'',
'END;'))
,p_attribute_02=>'P723_ESTADO_FIRMA'
,p_attribute_03=>'P723_TIPO_PROCESO,P723_FECHA_FIRMA,P723_USUARIO_FIRMA,P723_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(278720554231441741)
,p_event_id=>wwv_flow_imp.id(278720365928441739)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(278717947189441715)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(278720608972441742)
,p_name=>'da_contrato'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P723_ESTADO_CONTRATO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(278720712583441743)
,p_event_id=>wwv_flow_imp.id(278720608972441742)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P723_TIPO_PROCESO:=''ARCHIVO CONTRATO'';',
':P723_USUARIO_CONTRATO:=:P_COD_USUARIO;',
':P723_FECHA_CONTRATO:=TRUNC(SYSDATE);',
'',
'/*REVISION AU */',
'IF :P723_ESTADO_CONTRATO=''S'' THEN',
':P723_ESTADO:= ''CONTRATO ARCHIVADO'';',
'ELSIF  :P723_ESTADO_CONTRATO=''N'' THEN',
':P723_ESTADO:= ''CONTRATO PENDIENTE ARCHIVO''; ',
'END IF;',
'',
'END;'))
,p_attribute_02=>'P723_ESTADO_CONTRATO'
,p_attribute_03=>'P723_TIPO_PROCESO,P723_FECHA_CONTRATO,P723_USUARIO_CONTRATO,P723_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(278720835911441744)
,p_event_id=>wwv_flow_imp.id(278720608972441742)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(278717947189441715)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279155667803711747)
,p_name=>'da_nro_acuerdo'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P723_NRO_ACUERDO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279155787761711748)
,p_event_id=>wwv_flow_imp.id(279155667803711747)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(278717078817441706)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(280538606442066407)
,p_event_id=>wwv_flow_imp.id(279155667803711747)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(279155920413711750)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(280538201168066403)
,p_name=>'da_aceptar_cambio'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(278721433448441750)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(280538368732066404)
,p_event_id=>wwv_flow_imp.id(280538201168066403)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'vretorno varchar2(400);',
'begin',
'  -- Call the procedure',
'  inv.SP_INSERTA_SEGUIMIENTO_AC(P_NRO_ACUERDO => :P723_NRO_ACUERDO,',
'                                PCOMENTARIO => :P723_TIPO_PROCESO||'' ESTADO ''||:P723_ESTADO||'' : ''||:P723_COMENTARIO,',
'                                P_RETORNO => vretorno);',
'end;',
'',
' '))
,p_attribute_02=>'P723_NRO_ACUERDO,P723_COMENTARIO,P723_TIPO_PROCESO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(280538577144066406)
,p_event_id=>wwv_flow_imp.id(280538201168066403)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(279155920413711750)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(280538474331066405)
,p_event_id=>wwv_flow_imp.id(280538201168066403)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(278717947189441715)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(283334186515456116)
,p_name=>'da_imprimir_acuerdo'
,p_event_sequence=>280
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(277496509583993304)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(373229750624924214)
,p_event_id=>wwv_flow_imp.id(283334186515456116)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P723_TIPO_ACUERDO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(283334258800456117)
,p_event_id=>wwv_flow_imp.id(283334186515456116)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var comprobante = document.getElementById("P723_NRO_ACUERDO").value; ',
'var params = []',
'var empresa = apex.item("P_COD_EMPRESA").getValue();',
'',
'var nro_comprobante = apex.item("P723_NRO_ACUERDO").getValue();',
'var usuario = ''&APP_USER.'';',
'var tipoAcuerdo = $v("P723_TIPO_ACUERDO");',
'',
'var vfacnom = "acuerdo_comercial";',
'',
'if (tipoAcuerdo === "SUPER_META") {',
'  var vfacnom = "acuerdo_comercial_1";',
'} else {',
'   var vfacnom = "acuerdo_comercial";',
'}',
'',
'params.push({ name: ''P_NRO_ACUERDO'', value: nro_comprobante}) ',
'',
'createReportUrl(vfacnom, params)',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(285245542791611309)
,p_name=>'da_anular'
,p_event_sequence=>300
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(285245413877611308)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285245660947611310)
,p_event_id=>wwv_flow_imp.id(285245542791611309)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta Seguro de anular el acuerdo con el cliente &P723_NOM_CLIENTE.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285245764214611311)
,p_event_id=>wwv_flow_imp.id(285245542791611309)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P723_TIPO_PROCESO:=''ANULADO'';',
'',
':P723_COMENTARIO:=NULL;',
'',
'/*ANULADO*/',
' ',
':P723_ESTADO:= ''ANULADO'';',
' ',
'',
'END;'))
,p_attribute_03=>'P723_TIPO_PROCESO,P723_ESTADO,P723_COMENTARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285246019225611314)
,p_event_id=>wwv_flow_imp.id(285245542791611309)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(278717947189441715)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(285248114433611335)
,p_name=>'DA_PERMISO_ANULAR'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P723_PUEDE_ANULAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_when_cond=>'P723_PUEDE_ANULAR'
,p_display_when_cond2=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285248219341611336)
,p_event_id=>wwv_flow_imp.id(285248114433611335)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(285245413877611308)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(285811779939143310)
,p_name=>'DA_PERMISO_ANULAR_si'
,p_event_sequence=>320
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P723_PUEDE_ANULAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P723_PUEDE_ANULAR'
,p_display_when_cond2=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285811882409143311)
,p_event_id=>wwv_flow_imp.id(285811779939143310)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(285245413877611308)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(285248461963611338)
,p_name=>'DA_PERMISOREVISAR'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P723_PUEDE_REVISAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_when_cond=>'P723_PUEDE_REVISAR'
,p_display_when_cond2=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285248543309611339)
,p_event_id=>wwv_flow_imp.id(285248461963611338)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P723_ESTADO_REVISION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(285248768593611341)
,p_name=>'DA_PERMISO_COBRANZA'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P723_PUEDE_COBRANZA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_when_cond=>'P723_PUEDE_COBRANZA'
,p_display_when_cond2=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285248828344611342)
,p_event_id=>wwv_flow_imp.id(285248768593611341)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P723_ESTADO_CO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(285249263859611346)
,p_name=>'DA_PERMISO_GC'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P723_PUEDE_GERENCIA_COMERCIAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_when_cond=>'P723_PUEDE_GERENCIA_COMERCIAL'
,p_display_when_cond2=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285249377975611347)
,p_event_id=>wwv_flow_imp.id(285249263859611346)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P723_ESTADO_GC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(285249401199611348)
,p_name=>'DA_PERMISO_AUDITORIA'
,p_event_sequence=>360
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P723_PUEDE_AUDITORIA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_when_cond=>'P723_PUEDE_AUDITORIA'
,p_display_when_cond2=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285249533013611349)
,p_event_id=>wwv_flow_imp.id(285249401199611348)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P723_ESTADO_AU'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(285249664056611350)
,p_name=>'DA_PERMISO_GG'
,p_event_sequence=>370
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P723_PUEDE_GERENCIA_GENERAL'
,p_condition_element=>'P723_PUEDE_GERENCIA_GENERAL'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_when_cond=>'P723_PUEDE_GERENCIA_GENERAL'
,p_display_when_cond2=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285810869088143301)
,p_event_id=>wwv_flow_imp.id(285249664056611350)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P723_ESTADO_GG'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(285246191160611315)
,p_name=>'DA_ESTADO_ANULADO'
,p_event_sequence=>380
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P723_ESTADO'
,p_condition_element=>'P723_ESTADO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'ANULADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285246296652611316)
,p_event_id=>wwv_flow_imp.id(285246191160611315)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(278717350969441709)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285810984848143302)
,p_event_id=>wwv_flow_imp.id(285246191160611315)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P723_ESTADO_REVISION,P723_ESTADO_CO,P723_ESTADO_GC,P723_ESTADO_GG,P723_ESTADO_AU,P723_ESTADO_CONTRATO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285247135775611325)
,p_event_id=>wwv_flow_imp.id(285246191160611315)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(278716830339441704)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285247229596611326)
,p_event_id=>wwv_flow_imp.id(285246191160611315)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(285245413877611308)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285246377057611317)
,p_event_id=>wwv_flow_imp.id(285246191160611315)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(277496237851993301)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285246569770611319)
,p_event_id=>wwv_flow_imp.id(285246191160611315)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(277496463888993303)
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285812019526143313)
,p_event_id=>wwv_flow_imp.id(285246191160611315)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(276745290460515831)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285812163553143314)
,p_event_id=>wwv_flow_imp.id(285246191160611315)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(277496509583993304)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285247041562611324)
,p_event_id=>wwv_flow_imp.id(285246191160611315)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P723_ESTADO_CO,P723_ESTADO_GC,P723_ESTADO_GG,P723_ESTADO_AU,P723_ESTADO_FIRMA,P723_ESTADO_CONTRATO,P723_ESTADO_REVISION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(650046453173536520)
,p_name=>'da_load'
,p_event_sequence=>390
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(650046520379536521)
,p_event_id=>wwv_flow_imp.id(650046453173536520)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#P723_C_COD_CLIENTE'').attr(''readonly'', true);',
'$(''#P723_C_COD_CLIENTE'').attr(''readonly'', true);',
'',
' $(''#P723_C_COD_CLIENTE'').attr(''readonly'', true);',
'    $(''#P723_C_COD_CLIENTE'').css(''pointer-events'',''none'');',
'    $(''#P723_C_COD_CLIENTE'').css(''opacity'',''.5'');',
'    $(''#P723_C_COD_CLIENTE'').off(''keydown'');',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(354910077198081148)
,p_name=>'da_permiso'
,p_event_sequence=>400
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL varchar2(10);',
'BEGIN',
'    VCONTROL :=  busca_permiso(:P_COD_EMPRESA,''VTACUERD'',:APP_USER,''EDITA_PORCENTAJE'');',
'',
'    IF VCONTROL = ''N'' THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE;',
'    END IF;                                                     ',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(354910111387081149)
,p_event_id=>wwv_flow_imp.id(354910077198081148)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#P723_PORCENTAJE_APOYO'').attr(''readonly'', true);',
'$(''#P723_PORCENTAJE_APOYO'').attr(''readonly'', true);',
'',
' $(''#P723_PORCENTAJE_APOYO'').attr(''readonly'', true);',
'    $(''#P723_PORCENTAJE_APOYO'').css(''pointer-events'',''none'');',
'    $(''#P723_PORCENTAJE_APOYO'').css(''opacity'',''.5'');',
'    $(''#P723_PORCENTAJE_APOYO'').off(''keydown'');',
'',
'',
'$(''#P723_PORCENTAJE_APOYO_2'').attr(''readonly'', true);',
'$(''#P723_PORCENTAJE_APOYO_2'').attr(''readonly'', true);',
'',
' $(''#P723_PORCENTAJE_APOYO_2'').attr(''readonly'', true);',
'    $(''#P723_PORCENTAJE_APOYO_2'').css(''pointer-events'',''none'');',
'    $(''#P723_PORCENTAJE_APOYO_2'').css(''opacity'',''.5'');',
'    $(''#P723_PORCENTAJE_APOYO_2'').off(''keydown'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(354909491095081142)
,p_name=>'da_ver_segmentacion'
,p_event_sequence=>410
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P723_SEGMENTACION'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(354909510781081143)
,p_event_id=>wwv_flow_imp.id(354909491095081142)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(354908414723081132)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(354909620371081144)
,p_name=>'da_fecha_inicio_vigencia'
,p_event_sequence=>420
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P723_FECHA_INICIO_ACUERDO,P723_VIGENCIA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(354909744999081145)
,p_event_id=>wwv_flow_imp.id(354909620371081144)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P723_VIGENCIA=''A'' THEN',
':P723_FECHA_FIN_ACUERDO:=ADD_MONTHS(:P723_FECHA_INICIO_ACUERDO,12)-1;',
'ELSif :P723_VIGENCIA=''S'' THEN',
':P723_FECHA_FIN_ACUERDO:=ADD_MONTHS(:P723_FECHA_INICIO_ACUERDO,6)-1;',
'ELSif :P723_VIGENCIA=''T'' THEN',
':P723_FECHA_FIN_ACUERDO:=ADD_MONTHS(:P723_FECHA_INICIO_ACUERDO,3)-1;',
'ELSif :P723_VIGENCIA=''B'' THEN',
':P723_FECHA_FIN_ACUERDO:=ADD_MONTHS(:P723_FECHA_INICIO_ACUERDO,2)-1;',
'END IF;'))
,p_attribute_02=>'P723_VIGENCIA,P723_FECHA_INICIO_ACUERDO'
,p_attribute_03=>'P723_FECHA_FIN_ACUERDO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(373228780689924204)
,p_name=>'da_permiso_apoyo2'
,p_event_sequence=>430
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P723_TIPO_ACUERDO'
,p_condition_element=>'P723_TIPO_ACUERDO'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'SUPER_META'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(373228826545924205)
,p_event_id=>wwv_flow_imp.id(373228780689924204)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P723_MONTO_OBJETIVO_2,P723_PORCENTAJE_APOYO_2'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#P723_MONTO_OBJETIVO_2'').attr(''readonly'', true);',
'$(''#P723_MONTO_OBJETIVO_2'').attr(''readonly'', true);',
'',
' $(''#P723_MONTO_OBJETIVO_2'').attr(''readonly'', true);',
'    $(''#P723_MONTO_OBJETIVO_2'').css(''pointer-events'',''none'');',
'    $(''#P723_MONTO_OBJETIVO_2'').css(''opacity'',''.5'');',
'    $(''#P723_MONTO_OBJETIVO_2'').off(''keydown'');',
'',
'',
'$(''#P723_PORCENTAJE_APOYO_2'').attr(''readonly'', true);',
'$(''#P723_PORCENTAJE_APOYO_2'').attr(''readonly'', true);',
'',
' $(''#P723_PORCENTAJE_APOYO_2'').attr(''readonly'', true);',
'    $(''#P723_PORCENTAJE_APOYO_2'').css(''pointer-events'',''none'');',
'    $(''#P723_PORCENTAJE_APOYO_2'').css(''opacity'',''.5'');',
'    $(''#P723_PORCENTAJE_APOYO_2'').off(''keydown'');'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(373229041200924207)
,p_event_id=>wwv_flow_imp.id(373228780689924204)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P723_MONTO_OBJETIVO_2,P723_PORCENTAJE_APOYO_2'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#P723_MONTO_OBJETIVO_2'').attr(''readonly'', false);',
'$(''#P723_MONTO_OBJETIVO_2'').attr(''readonly'', false);',
'',
' $(''#P723_MONTO_OBJETIVO_2'').attr(''readonly'', false);',
'    $(''#P723_MONTO_OBJETIVO_2'').css(''pointer-events'',''auto'');',
'    $(''#P723_MONTO_OBJETIVO_2'').css(''opacity'',''1'');',
'    $(''#P723_MONTO_OBJETIVO_2'').on(''keydown'');',
'',
'',
'$(''#P723_PORCENTAJE_APOYO_2'').attr(''readonly'', false);',
'$(''#P723_PORCENTAJE_APOYO_2'').attr(''readonly'', false);',
'',
' $(''#P723_PORCENTAJE_APOYO_2'').attr(''readonly'', false);',
'    $(''#P723_PORCENTAJE_APOYO_2'').css(''pointer-events'',''auto'');',
'    $(''#P723_PORCENTAJE_APOYO_2'').css(''opacity'',''1'');',
'   $(''#P723_PORCENTAJE_APOYO_2'').on(''keydown'');'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(373228948989924206)
,p_event_id=>wwv_flow_imp.id(373228780689924204)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P723_MONTO_OBJETIVO_2,P723_PORCENTAJE_APOYO_2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(373229164675924208)
,p_event_id=>wwv_flow_imp.id(373228780689924204)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P723_MONTO_OBJETIVO_2,P723_PORCENTAJE_APOYO_2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(373231049091924227)
,p_name=>'da_valida_fechas'
,p_event_sequence=>440
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P723_FECHA_FIN'
,p_condition_element=>'P723_FECHA_FIN'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(373231120700924228)
,p_event_id=>wwv_flow_imp.id(373231049091924227)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P723_AUX_CONTROL := null;',
'IF  :P723_FECHA_INICIO IS NULL THEN',
':P723_FECHA_INICIO:=null;',
'    :P723_AUX_CONTROL := ''Debe ingresar la fecha inicio.'';',
'    RAISE_APPLICATION_ERROR(-20000, ''Debe ingresar la fecha inicio.'');',
' ELSIF :P723_FECHA_FIN IS NULL THEN',
' :P723_FECHA_FIN:=null;',
'    :P723_AUX_CONTROL := ''Debe ingresar la fecha fin.'';',
'    RAISE_APPLICATION_ERROR(-20000, ''Debe ingresar la fecha fin.'');',
'  elsif :P723_FECHA_INICIO>:P723_FECHA_FIN then',
'    :P723_AUX_CONTROL := ''Fecha Inicio no debe ser mayor a la fecha final.'';',
'    :P723_FECHA_INICIO:=null;',
'    RAISE_APPLICATION_ERROR(-20000, ''Fecha Inicio no debe ser mayor a la fecha final.'');',
'/*elsif :P723_VIGENCIA=''A'' AND ',
'(TO_CHAR(:P723_FECHA_INICIO,''DD/MM'')<>''01/01'' OR TO_CHAR(:P723_FECHA_FIN,''DD/MM'')<>''31/12'') then',
'    :P723_AUX_CONTROL := ''El periodo de Vigencia no aplica a la fecha.'';',
'',
'elsif :P723_VIGENCIA=''S'' AND ',
'(TO_CHAR(:P723_FECHA_INICIO,''DD/MM'') NOT IN (''01/01'',''01/07'') OR TO_CHAR(:P723_FECHA_FIN,''DD/MM'')NOT IN (''30/06'',''31/12'')) then',
'    :P723_AUX_CONTROL := ''El periodo de Vigencia no aplica a la fecha.'';    */',
'  ',
'END IF;',
'',
'if :P723_FECHA_INICIO NOT BETWEEN :P723_FECHA_INICIO_ACUERDO AND :P723_FECHA_FIN_ACUERDO THEN',
':P723_FECHA_INICIO:=null;',
':P723_AUX_CONTROL:=''El detalle esta fuera de la fecha de vigencia del acuerdo'';',
'RAISE_APPLICATION_ERROR(-20000, ''El detalle esta fuera de la fecha de vigencia del acuerdo'');',
'end if;',
'if :P723_FECHA_fin NOT BETWEEN :P723_FECHA_INICIO_ACUERDO AND :P723_FECHA_FIN_ACUERDO THEN',
':P723_FECHA_fin:=null;',
':P723_AUX_CONTROL:=''El detalle esta fuera de la fecha de vigencia del acuerdo'';',
'RAISE_APPLICATION_ERROR(-20000, ''El detalle esta fuera de la fecha de vigencia del acuerdo'');',
'end if;'))
,p_attribute_02=>'P723_FECHA_INICIO,P723_FECHA_FIN_ACUERDO,P723_FECHA_INICIO_ACUERDO,P723_FECHA_FIN'
,p_attribute_03=>'P723_AUX_CONTROL,P723_FECHA_INICIO,P723_FECHA_FIN_ACUERDO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(276746828695515844)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CONFIRMAR_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'   NULL;-- VTCARCLI.pr_confirmar_accion( :P723_C_COD_CLIENTE);',
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
,p_process_when=>'CONFIRMAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(279151578143711706)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_guarda_acuerdo'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' if nvl(:P723_TIPO_APOYONGO_DIGITAL,''N'')=''S'' AND NVL(:P723_TIPO_APOYO_CO,''N'') =''N'' THEN',
'           ',
'RAISE_APPLICATION_ERROR(-20000,  ''El apoyo digital es solamente otorgado si el cliente cuenta con apoyo comercial'');',
' END IF;',
' if nvl(:P723_TIPO_APOYONGO_DIGITAL,''N'')=''N'' AND NVL(:P723_TIPO_APOYO_CO,''N'') =''N''  AND NVL(:P723_TIPO_APOYO_MKT,''N'') =''N''  THEN',
'           ',
'RAISE_APPLICATION_ERROR(-20000,  ''Debe seleccionar al menos un tipo de apoyo'');',
' END IF;',
'declare',
'vexiste varchar2(10);',
'begin',
'SELECT           ',
'       ''S'' INTO VEXISTE',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''DETALLE_ACUERDO''',
'AND nvl(c030, ''O'') <> ''B'' and rownum=1;',
'EXCEPTION WHEN OTHERS THEN ',
'           ',
'RAISE_APPLICATION_ERROR(-20000,  ''Para guardar el Acuerdo debe cargar el detalle del mismo ''  );',
'end;',
'  vtacuerdo.pr_guarda_acuerdo(PI_NRO_ACUERDO => :P723_NRO_ACUERDO,',
'                               ',
'                                   P_FECHA_ACUERDO => :P723_FECHA_ACUERDO,',
'                                P_FECHA_INICIO_ACUERDO => :P723_FECHA_INICIO_ACUERDO,',
'                                P_FECHA_FIN_ACUERDO => :P723_FECHA_FIN_ACUERDO,',
'                                P_COD_CLIENTE => :P723_C_COD_CLIENTE,',
'                                P_ESTADO => :P723_ESTADO,',
'                                P_VIGENCIA => :P723_VIGENCIA,',
'                                P_PORCENTAJE_APOYO => :P723_PORCENTAJE_APOYO,',
'                                P_REPRESENTADO_POR => :P723_REPRESENTADO_POR,',
'                                P_FECHA_INGRESO => :P723_FECHA_INGRESO_ACUERDO,',
'                                p_estado_ingreso => :P723_ESTADO_INGRESO_ACUERDO,',
'                                P_COD_USUARIO_INGRESO => :P723_USUARIO_INGRESO,',
'                                P_FECHA_REVISION => :P723_FECHA_REVISION,',
'                                P_ESTADO_REVISION => :P723_ESTADO_REVISION,',
'                                P_USUARIO_REVISION => :P723_USUARIO_REVISION,',
'                                P_FECHA_REVISION_GC => :P723_FECHA_GC,',
'                                P_ESTADO_REVISION_GC => :P723_ESTADO_GC,',
'                                P_USUARIO_GC => :P723_USUARIO_GC,',
'                                P_FECHA_REVISION_CO => :P723_FECHA_CO,',
'                                P_ESTADO_REVISION_CO => :P723_ESTADO_CO,',
'                                P_USUARIO_CO => :P723_USUARIO_CO,',
'                                P_FECHA_REVISION_GG => :P723_FECHA_GG,',
'                                P_ESTADO_REVISION_GG => :P723_ESTADO_GG,',
'                                P_USUARIO_Gg => :P723_USUARIO_Gg,',
'                                P_FECHA_REVISION_AU => :P723_FECHA_AU,',
'                                P_ESTADO_REVISION_AU => :P723_ESTADO_AU,',
'                                P_USUARIO_AU => :P723_USUARIO_AU,',
'                                P_FECHA_FIRMA => :P723_FECHA_FIRMA,',
'                                p_estado_firma => :P723_estado_firma,',
'                                P_USUARIO_FIRMA => :P723_USUARIO_FIRMA,',
'                                P_FECHA_ARCHIVO => :P723_FECHA_CONTRATO,',
'                                p_estado_archivo => :P723_ESTADO_CONTRATO,',
'                                P_USUARIO_archivo => :P723_USUARIO_CONTRATO,',
'                                P_RUC_CLIENTE => :P723_RUC,',
'                                P_DIRECCION_CLIENTE => :P723_DIR_CLIENTE,',
'                                P_NOMBRE_CLIENTE => :P723_NOM_CLIENTE,',
'                                 P_tipo_acuerdo => :P723_TIPO_ACUERDO,',
'                                p_porcentaje_apoyo_2 => :P723_PORCENTAJE_APOYO_2,',
'                                P_TIPO_APOYO_CO => :P723_TIPO_APOYO_CO,',
'                                P_TIPO_APOYO_MKT => :P723_TIPO_APOYO_MKT,',
'                                P_TIPO_APOYO_DIG => :P723_TIPO_APOYONGO_DIGITA);',
' ',
'',
'    EXCEPTION',
'            WHEN OTHERS THEN',
'                 ',
'RAISE_APPLICATION_ERROR(-20000, SQLERRM|| ''pr_guardar'');',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>' '
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(277496237851993301)
,p_process_when=>'P723_NRO_ACUERDO'
,p_process_when_type=>'ITEM_IS_NULL'
,p_process_success_message=>'Acuerdo Generado &P723_NRO_ACUERDO.'
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
 p_id=>wwv_flow_imp.id(280539280938066413)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_actualiza_acuerdo'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' ',
'  vtacuerdo.pr_actualiza_acuerdo(PI_NRO_ACUERDO => :P723_NRO_ACUERDO, --1',
'                                   P_FECHA_ACUERDO => :P723_FECHA_ACUERDO,',
'                                P_FECHA_INICIO_ACUERDO => :P723_FECHA_INICIO_ACUERDO,',
'                                P_FECHA_FIN_ACUERDO => :P723_FECHA_FIN_ACUERDO,',
'                                P_COD_CLIENTE => :P723_C_COD_CLIENTE,',
'                                P_ESTADO => :P723_ESTADO,',
'                                P_VIGENCIA => :P723_VIGENCIA,',
'                                P_PORCENTAJE_APOYO => :P723_PORCENTAJE_APOYO,',
'                                P_REPRESENTADO_POR => :P723_REPRESENTADO_POR,',
'                                P_FECHA_INGRESO => :P723_FECHA_INGRESO_ACUERDO,',
'                                p_estado_ingreso => :P723_ESTADO_INGRESO_ACUERDO,',
'                                P_COD_USUARIO_INGRESO => :P723_USUARIO_INGRESO,',
'                                P_FECHA_REVISION => :P723_FECHA_REVISION,',
'                                P_ESTADO_REVISION => :P723_ESTADO_REVISION,',
'                                P_USUARIO_REVISION => :P723_USUARIO_REVISION,',
'                                P_FECHA_REVISION_GC => :P723_FECHA_GC,',
'                                P_ESTADO_REVISION_GC => :P723_ESTADO_GC,',
'                                P_USUARIO_GC => :P723_USUARIO_GC,',
'                                P_FECHA_REVISION_CO => :P723_FECHA_CO,',
'                                P_ESTADO_REVISION_CO => :P723_ESTADO_CO,',
'                                P_USUARIO_CO => :P723_USUARIO_CO,',
'                                P_FECHA_REVISION_GG => :P723_FECHA_GG,',
'                                P_ESTADO_REVISION_GG => :P723_ESTADO_GG,',
'                                P_USUARIO_Gg => :P723_USUARIO_Gg,',
'                                P_FECHA_REVISION_AU => :P723_FECHA_AU,',
'                                P_ESTADO_REVISION_AU => :P723_ESTADO_AU,',
'                                P_USUARIO_AU => :P723_USUARIO_AU,',
'                                P_FECHA_FIRMA => :P723_FECHA_FIRMA,',
'                                p_estado_firma => :P723_estado_firma,',
'                                P_USUARIO_FIRMA => :P723_USUARIO_FIRMA,',
'                                P_FECHA_ARCHIVO => :P723_FECHA_CONTRATO,',
'                                p_estado_archivo => :P723_ESTADO_CONTRATO,',
'                                P_USUARIO_archivo => :P723_USUARIO_CONTRATO,',
'                                P_RUC_CLIENTE => :P723_RUC,',
'                                P_DIRECCION_CLIENTE => :P723_DIR_CLIENTE,',
'                                P_NOMBRE_CLIENTE => :P723_NOM_CLIENTE,',
'                                 P_tipo_acuerdo => :P723_TIPO_ACUERDO,',
'                                p_porcentaje_apoyo_2 => :P723_PORCENTAJE_APOYO_2,',
'                                P_TIPO_APOYO_CO => :P723_TIPO_APOYO_CO,',
'                                P_TIPO_APOYO_MKT => :P723_TIPO_APOYO_MKT,',
'                                P_TIPO_APOYO_DIG => :P723_TIPO_APOYONGO_DIGITAL);',
' ',
'',
'    EXCEPTION',
'            WHEN OTHERS THEN',
'                 ',
'RAISE_APPLICATION_ERROR(-20000, SQLERRM|| ''pr_actualiza_acuerdo'');',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>' '
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(277496463888993303)
,p_process_when=>'P723_NRO_ACUERDO'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'Acuerdo Numero: &P723_NRO_ACUERDO. Actualizado Correctamente.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(276746084848515844)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--setear variables locales',
':P723_COD_USUARIO := nvl(:P_COD_USUARIO, :APP_USER);',
':P723_COD_EMPRESA := ''1'';',
':P723_NOM_EMPRESA := NVL(:P_NOM_EMPRESA, NULL);',
':P723_COD_SUCURSAL:= nvl(:P_COD_SUCURSAL,''01'');',
':P723_NOM_SUCURSAL   := NVL(:P_NOM_SUCURSAL,NULL);',
':P723_COD_MODULO  := nvl(:P_COD_MODULO,''VT'');',
'',
':P723_PUEDE_REVISAR         := busca_permiso( :P_COD_EMPRESA,''VTACUERD'',:P_COD_USUARIO,''PUEDE_REVISAR'' );',
':P723_PUEDE_COBRANZA         := busca_permiso( :P_COD_EMPRESA,''VTACUERD'',:P_COD_USUARIO,''PUEDE_COBRANZA'' );',
':P723_PUEDE_GERENCIA_COMERCIAL         := busca_permiso( :P_COD_EMPRESA,''VTACUERD'',:P_COD_USUARIO,''PUEDE_COMERCIAL'' );',
':P723_PUEDE_GERENCIA_GENERAL         := busca_permiso( :P_COD_EMPRESA,''VTACUERD'',:P_COD_USUARIO,''PUEDE_GG'' );',
':P723_PUEDE_AUDITORIA         := busca_permiso( :P_COD_EMPRESA,''VTACUERD'',:P_COD_USUARIO,''PUEDE_AUDITORIA'' );',
':P723_PUEDE_FIRMA         := busca_permiso( :P_COD_EMPRESA,''VTACUERD'',:P_COD_USUARIO,''PUEDE_FIRMA'' );',
':P723_PUEDE_ARCHIVAR        := busca_permiso( :P_COD_EMPRESA,''VTACUERD'',:P_COD_USUARIO,''PUEDE_ARCHIVAR'' );',
':P723_PUEDE_ANULAR         := busca_permiso( :P_COD_EMPRESA,''VTACUERD'',:P_COD_USUARIO,''PUEDE_ANULAR'' );'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(279155321922711744)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CARGAR_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P723_PARAM_NRO_ACUERDO is not null  THEN   ',
'',
'    apex_collection.create_or_truncate_collection(p_collection_name => ''DETALLE_ACUERDO'');',
'begin',
'  -- Call the procedure',
'',
' vtacuerdo.pr_consulta_acuerdo(PI_NRO_ACUERDO => :P723_PARAM_NRO_ACUERDO,',
'                                 P_FECHA_ACUERDO => :P723_FECHA_ACUERDO,',
'                                P_FECHA_INICIO_ACUERDO => :P723_FECHA_INICIO_ACUERDO,',
'                                P_FECHA_FIN_ACUERDO => :P723_FECHA_FIN_ACUERDO,',
'                                P_COD_CLIENTE => :P723_C_COD_CLIENTE,',
'                                P_ESTADO => :P723_ESTADO,',
'                                P_VIGENCIA => :P723_VIGENCIA,',
'                                P_PORCENTAJE_APOYO => :P723_PORCENTAJE_APOYO,',
'                                P_REPRESENTADO_POR => :P723_REPRESENTADO_POR,',
'                                P_FECHA_INGRESO => :P723_FECHA_INGRESO_ACUERDO,',
'                                p_estado_ingreso => :P723_ESTADO_INGRESO_ACUERDO,',
'                                P_COD_USUARIO_INGRESO => :P723_USUARIO_INGRESO,',
'                                P_FECHA_REVISION => :P723_FECHA_REVISION,',
'                                P_ESTADO_REVISION => :P723_ESTADO_REVISION,',
'                                P_USUARIO_REVISION => :P723_USUARIO_REVISION,',
'                                P_FECHA_REVISION_GC => :P723_FECHA_GC,',
'                                P_ESTADO_REVISION_GC => :P723_ESTADO_GC,',
'                                P_USUARIO_GC => :P723_USUARIO_GC,',
'                                P_FECHA_REVISION_CO => :P723_FECHA_CO,',
'                                P_ESTADO_REVISION_CO => :P723_ESTADO_CO,',
'                                P_USUARIO_CO => :P723_USUARIO_CO,',
'                                P_FECHA_REVISION_GG => :P723_FECHA_GG,',
'                                P_ESTADO_REVISION_GG => :P723_ESTADO_GG,',
'                                P_USUARIO_Gg => :P723_USUARIO_Gg,',
'                                P_FECHA_REVISION_AU => :P723_FECHA_AU,',
'                                P_ESTADO_REVISION_AU => :P723_ESTADO_AU,',
'                                P_USUARIO_AU => :P723_USUARIO_AU,',
'                                P_FECHA_FIRMA => :P723_FECHA_FIRMA,',
'                                p_estado_firma => :P723_estado_firma,',
'                                P_USUARIO_FIRMA => :P723_USUARIO_FIRMA,',
'                                P_FECHA_ARCHIVO => :P723_FECHA_CONTRATO,',
'                                p_estado_archivo => :P723_ESTADO_CONTRATO,',
'                                P_USUARIO_archivo => :P723_USUARIO_CONTRATO,',
'                                P_RUC_CLIENTE => :P723_RUC,',
'                                P_DIRECCION_CLIENTE => :P723_DIR_CLIENTE,',
'                                P_NOMBRE_CLIENTE => :P723_NOM_CLIENTE,',
'                                       P_tipo_acuerdo => :P723_TIPO_ACUERDO,',
'                                p_porcentaje_apoyo_2 => :P723_PORCENTAJE_APOYO_2,',
'                                P_TIPO_APOYO_CO => :P723_TIPO_APOYO_CO,',
'                                P_TIPO_APOYO_MKT => :P723_TIPO_APOYO_MKT,',
'                                P_TIPO_APOYO_DIG => :P723_TIPO_APOYONGO_DIGITAL);',
' ',
'',
' :P723_NRO_ACUERDO:=:P723_PARAM_NRO_ACUERDO ;                                ',
'end; ',
' ',
'   ELSE',
'     apex_collection.create_or_truncate_collection(p_collection_name => ''DETALLE_ACUERDO'');',
'   if :P723_NRO_ACUERDO is null then',
'   :P723_FECHA_INGRESO_ACUERDO:=sysdate;',
':P723_USUARIO_INGRESO:= :P_COD_USUARIO;',
':P723_ESTADO_INGRESO_ACUERDO:=''N'';',
':P723_ESTADO:=''PENDIENTE_REVISION'';',
'--:P723_C_COD_CLIENTE:=null;',
':P723_FECHA_INICIO_ACUERDO:=null;',
':P723_FECHA_FIN_ACUERDO:=null;',
':P723_VIGENCIA:=null;',
'',
':P_ESTADO_REVISION:=null;',
':P_ESTADO_REVISION_GC:=null;',
':P_ESTADO_REVISION_CO:=null;',
':P_ESTADO_REVISION_AU:=null;',
':P_ESTADO_REVISION_GG:=null;',
':p_estado_firma:=null;',
':p_estado_archivo:=null;',
'end if;',
'END IF;',
'',
'IF :P723_C_COD_CLIENTE is not null  THEN   ',
'begin',
'  begin',
'    select  ',
'           d.detalle || ''-'' || ci.descripcion dir_cliente,',
'           t.codigo_area || '' '' || t.num_telefono,',
'           i.numero,',
'          nombre, CASE WHEN   :P723_NRO_ACUERDO IS NULL THEN porcentaje_acuerdo_comercial ELSE TO_NUMBER(:P723_PORCENTAJE_APOYO) END ,  c.cod_vendedor, c.cod_segmento_linea',
'      INTO ',
'           :P723_DIR_CLIENTE,',
'           :P723_TEL_CLIENTE,',
'           :P723_RUC,',
'           :P723_NOM_CLIENTE,:P723_PORCENTAJE_APOYO,  :P723_VENDEDOR, :P723_SEGMENTACION',
'      from cc_clientes    c,',
'           personas       p,',
'           cc_causales    b,',
'           direc_personas d,',
'           telef_personas t,',
'           ident_personas i,',
'           CIUDADES       CI',
'     where c.cod_empresa = ''1''',
'       and c.cod_cliente = :P723_C_COD_CLIENTE',
'       and c.cod_persona = p.cod_persona',
'       and c.cod_causal = b.cod_causal(+)',
'       and c.cod_persona = d.cod_persona(+)',
'       and nvl(d.por_defecto(+), ''N'') = ''S''',
'       and c.cod_persona = t.cod_persona(+)',
'       and nvl(t.por_defecto(+), ''N'') = ''S''',
'       and c.cod_persona = i.cod_persona(+)',
'       and nvl(i.cod_ident(+), ''X'') = ''RUC''',
'       AND CI.COD_PAIS(+) = D.COD_PAIS',
'       AND CI.COD_PROVINCIA(+) = D.COD_PROVINCIA',
'       AND CI.COD_CIUDAD(+) = D.COD_CIUDAD',
'       and rownum = 1;',
'  END;  ',
'end;',
'',
'begin select descripcion_segmento into :P723_SEGMENTACION from cc_segmentacion_linea where cod_empresa=:P_COD_EMPRESA and :P723_SEGMENTACION=cod_tip_segmento;',
'exception when others then :P723_SEGMENTACION:=null;end;',
'end if;',
':P723_PUEDE_REVISAR         := busca_permiso( :P_COD_EMPRESA,''VTACUERD'',:P_COD_USUARIO,''PUEDE_REVISAR'' );',
':P723_PUEDE_COBRANZA         := busca_permiso( :P_COD_EMPRESA,''VTACUERD'',:P_COD_USUARIO,''PUEDE_COBRANZA'' );',
':P723_PUEDE_GERENCIA_COMERCIAL         := busca_permiso( :P_COD_EMPRESA,''VTACUERD'',:P_COD_USUARIO,''PUEDE_COMERCIAL'' );',
':P723_PUEDE_GERENCIA_GENERAL         := busca_permiso( :P_COD_EMPRESA,''VTACUERD'',:P_COD_USUARIO,''PUEDE_GG'' );',
':P723_PUEDE_AUDITORIA         := busca_permiso( :P_COD_EMPRESA,''VTACUERD'',:P_COD_USUARIO,''PUEDE_AUDITORIA'' );',
':P723_PUEDE_FIRMA         := busca_permiso( :P_COD_EMPRESA,''VTACUERD'',:P_COD_USUARIO,''PUEDE_FIRMA'' );',
':P723_PUEDE_ARCHIVAR        := busca_permiso( :P_COD_EMPRESA,''VTACUERD'',:P_COD_USUARIO,''PUEDE_ARCHIVAR'' );',
':P723_PUEDE_ANULAR         := busca_permiso( :P_COD_EMPRESA,''VTACUERD'',:P_COD_USUARIO,''PUEDE_ANULAR'' );'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
