prompt --application/pages/page_00299
begin
--   Manifest
--     PAGE: 00299
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
 p_id=>299
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'BSSUBTRA'
,p_alias=>'BSSUBTRA'
,p_step_title=>'BSSUBTRA'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JOSEFINAGU'
,p_last_upd_yyyymmddhh24miss=>'20230106093708'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73166307044138105)
,p_plug_name=>'Subtipo de Transacciones'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73166591649138107)
,p_plug_name=>'VARIABLES'
,p_parent_plug_id=>wwv_flow_imp.id(73166307044138105)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73168112479138123)
,p_plug_name=>'AGREGAR/ EDITAR'
,p_parent_plug_id=>wwv_flow_imp.id(73166307044138105)
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74969586201176505)
,p_plug_name=>'checkbox'
,p_parent_plug_id=>wwv_flow_imp.id(73168112479138123)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73169864619138140)
,p_plug_name=>'SUBTIPO_TRAN'
,p_region_name=>'DETAIL'
,p_parent_plug_id=>wwv_flow_imp.id(73166307044138105)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID ROW_ID,',
'       COD_AGRUPACION,',
'       ABREVIATURA,',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'        				    p_value       => ROWID,',
'        				    p_attributes  => (case USA_DINERO',
'        										 when ''S'' then ''checked ''',
'        									  else ''N''',
'        										 end ) ||''style="width:40px;" disabled'') as USA_DINERO,',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'        				    p_value       => ROWID,',
'        				    p_attributes  => (case CARGA_VALORES',
'        										 when ''S'' then ''checked ''',
'        									  else ''N''',
'        										 end ) ||''style="width:40px;" disabled'') as CARGA_VALORES,',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'        				    p_value       => ROWID,',
'        				    p_attributes  => (case VERIFICA_VALORES',
'        										 when ''S'' then ''checked ''',
'        									  else ''N''',
'        										 end ) ||''style="width:40px;" disabled'') as VERIFICA_VALORES,',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'        				    p_value       => ROWID,',
'        				    p_attributes  => (case AFECTA_IMPONIBLE',
'        										 when ''S'' then ''checked ''',
'        									  else ''N''',
'        										 end ) ||''style="width:40px;" disabled'') as AFECTA_IMPONIBLE,',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'        				    p_value       => ROWID,',
'        				    p_attributes  => (case AFECTA_ASIENTO',
'        										 when ''S'' then ''checked ''',
'        									  else ''N''',
'        										 end ) ||''style="width:40px;" disabled'') as AFECTA_ASIENTO,',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'        				    p_value       => ROWID,',
'        				    p_attributes  => (case AFECTA_RENTA',
'        										 when ''S'' then ''checked ''',
'        									  else ''N''',
'        										 end ) ||''style="width:40px;" disabled'') as AFECTA_RENTA,  ',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'        				    p_value       => ROWID,',
'        				    p_attributes  => (case GASTO_DESPACHO',
'        										 when ''S'' then ''checked ''',
'        									  else ''N''',
'        										 end ) ||''style="width:40px;" disabled'') as GASTO_DESPACHO,',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'        				    p_value       => ROWID,',
'        				    p_attributes  => (case CARGA_DEPOSITO',
'        										 when ''S'' then ''checked ''',
'        									  else ''N''',
'        										 end ) ||''style="width:40px;" disabled'') as CARGA_DEPOSITO,',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'        				    p_value       => ROWID,',
'        				    p_attributes  => (case IVA_GRAVADO_DIRECTO',
'        										 when ''S'' then ''checked ''',
'        									  else ''N''',
'        										 end ) ||''style="width:40px;" disabled'') as IVA_GRAVADO_DIRECTO,',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'        				    p_value       => ROWID,',
'        				    p_attributes  => (case IVA_DECRETO',
'        										 when ''S'' then ''checked ''',
'        									  else ''N''',
'        										 end ) ||''style="width:40px;" disabled'') as IVA_DECRETO,',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'        				    p_value       => ROWID,',
'        				    p_attributes  => (case IND_VALORES_A_DEPOSITAR',
'        										 when ''S'' then ''checked ''',
'        									  else ''N''',
'        										 end ) ||''style="width:40px;" disabled'') as IND_VALORES_A_DEPOSITAR',
'  FROM INV.SUBTIPOS_TRANS',
' WHERE ROWID = :P299_AUX_ID_DETALLE',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P299_AUX_ID_DETALLE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'SUBTIPO_TRAN'
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
 p_id=>wwv_flow_imp.id(75677956414729411)
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
,p_internal_uid=>75677956414729411
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75678092860729412)
,p_db_column_name=>'ROW_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Row Id'
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
 p_id=>wwv_flow_imp.id(75678510892729417)
,p_db_column_name=>'COD_AGRUPACION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('Agrupaci\00F3n')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(74614411026647403)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75678685135729418)
,p_db_column_name=>'ABREVIATURA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Abreviatura'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75678771016729419)
,p_db_column_name=>'USA_DINERO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Usa Dinero'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75678824109729420)
,p_db_column_name=>'CARGA_VALORES'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Carga Valores'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75678993035729421)
,p_db_column_name=>'VERIFICA_VALORES'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Verifica Valores'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75679067537729422)
,p_db_column_name=>'AFECTA_IMPONIBLE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Afecta Imponible'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75679126414729423)
,p_db_column_name=>'AFECTA_ASIENTO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Afecta Asiento'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75679239555729424)
,p_db_column_name=>'AFECTA_RENTA'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Afecta Renta'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75679337123729425)
,p_db_column_name=>'GASTO_DESPACHO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Gasto Despacho'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75679435548729426)
,p_db_column_name=>'CARGA_DEPOSITO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Carga Deposito'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75679592096729427)
,p_db_column_name=>'IVA_GRAVADO_DIRECTO'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'IVA Grav. Directo'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75679683810729428)
,p_db_column_name=>'IVA_DECRETO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'IVA Decreto'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75679726212729429)
,p_db_column_name=>'IND_VALORES_A_DEPOSITAR'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Valores a Depositar'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(75741456927784084)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'757415'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_AGRUPACION:ABREVIATURA:USA_DINERO:CARGA_VALORES:VERIFICA_VALORES:AFECTA_IMPONIBLE:AFECTA_ASIENTO:AFECTA_RENTA:GASTO_DESPACHO:CARGA_DEPOSITO:IVA_GRAVADO_DIRECTO:IVA_DECRETO:IND_VALORES_A_DEPOSITAR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(75560557149567225)
,p_plug_name=>'SUBTRAN'
,p_parent_plug_id=>wwv_flow_imp.id(73166307044138105)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID ROW_ID,',
'       COD_EMPRESA,',
'       COD_MODULO,',
'       TIPO_TRANS,',
'       SUBTIPO_TRANS,',
'       DESCRIPCION,',
'       TIP_DOCUMENTO,',
'       COD_CUENTA,',
'       COD_SUBTIP_DENOMINACION,',
'       COD_CUENTA_ANP,',
'       CASE ',
unistr('            WHEN CONCEPTO = ''C'' THEN ''Cr\00E9dito'''),
unistr('            ELSE ''D\00E9bito'''),
'       END CONCEPTO,',
'       APEX_ITEM.CHECKBOX (p_idx         => 1 ,',
'        				    p_value       => ROWID,',
'        				    p_attributes  => (case ACTIVO',
'        										 when ''S'' then ''checked ''',
'        									  else ''N''',
'        										 end ) ||''style="width:40px;" disabled'') as ACTIVO,',
'       NULL EDITAR,',
'       NULL ELIMINAR,',
'       NULL DETALLE',
'  FROM INV.SUBTIPOS_TRANS',
' WHERE COD_EMPRESA = :P299_VBLE_COD_EMPRESA'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P299_VBLE_COD_EMPRESA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'SUBTRAN'
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
 p_id=>wwv_flow_imp.id(75562396553567243)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No se encontraron datos.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JOSEFINAGU'
,p_internal_uid=>75562396553567243
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75562408334567244)
,p_db_column_name=>'ROW_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Row Id'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75562501137567245)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75562644529567246)
,p_db_column_name=>'COD_MODULO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('M\00F3dulo')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(72496881195648733)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75562711009567247)
,p_db_column_name=>'TIPO_TRANS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Tipo'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75562861372567248)
,p_db_column_name=>'SUBTIPO_TRANS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Subtipo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75562997216567249)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75563076013567250)
,p_db_column_name=>'TIP_DOCUMENTO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Documento'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75676931282729401)
,p_db_column_name=>'COD_CUENTA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cta. Cont.'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(74119199793905778)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75677098043729402)
,p_db_column_name=>'COD_SUBTIP_DENOMINACION'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Subtipo Denom.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75677141397729403)
,p_db_column_name=>'COD_CUENTA_ANP'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cta. Cont. Ant'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(74119199793905778)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75677249137729404)
,p_db_column_name=>'CONCEPTO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Concepto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75677323979729405)
,p_db_column_name=>'ACTIVO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Activo'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75677411411729406)
,p_db_column_name=>'EDITAR'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P299_AUX_ID_EDITAR'',''#ROW_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-pencil-square-o"></span>'
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
'    END IF;                                                     ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75677575621729407)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P299_AUX_ID_ELIMINAR'',''#ROW_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-trash"></span>'
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
'    END IF;                                                     ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75679813876729430)
,p_db_column_name=>'DETALLE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Detalle'
,p_column_link=>'javascript:$s(''P299_AUX_ID_DETALLE'',''#ROW_ID#'')'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-search"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(75740878690784075)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'757409'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ROW_ID:COD_EMPRESA:COD_MODULO:TIPO_TRANS:SUBTIPO_TRANS:DESCRIPCION:TIP_DOCUMENTO:COD_CUENTA:COD_SUBTIP_DENOMINACION:COD_CUENTA_ANP:CONCEPTO:ACTIVO:EDITAR:ELIMINAR'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(77924669147279937)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Principal'
,p_report_seq=>10
,p_report_alias=>'779247'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'COD_MODULO:TIPO_TRANS:SUBTIPO_TRANS:DESCRIPCION:TIP_DOCUMENTO:COD_CUENTA:COD_SUBTIP_DENOMINACION:COD_CUENTA_ANP:CONCEPTO:ACTIVO:EDITAR:ELIMINAR:DETALLE:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73168307703138125)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(73168112479138123)
,p_button_name=>'BT_CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73168231409138124)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(73168112479138123)
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
 p_id=>wwv_flow_imp.id(74529466690556407)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(75560557149567225)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73168651376138128)
,p_name=>'P299_AUX_ID_EDITAR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(73166591649138107)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73168794725138129)
,p_name=>'P299_AUX_ID_ELIMINAR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(73166591649138107)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73168811030138130)
,p_name=>'P299_VBLE_COD_MODULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(73166591649138107)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73168988171138131)
,p_name=>'P299_VBLE_COD_EMPRESA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(73166591649138107)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73169005964138132)
,p_name=>'P299_COD_FORMA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(73166591649138107)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73169180965138133)
,p_name=>'P299_COD_SUCURSAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(73166591649138107)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73169213716138134)
,p_name=>'P299_NOM_MODULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(73166591649138107)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73169349819138135)
,p_name=>'P299_NOM_FORMA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(73166591649138107)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73169416175138136)
,p_name=>'P299_NOM_EMPRESA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(73166591649138107)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73169557062138137)
,p_name=>'P299_NOM_SUCURSAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(73166591649138107)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73169609949138138)
,p_name=>'P299_COD_USUARIO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(73166591649138107)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74529901216556412)
,p_name=>'P299_COD_MODULO'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(73168112479138123)
,p_prompt=>unistr('M\00F3dulo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MODULO_BSPARAME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_modulo || '' - '' || descripcion D, cod_modulo R ',
'FROM modulos ',
'ORDER BY descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione - '
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
 p_id=>wwv_flow_imp.id(74530090776556413)
,p_name=>'P299_DEBITO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(73168112479138123)
,p_prompt=>unistr('D\00E9bito')
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>unistr('STATIC:D\00E9bito;S')
,p_colspan=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74530198489556414)
,p_name=>'P299_TIP_DOCUMENTO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(73168112479138123)
,p_prompt=>'Tip Documento'
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
 p_id=>wwv_flow_imp.id(74530291635556415)
,p_name=>'P299_AFECTA_IMPONIBLE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(74969586201176505)
,p_item_default=>'N'
,p_prompt=>'Afecta Imponible'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74530365014556416)
,p_name=>'P299_SUBTIPO_TRANS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(73168112479138123)
,p_prompt=>'SubTipo'
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
 p_id=>wwv_flow_imp.id(74530418648556417)
,p_name=>'P299_COD_SUBTIP_DENOMINACION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(73168112479138123)
,p_prompt=>'SubTipo Denom.'
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
 p_id=>wwv_flow_imp.id(74530564305556418)
,p_name=>'P299_ABREVIATURA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(73168112479138123)
,p_prompt=>'Abreviatura'
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
 p_id=>wwv_flow_imp.id(74530655367556419)
,p_name=>'P299_CARGA_DEPOSITO'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(74969586201176505)
,p_item_default=>'N'
,p_prompt=>unistr('Carga Dep\00F3sito')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
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
 p_id=>wwv_flow_imp.id(74530785608556420)
,p_name=>'P299_TIPO_TRANS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(73168112479138123)
,p_prompt=>unistr('Tipo Transacci\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select t.tipo_trans||'' - ''||t.descripcion D,',
'       t.tipo_trans R',
'  from tipos_trans t',
' where t.cod_empresa= :p_cod_empresa',
'   and t.cod_modulo= :p299_cod_modulo'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione -'
,p_lov_cascade_parent_items=>'P299_COD_MODULO'
,p_ajax_items_to_submit=>'P299_COD_MODULO'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(74530861638556421)
,p_name=>'P299_DESCRIPCION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(73168112479138123)
,p_prompt=>'Descripcion'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74530935094556422)
,p_name=>'P299_COD_CUENTA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(73168112479138123)
,p_prompt=>'Cta. Cont.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CUENTAS_BSSUBTRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_cuenta||'' - ''||nombre_cuenta D, ',
'       cod_cuenta R',
'  from co_plan_cuentas ',
' where cod_empresa = :p_cod_empresa ',
'   and nvl(asentable,''N'') = ''S'' ',
'   and COD_EJERCICIO = TO_CHAR(SYSDATE,''YYYY'')order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione - '
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
 p_id=>wwv_flow_imp.id(74531011163556423)
,p_name=>'P299_COD_CUENTA_ANP'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(73168112479138123)
,p_prompt=>'Cta. Cont. Ant.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CUENTAS_BSSUBTRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_cuenta||'' - ''||nombre_cuenta D, ',
'       cod_cuenta R',
'  from co_plan_cuentas ',
' where cod_empresa = :p_cod_empresa ',
'   and nvl(asentable,''N'') = ''S'' ',
'   and COD_EJERCICIO = TO_CHAR(SYSDATE,''YYYY'')order by 1'))
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74531101396556424)
,p_name=>'P299_ACTIVO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(73168112479138123)
,p_item_default=>'N'
,p_prompt=>'Activo'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74531244929556425)
,p_name=>'P299_CARGA_VALORES'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(74969586201176505)
,p_item_default=>'N'
,p_prompt=>'Carga Valores'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74531303133556426)
,p_name=>'P299_AFECTA_RENTA'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(74969586201176505)
,p_item_default=>'N'
,p_prompt=>'Afecta Renta'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74531472955556427)
,p_name=>'P299_IVA_DECRETO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(74969586201176505)
,p_item_default=>'N'
,p_prompt=>'IVA Decreto'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74531559345556428)
,p_name=>'P299_COD_AGRUPACION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(73168112479138123)
,p_prompt=>unistr('Agrupaci\00F3n')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_AGRUPACIONES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_agrupacion||'' - ''||descripcion D, ',
'       cod_agrupacion R',
'  from cm_agrupaciones ',
' where cod_empresa = :p_cod_empresa'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Seleccione - '
,p_cSize=>30
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(74531632975556429)
,p_name=>'P299_USA_DINERO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(74969586201176505)
,p_item_default=>'N'
,p_prompt=>'Usa Dinero'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74531713871556430)
,p_name=>'P299_VERIFICA_VALORES'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(74969586201176505)
,p_item_default=>'N'
,p_prompt=>'Verifica Valores'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74531812639556431)
,p_name=>'P299_AFECTA_ASIENTO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(74969586201176505)
,p_item_default=>'N'
,p_prompt=>'Afecta Asiento'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74531936332556432)
,p_name=>'P299_GASTO_DESPACHO'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(74969586201176505)
,p_item_default=>'N'
,p_prompt=>'Gasto Despacho'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74532092680556433)
,p_name=>'P299_IVA_GRAVADO_DIRECTO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(74969586201176505)
,p_item_default=>'N'
,p_prompt=>'IVA Grav. Directo'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74532149296556434)
,p_name=>'P299_IND_VALORES_A_DEPOSITAR'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(74969586201176505)
,p_item_default=>'N'
,p_prompt=>'Valores a Depositar'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74532333264556436)
,p_name=>'P299_CREDITO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(73168112479138123)
,p_prompt=>unistr('Cr\00E9dito')
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>unistr('STATIC:Cr\00E9dito;N')
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75677695002729408)
,p_name=>'P299_AUX_ID_DETALLE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(73166591649138107)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75680037717729432)
,p_name=>'P299_MSJE_SUCCES'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(73166591649138107)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74529500472556408)
,p_name=>'DA_CREAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(74529466690556407)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74973972488176549)
,p_event_id=>wwv_flow_imp.id(74529500472556408)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P299_COD_MODULO,P299_TIPO_TRANS,P299_SUBTIPO_TRANS,P299_DESCRIPCION,P299_TIP_DOCUMENTO,P299_COD_CUENTA,P299_COD_SUBTIP_DENOMINACION,P299_COD_CUENTA_ANP,P299_DEBITO,P299_CREDITO,P299_ACTIVO,P299_COD_AGRUPACION,P299_ABREVIATURA,P299_USA_DINERO,P299_CAR'
||'GA_VALORES,P299_VERIFICA_VALORES,P299_AFECTA_IMPONIBLE,P299_AFECTA_ASIENTO,P299_AFECTA_RENTA,P299_GASTO_DESPACHO,P299_CARGA_DEPOSITO,P299_IVA_GRAVADO_DIRECTO,P299_IVA_DECRETO,P299_IND_VALORES_A_DEPOSITAR,P299_AUX_ID_EDITAR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74529622826556409)
,p_event_id=>wwv_flow_imp.id(74529500472556408)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73168112479138123)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74529703682556410)
,p_name=>'DA_EDITAR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P299_AUX_ID_EDITAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74533658595556449)
,p_event_id=>wwv_flow_imp.id(74529703682556410)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P299_AUX_ID_EDITAR IS NOT NULL THEN',
'        SELECT COD_MODULO,',
'               TIPO_TRANS,',
'               SUBTIPO_TRANS,',
'               DESCRIPCION,',
'               TIP_DOCUMENTO,',
'               COD_CUENTA,',
'               COD_SUBTIP_DENOMINACION,',
'               COD_CUENTA_ANP,',
'               CASE ',
'                WHEN CONCEPTO = ''D'' THEN ''S''',
'                ELSE ''N''',
'               END DEBITO,',
'               CASE ',
'                WHEN CONCEPTO = ''C'' THEN ''N''',
'                ELSE ''S''',
'               END CREDITO,',
'               ACTIVO,',
'               COD_AGRUPACION,',
'               ABREVIATURA,',
'               USA_DINERO,',
'               CARGA_VALORES,',
'               VERIFICA_VALORES,',
'               AFECTA_IMPONIBLE,',
'               AFECTA_ASIENTO,',
'               AFECTA_RENTA,  ',
'               GASTO_DESPACHO,',
'               CARGA_DEPOSITO,',
'               IVA_GRAVADO_DIRECTO,',
'               IVA_DECRETO,',
'               IND_VALORES_A_DEPOSITAR',
'          INTO :P299_COD_MODULO,',
'               :P299_TIPO_TRANS,',
'               :P299_SUBTIPO_TRANS,',
'               :P299_DESCRIPCION,',
'               :P299_TIP_DOCUMENTO,',
'               :P299_COD_CUENTA,',
'               :P299_COD_SUBTIP_DENOMINACION,',
'               :P299_COD_CUENTA_ANP,',
'               :P299_DEBITO,',
'               :P299_CREDITO,',
'               :P299_ACTIVO,',
'               :P299_COD_AGRUPACION,',
'               :P299_ABREVIATURA,',
'               :P299_USA_DINERO,',
'               :P299_CARGA_VALORES,',
'               :P299_VERIFICA_VALORES,',
'               :P299_AFECTA_IMPONIBLE,',
'               :P299_AFECTA_ASIENTO,',
'               :P299_AFECTA_RENTA,  ',
'               :P299_GASTO_DESPACHO,',
'               :P299_CARGA_DEPOSITO,',
'               :P299_IVA_GRAVADO_DIRECTO,',
'               :P299_IVA_DECRETO,',
'               :P299_IND_VALORES_A_DEPOSITAR',
'          FROM INV.SUBTIPOS_TRANS',
'         WHERE ROWID = :P299_AUX_ID_EDITAR;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P299_AUX_ID_EDITAR'
,p_attribute_03=>'P299_COD_MODULO,P299_TIPO_TRANS,P299_SUBTIPO_TRANS,P299_DESCRIPCION,P299_TIP_DOCUMENTO,P299_COD_CUENTA,P299_COD_SUBTIP_DENOMINACION,P299_COD_CUENTA_ANP,P299_DEBITO,P299_CREDITO,P299_ACTIVO,P299_COD_AGRUPACION,P299_ABREVIATURA,P299_USA_DINERO,P299_CAR'
||'GA_VALORES,P299_VERIFICA_VALORES,P299_AFECTA_IMPONIBLE,P299_AFECTA_ASIENTO,P299_AFECTA_RENTA,P299_GASTO_DESPACHO,P299_CARGA_DEPOSITO,P299_IVA_GRAVADO_DIRECTO,P299_IVA_DECRETO,P299_IND_VALORES_A_DEPOSITAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74970034799176510)
,p_event_id=>wwv_flow_imp.id(74529703682556410)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73168112479138123)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74529843975556411)
,p_event_id=>wwv_flow_imp.id(74529703682556410)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73168112479138123)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74532473514556437)
,p_name=>'DA_CAMBIA_CREDITO'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P299_DEBITO'
,p_condition_element=>'P299_DEBITO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74532544856556438)
,p_event_id=>wwv_flow_imp.id(74532473514556437)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P299_CREDITO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74532620991556439)
,p_name=>'DA_DESHABILITA'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P299_DEBITO'
,p_condition_element=>'P299_DEBITO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74532861428556441)
,p_event_id=>wwv_flow_imp.id(74532620991556439)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P299_CREDITO := ''S'';'
,p_attribute_03=>'P299_CREDITO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74533076952556443)
,p_name=>'DA_CAMBIA_DEBITO'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P299_CREDITO'
,p_condition_element=>'P299_CREDITO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74533142791556444)
,p_event_id=>wwv_flow_imp.id(74533076952556443)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P299_DEBITO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74533230393556445)
,p_name=>'DA_HABILITA'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P299_CREDITO'
,p_condition_element=>'P299_CREDITO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74533396665556446)
,p_event_id=>wwv_flow_imp.id(74533230393556445)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P299_DEBITO := ''N'';'
,p_attribute_03=>'P299_DEBITO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74533724893556450)
,p_name=>'DA_CANCEL'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(73168307703138125)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74969137538176501)
,p_event_id=>wwv_flow_imp.id(74533724893556450)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74969201979176502)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(73168231409138124)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74969395832176503)
,p_event_id=>wwv_flow_imp.id(74969201979176502)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_CONCEPTO VARCHAR2(10);',
'BEGIN',
'    IF :P299_DEBITO = ''S'' THEN V_CONCEPTO := ''D'';',
'    ELSE',
'        V_CONCEPTO := ''C'';',
'    END IF;',
'    IF :P299_AUX_ID_EDITAR IS NOT NULL THEN',
'        UPDATE SUBTIPOS_TRANS',
'           SET COD_MODULO = :P299_COD_MODULO,',
'               TIPO_TRANS = :P299_TIPO_TRANS,',
'               SUBTIPO_TRANS = :P299_SUBTIPO_TRANS,',
'               DESCRIPCION = :P299_DESCRIPCION,',
'               TIP_DOCUMENTO = :P299_TIP_DOCUMENTO,',
'               COD_CUENTA = :P299_COD_CUENTA,',
'               COD_SUBTIP_DENOMINACION = :P299_COD_SUBTIP_DENOMINACION,',
'               COD_CUENTA_ANP = :P299_COD_CUENTA_ANP,',
'               CONCEPTO = V_CONCEPTO,',
'               ACTIVO = :P299_ACTIVO,',
'               COD_AGRUPACION = :P299_COD_AGRUPACION,',
'               ABREVIATURA = :P299_ABREVIATURA,',
'               USA_DINERO = :P299_USA_DINERO,',
'               CARGA_VALORES = :P299_CARGA_VALORES,',
'               VERIFICA_VALORES = :P299_VERIFICA_VALORES,',
'               AFECTA_IMPONIBLE = :P299_AFECTA_IMPONIBLE,',
'               AFECTA_ASIENTO = :P299_AFECTA_ASIENTO,',
'               AFECTA_RENTA = :P299_AFECTA_RENTA,  ',
'               GASTO_DESPACHO = :P299_GASTO_DESPACHO,',
'               CARGA_DEPOSITO = :P299_CARGA_DEPOSITO,',
'               IVA_GRAVADO_DIRECTO = :P299_IVA_GRAVADO_DIRECTO,',
'               IVA_DECRETO = :P299_IVA_DECRETO,',
'               IND_VALORES_A_DEPOSITAR = :P299_IND_VALORES_A_DEPOSITAR',
'         WHERE ROWID = :P299_AUX_ID_EDITAR;',
'',
'         :P299_MSJE_SUCCES := 2;',
'',
'    ELSE',
'        INSERT INTO SUBTIPOS_TRANS(COD_EMPRESA,COD_MODULO,',
'                                   TIPO_TRANS,SUBTIPO_TRANS,',
'                                   DESCRIPCION,TIP_DOCUMENTO,',
'                                   COD_CUENTA,COD_SUBTIP_DENOMINACION,',
'                                   COD_CUENTA_ANP,CONCEPTO,',
'                                   ACTIVO,COD_AGRUPACION,',
'                                   ABREVIATURA,USA_DINERO,',
'                                   CARGA_VALORES,VERIFICA_VALORES,',
'                                   AFECTA_IMPONIBLE,AFECTA_ASIENTO,',
'                                   AFECTA_RENTA,GASTO_DESPACHO,',
'                                   CARGA_DEPOSITO,IVA_GRAVADO_DIRECTO,',
'                                   IVA_DECRETO,IND_VALORES_A_DEPOSITAR)',
'                            VALUES (:P299_VBLE_COD_EMPRESA,',
'                                    :P299_COD_MODULO,',
'                                    :P299_TIPO_TRANS,',
'                                    :P299_SUBTIPO_TRANS,',
'                                    :P299_DESCRIPCION,',
'                                    :P299_TIP_DOCUMENTO,',
'                                    :P299_COD_CUENTA,',
'                                    :P299_COD_SUBTIP_DENOMINACION,',
'                                    :P299_COD_CUENTA_ANP,',
'                                    V_CONCEPTO,',
'                                    :P299_ACTIVO,',
'                                    :P299_COD_AGRUPACION,',
'                                    :P299_ABREVIATURA,',
'                                    :P299_USA_DINERO,',
'                                    :P299_CARGA_VALORES,',
'                                    :P299_VERIFICA_VALORES,',
'                                    :P299_AFECTA_IMPONIBLE,',
'                                    :P299_AFECTA_ASIENTO,',
'                                    :P299_AFECTA_RENTA,  ',
'                                    :P299_GASTO_DESPACHO,',
'                                    :P299_CARGA_DEPOSITO,',
'                                    :P299_IVA_GRAVADO_DIRECTO,',
'                                    :P299_IVA_DECRETO,',
'                                    :P299_IND_VALORES_A_DEPOSITAR);',
'             :P299_MSJE_SUCCES := 1;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P299_COD_MODULO,P299_TIPO_TRANS,P299_SUBTIPO_TRANS,P299_DESCRIPCION,P299_TIP_DOCUMENTO,P299_COD_CUENTA,P299_COD_SUBTIP_DENOMINACION,P299_COD_CUENTA_ANP,P299_DEBITO,P299_CREDITO,P299_ACTIVO,P299_COD_AGRUPACION,P299_ABREVIATURA,P299_USA_DINERO,P299_CAR'
||'GA_VALORES,P299_VERIFICA_VALORES,P299_AFECTA_IMPONIBLE,P299_AFECTA_ASIENTO,P299_AFECTA_RENTA,P299_GASTO_DESPACHO,P299_CARGA_DEPOSITO,P299_IVA_GRAVADO_DIRECTO,P299_IVA_DECRETO,P299_IND_VALORES_A_DEPOSITAR,P299_VBLE_COD_MODULO,P299_VBLE_COD_EMPRESA'
,p_attribute_03=>'P299_MSJE_SUCCES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75679958153729431)
,p_event_id=>wwv_flow_imp.id(74969201979176502)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'El registro fue creado correctamente.'
,p_attribute_02=>unistr('Operaci\00F3n exitosa')
,p_attribute_03=>'success'
,p_attribute_04=>'fa-check-circle'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P299_MSJE_SUCCES'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75680202655729434)
,p_event_id=>wwv_flow_imp.id(74969201979176502)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Los cambios fueron guardados correctamente.'
,p_attribute_02=>unistr('Operaci\00F3n exitosa')
,p_attribute_03=>'success'
,p_attribute_04=>'fa-check-circle'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P299_MSJE_SUCCES'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75680351516729435)
,p_event_id=>wwv_flow_imp.id(74969201979176502)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(75560557149567225)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75680428714729436)
,p_event_id=>wwv_flow_imp.id(74969201979176502)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73169864619138140)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75680597775729437)
,p_event_id=>wwv_flow_imp.id(74969201979176502)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73168112479138123)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(74969753988176507)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P299_AUX_ID_ELIMINAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74969840928176508)
,p_event_id=>wwv_flow_imp.id(74969753988176507)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEst\00E1 seguro que desea eliminar este registro?')
,p_attribute_02=>unistr('\00A1Atenci\00F3n!')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74969921232176509)
,p_event_id=>wwv_flow_imp.id(74969753988176507)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    DELETE FROM SUBTIPOS_TRANS',
'    WHERE ROWID = :P299_AUX_ID_ELIMINAR;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P299_AUX_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(74970217322176512)
,p_event_id=>wwv_flow_imp.id(74969753988176507)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(75560557149567225)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75680744254729439)
,p_event_id=>wwv_flow_imp.id(74969753988176507)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73169864619138140)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75677769906729409)
,p_name=>'DA_REFRESH_DETALLE'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P299_AUX_ID_DETALLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75677844191729410)
,p_event_id=>wwv_flow_imp.id(75677769906729409)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(73169864619138140)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(73169772794138139)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P_COD_MODULO := ''BS'';',
'',
':P299_COD_USUARIO := NVL(:P_COD_USUARIO, :APP_USER);',
':P299_VBLE_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'');',
':P299_NOM_EMPRESA := :P_NOM_EMPRESA;',
':P299_COD_SUCURSAL := :P_COD_SUCURSAL;',
':P299_NOM_SUCURSAL := NVL(:P_NOM_SUCURSAL,''01'');',
':P299_VBLE_COD_MODULO := NVL(:P_COD_MODULO,''BS'');',
'',
'LIBRERIA_FORMAS.RUTINA_INICIAL(PI_COD_MODULO => :P299_VBLE_COD_MODULO,',
'                               PI_COD_FORMA  => :P299_COD_FORMA,',
'                               PI_NOM_MODULO => :P299_NOM_MODULO,',
'                               PI_NOM_FORMA  => :P299_NOM_FORMA,',
'            				   PO_NOM_MODULO => :P299_NOM_MODULO,',
'            				   PO_NOM_FORMA  => :P299_NOM_FORMA);',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
