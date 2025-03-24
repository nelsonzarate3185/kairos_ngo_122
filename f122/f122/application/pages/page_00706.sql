prompt --application/pages/page_00706
begin
--   Manifest
--     PAGE: 00706
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
 p_id=>706
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Forecast'
,p_alias=>'FORECAST1'
,p_step_title=>'Forecast'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color:  hsl(147, 69%, 87%)  !important;',
'   border-color:  #c9fceb  !important;',
'}',
'',
'',
'#GRILLA   th.a-IRR-header {',
'  background-color:  #00857e;',
'  color: yellow;',
' /* border-color: rgb(43, 79, 80);*/',
'}',
'',
'',
'',
'.t-Form-label{',
'    color:  darkblue !important;',
'    font-weight: bold !important;;',
'    }',
'',
'#PARAMETROS{',
'      background-color: #003a85 !important;',
'      box-shadow: black 1px 1px 5px 1px;}',
'',
'#P94_FECHA_FIN, #P94_FECHA_INI, #P94_ORIGEN, #P94_ESTADO, #P94_CLIENTE {',
'    background: white;',
'    border-color: yellow; ',
'    color: darkblue;',
'}      ',
'',
'.a-IRR-header {',
'    background-color: #008548 !important;',
'    font-weight: bold !important;',
'    border: 0.5px solid #16488a !important;',
'}',
'',
'  .a-IRR-headerLink{',
'    background-color: #008548 !important;',
'	  color: #FFED00 !important;    }',
'',
'    .a-IRR-headerLabel{',
'    background-color: #008548 !important;',
'	  color: #FFED00 !important;    }',
'   ',
'.a-IRR-table tr td { ',
'        color: black !important;',
'   }',
' ',
'.a-IRR-table td {',
'    border: 1px solid #003a85b7 !important;',
'}',
'',
'',
'',
'#btn{ ',
'       ',
'        background:white;',
'        background-image: linear-gradient(180deg, rgb(1, 1, 131)  0%, #003a85de 100%);',
'        color:  yellow; ',
'        justify-content: center;',
'        align-items: center; ',
'        box-shadow: #79beca 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color: darkblue; ',
'}',
'',
'#btn2, #btn3, #btn4{ ',
'       ',
'        background:white;',
'        background-image: linear-gradient(180deg, rgb(1, 1, 131)  0%, #003a85de 100%);',
'        color:  yellow; ',
'        justify-content: center;',
'        align-items: center; ',
'        box-shadow: #79beca 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color: darkblue; ',
'}',
'',
'',
'',
'',
'',
' ',
'',
'',
'',
'.chip {',
'    padding: 4px 10px;',
'    border-radius: 16px;',
'    box-shadow: 0 1px 2px 0 rgba(0, 0, 0, .05);',
'}',
'',
'.chip-success {',
'    background: #cdffe0;',
'    color: #00592e;',
'}',
'',
'.chip-danger {',
'    background: #ffebeb;',
'    color: #a50000;',
'}',
'',
'.chip-warning {',
'    background: #fffedc;',
'    color: #764400;',
'}',
'',
'.chip-primary {',
'    background: #e9f5ff;',
'    color: #004f95;',
'}',
'',
'.chip-purple {',
'    background: #eddbfa;',
'    color: #5200a5;',
'}',
'',
'.chip-pink {',
'    background: #ffeffa;',
'    color: #990067;',
'}',
'',
'.chip-orange {',
'    background: #fff2e4;',
'    color: #8d3600;',
'}',
'',
'.chip-teal {',
'    background: #e4fdff;',
'    color: #00526e;',
'}',
'',
'.chip-yellow {',
'    background: #fff2e4;',
'    color:  yellow;',
'}',
'',
'#btndet{   ',
'        background:white;',
'        background-image: linear-gradient(180deg, rgb(1, 1, 131)  0%, #003a85de 100%);',
'        color:  yellow; ',
'        ',
'        justify-content: center;',
'        align-items: center; ',
'        box-shadow: #79beca 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color: rgb(97, 91, 0); ',
'        ',
'}',
'',
'',
'',
'.no-parent-padding {',
'    padding: 8px;',
'    margin: -12px -12px;',
'}',
'',
'.yellow-background {',
'    background-clip: content-box;',
'    box-shadow: inset 0 0 0 12px yellow;',
'    background-color: yellow;',
'}',
'',
'.brown-background {',
'    background-clip: content-box;',
'    box-shadow: inset 0 0 0 12px #CDDC39;',
'    background-color: #CDDC39;',
'}',
'',
'',
'.pink-background {',
'    background-clip: content-box;',
'    box-shadow: inset 0 0 0 12px pink;',
'    background-color: pink;',
'}',
'',
'.red-background {',
'    background-clip: content-box;',
'    box-shadow: inset 0 0 0 12px red;',
'    background-color: red;',
'}',
'',
'',
'',
'2',
'3',
'4',
'5',
'.colorContainer {',
'   position: relative;',
'   padding: 8px 12px;',
'   margin: -8px -12px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240906153519'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(253905218384053681)
,p_plug_name=>'Alta de Articulos'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'd.COD_EMPRESA,',
'd.COD_ARTICULO,',
'd.FECHA,',
'd.CANTIDAD,',
'd.COSTO_UNITARIO,',
'd.OBSERVACION,',
'd.ESTADO,',
'd.COD_USUARIO_ALTA,',
'd.FECHA_ALTA,',
'd.COD_USUARIO_MOD,',
'd.FECHA_MODIFICACION, d.rowid rowforecast, m.descripcion marca, c.descripcion categoria,',
'ss.cod_art_corto',
'',
'',
'from CM_FORECAST_DETALLE d, st_articulos ss, st_marcas m, st_categorias c',
'where d.cOD_EMPRESA=:P_COD_EMPRESA',
'and fecha between :P706_FEC_INI_A1 and :P706_FEC_FIN_A1',
'and d.cod_empresa=ss.COD_EMPRESA',
'and d.cod_articulo=ss.cod_articulo',
'and ss.cod_marca=m.cod_marca',
'and ss.cod_categoria=c.cod_categoria',
'and (ss.COD_CATEGORIA = :P706_COD_CATEGORIA or :P706_COD_CATEGORIA is null)',
'and (ss.cod_proveedor_dflt = :P706_COD_PROVEEDOR or :P706_COD_PROVEEDOR is null)',
'and (ss.cod_marca = :P706_COD_MARCA or :P706_COD_MARCA is null)',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P706_FEC_INI_A1,P706_FEC_FIN_A1,P706_COD_RUBROS,P706_COD_FAMILIA,P706_COD_CATEGORIA,P706_COD_LINEAS,P706_COD_PROVEEDOR,P706_COD_MARCA,P706_COD_DIVISION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Alta de Articulos'
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
 p_id=>wwv_flow_imp.id(253905336625053681)
,p_name=>'Forecast'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:707:&SESSION.::&DEBUG.:RP,:P707_ROWID:#ROWFORECAST##ROWID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'INV'
,p_internal_uid=>253905336625053681
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(253905771207053683)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(253906939402053684)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(253907372505053684)
,p_db_column_name=>'COSTO_UNITARIO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Costo Unitario'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(253907716982053684)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(253908183840053685)
,p_db_column_name=>'ESTADO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(253908506551053685)
,p_db_column_name=>'COD_USUARIO_ALTA'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Cod Usuario Alta'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(253908939297053685)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Fecha Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(253909346059053685)
,p_db_column_name=>'COD_USUARIO_MOD'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Cod Usuario Mod'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(253909713307053685)
,p_db_column_name=>'FECHA_MODIFICACION'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Fecha Modificacion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131642686001697309)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>21
,p_column_identifier=>'M'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(257282732719802528)
,p_db_column_name=>'FECHA'
,p_display_order=>31
,p_column_identifier=>'N'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(257282933700802530)
,p_db_column_name=>'ROWFORECAST'
,p_display_order=>41
,p_column_identifier=>'O'
,p_column_label=>'Rowforecast'
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
 p_id=>wwv_flow_imp.id(257284792642802548)
,p_db_column_name=>'MARCA'
,p_display_order=>51
,p_column_identifier=>'P'
,p_column_label=>'Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(257284875293802549)
,p_db_column_name=>'CATEGORIA'
,p_display_order=>61
,p_column_identifier=>'Q'
,p_column_label=>'Categoria'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(257284911812802550)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>71
,p_column_identifier=>'R'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(253912643889054803)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2539127'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MARCA:CATEGORIA:COD_ART_CORTO:COD_ARTICULO:CANTIDAD:COSTO_UNITARIO:OBSERVACION:ESTADO:COD_USUARIO_ALTA:FECHA_ALTA:COD_USUARIO_MOD:FECHA_MODIFICACION:FECHA:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(266599067219705411)
,p_plug_name=>'Datos'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>30
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(267088275399133135)
,p_plug_name=>'Forecast'
,p_region_name=>'forecast'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nro, cod_empresa, cod_rubro,desc_rubro,marca,categoria,cod_articulo,cod_art_corto,orden, ',
'descripcion,cantidad,cod_marca,marca_descripcion,cod_categoria,costo_prom,precio_promedio,ind_quiebre,no_stock,enero,febrero,marzo,abril,mayo,junio,',
'julio,agosto,setiembre,octubre,noviembre,diciembre,total,stock,transito,enero_forecast,febrero_forecast,marzo_forecast,abril_forecast,',
'mayo_forecast,junio_forecast,julio_forecast,agosto_forecast,setiembre_forecast,octubre_forecast,noviembre_forecast,diciembre_forecast,',
'enero_ventas,febrero_ventas,marzo_ventas,abril_ventas,mayo_ventas,junio_ventas,julio_ventas,agosto_ventas,setiembre_ventas,octubre_ventas,',
'noviembre_ventas,diciembre_ventas,',
'case when enero_forecast>0 then ',
'round(enero_ventas/enero_forecast*100) else 100 end variacion_enero, ',
'case when febrero_forecast>0 then ',
'round(febrero_ventas/febrero_forecast*100) else 100 end febrero_variacion,',
'case when marzo_forecast>0 then ',
'round(enero_ventas/marzo_forecast*100) else 100 end marzo_variacion,',
'case when abril_forecast>0 then ',
'round(abril_ventas/abril_forecast*100) else 10 end abril_variacion,',
'case when mayo_forecast>0 then ',
'round(mayo_ventas/mayo_forecast*100) else 100 end mayo_variacion,',
'case when junio_forecast>0 then ',
'round(junio_ventas/junio_forecast*100) else 100 end junio_variacion,',
'case when julio_forecast>0 then ',
'round(julio_ventas/julio_forecast*100) else 100 end julio_variacion,',
'case when agosto_forecast>0 then ',
'round(agosto_ventas/agosto_forecast*100) else 100 end agosto_variacion,',
'case when setiembre_forecast>0 then ',
'round(setiembre_ventas/setiembre_forecast*100) else 100 end setiembre_variacion,',
'',
'case when octubre_forecast>0 then ',
'round(octubre_ventas/octubre_forecast*100) else 100 end octubre_variacion,',
'case when noviembre_forecast>0 then ',
'round(noviembre_ventas/noviembre_forecast*100) else 100 end noviembre_variacion,',
'case when diciembre_forecast>0 then ',
'round(diciembre_ventas/diciembre_forecast*100) else 100 end diciembre_variacion',
'from(SELECT C001 NRO, C002 COD_EMPRESA, C003 COD_RUBRO, C004 DESC_RUBRO, m.descripcion marca,c.descripcion categoria,',
'       case when nvl(C024, ''N'') = ''S'' then ''<span class="chip chip-danger  ">'' || C005 || ''</span>'' else c005 end COD_ARTICULO,        ',
'       case when nvl(C024, ''N'') = ''S'' then ''<span class="chip chip-danger  ">'' || C006 || ''</span>'' else c006 end COD_ART_CORTO,',
'       C007 ORDEN,    ',
'       case when nvl(C024, ''N'') = ''S'' then ''<span class="chip chip-danger  ">'' || C009 || ''</span>'' else c009 end DESCRIPCION,     ',
'       TO_NUMBER(C013) CANTIDAD, C014 COD_MARCA, C015 MARCA_DESCRIPCION, C016 COD_CATEGORIA,  C017 COSTO_PROM, TO_NUMBER(C018) PRECIO_PROMEDIO,',
'       C027 IND_QUIEBRE,',
'       C024 NO_STOCK,(C028) enero, (C029) febrero, (C030) marzo, (C031) abril,  (C032) mayo,',
'       (C033) junio, (C034) julio, (C035) agosto,(C036) setiembre, (C037) octubre, (C038) noviembre,',
'       (C039) diciembre,  to_number(C040) Total, to_number(C043) Stock, to_number(C044) Transito,',
'       (select SUM(F.CANTIDAD)from CM_FORECAST_DETALLE f',
'         where f.cod_empresa = s.cod_empresa',
'           and f.cod_Articulo = s.cod_articulo',
'           and TO_CHAR(f.fecha, ''MM/YYYY'') =',
'               ''01/''||to_char(to_date(:P706_FEC_INI_A1,''DD/MM/YYYY''), ''YYYY'')) enero_forecast,',
'       (select SUM(F.CANTIDAD)from CM_FORECAST_DETALLE f',
'         where f.cod_empresa = s.cod_empresa',
'           and f.cod_Articulo = s.cod_articulo',
'           and TO_CHAR(f.fecha, ''MM/YYYY'') =',
'               ''02/''||to_char(to_date(:P706_FEC_INI_A1,''DD/MM/YYYY''), ''YYYY'')) febrero_forecast,',
'       (select SUM(F.CANTIDAD)from CM_FORECAST_DETALLE f',
'         where f.cod_empresa = s.cod_empresa',
'           and f.cod_Articulo = s.cod_articulo',
'           and TO_CHAR(f.fecha, ''MM/YYYY'') =',
'               ''03/''||to_char(to_date(:P706_FEC_INI_A1,''DD/MM/YYYY''), ''YYYY'')) marzo_forecast,',
'       (select SUM(F.CANTIDAD)from CM_FORECAST_DETALLE f',
'         where f.cod_empresa = s.cod_empresa',
'           and f.cod_Articulo = s.cod_articulo',
'           and TO_CHAR(f.fecha, ''MM/YYYY'') =',
'               ''04/''||to_char(to_date(:P706_FEC_INI_A1,''DD/MM/YYYY''), ''YYYY'')) abril_forecast,',
'       (select SUM(F.CANTIDAD)from CM_FORECAST_DETALLE f',
'         where f.cod_empresa = s.cod_empresa',
'           and f.cod_Articulo = s.cod_articulo',
'           and TO_CHAR(f.fecha, ''MM/YYYY'') =',
'               ''05/''||to_char(to_date(:P706_FEC_INI_A1,''DD/MM/YYYY''), ''YYYY'')) mayo_forecast,',
'       (select SUM(F.CANTIDAD)from CM_FORECAST_DETALLE f',
'         where f.cod_empresa = s.cod_empresa',
'           and f.cod_Articulo = s.cod_articulo',
'           and TO_CHAR(f.fecha, ''MM/YYYY'') =',
'               ''06/''||to_char(to_date(:P706_FEC_INI_A1,''DD/MM/YYYY''), ''YYYY'')) junio_forecast,',
'       (select SUM(F.CANTIDAD)from CM_FORECAST_DETALLE f',
'         where f.cod_empresa = s.cod_empresa',
'           and f.cod_Articulo = s.cod_articulo',
'           and TO_CHAR(f.fecha, ''MM/YYYY'') =',
'               ''07/''||to_char(to_date(:P706_FEC_INI_A1,''DD/MM/YYYY''), ''YYYY'')) julio_forecast,',
'       (select SUM(F.CANTIDAD)from CM_FORECAST_DETALLE f',
'         where f.cod_empresa = s.cod_empresa',
'           and f.cod_Articulo = s.cod_articulo',
'           and TO_CHAR(f.fecha, ''MM/YYYY'') =',
'               ''08/''||to_char(to_date(:P706_FEC_INI_A1,''DD/MM/YYYY''), ''YYYY'')) agosto_forecast,',
'       (select SUM(F.CANTIDAD)from CM_FORECAST_DETALLE f',
'         where f.cod_empresa = s.cod_empresa',
'           and f.cod_Articulo = s.cod_articulo',
'           and TO_CHAR(f.fecha, ''MM/YYYY'') =',
'               ''09/''||to_char(to_date(:P706_FEC_INI_A1,''DD/MM/YYYY''), ''YYYY'')) setiembre_forecast,',
'       (select SUM(F.CANTIDAD)from CM_FORECAST_DETALLE f',
'         where f.cod_empresa = s.cod_empresa',
'           and f.cod_Articulo = s.cod_articulo',
'           and TO_CHAR(f.fecha, ''MM/YYYY'') =',
'               ''10/''||to_char(to_date(:P706_FEC_INI_A1,''DD/MM/YYYY''), ''YYYY'')) octubre_forecast,',
'       (select SUM(F.CANTIDAD)from CM_FORECAST_DETALLE f',
'         where f.cod_empresa = s.cod_empresa',
'           and f.cod_Articulo = s.cod_articulo',
'           and TO_CHAR(f.fecha, ''MM/YYYY'') =',
'               ''11/''||to_char(to_date(:P706_FEC_INI_A1,''DD/MM/YYYY''), ''YYYY'')) noviembre_forecast,',
'       (select SUM(F.CANTIDAD)from CM_FORECAST_DETALLE f',
'         where f.cod_empresa = s.cod_empresa',
'           and f.cod_Articulo = s.cod_articulo',
'           and TO_CHAR(f.fecha, ''MM/YYYY'') =',
'               ''12/''||to_char(to_date(:P706_FEC_INI_A1,''DD/MM/YYYY''), ''YYYY'')) diciembre_forecast,',
'               ',
'                (select SUM(v.CANTIDAD)from v_ventas_apex v',
'         where  v.cod_Articulo = s.cod_articulo',
'           and TO_CHAR(v.fec_factura, ''MM/YYYY'') =',
'               ''01/''||to_char(to_date(:P706_FEC_INI_A1,''DD/MM/YYYY''), ''YYYY'')) enero_ventas,',
'               (select SUM(v.CANTIDAD)from v_ventas_apex v',
'         where  v.cod_Articulo = s.cod_articulo',
'           and TO_CHAR(v.fec_factura, ''MM/YYYY'') =',
'               ''02/''||to_char(to_date(:P706_FEC_INI_A1,''DD/MM/YYYY''), ''YYYY'')) febrero_ventas,  ',
'               (select SUM(v.CANTIDAD)from v_ventas_apex v',
'         where  v.cod_Articulo = s.cod_articulo',
'           and TO_CHAR(v.fec_factura, ''MM/YYYY'') =',
'               ''03/''||to_char(to_date(:P706_FEC_INI_A1,''DD/MM/YYYY''), ''YYYY'')) marzo_ventas,',
'                  (select SUM(v.CANTIDAD)from v_ventas_apex v',
'         where  v.cod_Articulo = s.cod_articulo',
'           and TO_CHAR(v.fec_factura, ''MM/YYYY'') =',
'               ''04/''||to_char(to_date(:P706_FEC_INI_A1,''DD/MM/YYYY''), ''YYYY'')) abril_ventas,',
'                   (select SUM(v.CANTIDAD)from v_ventas_apex v',
'         where  v.cod_Articulo = s.cod_articulo',
'           and TO_CHAR(v.fec_factura, ''MM/YYYY'') =',
'               ''05/''||to_char(to_date(:P706_FEC_INI_A1,''DD/MM/YYYY''), ''YYYY'')) mayo_ventas,',
'                   (select SUM(v.CANTIDAD)from v_ventas_apex v',
'         where  v.cod_Articulo = s.cod_articulo',
'           and TO_CHAR(v.fec_factura, ''MM/YYYY'') =',
'               ''06/''||to_char(to_date(:P706_FEC_INI_A1,''DD/MM/YYYY''), ''YYYY'')) junio_ventas,',
'                   (select SUM(v.CANTIDAD)from v_ventas_apex v',
'         where  v.cod_Articulo = s.cod_articulo',
'           and TO_CHAR(v.fec_factura, ''MM/YYYY'') =',
'               ''07/''||to_char(to_date(:P706_FEC_INI_A1,''DD/MM/YYYY''), ''YYYY'')) julio_ventas,',
'                   (select SUM(v.CANTIDAD)from v_ventas_apex v',
'         where  v.cod_Articulo = s.cod_articulo',
'           and TO_CHAR(v.fec_factura, ''MM/YYYY'') =',
'               ''08/''||to_char(to_date(:P706_FEC_INI_A1,''DD/MM/YYYY''), ''YYYY'')) agosto_ventas,',
'                   (select SUM(v.CANTIDAD)from v_ventas_apex v',
'         where  v.cod_Articulo = s.cod_articulo',
'           and TO_CHAR(v.fec_factura, ''MM/YYYY'') =',
'               ''09/''||to_char(to_date(:P706_FEC_INI_A1,''DD/MM/YYYY''), ''YYYY'')) setiembre_ventas,',
'                   (select SUM(v.CANTIDAD)from v_ventas_apex v',
'         where  v.cod_Articulo = s.cod_articulo',
'           and TO_CHAR(v.fec_factura, ''MM/YYYY'') =',
'               ''10/''||to_char(to_date(:P706_FEC_INI_A1,''DD/MM/YYYY''), ''YYYY'')) octubre_ventas,',
'                   (select SUM(v.CANTIDAD)from v_ventas_apex v',
'         where  v.cod_Articulo = s.cod_articulo',
'           and TO_CHAR(v.fec_factura, ''MM/YYYY'') =',
'               ''11/''||to_char(to_date(:P706_FEC_INI_A1,''DD/MM/YYYY''), ''YYYY'')) noviembre_ventas,',
'                 (select SUM(v.CANTIDAD)from v_ventas_apex v',
'         where  v.cod_Articulo = s.cod_articulo',
'           and TO_CHAR(v.fec_factura, ''MM/YYYY'') =',
'               ''12/''||to_char(to_date(:P706_FEC_INI_A1,''DD/MM/YYYY''), ''YYYY'')) diciembre_ventas',
'               ',
'',
'  FROM apex_collections, st_articulos s, st_categorias c, st_marcas m',
' where collection_name = ''FORECAST''',
'   and s.cod_empresa = ''1''',
'   and s.cod_articulo = c005',
'   and s.cod_marca = m.cod_marca',
'   and s.cod_empresa = c.cod_empresa',
'   and s.cod_categoria = c.cod_categoria )'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Forecast'
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
 p_id=>wwv_flow_imp.id(267088402544133136)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_detail_link_condition_type=>'FUNCTION_BODY'
,p_detail_link_cond=>'return false;'
,p_detail_link_cond2=>'PLSQL'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_owner=>'ETRINIDAD'
,p_internal_uid=>267088402544133136
);
wwv_flow_imp_page.create_worksheet_col_group(
 p_id=>wwv_flow_imp.id(270586909626883934)
,p_name=>'rubros'
,p_display_sequence=>10
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(256520543316544307)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(256520988223544307)
,p_db_column_name=>'COD_RUBRO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Rubro'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(256521304372544308)
,p_db_column_name=>'DESC_RUBRO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>' Rubro'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(256521782181544308)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>50
,p_group_id=>wwv_flow_imp.id(270586909626883934)
,p_column_identifier=>'E'
,p_column_label=>'Articulo'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(256522186058544308)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>60
,p_group_id=>wwv_flow_imp.id(270586909626883934)
,p_column_identifier=>'F'
,p_column_label=>'Art. Corto'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(256522533839544308)
,p_db_column_name=>'ORDEN'
,p_display_order=>70
,p_group_id=>wwv_flow_imp.id(270586909626883934)
,p_column_identifier=>'G'
,p_column_label=>'Orden'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(256522973318544309)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>90
,p_group_id=>wwv_flow_imp.id(270586909626883934)
,p_column_identifier=>'I'
,p_column_label=>'Descripcion'
,p_column_html_expression=>'<span style=''width:250px;display:inline-block;''>#DESCRIPCION#</span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(256523750435544309)
,p_db_column_name=>'COD_MARCA'
,p_display_order=>130
,p_group_id=>wwv_flow_imp.id(270586909626883934)
,p_column_identifier=>'M'
,p_column_label=>'Cod Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(256524179239544309)
,p_db_column_name=>'MARCA_DESCRIPCION'
,p_display_order=>140
,p_group_id=>wwv_flow_imp.id(270586909626883934)
,p_column_identifier=>'N'
,p_column_label=>'Marca Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(256524553661544309)
,p_db_column_name=>'COD_CATEGORIA'
,p_display_order=>150
,p_group_id=>wwv_flow_imp.id(270586909626883934)
,p_column_identifier=>'O'
,p_column_label=>'Cod Categoria'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(256524936201544309)
,p_db_column_name=>'PRECIO_PROMEDIO'
,p_display_order=>170
,p_group_id=>wwv_flow_imp.id(270586909626883934)
,p_column_identifier=>'Q'
,p_column_label=>'Precio Promedio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(256525375402544310)
,p_db_column_name=>'NRO'
,p_display_order=>240
,p_group_id=>wwv_flow_imp.id(270586909626883934)
,p_column_identifier=>'X'
,p_column_label=>'Nro'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(256526186472544310)
,p_db_column_name=>'COSTO_PROM'
,p_display_order=>270
,p_group_id=>wwv_flow_imp.id(270586909626883934)
,p_column_identifier=>'AA'
,p_column_label=>'Costo Prom'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(256527393030544310)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>310
,p_group_id=>wwv_flow_imp.id(270586909626883934)
,p_column_identifier=>'AN'
,p_column_label=>'Cantidad'
,p_column_html_expression=>'<span class=u-color-20>#CANTIDAD#</span>'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(257280485823802505)
,p_db_column_name=>'IND_QUIEBRE'
,p_display_order=>320
,p_column_identifier=>'AO'
,p_column_label=>'Ind Quiebre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(257280607553802507)
,p_db_column_name=>'NO_STOCK'
,p_display_order=>330
,p_column_identifier=>'AP'
,p_column_label=>'No Stock'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(257283037628802531)
,p_db_column_name=>'ENERO'
,p_display_order=>500
,p_column_identifier=>'BG'
,p_column_label=>'Enero'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(257283181543802532)
,p_db_column_name=>'FEBRERO'
,p_display_order=>510
,p_column_identifier=>'BH'
,p_column_label=>'Febrero'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(257283249075802533)
,p_db_column_name=>'MARZO'
,p_display_order=>520
,p_column_identifier=>'BI'
,p_column_label=>'Marzo'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
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
 p_id=>wwv_flow_imp.id(257283398500802534)
,p_db_column_name=>'ABRIL'
,p_display_order=>530
,p_column_identifier=>'BJ'
,p_column_label=>'Abril'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(257283496737802535)
,p_db_column_name=>'MAYO'
,p_display_order=>540
,p_column_identifier=>'BK'
,p_column_label=>'Mayo'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(257283532696802536)
,p_db_column_name=>'JUNIO'
,p_display_order=>550
,p_column_identifier=>'BL'
,p_column_label=>'Junio'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(257283665157802537)
,p_db_column_name=>'JULIO'
,p_display_order=>560
,p_column_identifier=>'BM'
,p_column_label=>'Julio'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(257283702380802538)
,p_db_column_name=>'AGOSTO'
,p_display_order=>570
,p_column_identifier=>'BN'
,p_column_label=>'Agosto'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(257283857117802539)
,p_db_column_name=>'SETIEMBRE'
,p_display_order=>580
,p_column_identifier=>'BO'
,p_column_label=>'Setiembre'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(257283983420802540)
,p_db_column_name=>'OCTUBRE'
,p_display_order=>590
,p_column_identifier=>'BP'
,p_column_label=>'Octubre'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(257284099054802541)
,p_db_column_name=>'NOVIEMBRE'
,p_display_order=>600
,p_column_identifier=>'BQ'
,p_column_label=>'Noviembre'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(257284100042802542)
,p_db_column_name=>'DICIEMBRE'
,p_display_order=>610
,p_column_identifier=>'BR'
,p_column_label=>'Diciembre'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(257284524725802546)
,p_db_column_name=>'MARCA'
,p_display_order=>650
,p_column_identifier=>'BV'
,p_column_label=>'Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(257284686459802547)
,p_db_column_name=>'CATEGORIA'
,p_display_order=>660
,p_column_identifier=>'BW'
,p_column_label=>'Categoria'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(261096189545814601)
,p_db_column_name=>'TOTAL'
,p_display_order=>670
,p_column_identifier=>'BX'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(261096245750814602)
,p_db_column_name=>'STOCK'
,p_display_order=>680
,p_column_identifier=>'BY'
,p_column_label=>'Stock'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(261096335720814603)
,p_db_column_name=>'TRANSITO'
,p_display_order=>690
,p_column_identifier=>'BZ'
,p_column_label=>'Transito'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509404430006358801)
,p_db_column_name=>'ENERO_FORECAST'
,p_display_order=>700
,p_column_identifier=>'CA'
,p_column_label=>'Enero Forecast'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509404539315358802)
,p_db_column_name=>'FEBRERO_FORECAST'
,p_display_order=>710
,p_column_identifier=>'CB'
,p_column_label=>'Febrero Forecast'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509404606205358803)
,p_db_column_name=>'MARZO_FORECAST'
,p_display_order=>720
,p_column_identifier=>'CC'
,p_column_label=>'Marzo Forecast'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509404782179358804)
,p_db_column_name=>'ABRIL_FORECAST'
,p_display_order=>730
,p_column_identifier=>'CD'
,p_column_label=>'Abril Forecast'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509404862910358805)
,p_db_column_name=>'MAYO_FORECAST'
,p_display_order=>740
,p_column_identifier=>'CE'
,p_column_label=>'Mayo Forecast'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509404943086358806)
,p_db_column_name=>'JUNIO_FORECAST'
,p_display_order=>750
,p_column_identifier=>'CF'
,p_column_label=>'Junio Forecast'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509405071221358807)
,p_db_column_name=>'JULIO_FORECAST'
,p_display_order=>760
,p_column_identifier=>'CG'
,p_column_label=>'Julio Forecast'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509405167314358808)
,p_db_column_name=>'AGOSTO_FORECAST'
,p_display_order=>770
,p_column_identifier=>'CH'
,p_column_label=>'Agosto Forecast'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509405241797358809)
,p_db_column_name=>'SETIEMBRE_FORECAST'
,p_display_order=>780
,p_column_identifier=>'CI'
,p_column_label=>'Setiembre Forecast'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509405363358358810)
,p_db_column_name=>'OCTUBRE_FORECAST'
,p_display_order=>790
,p_column_identifier=>'CJ'
,p_column_label=>'Octubre Forecast'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509405477172358811)
,p_db_column_name=>'NOVIEMBRE_FORECAST'
,p_display_order=>800
,p_column_identifier=>'CK'
,p_column_label=>'Noviembre Forecast'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509405542756358812)
,p_db_column_name=>'DICIEMBRE_FORECAST'
,p_display_order=>810
,p_column_identifier=>'CL'
,p_column_label=>'Diciembre Forecast'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509405688944358813)
,p_db_column_name=>'ENERO_VENTAS'
,p_display_order=>820
,p_column_identifier=>'CM'
,p_column_label=>'Enero Ventas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509405785450358814)
,p_db_column_name=>'FEBRERO_VENTAS'
,p_display_order=>830
,p_column_identifier=>'CN'
,p_column_label=>'Febrero Ventas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509405810281358815)
,p_db_column_name=>'MARZO_VENTAS'
,p_display_order=>840
,p_column_identifier=>'CO'
,p_column_label=>'Marzo Ventas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509405902948358816)
,p_db_column_name=>'ABRIL_VENTAS'
,p_display_order=>850
,p_column_identifier=>'CP'
,p_column_label=>'Abril Ventas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509406025786358817)
,p_db_column_name=>'MAYO_VENTAS'
,p_display_order=>860
,p_column_identifier=>'CQ'
,p_column_label=>'Mayo Ventas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509406108435358818)
,p_db_column_name=>'JUNIO_VENTAS'
,p_display_order=>870
,p_column_identifier=>'CR'
,p_column_label=>'Junio Ventas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509406200238358819)
,p_db_column_name=>'JULIO_VENTAS'
,p_display_order=>880
,p_column_identifier=>'CS'
,p_column_label=>'Julio Ventas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509406308201358820)
,p_db_column_name=>'AGOSTO_VENTAS'
,p_display_order=>890
,p_column_identifier=>'CT'
,p_column_label=>'Agosto Ventas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509406484716358821)
,p_db_column_name=>'SETIEMBRE_VENTAS'
,p_display_order=>900
,p_column_identifier=>'CU'
,p_column_label=>'Setiembre Ventas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509406530465358822)
,p_db_column_name=>'OCTUBRE_VENTAS'
,p_display_order=>910
,p_column_identifier=>'CV'
,p_column_label=>'Octubre Ventas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509406603708358823)
,p_db_column_name=>'NOVIEMBRE_VENTAS'
,p_display_order=>920
,p_column_identifier=>'CW'
,p_column_label=>'Noviembre Ventas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509406726999358824)
,p_db_column_name=>'DICIEMBRE_VENTAS'
,p_display_order=>930
,p_column_identifier=>'CX'
,p_column_label=>'Diciembre Ventas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509406871892358825)
,p_db_column_name=>'VARIACION_ENERO'
,p_display_order=>940
,p_column_identifier=>'CY'
,p_column_label=>'Variacion Enero'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509406942814358826)
,p_db_column_name=>'FEBRERO_VARIACION'
,p_display_order=>950
,p_column_identifier=>'CZ'
,p_column_label=>'Febrero Variacion'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509407075564358827)
,p_db_column_name=>'MARZO_VARIACION'
,p_display_order=>960
,p_column_identifier=>'DA'
,p_column_label=>'Marzo Variacion'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509407197360358828)
,p_db_column_name=>'ABRIL_VARIACION'
,p_display_order=>970
,p_column_identifier=>'DB'
,p_column_label=>'Abril Variacion'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509407289670358829)
,p_db_column_name=>'MAYO_VARIACION'
,p_display_order=>980
,p_column_identifier=>'DC'
,p_column_label=>'Mayo Variacion'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509407301486358830)
,p_db_column_name=>'JUNIO_VARIACION'
,p_display_order=>990
,p_column_identifier=>'DD'
,p_column_label=>'Junio Variacion'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509407495429358831)
,p_db_column_name=>'JULIO_VARIACION'
,p_display_order=>1000
,p_column_identifier=>'DE'
,p_column_label=>'Julio Variacion'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509407501790358832)
,p_db_column_name=>'AGOSTO_VARIACION'
,p_display_order=>1010
,p_column_identifier=>'DF'
,p_column_label=>'Agosto Variacion'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509407613129358833)
,p_db_column_name=>'SETIEMBRE_VARIACION'
,p_display_order=>1020
,p_column_identifier=>'DG'
,p_column_label=>'Setiembre Variacion'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509407762599358834)
,p_db_column_name=>'OCTUBRE_VARIACION'
,p_display_order=>1030
,p_column_identifier=>'DH'
,p_column_label=>'Octubre Variacion'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509407867454358835)
,p_db_column_name=>'NOVIEMBRE_VARIACION'
,p_display_order=>1040
,p_column_identifier=>'DI'
,p_column_label=>'Noviembre Variacion'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(509407928744358836)
,p_db_column_name=>'DICIEMBRE_VARIACION'
,p_display_order=>1050
,p_column_identifier=>'DJ'
,p_column_label=>'Diciembre Variacion'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(267142340016560538)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'106224'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_view_mode=>'REPORT'
,p_report_columns=>'CATEGORIA:MARCA:COD_ART_CORTO:COD_ARTICULO:DESCRIPCION:ENERO:ENERO_FORECAST:VARIACION_ENERO:FEBRERO:FEBRERO_FORECAST:FEBRERO_VARIACION:MARZO:MARZO_FORECAST:MARZO_VARIACION:ABRIL:ABRIL_FORECAST:ABRIL_VARIACION:MAYO:MAYO_FORECAST:MAYO_VARIACION:JUNIO:J'
||'UNIO_FORECAST:JUNIO_VARIACION:JULIO:JULIO_FORECAST:JULIO_VARIACION:AGOSTO:AGOSTO_FORECAST:AGOSTO_VARIACION:SETIEMBRE:SETIEMBRE_FORECAST:SETIEMBRE_VARIACION:OCTUBRE:OCTUBRE_FORECAST:OCTUBRE_VARIACION:NOVIEMBRE:NOVIEMBRE_FORECAST:NOVIEMBRE_VARIACION:DI'
||'CIEMBRE:DICIEMBRE_FORECAST:DICIEMBRE_VARIACION:TOTAL:STOCK:TRANSITO:'
,p_sort_column_1=>'COD_ART_CORTO'
,p_sort_direction_1=>'DESC'
,p_break_on=>'CATEGORIA:0:0:0:0:0'
,p_break_enabled_on=>'CATEGORIA:0:0:0:0:0'
,p_sum_columns_on_break=>'CANTIDAD:TOTAL:STOCK:TRANSITO'
,p_count_distnt_col_on_break=>'COD_ART_CORTO'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(510981616600571733)
,p_report_id=>wwv_flow_imp.id(267142340016560538)
,p_name=>'NO STOCK'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'COD_ART_CORTO'
,p_operator=>'='
,p_expr=>'NO STOCK'
,p_condition_sql=>' (case when ("COD_ART_CORTO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''NO STOCK''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#ffd6d2'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(510982064750571734)
,p_report_id=>wwv_flow_imp.id(267142340016560538)
,p_name=>'Posible Quiebre'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'COD_ART_CORTO'
,p_operator=>'='
,p_expr=>'POSIBLE QUIEBRE VERIFICAR P/OC'
,p_condition_sql=>' (case when ("COD_ART_CORTO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''POSIBLE QUIEBRE VERIFICAR P/OC''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#f60606'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(510982473970571734)
,p_report_id=>wwv_flow_imp.id(267142340016560538)
,p_name=>'SIN FORECAST'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'COD_ART_CORTO'
,p_operator=>'='
,p_expr=>'Sin Forecast'
,p_condition_sql=>' (case when ("COD_ART_CORTO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Sin Forecast''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#cddc39'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(256506171639381474)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(266599067219705411)
,p_button_name=>'EJECUTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(253910669361053686)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(253905218384053681)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:707:&SESSION.::&DEBUG.:707'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(256506922954381475)
,p_name=>'P706_EJECUTA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(266599067219705411)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(256510037556381477)
,p_name=>'P706_COD_RUBROS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(266599067219705411)
,p_prompt=>'Rubros'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_RUBROS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_rubro||'' - ''||descripcion D, ',
'         cod_rubro R',
'    FROM st_rubro ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY descripcion;'))
,p_lov_display_null=>'YES'
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
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(256510452381381477)
,p_name=>'P706_COD_DIVISION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(266599067219705411)
,p_prompt=>'Division'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_COD_DIVISION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT COD_DIVISION||''-''||DESC_DIVISION D, COD_DIVISION R',
'    FROM ST_DIVISION_ARTICULOS',
'   WHERE NVL(ESTADO, ''P'') NOT IN (''I'', ''N'')',
'   ORDER BY 1 ASC',
''))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(256511217173381477)
,p_name=>'P706_COD_FAMILIA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(266599067219705411)
,p_prompt=>'Familia'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_FAMILIA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_familia||'' - ''||descripcion D, ',
'       cod_familia R',
'  FROM st_familia',
'  WHERE COD_EMPRESA=:P_COD_EMPRESA',
'  AND ESTADO=''S'';'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(256511614562381478)
,p_name=>'P706_COD_CATEGORIA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(266599067219705411)
,p_prompt=>'Categoria'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CATEGORIAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_categoria||'' - '' ||descripcion D, ',
'         cod_categoria R',
'    FROM st_categorias',
'  ',
'  WHERE COD_EMPRESA=:P_COD_EMPRESA',
'  AND ESTADO IN(''S'',''A'');',
' '))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(256512071015381478)
,p_name=>'P706_COD_LINEAS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(266599067219705411)
,p_prompt=>'Lineas'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_LINEAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_linea||'' - ''||descripcion D, cod_linea R',
'from st_linea ',
' ',
'  WHERE COD_EMPRESA=:P_COD_EMPRESA',
'  AND ESTADO IN(''S'',''A'') ',
'order by 1'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(256512457308381478)
,p_name=>'P706_COD_PROVEEDOR'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(266599067219705411)
,p_prompt=>'Proveedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PROVEEDORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_proveedor||'' - ''||ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) D, c.cod_proveedor R,c.cod_persona',
'from cm_proveedores c, personas p',
'where c.cod_empresa = :P_COD_EMPRESA',
'and c.cod_persona = p.cod_persona ',
'order by 1'))
,p_cSize=>30
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(256514024515381479)
,p_name=>'P706_COD_MARCA'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(266599067219705411)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MARCAS2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION, COD_MARCA FROM ST_MARCAS',
'WHERE ESTADO=''S''',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(256515645611381480)
,p_name=>'P706_FEC_INI_A1'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(266599067219705411)
,p_item_default=>'last_day(add_months(sysdate,-to_char(sysdate,''mm'')))+1'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Inicial'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(256516057246381481)
,p_name=>'P706_FEC_FIN_A1'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(266599067219705411)
,p_item_default=>'last_day(add_months(sysdate,12-to_char(sysdate,''mm'')))'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Final'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(256517673321381482)
,p_name=>'P706_COD_PERSONA_USER'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(266599067219705411)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(256529585253544313)
,p_name=>'P706_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(267088275399133135)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(253910930779053686)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(253905218384053681)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(253911442287053687)
,p_event_id=>wwv_flow_imp.id(253910930779053686)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(253905218384053681)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(131646346172697346)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(256506171639381474)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131646672632697349)
,p_event_id=>wwv_flow_imp.id(131646346172697346)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131646405410697347)
,p_event_id=>wwv_flow_imp.id(131646346172697346)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'  APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''FORECAST'');',
'forecast.PROCBD_CARGA_COLLECTION(:P_COD_EMPRESA,',
'                                 :P706_FEC_INI_A1,',
'                                 :P706_FEC_FIN_A1,                                ',
'                                 :P706_COD_RUBROS,',
'                                 :P706_COD_FAMILIA,',
'                                 :P706_COD_CATEGORIA,',
'                                 :P706_COD_LINEAS,                             ',
'                                 :P706_COD_PROVEEDOR,',
'                                 :P706_COD_MARCA,',
'                                 :P706_COD_DIVISION,',
'                              ',
'                                 :P706_NEW);',
'                                 ',
'                                 end;'))
,p_attribute_02=>'P_COD_EMPRESA,P706_FEC_INI_A1,P706_FEC_FIN_A1,P706_COD_RUBROS,P706_COD_FAMILIA,P706_COD_CATEGORIA,P706_COD_LINEAS,P706_COD_PROVEEDOR,P706_COD_MARCA,P706_COD_DIVISION'
,p_attribute_03=>'P38_NEW'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131646521926697348)
,p_event_id=>wwv_flow_imp.id(131646346172697346)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(267088275399133135)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(257282843115802529)
,p_event_id=>wwv_flow_imp.id(131646346172697346)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(253905218384053681)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131646793542697350)
,p_event_id=>wwv_flow_imp.id(131646346172697346)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(257280108119802502)
,p_name=>'da_session'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P706_COD_RUBROS,P706_FEC_INI_A1,P706_FEC_FIN_A1,P706_COD_MARCA,P706_COD_CATEGORIA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(257280244139802503)
,p_event_id=>wwv_flow_imp.id(257280108119802502)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P706_COD_RUBROS,P706_FEC_INI_A1,P706_FEC_FIN_A1,P706_COD_MARCA,P706_COD_CATEGORIA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(257281076712802511)
,p_name=>'DA_COLORES'
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(253905218384053681)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(257281199845802512)
,p_event_id=>wwv_flow_imp.id(257281076712802511)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery("span[data-style]").each(',
'function()',
'{',
'apex.jQuery(this).',
'parent().attr( ''style''',
', apex.jQuery(this).attr(''data-style'')',
');',
'}',
');'))
);
wwv_flow_imp.component_end;
end;
/
