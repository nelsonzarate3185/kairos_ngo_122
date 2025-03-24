prompt --application/pages/page_00065
begin
--   Manifest
--     PAGE: 00065
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
 p_id=>65
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Stock'
,p_alias=>'STOCK'
,p_step_title=>'Stock'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Form-inputContainer span.display_only{',
'    text-align: right;',
'}  ',
'',
'.btn_agregar{',
'    margin-top: 15px;',
'}',
'#IMPRIMIR,#BUSCAR,#CC{',
'     ',
'        background:white;',
'        background-image: linear-gradient(180deg, #ffee00e4  0%, #fff890 100%);',
'        color:  darkblue;',
'        box-shadow: #6585af 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color:  yellow;',
'    ',
'}',
'',
'',
'#mimapa {',
'    height: 530px !important;',
'    ',
'}',
'',
'.apex-item-text, .t-Form-fieldContainer--floatingLabel .apex-item-textarea , .apex-item-display-only{',
'    border-color: #3c5b83 !important;',
'    background: #FCFCF4 !important;',
'    border-style: solid !important; ',
'    }',
'',
'.t-PageBody {',
'    background-color: #296073 !important;',
'    font-weight: bold !important;',
'',
'}',
'',
'',
'input:read-only {',
'        background-color: #CCCCCC !important;',
'    } ',
'',
'#P234_TEXTO_DISPLAY {',
'    background-color: #e0e0e0 !important;',
'    font-weight: bold;',
'    text-align: left;',
'    font-size: 12px;',
'}',
'',
'#P9_TOTAL_PEDIDO_AUX {',
'    background-color: blue !important;',
'    color: white !important;',
'    font-weight: bold !important;',
'}',
'',
'#crear {',
'    display: none !important;',
'}',
'',
'#ocultar {',
'    display: none !important;',
'}',
'',
'.u-checkbox {',
'    margin-top: 25px !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240926152303'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85567544448336767)
,p_plug_name=>'Consulta de Stock'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85626294471451058)
,p_plug_name=>'Stock'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'COD_SUCURSAL , DESC_SUCURSAL,  DESC_RUBRO,  DESC_DIVISION  ,DESC_CATEGOGIRA ,',
' DESC_FAMILIA  ,MARCA  ,COD_ART_CORTO,  COD_ARTICULO,  DESC_ARTICULO,  CANT_DISPON,  VOLUMEN,',
'   PEDIDOS_AUTORIZADOS,  PEDIDOS_PENIENTES, precio_web(cod_articulo,''1'',0) precio_lista,largo_cm, ancho_cm, alto_cm, cod_ean, peso_gr, estiba_max',
'',
'FROM (select v.cod_sucursal, v.desc_sucursal, v.desc_rubro, v.desc_division, v.desc_categogira, v.desc_familia, v.marca,',
'v.cod_art_corto, v.cod_articulo, v.desc_articulo, v.cant_dispon, v.volumen,',
'largo_cm, ancho_cm, alto_cm, cod_ean,peso_gr,',
'(SELECT sum(cantidad)',
'FROM V_PEDIDOS_STOCK_APEX s',
'where s.cod_articulo=v.cod_articulo',
'and s.cod_empresa=v.cod_empresa',
'and s.autorizacion=''AUTORIZADO''',
'AND :P65_VER_PEDIDOS=''S''',
'AND SUCURSAL_PEDIDO=V.COD_SUCURSAL)PEDIDOS_AUTORIZADOS,',
'(SELECT sum(cantidad)',
'FROM V_PEDIDOS_STOCK_APEX s',
'where s.cod_articulo=v.cod_articulo',
'and s.cod_empresa=v.cod_empresa',
'and s.autorizacion=''PENDIENTE''',
'AND :P65_VER_PEDIDOS=''S''',
'AND SUCURSAL_PEDIDO=V.COD_SUCURSAL)PEDIDOS_PENIENTES, estiba_max',
'from v_stock_apex v',
'WHERE (cod_rubro =  :P65_RUBRO OR :P65_RUBRO IS NULL )',
'and v.cod_empresa=:p_cod_empresa',
'AND (COD_CATEGORIA = :P65_CATEGORIA OR :P65_CATEGORIA IS NULL)',
'AND (COD_DIVISION = :P65_DIVISION OR :P65_DIVISION IS NULL)',
'AND (FACTURABLE = :P65_VER_DEPOSITOS_FACT OR :P65_VER_DEPOSITOS_FACT= ''N'')',
' --AND V.COD_SUCURSAL IN (''01'',''18'', ''190'', ''209'', ''03'', ''02'', ''220'', ''33'', ''210'',''101'',''1015'',''262'',''190.1'',''275'',''209.1'',''266'')',
'AND (COD_FAMILIA = :P65_FAMILIA OR :P65_FAMILIA IS NULL)',
'AND (COD_ARTICULO = :P65_COD_ARTICULO OR :P65_COD_ARTICULO IS NULL)',
'AND (COD_ART_CORTO = :P65_COD_ART_CORTO OR :P65_COD_ART_CORTO IS NULL)',
'and (cod_sucursal = :P65_SUCURSAL OR :P65_SUCURSAL IS NULL)',
'AND (cod_marca = :P65_MARCA OR :P65_MARCA IS NULL))',
'WHERE (PEDIDOS_PENIENTES>0  OR PEDIDOS_AUTORIZADOS>0 OR CANT_DISPON>0)',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P65_RUBRO,P65_DIVISION,P65_FAMILIA,P65_CATEGORIA,P65_COD_ARTICULO,P65_COD_ART_CORTO,P65_SUCURSAL,P65_MARCA,P65_VER_PEDIDOS,P65_VER_DEPOSITOS_FACT'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(85626410653451058)
,p_name=>'Stock'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'INV'
,p_internal_uid=>85626410653451058
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12971011803405002)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12971455546405002)
,p_db_column_name=>'DESC_SUCURSAL'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Desc Sucursal'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12971857408405002)
,p_db_column_name=>'DESC_RUBRO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Desc Rubro'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12972207476405003)
,p_db_column_name=>'DESC_DIVISION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Desc Division'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12972648845405003)
,p_db_column_name=>'DESC_CATEGOGIRA'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Desc Categogira'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12973092497405003)
,p_db_column_name=>'DESC_FAMILIA'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Desc Familia'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12973442973405003)
,p_db_column_name=>'MARCA'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Marca'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12973891667405003)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12974253936405003)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Cod Articulo'
,p_column_link=>'f?p=&APP_ID.:264:&SESSION.::&DEBUG.:RP,264:P264_COD_ARTICULO:#COD_ARTICULO#'
,p_column_linktext=>'#COD_ARTICULO#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12974676664405004)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Desc Articulo'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12975073926405004)
,p_db_column_name=>'CANT_DISPON'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12975449752405004)
,p_db_column_name=>'VOLUMEN'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Volumen'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D0000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12975886292405004)
,p_db_column_name=>'PEDIDOS_AUTORIZADOS'
,p_display_order=>22
,p_column_identifier=>'M'
,p_column_label=>'Pedidos Autorizados'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12976265339405004)
,p_db_column_name=>'PEDIDOS_PENIENTES'
,p_display_order=>32
,p_column_identifier=>'N'
,p_column_label=>'Pedidos Pendientes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12976676370405004)
,p_db_column_name=>'PRECIO_LISTA'
,p_display_order=>42
,p_column_identifier=>'O'
,p_column_label=>'Precio Lista'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108922288774676421)
,p_db_column_name=>'LARGO_CM'
,p_display_order=>52
,p_column_identifier=>'P'
,p_column_label=>'Largo Cm'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108922314847676422)
,p_db_column_name=>'ANCHO_CM'
,p_display_order=>62
,p_column_identifier=>'Q'
,p_column_label=>'Ancho Cm'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108922440319676423)
,p_db_column_name=>'ALTO_CM'
,p_display_order=>72
,p_column_identifier=>'R'
,p_column_label=>'Alto Cm'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108922571351676424)
,p_db_column_name=>'COD_EAN'
,p_display_order=>82
,p_column_identifier=>'S'
,p_column_label=>'Cod Ean'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108923383192676432)
,p_db_column_name=>'PESO_GR'
,p_display_order=>92
,p_column_identifier=>'T'
,p_column_label=>'Peso Gr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(390607137527583028)
,p_db_column_name=>'ESTIBA_MAX'
,p_display_order=>102
,p_column_identifier=>'U'
,p_column_label=>'Estiba Max'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(85643434945275841)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'614583'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_view_mode=>'REPORT'
,p_report_columns=>'COD_SUCURSAL:DESC_SUCURSAL:MARCA:COD_ART_CORTO:COD_ARTICULO:DESC_ARTICULO:CANT_DISPON:VOLUMEN:PEDIDOS_AUTORIZADOS:PEDIDOS_PENIENTES:ALTO_CM:ANCHO_CM:LARGO_CM:COD_EAN:ESTIBA_MAX:PESO_GR:'
,p_sum_columns_on_break=>'CANT_DISPON:VOLUMEN'
);
wwv_flow_imp_page.create_worksheet_group_by(
 p_id=>wwv_flow_imp.id(437430692526796217)
,p_report_id=>wwv_flow_imp.id(85643434945275841)
,p_group_by_columns=>'MARCA:COD_ART_CORTO:COD_ARTICULO:DESC_ARTICULO'
,p_function_01=>'SUM'
,p_function_column_01=>'CANT_DISPON'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'Cantidad'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'Y'
,p_function_02=>'SUM'
,p_function_column_02=>'VOLUMEN'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_label_02=>'Volumen'
,p_function_format_mask_02=>'999G999G999G999G990'
,p_function_sum_02=>'Y'
,p_function_03=>'SUM'
,p_function_column_03=>'PEDIDOS_AUTORIZADOS'
,p_function_db_column_name_03=>'APXWS_GBFC_03'
,p_function_label_03=>'Ped. Autorizados'
,p_function_format_mask_03=>'999G999G999G999G990'
,p_function_sum_03=>'Y'
,p_function_04=>'SUM'
,p_function_column_04=>'PEDIDOS_PENIENTES'
,p_function_db_column_name_04=>'APXWS_GBFC_04'
,p_function_label_04=>'Ped. Pendientes'
,p_function_format_mask_04=>'999G999G999G999G990'
,p_function_sum_04=>'Y'
,p_sort_column_01=>'DESC_ARTICULO'
,p_sort_direction_01=>'ASC'
,p_sort_column_02=>'APXWS_GBFC_01'
,p_sort_direction_02=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(200226051942718434)
,p_plug_name=>'Stock'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(200226161133718435)
,p_plug_name=>'Stock 179'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'COD_SUCURSAL , DESC_SUCURSAL,  DESC_RUBRO,  DESC_DIVISION  ,DESC_CATEGOGIRA ,',
' DESC_FAMILIA  ,MARCA  ,COD_ART_CORTO,  COD_ARTICULO,  DESC_ARTICULO,  CANT_DISPON,  VOLUMEN,',
'   PEDIDOS_AUTORIZADOS,  PEDIDOS_PENIENTES',
'',
'FROM (select v.cod_sucursal, v.desc_sucursal, v.desc_rubro, v.desc_division, v.desc_categogira, v.desc_familia, v.marca,',
'v.cod_art_corto, v.cod_articulo, v.desc_articulo, v.cant_dispon, v.volumen,',
'(SELECT sum(cantidad)',
'FROM V_PEDIDOS_STOCK_APEX s',
'where s.cod_articulo=v.cod_articulo',
'and s.autorizacion=''AUTORIZADO''',
'and s.cod_empresa=v.cod_empresa',
'AND :P65_VER_PEDIDOS=''S''',
'AND SUCURSAL_PEDIDO=V.COD_SUCURSAL)PEDIDOS_AUTORIZADOS,',
'(SELECT sum(cantidad)',
'FROM V_PEDIDOS_STOCK_APEX s',
'where s.cod_articulo=v.cod_articulo',
'and s.cod_empresa=v.cod_empresa',
'and s.autorizacion=''PENDIENTE''',
'AND :P65_VER_PEDIDOS=''S''',
'AND SUCURSAL_PEDIDO=V.COD_SUCURSAL)PEDIDOS_PENIENTES',
'from v_stock_apex v',
'WHERE (cod_rubro =  :P65_RUBRO OR :P65_RUBRO IS NULL )',
'AND (COD_CATEGORIA = :P65_CATEGORIA OR :P65_CATEGORIA IS NULL)',
'AND (COD_DIVISION = :P65_DIVISION OR :P65_DIVISION IS NULL)',
' AND V.COD_SUCURSAL IN (''179'')',
' and v.cod_empresa=:p_cod_empresa',
'AND (COD_FAMILIA = :P65_FAMILIA OR :P65_FAMILIA IS NULL)',
'AND (COD_ARTICULO = :P65_COD_ARTICULO OR :P65_COD_ARTICULO IS NULL)',
'AND (COD_ART_CORTO = :P65_COD_ART_CORTO OR :P65_COD_ART_CORTO IS NULL)',
'and (cod_sucursal = :P65_SUCURSAL OR :P65_SUCURSAL IS NULL)',
'AND (cod_marca = :P65_MARCA OR :P65_MARCA IS NULL))',
'WHERE (PEDIDOS_PENIENTES>0  OR PEDIDOS_AUTORIZADOS>0 OR CANT_DISPON>0)',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P65_RUBRO,P65_DIVISION,P65_FAMILIA,P65_CATEGORIA,P65_COD_ARTICULO,P65_COD_ART_CORTO,P65_SUCURSAL,P65_MARCA,P65_VER_PEDIDOS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
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
 p_id=>wwv_flow_imp.id(200226304738718436)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'INV'
,p_internal_uid=>200226304738718436
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12978391372405006)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12978749763405007)
,p_db_column_name=>'DESC_SUCURSAL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Desc Sucursal'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12979182159405007)
,p_db_column_name=>'DESC_RUBRO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Desc Rubro'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12979537995405007)
,p_db_column_name=>'DESC_DIVISION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Desc Division'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12979910935405007)
,p_db_column_name=>'DESC_CATEGOGIRA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Desc Categogira'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12980320695405007)
,p_db_column_name=>'DESC_FAMILIA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Desc Familia'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12980716513405008)
,p_db_column_name=>'MARCA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Marca'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12981149743405008)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12981558077405008)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Articulo'
,p_column_link=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.:RP,43:P43_COD_ARTICULO:#COD_ARTICULO#'
,p_column_linktext=>'#COD_ARTICULO#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12981921657405008)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Desc Articulo'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12982335121405008)
,p_db_column_name=>'CANT_DISPON'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12982730893405008)
,p_db_column_name=>'VOLUMEN'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Volumen'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D0000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12983129190405009)
,p_db_column_name=>'PEDIDOS_AUTORIZADOS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Pedidos Autorizados'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12983536919405009)
,p_db_column_name=>'PEDIDOS_PENIENTES'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Pedidos Pendientes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(200240163940745817)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1760550'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_SUCURSAL:DESC_SUCURSAL:DESC_RUBRO:DESC_DIVISION:DESC_CATEGOGIRA:DESC_FAMILIA:MARCA:COD_ART_CORTO:COD_ARTICULO:DESC_ARTICULO:CANT_DISPON:VOLUMEN:PEDIDOS_AUTORIZADOS:PEDIDOS_PENIENTES'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(509408314523358840)
,p_plug_name=>'Sabana'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FECHA_ingreso,  DESC_RUBRO,  DESC_DIVISION  ,DESC_CATEGOGIRA ,',
' DESC_FAMILIA  ,MARCA  ,COD_ART_CORTO,  COD_ARTICULO,  DESC_ARTICULO,  CANT_DISPON,  VOLUMEN,',
'   PEDIDOS_AUTORIZADOS,  PEDIDOS_PENIENTES',
'',
'FROM (select   ''PRODUCTOS'' desc_rubro, d.DESC_DIVISION desc_division, c.descripcion desc_categogira, null desc_familia, m.descripcion marca,',
's.cod_art_corto, v.cod_articulo, S.DESCRIPCION desc_articulo, v.CANT CANT_DISPON, v.VOL VOLUMEN,',
'0 PEDIDOS_AUTORIZADOS,',
'0 PEDIDOS_PENIENTES, V.fecha_ingreso',
'from V_EN_TRANSITO_SABANA v, st_articulos s, st_marcas m, st_division_articulos d, st_categorias c',
'WHERE (cod_rubro =  :P65_RUBRO OR :P65_RUBRO IS NULL )',
'AND (s.COD_CATEGORIA = :P65_CATEGORIA OR :P65_CATEGORIA IS NULL)',
'AND (s.COD_DIVISION = :P65_DIVISION OR :P65_DIVISION IS NULL)',
'and s.cod_emprEsa= :P_COD_EMPRESA',
'AND S.COD_ARTICULO=V.COD_ARTICULO',
'AND  V.CANT>0',
'and v.cod_empresa=:P_COD_EMPRESA',
'and s.cod_marca=m.cod_marca',
'and s.cod_division=d.cod_division',
' ',
'and s.cod_categoria=c.cod_categoria',
'and s.cod_empresa=c.cod_empresa',
'AND (s.COD_FAMILIA = :P65_FAMILIA OR :P65_FAMILIA IS NULL)',
'AND (S.COD_ARTICULO = :P65_COD_ARTICULO OR :P65_COD_ARTICULO IS NULL)',
'AND (COD_ART_CORTO = :P65_COD_ART_CORTO OR :P65_COD_ART_CORTO IS NULL)',
'AND (s.cod_marca = :P65_MARCA OR :P65_MARCA IS NULL))',
' ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P65_RUBRO,P65_DIVISION,P65_FAMILIA,P65_CATEGORIA,P65_COD_ARTICULO,P65_COD_ART_CORTO,P65_SUCURSAL,P65_MARCA,P65_VER_PEDIDOS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
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
 p_id=>wwv_flow_imp.id(509408445956358841)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'INV'
,p_internal_uid=>509408445956358841
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509408850603358845)
,p_db_column_name=>'DESC_DIVISION'
,p_display_order=>40
,p_column_identifier=>'A'
,p_column_label=>'Desc Division'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509408978765358846)
,p_db_column_name=>'DESC_CATEGOGIRA'
,p_display_order=>50
,p_column_identifier=>'B'
,p_column_label=>'Desc Categogira'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509409025607358847)
,p_db_column_name=>'DESC_FAMILIA'
,p_display_order=>60
,p_column_identifier=>'C'
,p_column_label=>'Desc Familia'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509409101104358848)
,p_db_column_name=>'MARCA'
,p_display_order=>70
,p_column_identifier=>'D'
,p_column_label=>'Marca'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509409272119358849)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>80
,p_column_identifier=>'E'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509409329979358850)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>90
,p_column_identifier=>'F'
,p_column_label=>'Cod Articulo'
,p_column_link=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.:RP,43:P43_COD_ARTICULO:#COD_ARTICULO#'
,p_column_linktext=>'#COD_ARTICULO#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(514016455109528801)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>100
,p_column_identifier=>'G'
,p_column_label=>'Desc Articulo'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(514016594970528802)
,p_db_column_name=>'CANT_DISPON'
,p_display_order=>110
,p_column_identifier=>'H'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(514016680753528803)
,p_db_column_name=>'VOLUMEN'
,p_display_order=>120
,p_column_identifier=>'I'
,p_column_label=>'Volumen'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D0000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(514016702001528804)
,p_db_column_name=>'PEDIDOS_AUTORIZADOS'
,p_display_order=>130
,p_column_identifier=>'J'
,p_column_label=>'Pedidos Autorizados'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(514016867997528805)
,p_db_column_name=>'PEDIDOS_PENIENTES'
,p_display_order=>140
,p_column_identifier=>'K'
,p_column_label=>'Pedidos Pendientes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(514017170770528808)
,p_db_column_name=>'FECHA_INGRESO'
,p_display_order=>150
,p_column_identifier=>'M'
,p_column_label=>'Fecha Ingreso'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(514017260083528809)
,p_db_column_name=>'DESC_RUBRO'
,p_display_order=>160
,p_column_identifier=>'N'
,p_column_label=>'Desc Rubro'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(514033418305577786)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'5140335'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DESC_DIVISION:DESC_CATEGOGIRA:DESC_FAMILIA:MARCA:FECHA_INGRESO:COD_ART_CORTO:COD_ARTICULO:DESC_ARTICULO:CANT_DISPON:VOLUMEN:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(75544580344544133)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(85567544448336767)
,p_button_name=>'Volver'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P65_INDICADOR_RETURN'
,p_button_condition2=>'S'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-arrow-circle-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(108922614229676425)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(85567544448336767)
,p_button_name=>'Limpiar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_button_position=>'BELOW_BOX'
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12966765486404999)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(85567544448336767)
,p_button_name=>'Buscar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12967161217404999)
,p_name=>'P65_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(85567544448336767)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion||''-''||cod_sucursal, cod_sucursal ',
'from sucursales ',
'where cod_empresa=:p_cod_empresa'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
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
 p_id=>wwv_flow_imp.id(12967592081405000)
,p_name=>'P65_RUBRO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(85567544448336767)
,p_item_default=>'VA'
,p_prompt=>'Rubro'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION, COD_RUBRO',
'FROM ST_RUBRO ',
'WHERE COD_EMPRESA=:p_cod_empresa',
'AND COD_RUBRO IN (''PR'',''RE'',''VA'')'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12967984923405000)
,p_name=>'P65_DIVISION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(85567544448336767)
,p_prompt=>'Division'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_DIVISION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESC_DIVISION, COD_DIVISION FROM ST_DIVISION_ARTICULOS',
'WHERE ESTADO=''A''',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12968305303405000)
,p_name=>'P65_MARCA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(85567544448336767)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION, COD_MARCA',
'FROM ST_MARCAS ',
'WHERE ESTADO=''S''',
'ORDER BY DESCRIPCION'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12968775943405000)
,p_name=>'P65_FAMILIA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(85567544448336767)
,p_prompt=>'Familia'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_FAMILIAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION, COD_FAMILIA FROM ST_FAMILIA',
'WHERE ESTADO=''S''',
'and cod_empresa=:p_cod_empresa',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12969158998405000)
,p_name=>'P65_CATEGORIA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(85567544448336767)
,p_prompt=>'Categoria'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_CATEGORIAS1'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION, COD_CATEGORIA FROM ST_CATEGORIAS',
'WHERE COD_EMPRESA=''1''',
' and nvl(estado,''P'') NOT IN (''I'',''N'') ',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12969597697405001)
,p_name=>'P65_COD_ARTICULO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(85567544448336767)
,p_prompt=>'Cod Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_articulo||'' - ''||descripcion descripcion, ',
'         cod_articulo codigo, cod_art_corto, cod_origen_art, cod_ean',
'    FROM st_articulos ',
'   WHERE cod_empresa = :p_cod_empresa ',
'     AND ( estado is null or estado <> ''I'' )',
'    ORDER BY descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12969924600405001)
,p_name=>'P65_COD_ART_CORTO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(85567544448336767)
,p_prompt=>'Cod Art Corto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12970389256405001)
,p_name=>'P65_VER_PEDIDOS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(85567544448336767)
,p_item_default=>'N'
,p_prompt=>'Ver Cantidad de Pedidos'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'SI'
,p_attribute_04=>'N'
,p_attribute_05=>'NO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75544477874544132)
,p_name=>'P65_INDICADOR_RETURN'
,p_item_sequence=>990
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(842569467219550045)
,p_name=>'P65_VER_DEPOSITOS_FACT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(85567544448336767)
,p_item_default=>'S'
,p_prompt=>'Ver Depositos Facturables'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'SI'
,p_attribute_04=>'N'
,p_attribute_05=>'NO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12984284823405009)
,p_name=>'buscar'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12966765486404999)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12984747644405010)
,p_event_id=>wwv_flow_imp.id(12984284823405009)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(85626294471451058)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12985226658405010)
,p_event_id=>wwv_flow_imp.id(12984284823405009)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(200226161133718435)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(514017029194528807)
,p_event_id=>wwv_flow_imp.id(12984284823405009)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(509408314523358840)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(78483450688266119)
,p_name=>'CERRAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(75544580344544133)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(78483570783266120)
,p_event_id=>wwv_flow_imp.id(78483450688266119)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.close();'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(861495301903195504)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INICIO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P65_VER_PEDIDOS:=''N'';',
':P65_VER_DEPOSITOS_FACT:=''S'';'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(108922934526676428)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'limpiar'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(108922614229676425)
);
wwv_flow_imp.component_end;
end;
/
