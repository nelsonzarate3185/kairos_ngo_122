prompt --application/pages/page_00339
begin
--   Manifest
--     PAGE: 00339
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
 p_id=>339
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'STENVPE'
,p_alias=>'STENVPE'
,p_step_title=>'NOTAS DE ENVIOS PENDIENTES  - STENVPE'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#util_generico.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function seleccionar(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P339_ACCION'',''AGREGAR'');',
'      $s(''P339_SEQ_ID'', cb.value,false);',
'  } else {',
'      $s(''P339_ACCION'',''QUITAR'');',
'      $s(''P339_SEQ_ID'', cb.value,false);',
'  }',
'}',
'',
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57;',
'}',
'',
'function doDescarga(p_cod_empresa, p_cod_sucursal_ent, p_cod_sucursal_sal,p_costo, p_devolucion,p_fecha_des, p_fecha_has,p_nro_envio,p_reposicion,p_ruta_archivo,p_ser_envio){',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/STPEDENVIO.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa + ''&P_COD_SUCURSAL_ENT='' + p_cod_sucursal_ent +',
'             ''&P_COD_SUCURSAL_SAL='' + p_cod_sucursal_sal + ',
'             ''&P_COSTO='' + p_costo +',
'             ''&P_DEVOLUCION='' + p_devolucion + ',
'             ''&P_FECHA_DES='' + p_fecha_des + ',
'             ''&P_FECHA_HAS='' + p_fecha_has + ',
'             ''&P_NRO_ENVIO='' + p_nro_envio + ',
'             ''&P_REPOSICION='' + p_reposicion + ',
'             ''&P_RUTA_ARCHIVO='' + p_ruta_archivo + ',
'             ''&P_SER_ENVIO='' + p_ser_envio + ',
'             ''&j_username=jasperadmin&j_password=jasperadmin'';',
'             console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}    ',
'',
' ',
' '))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.tipo-rub-ico {',
'      opacity: 0.5;',
'      pointer-events: none;}',
'',
'.uppercase',
'{',
'        text-transform: uppercase;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'PBOGADO'
,p_last_upd_yyyymmddhh24miss=>'20241007103740'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(83626066913059733)
,p_plug_name=>'NOTAS DE ENVIOS PENDIENTES'
,p_region_css_classes=>'u-color-29-bg'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(91934107917639014)
,p_plug_name=>'Elementos'
,p_parent_plug_id=>wwv_flow_imp.id(83626066913059733)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(91956642808768104)
,p_plug_name=>'Elementos'
,p_parent_plug_id=>wwv_flow_imp.id(83626066913059733)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:margin-top-sm'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(91959384072768131)
,p_plug_name=>'REPORTE_DET'
,p_region_name=>'REPORTE_DET'
,p_parent_plug_id=>wwv_flow_imp.id(83626066913059733)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    seq_id p_id,',
'     C001 COD_EMPRESA,',
'  	 C002 TIP_ENVIO,',
' 	 C003 SER_ENVIO ,',
' 	 C004 NRO_ENVIO,',
' 	 C005 COD_ART_CORTO,',
'     C006 COD_ARTICULO,',
'     nvl(( select TRIM(descripcion)descripcion  ',
'        from st_articulos ',
'        where cod_empresa = :P_COD_EMPRESA',
'        and cod_articulo=C006',
'        and rownum=1),'''') DESCRIPCION,',
'     C007 COD_UNIDAD_MEDIDA,',
'     C008 NRO_LOTE,',
'     C009 CANTIDAD,',
'     APEX_ITEM.CHECKBOX (p_idx  => 1 ,',
'                    p_value       => seq_id,',
'                    p_attributes  => (case c010',
'                                       when ''S'' then ''checked ''',
'                                      else null',
'                                     end ) ||''onclick="seleccionar(this)"'' )as  IND_RECEPCION,',
'     C011 CANTIDAD_UB,',
'     C012 VOLUMEN,',
'     C013 COSTO,',
'     C014 RID,',
'     C016 COD_REL_UM,',
'     C017 DESC_UNIDAD_MEDIDA,',
'     null editar,',
'     null eliminar,',
'     NULL ADD_OT ',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''COL_DETALLE''',
'AND NVL(C030,''P'')<>''B'';',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P339_C_TIPO_RUBRO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE_DET'
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
 p_id=>wwv_flow_imp.id(91959496176768132)
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
,p_internal_uid=>91959496176768132
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91960130552768139)
,p_db_column_name=>'P_ID'
,p_display_order=>10
,p_column_identifier=>'D'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91960241697768140)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'E'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91960376332768141)
,p_db_column_name=>'TIP_ENVIO'
,p_display_order=>30
,p_column_identifier=>'F'
,p_column_label=>'Tip Envio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91960453751768142)
,p_db_column_name=>'SER_ENVIO'
,p_display_order=>40
,p_column_identifier=>'G'
,p_column_label=>'Ser Envio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91960574762768143)
,p_db_column_name=>'NRO_ENVIO'
,p_display_order=>50
,p_column_identifier=>'H'
,p_column_label=>'Nro Envio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91960643569768144)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>60
,p_column_identifier=>'I'
,p_column_label=>'Cod. Corto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91960798698768145)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>70
,p_column_identifier=>'J'
,p_column_label=>'Codigo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(144677807886356734)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>80
,p_column_identifier=>'Y'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91960891135768146)
,p_db_column_name=>'COD_UNIDAD_MEDIDA'
,p_display_order=>90
,p_column_identifier=>'K'
,p_column_label=>'Unid.Med.'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(81105903760665806)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91960911701768147)
,p_db_column_name=>'NRO_LOTE'
,p_display_order=>100
,p_column_identifier=>'L'
,p_column_label=>'Nro Lote'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91961070049768148)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>110
,p_column_identifier=>'M'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91961105021768149)
,p_db_column_name=>'IND_RECEPCION'
,p_display_order=>120
,p_column_identifier=>'N'
,p_column_label=>'Recib.'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91961205351768150)
,p_db_column_name=>'CANTIDAD_UB'
,p_display_order=>130
,p_column_identifier=>'O'
,p_column_label=>'Cantidad Ub'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93025385740401701)
,p_db_column_name=>'VOLUMEN'
,p_display_order=>140
,p_column_identifier=>'P'
,p_column_label=>'Volumen'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93025455412401702)
,p_db_column_name=>'COSTO'
,p_display_order=>150
,p_column_identifier=>'Q'
,p_column_label=>'Costo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93025513174401703)
,p_db_column_name=>'RID'
,p_display_order=>160
,p_column_identifier=>'R'
,p_column_label=>'Rid'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93025660887401704)
,p_db_column_name=>'EDITAR'
,p_display_order=>170
,p_column_identifier=>'S'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P339_SEQ_ID_EDITAR'',''#P_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93025712271401705)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>180
,p_column_identifier=>'T'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P339_SEQ_ID_ELIMINAR'',#P_ID#);'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93025837606401706)
,p_db_column_name=>'DESC_UNIDAD_MEDIDA'
,p_display_order=>190
,p_column_identifier=>'U'
,p_column_label=>'Unid. Medida'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93025968361401707)
,p_db_column_name=>'COD_REL_UM'
,p_display_order=>200
,p_column_identifier=>'V'
,p_column_label=>'Cod Rel Um'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(94440994745007830)
,p_db_column_name=>'ADD_OT'
,p_display_order=>220
,p_column_identifier=>'X'
,p_column_label=>'OT'
,p_column_link=>'javascript:$s(''P339_SEQ_AGREGAR_OT'',''#P_ID#'');'
,p_column_linktext=>'<span class="fa fa-plus-square fa-lg u-color-34-text " aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_static_id=>'COL_ADD_OT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(92274908722365734)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'922750'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDITAR:COD_ART_CORTO:COD_ARTICULO:DESCRIPCION:DESC_UNIDAD_MEDIDA:NRO_LOTE:CANTIDAD:IND_RECEPCION:ADD_OT:ELIMINAR'
,p_sort_column_1=>'P_ID'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(93028859485401736)
,p_plug_name=>unistr('N\00BA Orden de Trabajo')
,p_parent_plug_id=>wwv_flow_imp.id(83626066913059733)
,p_region_template_options=>'#DEFAULT#:margin-top-sm:margin-bottom-sm:margin-left-sm:margin-right-sm'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>60
,p_plug_grid_column_span=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 	ROWID RID,',
'    NRO_ORT,',
'    NULL EDITAR,',
'    NULL ELIMINAR,',
'    null VER',
'FROM ST_NOTAS_ENVIO_DET_ORT',
'WHERE COD_ARTICULO = (select C006 from APEX_COLLECTIONS',
'                        WHERE COLLECTION_NAME = ''COL_DETALLE'' ',
'                        AND SEQ_ID = :P339_AUX_NRO_OT )',
'AND ser_envio = :P339_C_SER_ENVIO',
'and nro_envio = :P339_C_NRO_ENVIO'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P339_AUX_NRO_OT,P339_C_SER_ENVIO,P339_C_NRO_ENVIO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('N\00BA Orden de Trabajo')
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
 p_id=>wwv_flow_imp.id(93028984034401737)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'NO SE ENCONTRARON ORDENES DE TRABAJO'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>93028984034401737
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93029061447401738)
,p_db_column_name=>'NRO_ORT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nro Ort'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(94438325335007804)
,p_db_column_name=>'EDITAR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P339_SEQ_ID_EDITAR_OT'',''#RID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(94438472047007805)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P339_SEQ_ID_ELIMINAR_OT'',''#RID#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(94438519271007806)
,p_db_column_name=>'RID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Rid'
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
 p_id=>wwv_flow_imp.id(152901516713462204)
,p_db_column_name=>'VER'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Ver'
,p_column_link=>'f?p=&APP_ID.:244:&SESSION.::&DEBUG.:Y,:P244_PARAM_NRO_OT:#NRO_ORT#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(93512153238867727)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'935122'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'VER:NRO_ORT:EDITAR:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(83626353765059736)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1090
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(91957595800768113)
,p_plug_name=>'DETALLE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1060
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(91958302179768121)
,p_plug_name=>'AGREGAR/EDITAR'
,p_parent_plug_id=>wwv_flow_imp.id(91957595800768113)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(93029225955401740)
,p_plug_name=>'AGREGAR/EDITAR OTR'
,p_parent_plug_id=>wwv_flow_imp.id(91957595800768113)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(91957246360768110)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(91956642808768104)
,p_button_name=>'bt_generar_remision'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--padLeft:t-Button--padRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generar Remision'
,p_button_redirect_url=>'f?p=&APP_ID.:178:&SESSION.::&DEBUG.::P178_P_ENVIO_PEND,P178_P_COD_VEHICULO,P178_P_COD_REPARTIDOR,P178_P_COD_ZONA,P178_P_COD_AYUDANTE_1,P178_P_COD_AYUDANTE_2:&P339_C_NRO_ENVIO.,&P339_C_COD_VEHICULO.,&P339_C_COD_REPARTIDOR.,&P339_C_COD_ZONA_REPARTO.,&P339_C_COD_AYUDANTE_1.,&P339_C_COD_AYUDANTE_2.'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(96803700817247001)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(91934107917639014)
,p_button_name=>'bt_cargar'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cargar Archivo'
,p_button_redirect_url=>'f?p=&APP_ID.:349:&SESSION.::&DEBUG.:349:P349_NUM_ENVIO,P349_SER_ENVIO,P349_TIP_ENVIO,P349_COD_EMPRESA:&P339_C_NRO_ENVIO.,&P339_C_SER_ENVIO.,&P339_C_TIP_ENVIO.,&P339_C_COD_EMPRESA.'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(91957063546768108)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(91934107917639014)
,p_button_name=>'BT_GENERAR_ENVIO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generar Envio'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(98368579312250027)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(91934107917639014)
,p_button_name=>'New'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(93029574343401743)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(93029225955401740)
,p_button_name=>'BT_CANCELAR_OT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(91958734581768125)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(91958302179768121)
,p_button_name=>'BT_CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(91958470166768122)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(91958302179768121)
,p_button_name=>'BT_ACEPTAR_CREAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(93029364851401741)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(93029225955401740)
,p_button_name=>'BT_ACEPTAR_CREAR_OT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(93029408088401742)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(93029225955401740)
,p_button_name=>'BT_ACEPTAR_EDITAR_OT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(91958592065768123)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(91958302179768121)
,p_button_name=>'BT_ACEPTAR_EDITAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(123912461112910539)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(83626066913059733)
,p_button_name=>'bt_VOLVER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--gapRight'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_image_alt=>'Volver'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:369:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'u-color-22 u-color-43-text'
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(94637386840632904)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(83626066913059733)
,p_button_name=>'bt_imprimir'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21 u-color-43-text'
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(94637407890632905)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(83626066913059733)
,p_button_name=>'BT_CONFIRMAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'EDIT'
,p_confirm_message=>'Desea guardar el registro?'
,p_button_css_classes=>'u-color-21 u-color-43-text'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(93026632286401714)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(91959384072768131)
,p_button_name=>'bt_agregar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(144678389612356739)
,p_branch_name=>'Go To Page 339'
,p_branch_action=>'f?p=&APP_ID.:339:&SESSION.::&DEBUG.::P339_P_NRO_COMPROBANTE:&P339_C_NRO_ENVIO.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(94637407890632905)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(806118466734294945)
,p_branch_name=>'GO_TO_PAGE_323'
,p_branch_action=>'f?p=&APP_ID.:323:&SESSION.::&DEBUG.::P323_P_ENVIO_PEND,P323_P_COD_VEHICULO,P323_P_COD_REPARTIDOR,P323_P_COD_ZONA,P323_P_COD_AYUDANTE_1,P323_P_COD_AYUDANTE_2,P323_CAB_COD_SUCURSAL_ENT,P323_COD_SUCURSAL,P323_CAB_COD_SUCURSAL,P323_CAB_TIPO_ENVIO,P323_CARGA_DETALLE:&P339_C_NRO_ENVIO.,&P339_C_COD_VEHICULO.,&P339_C_COD_REPARTIDOR.,&P339_C_COD_ZONA_REPARTO.,&P339_C_COD_AYUDANTE_1.,&P339_C_COD_AYUDANTE_2.,&P339_C_COD_SUCURSAL_ENT.,&P339_COD_SUCURSAL.,&P339_COD_SUCURSAL.,RE,N&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(91957063546768108)
,p_branch_sequence=>20
,p_branch_condition_type=>'ITEM_IS_NOT_NULL'
,p_branch_condition=>'P339_C_NRO_ENVIO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83626428098059737)
,p_name=>'P339_DERECHOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83626520346059738)
,p_name=>'P339_COD_UNIDAD_REL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83626687863059739)
,p_name=>'P339_VER_COSTO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83626744018059740)
,p_name=>'P339_DIV'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83626899331059741)
,p_name=>'P339_MULT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83626953483059742)
,p_name=>'P339_NOM_MODULO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83627035305059743)
,p_name=>'P339_COD_FORMA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83627116181059744)
,p_name=>'P339_COD_MODULO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83627254317059745)
,p_name=>'P339_COD_EMPRESA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83627364221059746)
,p_name=>'P339_NOM_EMPRESA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83627421588059747)
,p_name=>'P339_COD_SUCURSAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(91934107917639014)
,p_prompt=>'Sucursal de Salida'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSALES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_sucursal||'' - ''||descripcion L, ',
'         cod_sucursal V',
'    FROM sucursales ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
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
 p_id=>wwv_flow_imp.id(83627507649059748)
,p_name=>'P339_NOM_SUCURSAL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
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
 p_id=>wwv_flow_imp.id(83627611101059749)
,p_name=>'P339_COD_ARTICULO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83627763245059750)
,p_name=>'P339_NRO_LOTE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91932884156639001)
,p_name=>'P339_TIP_ENVIO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91932968135639002)
,p_name=>'P339_SER_ENVIO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91933057389639003)
,p_name=>'P339_COD_USUARIO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91933101975639004)
,p_name=>'P339_IND_MIGRADO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91933256262639005)
,p_name=>'P339_IMPRIMIR'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91933361797639006)
,p_name=>'P339_COD_IDIOMA'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91933463796639007)
,p_name=>'P339_CODSISMENU'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91933531534639008)
,p_name=>'P339_ANT_CANTIDAD'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91933631747639009)
,p_name=>'P339_LINEAS_MAX'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91933741091639010)
,p_name=>'P339_CARGA_SUCURSAL'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91933840896639011)
,p_name=>'P339_CARGA_SUCURSAL_ENT'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91933931836639012)
,p_name=>'P339_BORRA_DETALLE'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91934227170639015)
,p_name=>'P339_C_TIP_ENVIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(91934107917639014)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91934325149639016)
,p_name=>'P339_C_SER_ENVIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(91934107917639014)
,p_prompt=>'Ser Envio'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91934470297639017)
,p_name=>'P339_C_FECHA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(91934107917639014)
,p_prompt=>'Fecha'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91934562060639018)
,p_name=>'P339_C_COD_USUARIO_REC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(91956642808768104)
,p_prompt=>'Usuario'
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
 p_id=>wwv_flow_imp.id(91934670684639019)
,p_name=>'P339_C_OBS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(91934107917639014)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>15
,p_cHeight=>2
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91934885768639021)
,p_name=>'P339_C_COD_SUCURSAL_ENT'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(91934107917639014)
,p_prompt=>'Suc. de Entrada'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_sucursal ||'' - ''|| descripcion d, cod_sucursal r',
'from sucursales ',
'where cod_empresa = :P_COD_EMPRESA',
'and cod_sucursal <> :p_cod_sucursal ',
'and  estado=''S'' ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
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
 p_id=>wwv_flow_imp.id(91934926324639022)
,p_name=>'P339_C_COD_ZONA_REPARTO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(91934107917639014)
,p_prompt=>'Zona'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_zona_reparto ||'' - ''||descripcion d, cod_zona_reparto r',
'from rp_zonas_reparto ',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
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
 p_id=>wwv_flow_imp.id(91935066481639023)
,p_name=>'P339_C_COD_VEHICULO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(91934107917639014)
,p_prompt=>'Vehiculo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_vehiculo||'' - ''||descripcion d, cod_vehiculo r ',
'from rp_vehiculos ',
'where cod_empresa = :P_COD_EMPRESA',
'and nvl(Activo,''S'')=''S''',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(91935120155639024)
,p_name=>'P339_C_COD_REPARTIDOR'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(91934107917639014)
,p_prompt=>'Repartidor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_REPARTIDORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT R.COD_REPARTIDOR||''-''||LTRIM(RTRIM(NVL(P.NOMBRE, P.NOMB_FANTASIA))) NOMBRE ,',
'       R.COD_REPARTIDOR R',
'  FROM RP_REPARTIDORES R, PERSONAS P',
' WHERE R.COD_EMPRESA = :P_COD_EMPRESA',
'   AND R.COD_PERSONA = P.COD_PERSONA',
'   AND NVL(R.ACTIVO, ''S'') = ''S''',
' ORDER BY LTRIM(RTRIM(NVL(P.NOMBRE, P.NOMB_FANTASIA)))',
''))
,p_lov_display_null=>'YES'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91935207160639025)
,p_name=>'P339_C_COD_AYUDANTE_1'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(91934107917639014)
,p_prompt=>'Ayudante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.cod_empleado ||'' - ''|| nombre d, e.cod_empleado r ',
'from rh_empleados e, personas p ',
'where e.cod_empresa = :p_cod_empresa ',
'and e.cod_persona = p.cod_persona ',
'and nvl(e.activo, ''S'') = ''S'' ',
'AND COD_CARGO=''222''',
'order by nvl(nomb_fantasia, nombre)'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
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
 p_id=>wwv_flow_imp.id(91935359384639026)
,p_name=>'P339_C_COD_AYUDANTE_2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(91934107917639014)
,p_prompt=>'Ayudante'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.cod_empleado ||'' - ''|| nombre d, e.cod_empleado r',
'from rh_empleados e, personas p ',
'where e.cod_empresa = :p_cod_empresa',
'and e.cod_persona = p.cod_persona ',
'and nvl(e.activo, ''S'') = ''S'' ',
'AND COD_CARGO=''222''order by nvl(nomb_fantasia, nombre)'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
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
 p_id=>wwv_flow_imp.id(91935498951639027)
,p_name=>'P339_C_COD_USUARIO_RESERVA'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(91934107917639014)
,p_prompt=>'Responsable'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.cod_persona ||'' - ''||ltrim( p.nombre) nombre ,  e.cod_persona r',
'from rh_empleados e, personas p',
' where e.cod_empresa = :p_cod_empresa ',
'and nvl( p.es_fisica, ''N'' ) = ''S''',
' and e.cod_persona = p.cod_persona ',
'AND NVL(e.activo,''S'')=''S'' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
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
 p_id=>wwv_flow_imp.id(91935619839639029)
,p_name=>'P339_C_COD_MOTIVO_ENVIO'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(91934107917639014)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_motivo_envio||'' - ''||descripcion D, cod_motivo_envio R',
'from ST_MOTIVOS_traslado'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91935854801639031)
,p_name=>'P339_C_ESTADO'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(91934107917639014)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91935988419639032)
,p_name=>'P339_C_SER_ARTICULO'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(91934107917639014)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91936036833639033)
,p_name=>'P339_C_TOTAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(91956642808768104)
,p_prompt=>'Total'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91936111071639034)
,p_name=>'P339_C_HORA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(91956642808768104)
,p_prompt=>'Hora'
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
 p_id=>wwv_flow_imp.id(91936207012639035)
,p_name=>'P339_C_CARGA_DETALLE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(91934107917639014)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91936376628639036)
,p_name=>'P339_C_DEPOSITERO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(91956642808768104)
,p_prompt=>'Entrega Rep'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVDEPOSITERO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_usuario ||'' - '' ||p.nombre d, cod_usuario r',
'from usuarios u, personas p',
'where u.cod_empresa= :P_COD_EMPRESA',
'and u.cod_persona=p.cod_persona'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
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
 p_id=>wwv_flow_imp.id(91936468107639037)
,p_name=>'P339_C_TECNICO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(91956642808768104)
,p_prompt=>unistr('T\00E9cnico ')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_TECNICOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  t.cod_tecnico R, t.cod_tecnico ||'' - ''||p.nombre D',
'  from vt_tecnicos t, personas p ',
' where t.cod_empresa = :P_COD_EMPRESA',
'   and t.cod_persona = p.cod_persona ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
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
 p_id=>wwv_flow_imp.id(91936519478639038)
,p_name=>'P339_C_NRO_ENVIO_REC'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(91934107917639014)
,p_prompt=>unistr('Nro. Env\00EDo Recepci\00F3n')
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
 p_id=>wwv_flow_imp.id(91936778122639040)
,p_name=>'P339_C_IND_RESERVA'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(91934107917639014)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91936810900639041)
,p_name=>'P339_C_FEC_VENCIMIENTO'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(91934107917639014)
,p_prompt=>'Fecha limite'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_cMaxlength=>10
,p_tag_css_classes=>'allow_only_numbers'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
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
 p_id=>wwv_flow_imp.id(91936999488639042)
,p_name=>'P339_C_NRO_REMISION'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(91934107917639014)
,p_prompt=>unistr('Nro. Remisi\00F3n ')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91937044406639043)
,p_name=>'P339_C_DESC_USUARIO_RESERVA'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(91934107917639014)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91937102686639044)
,p_name=>'P339_C_TIP_COMPROBANTE_REF'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(91934107917639014)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91937215579639045)
,p_name=>'P339_C_IND_RECEPCION'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(91934107917639014)
,p_prompt=>'Verificado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91956389086768101)
,p_name=>'P339_C_VOLUMEN'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(91956642808768104)
,p_prompt=>'Volumen'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91956446676768102)
,p_name=>'P339_C_VALOR_CARGA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(91956642808768104)
,p_prompt=>'Valor'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91956751587768105)
,p_name=>'P339_C_NRO_ENVIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(91934107917639014)
,p_prompt=>'Nro Envio'
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
 p_id=>wwv_flow_imp.id(91958611531768124)
,p_name=>'P339_A_COD_CORTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(91958302179768121)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91959131778768129)
,p_name=>'P339_P_SER_COMPROBANTE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91959200447768130)
,p_name=>'P339_P_NRO_COMPROBANTE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91959829139768136)
,p_name=>'P339_SEQ_ID_EDITAR'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91959959795768137)
,p_name=>'P339_SEQ_ID_ELIMINAR'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(91960027507768138)
,p_name=>'P339_AUX_MSJ_CONTROL'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93026075907401708)
,p_name=>'P339_C_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(91934107917639014)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93026151375401709)
,p_name=>'P339_ACCION'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93026297901401710)
,p_name=>'P339_SEQ_ID'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93026743966401715)
,p_name=>'P339_A_COD_ARTICULO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(91958302179768121)
,p_prompt=>'Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS_STENVPE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  descripcion, cod_articulo, cod_art_corto, cod_origen_art',
'from st_articulos ',
'where cod_empresa = :P_cod_empresa ',
'and nvl( estado, ''S'' ) <> ''N''',
'AND ( COD_RUBRO = :P339_C_TIPO_RUBRO or :P339_C_TIPO_RUBRO=''ORT'')',
' order by descripcion'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P339_C_TIPO_RUBRO'
,p_ajax_items_to_submit=>'P339_C_TIPO_RUBRO'
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
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93026894449401716)
,p_name=>'P339_A_COD_UNI_MED'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(91958302179768121)
,p_prompt=>'Unidad Medida'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_RELACIONES_STENVPE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.cod_unidad_rel ||'' - ''||u.descripcion D, r.cod_unidad_rel R',
'from st_relaciones r, st_unidades_medida u ',
'where r.cod_relacion_um =:P339_cod_relacion_um ',
'and r.cod_unidad_rel = u.cod_unidad_medida ',
'order by descripcion'))
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
 p_id=>wwv_flow_imp.id(93026908076401717)
,p_name=>'P339_A_NRO_LOTE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(91958302179768121)
,p_prompt=>'Lote'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nro_lote d, nro_lote r',
'from st_lotes',
'where cod_empresa= :P_COD_EMPRESA',
'and cod_articulo= :P339_A_COD_ARTICULO'))
,p_lov_cascade_parent_items=>'P339_A_COD_ARTICULO'
,p_ajax_items_to_submit=>'P339_A_COD_ARTICULO'
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
 p_id=>wwv_flow_imp.id(93027033691401718)
,p_name=>'P339_A_CANTIDAD'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(91958302179768121)
,p_prompt=>'Cantidad'
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
 p_id=>wwv_flow_imp.id(93027174416401719)
,p_name=>'P339_A_IND_RECEPCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(91958302179768121)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93027891303401726)
,p_name=>'P339_COD_RELACION_UM'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93028536661401733)
,p_name=>'P339_AUX_NRO_OT'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93922212840645603)
,p_name=>'P339_A_ORIGEN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(91958302179768121)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93922327914645604)
,p_name=>'P339_A_CANTIDAD_UB'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(91958302179768121)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93922471113645605)
,p_name=>'P339_A_COD_RELACION_UM'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(91958302179768121)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93922518025645606)
,p_name=>'P339_A_VOLUMEN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(91958302179768121)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93922633737645607)
,p_name=>'P339_A_COSTO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(91958302179768121)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93922752540645608)
,p_name=>'P339_A_COSTO_UNIT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(91958302179768121)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93922810043645609)
,p_name=>'P339_A_VOL_UNIT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(91958302179768121)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93922985984645610)
,p_name=>'P339_A_VALOR_CARGA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(91958302179768121)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93923033770645611)
,p_name=>'P339_A_VOLUMEN_CARGA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(91958302179768121)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93925879662645639)
,p_name=>'P339_SEQ_ID_EDITAR_OT'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93925938074645640)
,p_name=>'P339_SEQ_ID_ELIMINAR_OT'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93926379041645644)
,p_name=>'P339_OT_TIP_ENVIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(93029225955401740)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93926410098645645)
,p_name=>'P339_OT_NRO_ENVIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(93029225955401740)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93926571226645646)
,p_name=>'P339_OT_COD_ARTICULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(93029225955401740)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93926617330645647)
,p_name=>'P339_OT_NRO_ORT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(93029225955401740)
,p_prompt=>'NRO. ORT'
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
 p_id=>wwv_flow_imp.id(93926703057645648)
,p_name=>'P339_OT_SER_ORT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(93029225955401740)
,p_prompt=>'SERIE OT'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_attribute_06=>'UPPER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93926820388645649)
,p_name=>'P339_OT_TIP_ORT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(93029225955401740)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93926930794645650)
,p_name=>'P339_OT_SER_ENVIO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(93029225955401740)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94440773482007828)
,p_name=>'P339_P_SER_OT'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94440872741007829)
,p_name=>'P339_P_TIP_OT'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94441071586007831)
,p_name=>'P339_SEQ_AGREGAR_OT'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94638334356632914)
,p_name=>'P339_AUX_ACCION_CAB'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94638465151632915)
,p_name=>'P339_C_ROW_ID'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
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
 p_id=>wwv_flow_imp.id(94639981014632930)
,p_name=>'P339_AUX_ART_EXISTENTE'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(83626353765059736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98368654193250028)
,p_name=>'P339_RUTA_ARCHIVO'
,p_item_sequence=>1050
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98368793086250029)
,p_name=>'P339_DEVOLUCION'
,p_item_sequence=>1040
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98368888604250030)
,p_name=>'P339_REPOSICION'
,p_item_sequence=>1020
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98368963113250031)
,p_name=>'P339_P_COD_SUC_ENTRADA'
,p_item_sequence=>1030
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98369062571250032)
,p_name=>'P339_P_COD_SUC_SAL'
,p_item_sequence=>1010
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98369193174250033)
,p_name=>'P339_P_FECHA'
,p_item_sequence=>1000
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(144677170992356727)
,p_name=>'P339_C_TIPO_RUBRO'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(91934107917639014)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC2:PRODUCTO;PR,REPUESTO;RE,ORDEN DE TRABAJO;ORT,MUESTRAS;MU,PUBLICIDAD;POP,HERRAMIENTAS SERVICIO;HE'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
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
 p_id=>wwv_flow_imp.id(152902269614462211)
,p_name=>'P339_C_SER_COMPROBANTE_REF'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(91934107917639014)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(152902318544462212)
,p_name=>'P339_C_NRO_COMPROBANTE_REF'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(91934107917639014)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(91957875746768116)
,p_name=>'da_bloquear_campos'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P339_C_NRO_ENVIO_REC'
,p_condition_element=>'P339_C_NRO_ENVIO_REC'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144678570491356741)
,p_event_id=>wwv_flow_imp.id(91957875746768116)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(94637407890632905)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144678624715356742)
,p_event_id=>wwv_flow_imp.id(91957875746768116)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(94637407890632905)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(91958844820768126)
,p_name=>'DA_CERRAR_REGION'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(91958734581768125)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(91958945268768127)
,p_event_id=>wwv_flow_imp.id(91958844820768126)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(91958302179768121)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93026387410401711)
,p_name=>'DA_CHECK'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P339_SEQ_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93026458216401712)
,p_event_id=>wwv_flow_imp.id(93026387410401711)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'STENVPE.PR_CHECK(P_SEQ_ID => :P339_SEQ_ID,',
'                  P_ACCION => :P339_ACCION,',
'                  P_COLECCION => ''COL_DETALLE'');',
'exception',
'when others then',
unistr('    RAISE_APPLICATION_ERROR(-20010,''Error al completar la transacci\00F3n, favor de contactarse con el equipo de soporte.'');'),
'END;',
''))
,p_attribute_02=>'P339_SEQ_ID,P339_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93027226170401720)
,p_name=>'da_abrir_agregar'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(93026632286401714)
,p_condition_element=>'P339_C_TIPO_RUBRO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144677293875356728)
,p_event_id=>wwv_flow_imp.id(93027226170401720)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Debe seleccionar el tipo de Envi\00F3 que desea realizar.')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(832975184142065716)
,p_event_id=>wwv_flow_imp.id(93027226170401720)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P339_C_TIPO_RUBRO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93027921212401727)
,p_event_id=>wwv_flow_imp.id(93027226170401720)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P339_A_COD_CORTO,P339_A_IND_RECEPCION,P339_A_COD_ARTICULO,P339_A_COD_UNI_MED,P339_A_NRO_LOTE,P339_A_CANTIDAD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144677338378356729)
,p_event_id=>wwv_flow_imp.id(93027226170401720)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P339_C_TIPO_RUBRO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93027319523401721)
,p_event_id=>wwv_flow_imp.id(93027226170401720)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(91958302179768121)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93027405595401722)
,p_event_id=>wwv_flow_imp.id(93027226170401720)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(91958470166768122)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93027517554401723)
,p_event_id=>wwv_flow_imp.id(93027226170401720)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(91958592065768123)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93922032509645601)
,p_event_id=>wwv_flow_imp.id(93027226170401720)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P339_A_COD_UNI_MED,P339_A_CANTIDAD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93027630566401724)
,p_name=>'DA_SET_COD_ART_CORT'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P339_A_COD_ARTICULO'
,p_condition_element=>'P339_A_COD_ARTICULO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93027703892401725)
,p_event_id=>wwv_flow_imp.id(93027630566401724)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'BEGIN',
'    select  cod_art_corto',
'    into :P339_A_COD_CORTO',
'    from st_articulos ',
'    where cod_empresa = :P339_COD_EMPRESA',
'    and nvl( estado, ''S'' ) <> ''N''',
'    and cod_articulo = :P339_A_COD_ARTICULO;',
'',
'    select  cod_relacion_um',
'    into  :P339_COD_RELACION_UM',
'    from st_articulos',
'    where cod_empresa = :P339_COD_EMPRESA',
'    and cod_articulo = :P339_A_COD_ARTICULO;',
'',
'   -- select r.cod_unidad_rel ||'' - ''||u.descripcion ',
'    --INTO :P339_A_COD_UNI_MED',
'   -- from st_relaciones r, st_unidades_medida u ',
'   -- where r.cod_relacion_um = V_cod_relacion_um',
'   -- and r.cod_unidad_rel = u.cod_unidad_medida ;',
'END;'))
,p_attribute_02=>'P339_A_COD_ARTICULO,P339_COD_EMPRESA'
,p_attribute_03=>'P339_A_COD_CORTO,P339_COD_RELACION_UM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93028029263401728)
,p_event_id=>wwv_flow_imp.id(93027630566401724)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P339_A_COD_UNI_MED'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93028268969401730)
,p_name=>'DA_SET_UM'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P339_A_COD_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93028356874401731)
,p_event_id=>wwv_flow_imp.id(93028268969401730)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P339_A_COD_UNI_MED'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P339_A_COD_ARTICULO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93028634493401734)
,p_name=>'DA_ABRIR_REGION_OT'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P339_AUX_NRO_OT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94639858696632929)
,p_event_id=>wwv_flow_imp.id(93028634493401734)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(93028859485401736)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94438109524007802)
,p_event_id=>wwv_flow_imp.id(93028634493401734)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_DEBUG.ERROR('' ''||:P339_AUX_NRO_OT);',
'NULL;'))
,p_attribute_02=>'P339_AUX_NRO_OT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93029649246401744)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(91958470166768122)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93030251987401750)
,p_event_id=>wwv_flow_imp.id(93029649246401744)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P339_AUX_MSJ_CONTROL := null;',
'FOR C IN (SELECT  ',
'                C006 COD_ARTICULO,',
'                C030 ACCION',
'            FROM APEX_COLLECTIONS',
'            WHERE COLLECTION_NAME = ''COL_DETALLE'') loop',
'                IF NVL(C.ACCION,''P'') <> ''B'' AND C.COD_ARTICULO = :P339_A_COD_ARTICULO  THEN ',
'                   raise_application_error(-20201,''El articulo que intenta ingresar ya esta cargado.'');',
'                END IF;',
'            END LOOP;',
'',
'if :P339_A_COD_ARTICULO is null then',
'    :P339_AUX_MSJ_CONTROL := ''Seleccione un articulo'';',
'  ',
'    elsif :P339_a_NRO_LOTE is null then',
'        :P339_AUX_MSJ_CONTROL:= ''Ingrese Nro. Lote'';',
'        elsif :P339_A_CANTIDAD is null then',
'        :P339_AUX_MSJ_CONTROL:= ''La cantidad ingresada es incorrecta'';',
'         else',
'         -- WHEN-VALIDATE-ITEM B_DETALLE NRO_LOTE',
'            declare',
'               vfec date ;',
'            begin',
'            :P339_AUX_MSJ_CONTROL := null;',
'               select fec_vencimiento',
'                  into vfec',
'                  from st_lotes',
'                  where cod_empresa  = :P339_C_COD_EMPRESA',
'                    and cod_articulo = :P339_A_COD_ARTICULO',
'                    and nro_lote     = :P339_A_NRO_LOTE ;',
'            exception',
'               when no_data_found then',
unistr('                   :P339_AUX_MSJ_CONTROL := ''No se encuentra n\00FAmero de lote en el art\00EDculo seleccionado.'';'),
unistr('                    raise_application_error(-20201,''No se encuentra n\00FAmero de lote en el art\00EDculo seleccionado.'');'),
'               when others then',
'                  :P339_AUX_MSJ_CONTROL :=  ''Error en la tabla de Lotes '';',
'                  raise_application_error(-20201,''Error en la tabla de Lotes ''||sqlerrm);',
'            end ;',
'',
'            if(:P339_AUX_MSJ_CONTROL is null)then',
'                   begin',
'                    STENVPE.pr_agregar_miembro_det(PI_COD_EMPRESA=> :P339_C_COD_EMPRESA,',
'                                            PI_TIP_ENVIO => :P339_C_TIP_ENVIO,',
'                                            PI_SER_ENVIO => :P339_C_SER_ENVIO,',
'                                            PI_NRO_ENVIO => :P339_C_NRO_ENVIO,',
'                                            PI_COD_ART_CORTO => :P339_A_COD_CORTO,',
'                                            PI_COD_ARTICULO => :P339_A_COD_ARTICULO,',
'                                            PI_COD_UNIDAD_MEDIDA => :P339_A_COD_UNI_MED,',
'                                            PI_NRO_LOTE => :P339_A_NRO_LOTE,',
'                                            PI_CANTIDAD => :P339_A_CANTIDAD,                       ',
'                                            PI_CANTIDAD_UB =>:P339_A_CANTIDAD_UB,',
'                                            PI_VOLUMEN =>:P339_A_VOLUMEN,',
'                                            PI_COSTO => :P339_A_COSTO);',
'',
'                    end;',
'            end if;',
'end if;'))
,p_attribute_02=>'P339_C_COD_EMPRESA,P339_A_COD_ARTICULO,P339_A_NRO_LOTE,P339_A_CANTIDAD'
,p_attribute_03=>'P339_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93923159771645612)
,p_event_id=>wwv_flow_imp.id(93029649246401744)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P339_AUX_MSJ_CONTROL.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P339_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93923254227645613)
,p_event_id=>wwv_flow_imp.id(93029649246401744)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(91958302179768121)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P339_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94637553700632906)
,p_event_id=>wwv_flow_imp.id(93029649246401744)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  select sum( c009 )',
'    into :P339_C_TOTAL',
'    from apex_collections',
'    where collection_name = ''COL_DETALLE''',
'     AND NVL(C030,''P'') <> ''B'';',
'EXCEPTION',
'  when others then	',
'    :P339_C_TOTAL:= 0;',
'END;',
'',
'SELECT  sum(TO_NUMBER(C012) )   ',
'    into  :P339_C_VOLUMEN',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COL_DETALLE''',
'    AND NVL(C030,''P'') <> ''B'';',
'',
'SELECT  sum(TO_NUMBER(C013) )   ',
'    into  :P339_C_VALOR_CARGA',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COL_DETALLE''',
'    AND NVL(C030,''P'') <> ''B'';'))
,p_attribute_03=>'P339_C_TOTAL,P339_C_VOLUMEN,P339_C_VALOR_CARGA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P339_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93923359273645614)
,p_event_id=>wwv_flow_imp.id(93029649246401744)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(91959384072768131)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P339_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93029835419401746)
,p_name=>'da_set_cantidad'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P339_A_CANTIDAD'
,p_condition_element=>'P339_A_CANTIDAD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93029963838401747)
,p_event_id=>wwv_flow_imp.id(93029835419401746)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P339_AUX_MSJ_CONTROL := null;',
'if :P339_a_cantidad <=0 then',
'    --:P339_AUX_MSJ_CONTROL :=''Debe ser cantidad positiva mayor a 0 para efectuar la operacion'';',
'    raise_application_error(-20201,''Debe ser cantidad positiva mayor a 0 para efectuar la operacion''||sqlerrm);',
'end if;',
'-- when validate item cantidad ',
'',
'declare',
'   vcan number( 12 ) ;',
'   vsup exception ;',
'begin',
'   select nvl( sum( cant_dispon ), 0 )',
'      into vcan',
'      from st_existencia_art',
'      where cod_empresa  = :P339_C_COD_EMPRESA',
'        and cod_sucursal = :P339_COD_SUCURSAL',
'        and cod_articulo = :P339_A_COD_ARTICULO',
'        and nro_lote     = :P339_A_NRO_LOTE ;',
'',
'   if nvl( :P339_A_CANTIDAD, 0 ) > vcan   then',
'      raise vsup ;',
'   end if ;',
'exception',
'  when vsup then',
unistr('     raise_application_error(-20201, ''La cantidad que intenta enviar del art\00EDculo '' || :P339_A_COD_ARTICULO ||'),
'                 '', supera la existencia en stock. '' || chr(13) ||',
'                 ''La existencia actual en esta sucursal es de '' || ltrim( to_char( nvl( vcan, 0 ) )) || ',
'                 '' unidad(es).'');',
'  when no_data_found then',
unistr('   raise_application_error(-20201, ''No se encuentra c\00F3digo de art\00EDculo o no posee existencia en la sucursal de salida.'');'),
'   when others then',
unistr('   raise_application_error(-20201, ''Error en la tabla de Existencia de Art\00EDculos '');'),
'end ;',
'',
':P339_A_CANTIDAD_ub := ( ( nvl( :P339_A_CANTIDAD, 0 ) *',
'                              nvl( :P339_mult, 0 ) ) /',
'                              nvl( :P339_div, 1 ) ) ;',
'',
'--:P339_C_TOTAL := nvl( :P339_C_TOTAL, 0 ) +',
'            --         nvl( :P339_A_CANTIDAD, 0 ) -',
'          --           nvl( :P339_ant_cantidad, 0 ) ;',
'',
':P339_ant_cantidad := :P339_A_CANTIDAD ;',
'',
':P339_A_COSTO := nvl((:P339_A_CANTIDAD * :P339_A_COSTO_UNIT),0) ;',
':P339_A_VOLUMEN := nvl((:P339_A_CANTIDAD * :P339_A_VOL_UNIT),0) ;',
'',
'',
'',
'declare',
'	vexiste number;',
'	venvio number;',
'	vstock number;',
'	begin ',
'          	BEGIN',
'  select max(c.nro_envio), nvl(sum(d.cantidad),0)',
'    into vexiste,venvio',
'    from st_notas_envio_cab_pend c, st_notas_envio_det_pend d',
'   where c.cod_empresa = :P339_C_COD_EMPRESA   ',
'   and c.cod_empresa=d.cod_empresa',
'   AND C.TIP_ENVIO=D.TIP_ENVIO',
'   AND C.SER_ENVIO=D.SER_ENVIO',
'   and c.nro_envio=d.nro_envio',
'   and c.cod_sucursal= :P339_cod_sucursal',
'   and d.cod_articulo=:P339_A_COD_ARTICULO ',
'  ',
'  ',
'   and c.nro_envio not in (select referencia',
'                          from st_notas_envio_CAB c1',
'                          where c1.cod_empresa = :P339_C_COD_EMPRESA',
'                           and C1.REFERENCIA = c.nro_envio',
'                                 AND ROWNUM=1)',
'                                 ',
' and c.nro_envio not in (select referencia',
'                          from ST_NOTAS_ENVIO_DET D1',
'                          where D1.cod_empresa =  :P339_C_COD_EMPRESA',
'                           and D1.REFERENCIA = c.nro_envio',
'                                 AND ROWNUM=1)                                        ;',
'                                 ',
'          	begin',
'          		select sum(cant_dispon)',
'          		 into vstock',
'          		from  st_EXISTENCIA_ART E',
'          		where cod_empresa=:P339_C_COD_EMPRESA',
'          		 and cod_sucursal=  :P339_cod_sucursal ',
'   							and cod_articulo=:P339_A_COD_ARTICULO;',
'          	exception',
'          		when others then ',
'          		vstock:=0;',
'          	end ;',
'          ',
'          	if nvl(vstock,0) >= nvl(venvio,0)+nvl(:P339_A_CANTIDAD,0) then',
'          		vexiste:=null;',
'          		end if;',
'                                 ',
'EXCEPTION',
'  when others then	',
'   vexiste:=NULL;',
'END;',
'if vexiste is not null then ',
' raise_application_error(-20201, ''El articulo. '' ||:P339_A_COD_ARTICULO',
'                         || ''   Se encuentra pendiente en el pedido de traslado Nro. '' ||vexiste);',
'	 ',
'end if;',
'end;',
''))
,p_attribute_02=>'P339_A_CANTIDAD,P339_A_NRO_LOTE,P339_A_COD_ARTICULO,P339_COD_SUCURSAL,P339_C_COD_EMPRESA,P339_MULT,P339_DIV,P339_ANT_CANTIDAD,P339_A_COSTO_UNIT,P339_A_VOL_UNIT,P339_C_TOTAL'
,p_attribute_03=>'P339_AUX_MSJ_CONTROL,P339_A_CANTIDAD_UB,P339_C_TOTAL,P339_ANT_CANTIDAD,P339_A_COSTO,P339_A_VOLUMEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93030015172401748)
,p_name=>'da_cambiar_lote'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P339_A_NRO_LOTE'
,p_condition_element=>'P339_A_NRO_LOTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93922140812645602)
,p_event_id=>wwv_flow_imp.id(93030015172401748)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P339_A_CANTIDAD'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P339_A_NRO_LOTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93923466874645615)
,p_name=>'DA_ES_NUMERO'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P339_A_NRO_LOTE,P339_A_CANTIDAD,P339_OT_NRO_ORT'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93923514921645616)
,p_event_id=>wwv_flow_imp.id(93923466874645615)
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
 p_id=>wwv_flow_imp.id(93923981749645620)
,p_name=>'DA_SET_COD_ART_CORTO'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P339_A_COD_CORTO'
,p_condition_element=>'P339_A_COD_CORTO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93924049576645621)
,p_event_id=>wwv_flow_imp.id(93923981749645620)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P339_A_COD_CORTO is not null then ',
'',
'declare',
'   vst varchar2( 1 ) ;',
'   vcp number( 20, 4 ) ;',
'   ver exception ;',
'	',
'	',
'begin',
'   select   a.cod_origen_art, a.ind_maneja_stock, a.cod_relacion_um, r.cod_unidad_rel, a.costo_prom, (a.largo_cm/100*a.ancho_cm/100*a.alto_cm/100)',
'      into  :P339_A_ORIGEN, vst, :P339_A_COD_RELACION_UM, :P339_A_COD_UNI_MED,',
'     :P339_A_COSTO_UNIT , :P339_A_VOL_UNIT',
'      from st_articulos a, st_relaciones r',
'      where a.cod_empresa     = :P339_C_COD_EMPRESA',
'        and a.cod_art_corto    = :P339_A_COD_CORTO',
'        and a.cod_relacion_um = r.cod_relacion_um(+)',
'        and r.por_defecto(+)  = ''S'' ',
'        and a.cod_rubro <> ''MO''',
'      /*  AND COD_RUBRO = :B_CABECERA.TIPO_ENVIO*/;',
'',
'   if vst = ''N'' then',
unistr('      raise_application_error(-20201,''El art\00EDculo seleccionado no maneja stock.''||sqlerrm);'),
'     ',
'      raise ver ;',
'   end if ;',
'exception',
'   when no_data_found then',
'      ',
'       :P339_COD_ARTICULO := null ;',
unistr('       raise_application_error(-20201,''No se encuentra el c\00F3digo de art\00EDculo.''||sqlerrm);'),
'       ',
'  when others then',
unistr('      raise_application_error(-20201,''Error en la tabla de Art\00EDculos ''||sqlerrm);'),
'     ',
'end ;',
'',
':P339_MULT := 1 ;',
':P339_DIV  := 1 ;',
':P339_A_CANTIDAD_UB := ( ( nvl( :P339_A_CANTIDAD, 0 ) * nvl( :P339_MULT, 0 ) ) / nvl( :P339_DIV, 0 ) ) ;',
'/*',
'declare',
' vcant number;',
' vsin_stock exception ;',
'BEGIN',
' select sum(cant_dispon)',
'   into vcant',
'   from st_existencia_art',
'  where cod_empresa = :variables.cod_empresa',
'    and cod_sucursal = :b_cabecera.cod_sucursal',
'    and cod_articulo = :b_detalle.cod_articulo;',
'  if nvl(vcant,0) <= 0 then',
'     raise vsin_stock ;',
'  end if ;',
'  exception',
'  when others then',
'        mensaje_ex( ''No existe stock para este articulo.'', 2 ) ;',
'        raise form_trigger_failure ;',
'end;*/',
'end if;'))
,p_attribute_02=>'P339_A_COD_CORTO,P339_C_COD_EMPRESA'
,p_attribute_03=>'P339_A_ORIGEN,P339_A_COD_RELACION_UM,P339_A_COD_UNI_MED,P339_A_COSTO_UNIT,P339_A_VOL_UNIT,P339_MULT,P339_DIV,P339_A_CANTIDAD_UB'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93924299719645623)
,p_name=>'DA_GUARDAR_EDITAR'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(91958592065768123)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93924409608645625)
,p_event_id=>wwv_flow_imp.id(93924299719645623)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P339_AUX_MSJ_CONTROL := null;',
'',
'if :P339_A_COD_ARTICULO is null then',
'    :P339_AUX_MSJ_CONTROL := ''Seleccione un articulo'';',
'    elsif :P339_a_NRO_LOTE is null then',
'        :P339_AUX_MSJ_CONTROL:= ''Ingrese Nro. Lote'';',
'        elsif :P339_A_CANTIDAD is null then',
'        :P339_AUX_MSJ_CONTROL:= ''La cantidad ingresada es incorrecta'';',
'         else',
'         -- WHEN-VALIDATE-ITEM B_DETALLE NRO_LOTE',
'            declare',
'               vfec date ;',
'            begin',
'            :P339_AUX_MSJ_CONTROL := null;',
'               select fec_vencimiento',
'                  into vfec',
'                  from st_lotes',
'                  where cod_empresa  = :P339_C_COD_EMPRESA',
'                    and cod_articulo = :P339_A_COD_ARTICULO',
'                    and nro_lote     = :P339_A_NRO_LOTE ;',
'            exception',
'               when no_data_found then',
unistr('                   :P339_AUX_MSJ_CONTROL := ''No se encuentra n\00FAmero de lote en el art\00EDculo seleccionado.'';'),
unistr('                   raise_application_error(-20201,''No se encuentra n\00FAmero de lote en el art\00EDculo seleccionado.'');'),
'               when others then',
'                  :P339_AUX_MSJ_CONTROL :=  ''Error en la tabla de Lotes '';',
'                  raise_application_error(-20201,''Error en la tabla de Lotes ''||sqlerrm);',
'            end ;',
'',
'            if(:P339_AUX_MSJ_CONTROL is null)then',
'                   begin',
'                   STENVPE.pr_modificar_miembro_det(PI_SEQ_ID_EDITAR => :P339_SEQ_ID_EDITAR,',
'                                            PI_COD_EMPRESA=> :P339_C_COD_EMPRESA,',
'                                            PI_TIP_ENVIO => :P339_C_TIP_ENVIO,',
'                                            PI_SER_ENVIO => :P339_C_SER_ENVIO,',
'                                            PI_NRO_ENVIO => :P339_C_NRO_ENVIO,',
'                                            PI_COD_ART_CORTO => :P339_A_COD_CORTO,',
'                                            PI_COD_ARTICULO => :P339_A_COD_ARTICULO,',
'                                            PI_COD_UNIDAD_MEDIDA => :P339_A_COD_UNI_MED,',
'                                            PI_NRO_LOTE => :P339_A_NRO_LOTE,',
'                                            PI_CANTIDAD => :P339_A_CANTIDAD,                       ',
'                                            PI_CANTIDAD_UB =>:P339_A_CANTIDAD_UB,',
'                                            PI_VOLUMEN =>:P339_A_VOLUMEN,',
'                                            PI_COSTO => :P339_A_COSTO ) ;',
'',
'                    end;',
'            end if;',
'end if;',
'',
'',
'SELECT  sum(TO_NUMBER(C012) )   ',
'    into  :P339_C_VOLUMEN',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COL_DETALLE''',
'    AND NVL(C030,''P'') <> ''B'';',
'',
'SELECT  sum(TO_NUMBER(C013) )   ',
'    into  :P339_C_VALOR_CARGA',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COL_DETALLE''',
'    AND NVL(C030,''P'') <> ''B'';',
'',
''))
,p_attribute_02=>'P339_SEQ_ID_EDITAR,P339_C_COD_EMPRESA,P339_A_COD_ARTICULO,P339_A_NRO_LOTE,P339_A_CANTIDAD'
,p_attribute_03=>'P339_AUX_MSJ_CONTROL,P339_C_VOLUMEN,P339_C_VALOR_CARGA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93924585217645626)
,p_event_id=>wwv_flow_imp.id(93924299719645623)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P339_AUX_MSJ_CONTROL.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P339_AUX_MSJ_CONTROL'
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
 p_id=>wwv_flow_imp.id(93924657627645627)
,p_event_id=>wwv_flow_imp.id(93924299719645623)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(91958302179768121)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P339_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94637652934632907)
,p_event_id=>wwv_flow_imp.id(93924299719645623)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  select sum( c009 )',
'    into :P339_C_TOTAL',
'    from apex_collections',
'    where collection_name = ''COL_DETALLE''',
'     AND NVL(C030,''P'') <> ''B'';',
'   ',
'EXCEPTION',
'  when others then	',
'    :P339_C_TOTAL:= 0;',
'END;'))
,p_attribute_03=>'P339_C_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P339_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93924741240645628)
,p_event_id=>wwv_flow_imp.id(93924299719645623)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(91959384072768131)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P339_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93924849761645629)
,p_name=>'DA_ABRIR_EDITAR'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P339_SEQ_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93925033264645631)
,p_event_id=>wwv_flow_imp.id(93924849761645629)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT ',
'     C005 COD_ART_CORTO,',
'     C006 COD_ARTICULO,',
'     C007 COD_UNIDAD_MEDIDA,',
'     C008 NRO_LOTE,',
'     C009 CANTIDAD,',
'     C010 IND_RECEPCION     ',
'      ',
'    INTO ',
'    :P339_A_COD_CORTO,',
'    :P339_A_COD_ARTICULO,',
'    :P339_A_COD_UNI_MED,',
'    :P339_A_NRO_LOTE,',
'    :P339_A_CANTIDAD,',
'    :P339_A_IND_RECEPCION',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COL_DETALLE''',
'    AND SEQ_ID = :P339_SEQ_ID_EDITAR;',
'END;'))
,p_attribute_02=>'P339_SEQ_ID_EDITAR'
,p_attribute_03=>'P339_A_COD_CORTO,P339_A_COD_ARTICULO,P339_A_COD_UNI_MED,P339_A_NRO_LOTE,P339_A_CANTIDAD,P339_A_IND_RECEPCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93924970732645630)
,p_event_id=>wwv_flow_imp.id(93924849761645629)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(91958302179768121)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93925613825645637)
,p_event_id=>wwv_flow_imp.id(93924849761645629)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(91958592065768123)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93925712298645638)
,p_event_id=>wwv_flow_imp.id(93924849761645629)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(91958470166768122)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93925120226645632)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P339_SEQ_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93925249805645633)
,p_event_id=>wwv_flow_imp.id(93925120226645632)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar?')
,p_attribute_02=>'ELIMINAR'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93925399191645634)
,p_event_id=>wwv_flow_imp.id(93925120226645632)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    STENVPE.pr_borrar_miembro_collection( PI_SEQ_ID_ELIMINAR => :P339_SEQ_ID_ELIMINAR);',
'    SELECT  sum(TO_NUMBER(C012) )   ',
'    into  :P339_C_VOLUMEN',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COL_DETALLE''',
'    AND NVL(C030,''P'') <> ''B'';',
'',
'    SELECT  sum(TO_NUMBER(C013) )   ',
'    into  :P339_C_VALOR_CARGA',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COL_DETALLE''',
'    AND NVL(C030,''P'') <> ''B'';',
'',
'end;',
'BEGIN',
'  select sum( c009 )',
'    into :P339_C_TOTAL',
'    from apex_collections',
'    where collection_name = ''COL_DETALLE''',
'    AND NVL(C030,''P'') <> ''B'';',
'   ',
'EXCEPTION',
'  when others then	',
'    :P339_C_TOTAL:= 0;',
'END;',
''))
,p_attribute_02=>'P339_SEQ_ID_ELIMINAR'
,p_attribute_03=>'P339_C_TOTAL,P339_C_VOLUMEN,P339_C_VALOR_CARGA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93925499315645635)
,p_event_id=>wwv_flow_imp.id(93925120226645632)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(91959384072768131)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93926012967645641)
,p_name=>'da_cerrar_region'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(93029574343401743)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93926233893645643)
,p_event_id=>wwv_flow_imp.id(93926012967645641)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(93029225955401740)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(94438608027007807)
,p_name=>'DA_EDITAR_OT'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P339_SEQ_ID_EDITAR_OT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94438773180007808)
,p_event_id=>wwv_flow_imp.id(94438608027007807)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(93029408088401742)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94438888251007809)
,p_event_id=>wwv_flow_imp.id(94438608027007807)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(93029364851401741)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94438995770007810)
,p_event_id=>wwv_flow_imp.id(94438608027007807)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  ',
'    NRO_ORT',
'INTO ',
'    :P339_OT_NRO_ORT',
'  ',
'FROM ST_NOTAS_ENVIO_DET_ORT',
'WHERE ROWID = :P339_SEQ_ID_EDITAR_OT;'))
,p_attribute_02=>'P339_SEQ_ID_EDITAR_OT'
,p_attribute_03=>'P339_OT_NRO_ORT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94439074081007811)
,p_event_id=>wwv_flow_imp.id(94438608027007807)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(93029225955401740)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(94439147302007812)
,p_name=>'da_editar_ot'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(93029408088401742)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94439250347007813)
,p_event_id=>wwv_flow_imp.id(94439147302007812)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    UPDATE  ST_NOTAS_ENVIO_DET_ORT',
'    SET 	NRO_ORT = :P339_OT_NRO_ORT           ',
'    WHERE ROWID = :P339_SEQ_ID_EDITAR_OT;',
'',
'    EXCEPTION',
'',
'    WHEN NO_DATA_FOUND THEN',
'        RAISE_APPLICATION_ERROR (-20111,''NO EXISTE LA ORDEN DE TRABAJO'' || SQLERRM);',
'',
'    WHEN OTHERS THEN',
'        raise_application_error(-20201,''EL REGISTRO QUE INTENTA INGRESAR YA EXISTE'');',
'        APEX_DEBUG.ERROR (SQLERRM);',
'end;'))
,p_attribute_02=>'P339_OT_NRO_ORT,P339_SEQ_ID_EDITAR_OT,P339_OT_SER_ORT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94439419102007815)
,p_event_id=>wwv_flow_imp.id(94439147302007812)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(93029225955401740)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94439373019007814)
,p_event_id=>wwv_flow_imp.id(94439147302007812)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(93028859485401736)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(94439544814007816)
,p_name=>'da_eliminar_ot'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P339_SEQ_ID_ELIMINAR_OT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94439610653007817)
,p_event_id=>wwv_flow_imp.id(94439544814007816)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea Eliminar?')
,p_attribute_02=>'ELIMINAR'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94439764511007818)
,p_event_id=>wwv_flow_imp.id(94439544814007816)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    DELETE FROM ST_NOTAS_ENVIO_DET_ORT     ',
'    WHERE ROWID = :P339_SEQ_ID_ELIMINAR_OT ;',
' EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        RAISE_APPLICATION_ERROR (-20111,''NO EXISTE LA ORDEN DE TRABAJO'' || SQLERRM);',
'',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (SQLERRM);',
'END;',
''))
,p_attribute_02=>'P339_SEQ_ID_ELIMINAR_OT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94439831179007819)
,p_event_id=>wwv_flow_imp.id(94439544814007816)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(93028859485401736)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(94440558326007826)
,p_name=>'DA_GUARDAR_OT'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(93029364851401741)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94440657436007827)
,p_event_id=>wwv_flow_imp.id(94440558326007826)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P339_AUX_MSJ_CONTROL := NULL;',
'IF :P339_OT_NRO_ORT IS NULL THEN',
'    :P339_AUX_MSJ_CONTROL := ''INGRESE EL NRO. DE ORDEN'';',
'else',
'     :P339_AUX_MSJ_CONTROL := NULL;',
'    DECLARE',
'        VERROR EXCEPTION;',
'        DUMMY VARCHAR2(1);',
'    BEGIN --PRE-INSERT   ',
'          BEGIN            ',
'                select DISTINCT ''1''',
'                INTO DUMMY ',
'                from vt_ordenes_trabajo ot,',
'                     ca_conformidad sc',
'                where ot.cod_empresa = :P_COD_EMPRESA',
'                and   ot.cod_empresa = sc.cod_empresa',
'                and   ot.nro_sol_conf = sc.nro_solicitud',
'                and   sc.ser_solicitud = ''A''',
'                and   sc.tipo_solicitud = ''SNC''',
'                and   sc.estado = ''PROCESADO''',
'                and   ot.ser_comprobante = :P339_P_SER_OT',
'                and   ot.nro_comprobante = :P339_OT_NRO_ORT',
'                and   ot.tip_comprobante =''ORT'';',
'          EXCEPTION ',
'            WHEN NO_DATA_FOUND THEN',
'                RAISE VERROR;',
'            WHEN OTHERS THEN',
'                NULL;',
'          END; ',
'                    insert into ST_NOTAS_ENVIO_DET_ORT(COD_EMPRESA,',
'                                                        TIP_ENVIO,',
'                                                        NRO_ENVIO,',
'                                                        COD_ARTICULO,',
'                                                        NRO_ORT,',
'                                                        SER_ORT,',
'                                                        TIP_ORT	,',
'                                                        SER_ENVIO,	',
'                                                        FECHA_CARGA',
'                                                    )values(',
'                                                        :P339_COD_EMPRESA,',
'                                                        ''ENV'',--TIP_ENVIO',
'                                                        TO_NUMBER(:P339_C_NRO_ENVIO),',
'                                                        :P339_OT_COD_ARTICULO,',
'                                                        TO_NUMBER(:P339_OT_NRO_ORT),',
'                                                        nvl(:P339_P_SER_OT,''A''),',
'                                                        nvl(:P339_P_TIP_OT,''ORT''),',
'                                                        ''A'', --SER_ENVIO',
'                                                        sysdate',
'                                                    );',
'',
' EXCEPTION',
'    WHEN VERROR THEN',
'        :P339_AUX_MSJ_CONTROL:=''LA OT QUE INTENTA REGISTRAR NO CUENTA CON UNA SNC O LA MISMA NO ESTA PROCESADA.'';',
'        ----raise_application_error(-20201,''LA OT QUE INTENTA REGISTRAR NO CUENTA CON UNA SNC O LA MISMA NO ESTA PROCESADA.'');',
'    WHEN OTHERS THEN',
'        :P339_AUX_MSJ_CONTROL:=''EL REGISTRO QUE INTENTA INGRESAR YA EXISTE'';',
'        /*',
'        raise_application_error(-20201,''EL REGISTRO QUE INTENTA INGRESAR YA EXISTE'');',
'        APEX_DEBUG.ERROR (SQLERRM);',
'        */',
'    END;',
'end if;'))
,p_attribute_02=>'P339_COD_EMPRESA,P339_C_NRO_ENVIO,P339_OT_NRO_ORT,P339_P_SER_OT,P339_P_TIP_OT,P339_OT_COD_ARTICULO,P339_OT_SER_ORT'
,p_attribute_03=>'P339_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94441552246007836)
,p_event_id=>wwv_flow_imp.id(94440558326007826)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P339_AUX_MSJ_CONTROL.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P339_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94441625707007837)
,p_event_id=>wwv_flow_imp.id(94440558326007826)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('N\00DAMERO DE ORDEN DE TRABAJO A\00D1ADIDO')
,p_attribute_02=>unistr('\00C9XITO')
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P339_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94442866266007849)
,p_event_id=>wwv_flow_imp.id(94440558326007826)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(93029225955401740)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P339_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94442901244007850)
,p_event_id=>wwv_flow_imp.id(94440558326007826)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(93028859485401736)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P339_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(94441132337007832)
,p_name=>'DA_ABRIR_CREAR'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P339_SEQ_AGREGAR_OT'
,p_condition_element=>'P339_C_TIPO_RUBRO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'ORT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94440419794007825)
,p_event_id=>wwv_flow_imp.id(94441132337007832)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P339_OT_NRO_ORT,P339_OT_SER_ORT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94440103769007822)
,p_event_id=>wwv_flow_imp.id(94441132337007832)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(93029364851401741)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94440290661007823)
,p_event_id=>wwv_flow_imp.id(94441132337007832)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(93029408088401742)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94440344515007824)
,p_event_id=>wwv_flow_imp.id(94441132337007832)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(93029225955401740)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94441432504007835)
,p_event_id=>wwv_flow_imp.id(94441132337007832)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SEQ_ID,',
'     C006 ',
'INTO ',
' :P339_AUX_NRO_OT,',
' :P339_OT_COD_ARTICULO',
'from APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''COL_DETALLE''',
'AND SEQ_ID = :P339_SEQ_AGREGAR_OT ;'))
,p_attribute_02=>'P339_SEQ_AGREGAR_OT'
,p_attribute_03=>'P339_OT_COD_ARTICULO,P339_AUX_NRO_OT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(96804686082247010)
,p_name=>'DA_ACTUALIZAR_DETALLE'
,p_event_sequence=>260
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(96803700817247001)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(96804734819247011)
,p_event_id=>wwv_flow_imp.id(96804686082247010)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(91959384072768131)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(94640096166632931)
,p_event_id=>wwv_flow_imp.id(96804686082247010)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    STENVPE.pr_borrar_miembro_collection( PI_SEQ_ID_ELIMINAR => :P339_SEQ_ID_ELIMINAR);',
'    SELECT  sum(TO_NUMBER(C012) )   ',
'    into  :P339_C_VOLUMEN',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COL_DETALLE''',
'    AND NVL(C030,''P'') <> ''B'';',
'',
'    SELECT  sum(TO_NUMBER(C013) )   ',
'    into  :P339_C_VALOR_CARGA',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COL_DETALLE''',
'    AND NVL(C030,''P'') <> ''B'';',
'',
'end;',
'BEGIN',
'  select sum( c009 )',
'    into :P339_C_TOTAL',
'    from apex_collections',
'    where collection_name = ''COL_DETALLE''',
'    AND NVL(C030,''P'') <> ''B'';',
'   ',
'EXCEPTION',
'  when others then	',
'    :P339_C_TOTAL:= 0;',
'END;'))
,p_attribute_03=>'P339_C_VOLUMEN,P339_C_VALOR_CARGA,P339_C_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(98368328710250025)
,p_name=>'New'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(94637386840632904)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(98368413476250026)
,p_event_id=>wwv_flow_imp.id(98368328710250025)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'doDescarga(apex.item(''P_COD_EMPRESA'').getValue(),apex.item(''P339_P_COD_SUC_ENTRADA'').getValue(),apex.item(''P339_P_COD_SUC_SAL'').getValue(), apex.item(''P339_A_COSTO'').getValue(), ',
'           apex.item(''P339_DEVOLUCION'').getValue(),apex.item(''P339_P_FECHA'').getValue(), apex.item(''P339_C_FECHA'').getValue(), ',
'           apex.item(''P339_C_NRO_ENVIO'').getValue(), apex.item(''P339_REPOSICION'').getValue(), apex.item(''P339_RUTA_ARCHIVO'').getValue(), apex.item(''P339_SER_ENVIO'').getValue())',
'',
''))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(842569376461550044)
,p_event_id=>wwv_flow_imp.id(98368328710250025)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var comprobante = document.getElementById("P339_C_NRO_ENVIO").value; ',
'var params = []',
'var empresa = apex.item("P_COD_EMPRESA").getValue();',
'//var tip_comprobante =''PED'';',
'var ser_comprobante = apex.item("P339_C_SER_ENVIO").getValue();',
'var nro_comprobante = apex.item("P339_C_NRO_ENVIO").getValue();',
' ',
'var vfacnom = "STPEDENVIO";',
'params.push({ name: ''P_COD_EMPRESA'', value: empresa})',
'params.push({ name: ''P_SER_ENVIO'', value: ser_comprobante}) ',
'params.push({ name: ''P_NRO_ENVIO'', value: nro_comprobante}) ',
'',
'createReportUrl(vfacnom, params)',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(144678797194356743)
,p_name=>'da_load_page'
,p_event_sequence=>290
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144678840901356744)
,p_event_id=>wwv_flow_imp.id(144678797194356743)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'document.getElementById("P339_C_NRO_ENVIO").readOnly=true;',
'document.getElementById("P339_C_SER_ENVIO").readOnly=true;',
'document.getElementById("P339_C_FECHA").readOnly=true;',
'document.getElementById("P339_C_COD_USUARIO_REC").readOnly=true;',
'',
'document.getElementById("P339_C_HORA").readOnly=true;',
'document.getElementById("P339_C_VOLUMEN").readOnly=true;',
'document.getElementById("P339_C_FECHA").readOnly=true;',
'document.getElementById("P339_C_VALOR_CARGA").readOnly=true;',
'document.getElementById("P339_C_TOTAL").readOnly=true;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152903502701462224)
,p_event_id=>wwv_flow_imp.id(144678797194356743)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF NVL(:P339_C_TIP_COMPROBANTE_REF,''NN'') = ''FTC''  AND :P339_P_NRO_COMPROBANTE IS NULL THEN',
'        DECLARE',
'            VCODART VARCHAR2(50);',
'            VCODCOR VARCHAR2(50);',
'            VCOSTO NUMBER;',
'        BEGIN',
'        ',
'            :P339_C_TIPO_RUBRO:=''PR'';',
'',
'                select cod_articulo, COD_ART_CORTO, NVL(COSTO,0)',
'                INTO VCODART, VCODCOR, VCOSTO',
'                from st_ficha_tecnica ',
'                where cod_empresa=:P_COD_EMPRESA',
'                and   nro_ficha=:P339_C_NRO_COMPROBANTE_REF;',
'              begin',
'                    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_DETALLE'');',
'                    STENVPE.pr_agregar_miembro_det(PI_COD_EMPRESA=> :P_COD_EMPRESA,',
'                                            PI_TIP_ENVIO => :P339_C_TIP_ENVIO,',
'                                            PI_SER_ENVIO => :P339_C_SER_ENVIO,',
'                                            PI_NRO_ENVIO => :P339_C_NRO_ENVIO,',
'                                            PI_COD_ART_CORTO =>VCODCOR,',
'                                            PI_COD_ARTICULO => VCODART,',
'                                            PI_COD_UNIDAD_MEDIDA => ''UN'',',
'                                            PI_NRO_LOTE => 1,',
'                                            PI_CANTIDAD => 1,                       ',
'                                            PI_CANTIDAD_UB =>1,',
'                                            PI_VOLUMEN =>0,',
'                                            PI_COSTO => VCOSTO);',
'',
'                    end;',
'',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                NULL;',
'        END;',
'    END IF;'))
,p_attribute_02=>'P339_C_TIP_COMPROBANTE_REF,P339_P_NRO_COMPROBANTE,P339_C_NRO_COMPROBANTE_REF'
,p_attribute_03=>'P339_C_TIPO_RUBRO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152902850890462217)
,p_event_id=>wwv_flow_imp.id(144678797194356743)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(91959384072768131)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(152901661675462205)
,p_name=>'da_btn_ot'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P339_C_TIPO_RUBRO'
,p_condition_element=>'P339_C_TIPO_RUBRO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'ORT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152901784146462206)
,p_event_id=>wwv_flow_imp.id(152901661675462205)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''td[headers="COL_ADD_OT"]'').removeClass(''tipo-rub-ico'');',
'',
'/*',
'$(''#REPORTE_DET tr td[headers="COL_ADD_OT"]'').addClass(''tipo-rub-ico'');',
'style="pointer-events:none"',
'*/'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152901896634462207)
,p_event_id=>wwv_flow_imp.id(152901661675462205)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*$(''#REPORTE_DET tr td[headers="COL_ADD_OT"]'').removeClass(''tipo-rub-ico'');*/',
'$(''td[headers="COL_ADD_OT"]'').addClass(''tipo-rub-ico'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(152902947491462218)
,p_name=>'DA_CLASE_ORT'
,p_event_sequence=>310
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(91959384072768131)
,p_condition_element=>'P339_C_TIPO_RUBRO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'ORT'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152903190864462220)
,p_event_id=>wwv_flow_imp.id(152902947491462218)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''td[headers="COL_ADD_OT"]'').removeClass(''tipo-rub-ico'');',
' '))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(152903234195462221)
,p_event_id=>wwv_flow_imp.id(152902947491462218)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''td[headers="COL_ADD_OT"]'').addClass(''tipo-rub-ico'');'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(144679031085356746)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'da_valida_det'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    dummy varchar2(1);',
'begin',
'    SELECT  distinct ''1''',
'    into dummy',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COL_DETALLE''',
'    AND   NVL(C030,''P'') <> ''B'';',
'',
'exception',
'    when no_data_found then',
'         raise_application_error(-20000, ''Debe ingresar detalles'');',
'    when others then  ',
'    raise_application_error(-20000,   sqlerrm );',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(94638830480632919)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_CONFIRMAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    STENVPE.pr_confirmar_cambios(PI_ACCION_CAB => :P339_AUX_ACCION_CAB,',
'        PI_ROW_ID => :P339_C_ROW_ID ,',
'        PI_COD_EMPRESA => :P339_COD_EMPRESA,  ',
'        PI_TIP_ENVIO => :P339_C_TIP_ENVIO ,  ',
'        PI_SER_ENVIO => :P339_C_SER_ENVIO ,',
'        PI_NRO_ENVIO => :P339_C_NRO_ENVIO,  ',
'        PI_FECHA => :P339_C_FECHA ,',
'        PI_COD_USUARIO_REC => :P339_C_COD_USUARIO_REC ,',
'        PI_TIPO_ENVIO => :P339_C_TIPO_RUBRO,',
'        PI_OBS => :P339_C_OBS ,',
'        PI_COD_SUCURSAL => :P339_COD_SUCURSAL ,',
'        PI_COD_SUCURSAL_ENT => :P339_C_COD_SUCURSAL_ENT,',
'        PI_COD_ZONA_REPARTO => :P339_C_COD_ZONA_REPARTO ,',
'        PI_COD_VEHICULO => :P339_C_COD_VEHICULO,',
'        PI_COD_REPARTIDOR => :P339_C_COD_REPARTIDOR ,',
'        PI_COD_AYUDANTE_1 => :P339_C_COD_AYUDANTE_1 ,',
'        PI_COD_AYUDANTE_2 => :P339_C_COD_AYUDANTE_2 ,',
'        PI_COD_USUARIO_RESERVA => :P339_C_COD_USUARIO_RESERVA ,',
'        PI_COD_MOTIVO_ENVIO => :P339_C_COD_MOTIVO_ENVIO ,',
'        PI_ESTADO => :P339_C_ESTADO,',
'        PI_HORA => :P339_C_HORA ,',
'        PI_DEPOSITERO => :P339_C_DEPOSITERO ,',
'        PI_TECNICO => :P339_C_TECNICO ,',
'        PI_IND_RESERVA => :P339_C_IND_RESERVA,',
'        PI_FEC_VENCIMIENTO => :P339_C_FEC_VENCIMIENTO ,',
'        PI_NRO_REMISION => :P339_C_NRO_REMISION ,',
'        PI_TIP_COMPROBANTE_REF => :P339_C_TIP_COMPROBANTE_REF ,',
'        PI_SER_COMPROBANTE_REF => :P339_C_SER_COMPROBANTE_REF ,',
'        PI_NRO_COMPROBANTE_REF => :P339_C_NRO_COMPROBANTE_REF ,',
'        PI_IND_RECEPCION => :P339_C_IND_RECEPCION ,',
'        PI_VOLUMEN => :P339_C_VOLUMEN ,',
'        PI_VALOR_CARGA => :P339_C_VALOR_CARGA  );',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(94637407890632905)
,p_process_success_message=>unistr('REGISTRO GUARDADO \00C9XITOSAMENTE. &P339_C_NRO_ENVIO_1.')
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
 p_id=>wwv_flow_imp.id(94639242026632923)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_DESPUES_CONFIRMAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(94637407890632905)
,p_process_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(83625995575059732)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--:P339_AUX_MSJ_CONTROL := NULL;',
'--INICIALIZA_GLOBALES',
':P339_COD_USUARIO := nvl(:P_COD_USUARIO, user);',
':P339_COD_EMPRESA := nvl(:P_COD_EMPRESA,''1'');',
':P339_NOM_EMPRESA := nvl(:P_NOM_EMPRESA, null);',
':P339_COD_SUCURSAL := nvl(:P_COD_SUCURSAL,null);',
':P339_NOM_SUCURSAL := nvl(:P_NOM_SUCURSAL, NULL);',
':P339_COD_MODULO := nvl(:P_COD_MODULO, ''ST'');',
':P339_C_SER_ENVIO := nvl(:P339_P_SER_COMPROBANTE, ''A'');',
':P339_C_COD_EMPRESA := :P339_COD_EMPRESA ; ',
':P339_C_TIPO_RUBRO:=NULL;',
':P339_COD_SUCURSAL := :P_COD_SUCURSAL;',
'---pre form ',
'  :P339_COD_MODULO   := ''ST'';',
'  :P339_SER_ENVIO := bs_busca_parametro( :P339_COD_MODULO, ''SERIE_ENVIO'' );',
'',
'  :P339_TIP_ENVIO := bs_busca_parametro( :P339_COD_MODULO, ''TIPO_ENVIO'' );',
'',
'  :P339_CARGA_SUCURSAL := busca_permiso( :P339_COD_EMPRESA,',
'                                              :P339_COD_FORMA,',
'                                              :P339_COD_USUARIO,',
'                                              ''CARGA SUCURSAL'' );',
'  :P339_BORRA_DETALLE := busca_permiso( :P339_COD_EMPRESA,',
'                                              :P339_COD_FORMA,',
'                                              :P339_COD_USUARIO,',
'                                              ''CARGA BORRA_DETALLE'' ); ',
'',
'',
'IF :P339_P_NRO_COMPROBANTE IS  NULL then    ',
unistr('    :P339_AUX_ACCION_CAB := ''A'';   --a\00F1adir nuevo registro a la tabla de cabecera'),
'    :P339_C_FECHA := SYSDATE; ',
'    :P339_C_COD_ZONA_REPARTO:=''01'';',
'    :P339_C_COD_VEHICULO:=''95'';',
'    :P339_C_COD_REPARTIDOR:=''11'';',
'    :P339_C_HORA := to_char(sysdate, ''HH24:MI:SS'');',
'    :P339_C_COD_USUARIO_REC := :P339_COD_USUARIO;',
'    :P339_C_TOTAL := 0;',
'    :P339_C_TIP_ENVIO := :P339_TIP_ENVIO;',
'    :P339_C_SER_ENVIO := :P339_SER_ENVIO;',
'    :P339_C_NRO_ENVIO :=null;',
'    :P339_C_COD_SUCURSAL_ENT:=null; ',
'',
'',
' else',
'        :P339_C_NRO_ENVIO := :P339_P_NRO_COMPROBANTE; ',
'        :P339_AUX_ACCION_CAB := ''E''; --editar registro a la tabla de cabecera',
'        select ',
'		    TIP_ENVIO,		    ',
'		    FECHA,',
'		    COD_USUARIO_REC,',
'		    OBS, ',
'		    COD_SUCURSAL,',
'		    COD_SUCURSAL_ENT,',
'		    COD_ZONA_REPARTO,',
'		    COD_VEHICULO,',
'		    COD_REPARTIDOR,',
'		    COD_AYUDANTE_1,',
'		    COD_AYUDANTE_2,',
'		    COD_USUARIO_RESERVA,',
'		    COD_MOTIVO_ENVIO,',
'		    ESTADO, ',
'		    HORA, ',
'		    DEPOSITERO,',
'		    TECNICO, ',
'		    IND_RESERVA,',
'		    FEC_VENCIMIENTO,',
'		    NRO_REMISION,',
'		    TIP_COMPROBANTE_REF,',
'            SER_COMPROBANTE_REF,',
'            NRO_COMPROBANTE_REF,',
'		    IND_RECEPCION,',
'		    VOLUMEN,',
'		    VALOR_CARGA,',
'            ROWID,',
'            tipo_envio',
'		into			',
'		    :P339_C_TIP_ENVIO,',
'            :P339_C_FECHA,          ',
'            :P339_C_COD_USUARIO_REC,',
'            :P339_C_OBS,',
'            :P339_COD_SUCURSAL,',
'            :P339_C_COD_SUCURSAL_ENT,',
'            :P339_C_COD_ZONA_REPARTO,',
'            :P339_C_COD_VEHICULO,',
'            :P339_C_COD_REPARTIDOR,',
'            :P339_C_COD_AYUDANTE_1,',
'            :P339_C_COD_AYUDANTE_2,',
'            :P339_C_COD_USUARIO_RESERVA,',
'            :P339_C_COD_MOTIVO_ENVIO,',
'            :P339_C_ESTADO,',
'            :P339_C_HORA,',
'            :P339_C_DEPOSITERO,',
'            :P339_C_TECNICO,',
'            :P339_C_IND_RESERVA,',
'            :P339_C_FEC_VENCIMIENTO,',
'            :P339_C_NRO_REMISION,',
'            :P339_C_TIP_COMPROBANTE_REF,',
'            :P339_C_SER_COMPROBANTE_REF,',
'            :P339_C_NRO_COMPROBANTE_REF,',
'            :P339_C_IND_RECEPCION,',
'            :P339_C_VOLUMEN,',
'            :P339_C_VALOR_CARGA,',
'            :P339_C_ROW_ID,',
'            :P339_C_TIPO_RUBRO',
'           ',
'	    from ST_NOTAS_ENVIO_CAB_PEND',
'	    where nro_envio = :P339_C_nro_ENVIO',
'	    and ser_envio = :P339_C_SER_ENVIO',
'        and cod_empresa = :P339_COD_EMPRESA;',
' --post query bloque cabecera ',
'        BEGIN',
'          select nro_envio',
'            into  :P339_C_NRO_ENVIO_REC',
'            from st_notas_envio_CAB',
'           where cod_empresa = :P339_COD_EMPRESA',
'           ',
'             and REFERENCIA = :P339_C_NRO_ENVIO',
'             AND ROWNUM=1;',
'        EXCEPTION',
'          when others then	',
'            :P339_C_NRO_ENVIO_REC:=NULL;',
'        END;',
'',
'        BEGIN',
'          select sum( cantidad )',
'            into :P339_C_TOTAL',
'            from st_notas_envio_det_pend',
'           where cod_empresa = :P339_COD_EMPRESA',
'             and tip_envio = :P339_C_TIP_ENVIO',
'             and ser_envio = :P339_C_SER_ENVIO',
'             and nro_envio = :P339_C_NRO_ENVIO;',
'        EXCEPTION',
'          when others then	',
'            :P339_C_TOTAL := 0;',
'        END;',
'    --fin post query',
'end if;',
'    ',
'',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''COL_DETALLE'');',
'STENVPE.pr_cargar_detalle(',
'        PI_COD_EMPRESA => :P339_COD_EMPRESA, ',
'        PI_SER_ENVIO => :P339_C_SER_ENVIO,',
'	    PI_NRO_ENVIO => :P339_C_NRO_ENVIO',
'         );',
'',
'SELECT  sum(TO_NUMBER(C012) )   ',
'    into  :P339_C_VOLUMEN',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COL_DETALLE''',
'    AND NVL(C030,''P'') <> ''B'';',
'',
'SELECT  sum(TO_NUMBER(C013) )   ',
'    into  :P339_C_VALOR_CARGA',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''COL_DETALLE''',
'    AND NVL(C030,''P'') <> ''B'';',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
