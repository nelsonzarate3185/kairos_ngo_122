prompt --application/pages/page_00440
begin
--   Manifest
--     PAGE: 00440
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
 p_id=>440
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Seguimiento de Inventario Movil'
,p_alias=>'SEGUIMIENTO-DE-INVENTARIO-MOVIL'
,p_step_title=>'Seguimiento de Inventario Movil'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'AIBANEZ'
,p_last_upd_yyyymmddhh24miss=>'20230321142936'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(129783602386343427)
,p_plug_name=>'Seguimiento de Inventario Movil'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(129781038746343401)
,p_plug_name=>'Main Report '
,p_parent_plug_id=>wwv_flow_imp.id(129783602386343427)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_empresa, ',
'       TIP_COMPROBANTE, ',
'       NRO_COMPROBANTE,',
'       SER_COMPROBANTE, ',
'       COD_SUCURSAL, ',
'       FEC_COMPROBANTE, ',
'       POLITICA_INVENTARIO, ',
'       FECHA_CIERRE,',
'       SUCURSAL,',
'            case when FECHA_CIERRE is not null  then  ''CERRADO''',
'                when FECHA_ACTUALIZA is not null then ''ABIERTO''',
'            else ',
'                 ''CREADO''',
'            end ESTADO,',
'           (SELECT COUNT(DISTINCT D.COD_ARTICULO) A_CONT',
'            FROM ST_GENERACION_INVENTARIO_DET D,',
'                 SM_INVENTARIO_DET M',
'            WHERE D.COD_EMPRESA=:P_COD_EMPRESA',
'            AND   D.TIP_COMPROBANTE= inv.TIP_COMPROBANTE',
'            AND   D.SER_COMPROBANTE= inv.SER_COMPROBANTE',
'            AND   D.NRO_COMPROBANTE= inv.NRO_COMPROBANTE',
'            AND   M.COD_ARTICULO(+)=D.COD_ARTICULO',
'            AND   M.INVENTORY_AREA(+)=D.NRO_COMPROBANTE) A_CONTAR,',
'           (SELECT COUNT(DISTINCT M.COD_ARTICULO)',
'            FROM ST_GENERACION_INVENTARIO_DET D,',
'                 SM_INVENTARIO_DET M',
'            WHERE D.COD_EMPRESA=:P_COD_EMPRESA',
'            AND   D.TIP_COMPROBANTE= inv.TIP_COMPROBANTE',
'            AND   D.SER_COMPROBANTE= inv.SER_COMPROBANTE',
'            AND   D.NRO_COMPROBANTE= inv.NRO_COMPROBANTE',
'            AND   M.COD_ARTICULO(+)=D.COD_ARTICULO',
'            AND   M.INVENTORY_AREA(+)=D.NRO_COMPROBANTE) CONTAR,',
'             (SELECT SUM(DECODE(NVL(M.CANTIDAD,0),0,0,M.CANTIDAD)) CANT_INV',
'                FROM ST_GENERACION_INVENTARIO_DET D,',
'                 SM_INVENTARIO_DET M',
'            WHERE D.COD_EMPRESA=:P_COD_EMPRESA',
'            AND   D.TIP_COMPROBANTE= inv.TIP_COMPROBANTE',
'            AND   D.SER_COMPROBANTE= inv.SER_COMPROBANTE',
'            AND   D.NRO_COMPROBANTE= inv.NRO_COMPROBANTE',
'            AND   M.COD_ARTICULO(+)=D.COD_ARTICULO',
'            AND   M.INVENTORY_AREA(+)=D.NRO_COMPROBANTE) STOCK_INV,',
'             (SELECT SUM(D.CANTIDAD)CANT_SIS',
'                FROM ST_GENERACION_INVENTARIO_DET D,',
'                 SM_INVENTARIO_DET M',
'            WHERE D.COD_EMPRESA=:P_COD_EMPRESA',
'            AND   D.TIP_COMPROBANTE= inv.TIP_COMPROBANTE',
'            AND   D.SER_COMPROBANTE= inv.SER_COMPROBANTE',
'            AND   D.NRO_COMPROBANTE= inv.NRO_COMPROBANTE',
'            AND   M.COD_ARTICULO(+)=D.COD_ARTICULO',
'            AND   M.INVENTORY_AREA(+)=D.NRO_COMPROBANTE) STOCK_SIS,',
'       null DETALLE,',
'       ROWID',
'       from ST_GENERACION_INVENTARIO inv',
'       where',
'        cod_empresa = :P_cod_empresa ',
'        AND (FEC_COMPROBANTE>= to_date(:P440_FECHA_INI, ''DD/MM/YYYY'') OR :P440_FECHA_INI IS NULL )',
'        AND (FEC_COMPROBANTE<= to_date(:P440_FECHA_FIN, ''DD/MM/YYYY'') OR :P440_FECHA_FIN IS NULL )',
'        AND (COD_SUCURSAL = :P440_DEPOSITO OR ( NVL(:P440_DEPOSITO,''TODOS'')=''TODOS''))',
'        AND (( NVL(:P440_ESTADO,''TODOS'')=''TODOS'')',
'             OR NVL(:P440_ESTADO,''TODOS'')=(DECODE(FECHA_CIERRE,NULL,DECODE(FECHA_ACTUALIZA,NULL,''CREADO'',''ABIERTO''),''CERRADO''))',
'        )',
'order by FEC_COMPROBANTE desc, to_number(NRO_COMPROBANTE) asc',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P440_ESTADO,P440_FECHA_INI,P440_DEPOSITO,P440_FECHA_FIN'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Main Report '
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
 p_id=>wwv_flow_imp.id(129781145247343402)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_finder_drop_down=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AIBANEZ'
,p_internal_uid=>129781145247343402
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(129781267007343403)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(129781361899343404)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(129781430270343405)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Comprobante'
,p_column_link=>'javascript:$s(''P440_INFO'', ''#ROWID#'');'
,p_column_linktext=>'#NRO_COMPROBANTE#'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(129781545371343406)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Dep'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(129781694468343407)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(129781742573343408)
,p_db_column_name=>'POLITICA_INVENTARIO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Politica'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(129781994510343410)
,p_db_column_name=>'FECHA_CIERRE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Fecha de Cierre'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(129782046559343411)
,p_db_column_name=>'DETALLE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Detalle'
,p_column_link=>'javascript:$s(''P440_DETALLE'', ''#ROWID#'');'
,p_column_linktext=>'<span class="fa fa-eye" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(129782220014343413)
,p_db_column_name=>'ROWID'
,p_display_order=>100
,p_column_identifier=>'J'
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
 p_id=>wwv_flow_imp.id(129783286393343423)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(129783335915343424)
,p_db_column_name=>'ESTADO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(129785290325343443)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Referencia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131399029045803819)
,p_db_column_name=>'A_CONTAR'
,p_display_order=>140
,p_column_identifier=>'P'
,p_column_label=>'A Contar'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131399179941803820)
,p_db_column_name=>'CONTAR'
,p_display_order=>150
,p_column_identifier=>'Q'
,p_column_label=>'Contar'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131331704231757908)
,p_db_column_name=>'STOCK_INV'
,p_display_order=>170
,p_column_identifier=>'S'
,p_column_label=>'Stock Inv'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131331888086757909)
,p_db_column_name=>'STOCK_SIS'
,p_display_order=>180
,p_column_identifier=>'T'
,p_column_label=>'Stock Sis'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(129794646230265210)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1297947'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'NRO_COMPROBANTE:SER_COMPROBANTE:COD_SUCURSAL:SUCURSAL:ESTADO:FEC_COMPROBANTE:POLITICA_INVENTARIO:A_CONTAR:CONTAR:DETALLE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(129782450310343415)
,p_plug_name=>'Selecctor'
,p_parent_plug_id=>wwv_flow_imp.id(129783602386343427)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(129784334728343434)
,p_plug_name=>unistr('Informaci\00F3n Reporte')
,p_parent_plug_id=>wwv_flow_imp.id(129783602386343427)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(131398108129803810)
,p_plug_name=>'Detalle'
,p_region_css_classes=>'js-dialog-size1200x580'
,p_region_template_options=>'js-modal:js-draggable:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(120943677828636441)
,p_plug_name=>'Reporte Detalle'
,p_parent_plug_id=>wwv_flow_imp.id(131398108129803810)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1000
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select desc_sucursal,',
'       cod_sucursal,',
'       cod_articulo,',
'       desc_art,',
'       CANTIDAD_SISTEMA, ',
'       CANTIDAD_INVENTARIO,',
'       COSTO_STOCK,',
'       COSTO_INVENTARIO,',
'       cod_encargado,',
'	   USUARIO,',
'	   HORARIO,',
'	   ZONA,',
'       nro_comprobante,',
'       sucursal,',
'       observacion,',
'       NVL((CANTIDAD_INVENTARIO-CANTIDAD_SISTEMA),0) DIFERENCIA',
'  from Det_inv_movil',
' where TIP_COMPROBANTE = :P440_DET_TIPO_COMPROBANTE',
'   AND SER_COMPROBANTE = :P440_DET_SER_COMPROBANTE',
'   and nro_comprobante = :P440_DET_NRO_COMPROBANTE',
' order by CANTIDAD_INVENTARIO DESC, cod_articulo asc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P440_DET_SER_COMPROBANTE,P440_DET_NRO_COMPROBANTE,P440_DET_TIPO_COMPROBANTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reporte Detalle'
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
 p_id=>wwv_flow_imp.id(120943790641636442)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_finder_drop_down=>'N'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'ANDRESDI'
,p_internal_uid=>120943790641636442
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120943814302636443)
,p_db_column_name=>'DESC_SUCURSAL'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Desc Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120943927721636444)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120944016334636445)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('Cod.Art\00EDculo')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120944153941636446)
,p_db_column_name=>'DESC_ART'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120944220108636447)
,p_db_column_name=>'CANTIDAD_SISTEMA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cantidad Sis'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120944336590636448)
,p_db_column_name=>'CANTIDAD_INVENTARIO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cantidad Inv'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120944437770636449)
,p_db_column_name=>'COSTO_STOCK'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Costo Stock'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(120944540960636450)
,p_db_column_name=>'COSTO_INVENTARIO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Costo Inv'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131397211396803801)
,p_db_column_name=>'COD_ENCARGADO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Encargado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131397360817803802)
,p_db_column_name=>'USUARIO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131397458389803803)
,p_db_column_name=>'HORARIO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Horario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131397584798803804)
,p_db_column_name=>'ZONA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Zona'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131397647852803805)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131397797126803806)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131397854274803807)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131398953987803818)
,p_db_column_name=>'DIFERENCIA'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Diferencia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(131408827515797078)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1314089'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'COD_ARTICULO:DESC_ART:ZONA:CANTIDAD_SISTEMA:COSTO_STOCK:CANTIDAD_INVENTARIO:COSTO_INVENTARIO:DIFERENCIA:'
,p_sum_columns_on_break=>'CANTIDAD_INVENTARIO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(131398228220803811)
,p_plug_name=>'Totales'
,p_parent_plug_id=>wwv_flow_imp.id(131398108129803810)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1010
,p_plug_grid_column_span=>10
,p_plug_display_column=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(129784176429343432)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(129782450310343415)
,p_button_name=>'BT_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'CHANGE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(120943354667636438)
,p_name=>'P440_DET_SER_COMPROBANTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(129783602386343427)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(120943439330636439)
,p_name=>'P440_DET_NRO_COMPROBANTE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(129783602386343427)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(120943549689636440)
,p_name=>'P440_DET_TIPO_COMPROBANTE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(129783602386343427)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129782953652343420)
,p_name=>'P440_COD_EMPRESA'
,p_item_sequence=>1020
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129783026765343421)
,p_name=>'P440_COD_SUCURSAL'
,p_item_sequence=>1030
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129783137385343422)
,p_name=>'P440_COD_USUARIO'
,p_item_sequence=>1040
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129783710822343428)
,p_name=>'P440_ESTADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(129782450310343415)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:CREADO;CREADO,ABIERTO;ABIERTO,CERRADO;CERRADO,TODOS;TODOS'
,p_cHeight=>1
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129783893531343429)
,p_name=>'P440_DEPOSITO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(129782450310343415)
,p_prompt=>'Deposito'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSALES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_sucursal||'' - ''||descripcion L, ',
'         cod_sucursal V',
'    FROM sucursales ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_lov_null_value=>'TODOS'
,p_cSize=>30
,p_colspan=>6
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
 p_id=>wwv_flow_imp.id(129783903110343430)
,p_name=>'P440_FECHA_INI'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(129782450310343415)
,p_prompt=>'Fecha Inicial'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>5
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
 p_id=>wwv_flow_imp.id(129784017199343431)
,p_name=>'P440_FECHA_FIN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(129782450310343415)
,p_prompt=>'Fecha Final'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>5
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
 p_id=>wwv_flow_imp.id(129784801003343439)
,p_name=>'P440_DETALLE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(129783602386343427)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129785724507343448)
,p_name=>'P440_STOCK_SIS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(129784334728343434)
,p_prompt=>'Stock Sistema'
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
 p_id=>wwv_flow_imp.id(129785847595343449)
,p_name=>'P440_STOCK_INV'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(129784334728343434)
,p_prompt=>'Stock Inventario'
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
 p_id=>wwv_flow_imp.id(129785951937343450)
,p_name=>'P440_FECHA_CIERRE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(129784334728343434)
,p_prompt=>'Fecha Cierre'
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
 p_id=>wwv_flow_imp.id(130054569674669301)
,p_name=>'P440_USUARIO_CIERRE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(129784334728343434)
,p_prompt=>'Usuario Cierre'
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
 p_id=>wwv_flow_imp.id(131331385662757904)
,p_name=>'P440_INFO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(129783602386343427)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131398395122803812)
,p_name=>'P440_TOT_STOCK'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(131398228220803811)
,p_prompt=>'Tot Stock'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131398444024803813)
,p_name=>'P440_TOT_INVENTARIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(131398228220803811)
,p_prompt=>'Tot Inv'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131398558027803814)
,p_name=>'P440_TOT_COSTO_STOCK'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(131398228220803811)
,p_prompt=>'Tot Costo Stock'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131398681257803815)
,p_name=>'P440_TOT_COSTO_INV'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(131398228220803811)
,p_prompt=>'Tot Costo Inv'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131398770796803816)
,p_name=>'P440_TOT_DIFERENCIA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(131398228220803811)
,p_prompt=>'Tot Dif'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(129784426656343435)
,p_name=>'DA_FILTRAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(129784176429343432)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131331186846757902)
,p_event_id=>wwv_flow_imp.id(129784426656343435)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'    null;'
,p_attribute_02=>'P440_COD_SUCURSAL,P440_COD_EMPRESA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(129784507456343436)
,p_event_id=>wwv_flow_imp.id(129784426656343435)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(129781038746343401)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(120943191834636436)
,p_name=>'DA_OBTENER_DATOS'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P440_DETALLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(120943213409636437)
,p_event_id=>wwv_flow_imp.id(120943191834636436)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT SER_COMPROBANTE,',
'           NRO_COMPROBANTE,',
'           TIP_COMPROBANTE',
'      INTO :P440_DET_SER_COMPROBANTE,',
'           :P440_DET_NRO_COMPROBANTE,',
'           :P440_DET_TIPO_COMPROBANTE',
'      FROM ST_GENERACION_INVENTARIO',
'      WHERE ROWID = :P440_DETALLE;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P440_DETALLE'
,p_attribute_03=>'P440_DET_SER_COMPROBANTE,P440_DET_NRO_COMPROBANTE,P440_DET_TIPO_COMPROBANTE'
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
 p_id=>wwv_flow_imp.id(131398815899803817)
,p_event_id=>wwv_flow_imp.id(120943191834636436)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    select ',
'           SUM(CANTIDAD_SISTEMA), ',
'           SUM(CANTIDAD_INVENTARIO),',
'           SUM(COSTO_STOCK),',
'           SUM(COSTO_INVENTARIO),',
'           SUM(NVL((CANTIDAD_INVENTARIO-CANTIDAD_SISTEMA),0))',
'    INTO   :P440_TOT_STOCK,',
'           :P440_TOT_INVENTARIO,',
'           :P440_TOT_COSTO_STOCK,',
'           :P440_TOT_COSTO_INV,',
'           :P440_TOT_DIFERENCIA',
'  from Det_inv_movil',
' where TIP_COMPROBANTE = :P440_DET_TIPO_COMPROBANTE',
'   AND SER_COMPROBANTE = :P440_DET_SER_COMPROBANTE',
'   and nro_comprobante = :P440_DET_NRO_COMPROBANTE;',
'',
'',
'   :P440_TOT_COSTO_STOCK := TO_CHAR(:P440_TOT_COSTO_STOCK, ''FML999G999G999G999G999D00'');',
'   :P440_TOT_COSTO_INV := TO_CHAR(:P440_TOT_COSTO_INV, ''FML999G999G999G999G999D00'');',
'   :P440_TOT_DIFERENCIA := TO_CHAR(:P440_TOT_DIFERENCIA, ''999G999G999G999G999'');',
'   :P440_TOT_STOCK := TO_CHAR(:P440_TOT_STOCK, ''999G999G999G999G999'');',
'   :P440_TOT_INVENTARIO := TO_CHAR(:P440_TOT_INVENTARIO, ''999G999G999G999G999'');',
'',
'END;'))
,p_attribute_02=>'P440_DET_SER_COMPROBANTE,P440_DET_NRO_COMPROBANTE,P440_DET_TIPO_COMPROBANTE'
,p_attribute_03=>'P440_TOT_STOCK,P440_TOT_COSTO_STOCK,P440_TOT_INVENTARIO,P440_TOT_COSTO_INV,P440_TOT_DIFERENCIA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131398042317803809)
,p_event_id=>wwv_flow_imp.id(120943191834636436)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(120943677828636441)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131397953690803808)
,p_event_id=>wwv_flow_imp.id(120943191834636436)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(131398108129803810)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(131331446222757905)
,p_name=>'DA_INFO'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P440_INFO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131605752515543414)
,p_event_id=>wwv_flow_imp.id(131331446222757905)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'    SELECT TIP_COMPROBANTE, NRO_COMPROBANTE, SER_COMPROBANTE',
'    INTO :P440_DET_TIPO_COMPROBANTE, :P440_DET_NRO_COMPROBANTE, :P440_DET_SER_COMPROBANTE',
'    FROM ST_GENERACION_INVENTARIO',
'    WHERE ROWID = :P440_INFO;',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'END;'))
,p_attribute_02=>'P440_INFO'
,p_attribute_03=>'P440_DET_TIPO_COMPROBANTE,P440_DET_NRO_COMPROBANTE,P440_DET_SER_COMPROBANTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131331610397757907)
,p_event_id=>wwv_flow_imp.id(131331446222757905)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'            BEGIN',
'                select SUM(DECODE(NVL(M.CANTIDAD,0),0,0,M.CANTIDAD))cant_inv,',
'                    SUM(D.CANTIDAD)cant_sis',
'                into :P440_STOCK_SIS, ',
'                     :P440_STOCK_INV',
'                from ST_GENERACION_INVENTARIO_DET D, ',
'                     SM_INVENTARIO_DET M',
'                where  D.COD_EMPRESA=:P_COD_EMPRESA',
'                    AND   D.TIP_COMPROBANTE=:P440_DET_TIPO_COMPROBANTE',
'                    AND   D.SER_COMPROBANTE=:P440_DET_SER_COMPROBANTE',
'                    AND   D.NRO_COMPROBANTE=:P440_DET_NRO_COMPROBANTE',
'                    AND   M.COD_ARTICULO(+)=D.COD_ARTICULO',
'                    AND   M.INVENTORY_AREA(+)=D.NRO_COMPROBANTE;',
'',
'                :P440_STOCK_SIS := TO_CHAR(:P440_STOCK_SIS,  ''999G999G999G999G999'');',
'                :P440_STOCK_INV := TO_CHAR(:P440_STOCK_INV,  ''999G999G999G999G999'');',
'            END;',
'            BEGIN',
'                select FECHA_CIERRE, USUARIO_CIERRE',
'                into :P440_FECHA_CIERRE,',
'                     :P440_USUARIO_CIERRE',
'                from  ST_GENERACION_INVENTARIO',
'                where rowid = :P440_INFO;',
'            END;',
'        EXCEPTION',
'                when others then',
'                        apex_debug.error(sqlerrm);',
'END;',
''))
,p_attribute_02=>'P440_DET_TIPO_COMPROBANTE,P440_DET_SER_COMPROBANTE,P440_DET_NRO_COMPROBANTE,P440_INFO'
,p_attribute_03=>'P440_STOCK_SIS,P440_STOCK_INV,P440_FECHA_CIERRE,P440_USUARIO_CIERRE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131331583873757906)
,p_event_id=>wwv_flow_imp.id(131331446222757905)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(129784334728343434)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(129782753440343418)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P440_COD_EMPRESA := NVL(:P_COD_EMPRESA,''1'');',
':P440_COD_USUARIO := NVL(:P_COD_USUARIO,:APP_USER); ',
':P440_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'');'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(130054641690669302)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp.component_end;
end;
/
