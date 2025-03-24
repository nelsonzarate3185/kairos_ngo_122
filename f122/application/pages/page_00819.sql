prompt --application/pages/page_00819
begin
--   Manifest
--     PAGE: 00819
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
 p_id=>819
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Reporte de Carga de Viaticos Choferes'
,p_alias=>'REPORTE-DE-CARGA-DE-VIATICOS-CHOFERES'
,p_step_title=>'Reporte de Carga de Viaticos Choferes'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20250110170921'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(463261654181640315)
,p_plug_name=>'Combustibles'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select        decode(c.COD_EMPRESA, 1, ''NGO'',',
'                                  2, ''CPH'') cod_empresa,',
'c.ID,',
'c.NRO_PLANILLA,',
'c.NRO_TICKET,',
'to_char(c.FECHA_TICKET,''dd/mm/yyyy'')FECHA_TICKET,',
'c.DISTRIBUIDORA,',
'c.CHAPA,',
'c.KILOMETRAJE,',
'c.TIPO_COMBUSTIBLE,',
'c.CANTIDAD,',
'c.PRECIO,',
'--c.TOTAL,',
'(c.cantidad*c.precio) TOTAL,',
' ',
'c.ZONA,',
'c.COD_CHOFER,',
'(select p.nombre from personas p, rp_repartidores r ',
'                where p.cod_persona = r.cod_persona',
'                  and r.cod_empresa = c.cod_empresa ',
'                  and r.cod_repartidor = c.cod_chofer) nombre_chofer,',
'--c.NOMBRE_CHOFER,',
'c.COD_AYUDANTE_1,',
'(select p.nombre from personas p, rh_empleados e ',
'                where p.cod_persona = e.cod_persona',
'                  and e.cod_empresa = c.cod_empresa',
'                  and e.cod_empleado = c.cod_ayudante_1) nom_ayudante1,',
'--c.NOM_AYUDANTE_1,',
'c.COD_AYUDANTE_2,',
'(select p.nombre from personas p, rh_empleados e ',
'                where p.cod_persona = e.cod_persona',
'                  and e.cod_empresa = c.cod_empresa',
'                  and e.cod_empleado = c.cod_ayudante_2) nom_ayudante2,',
'--c.NOM_AYUDANTE_2,',
'c.COD_USR_INS USUARIO ',
'from RP_COMBUSTIBLES c',
'where  cod_empresa = :P_COD_EMPRESA',
'',
' and (cod_usr_ins = :P819_USUARIOS or :P819_USUARIOS is null)',
' and (nro_planilla = :P819_NRO_PLANILLA or :P819_NRO_PLANILLA is null)',
' and c.fecha_ticket between :P819_FECHA_INICIO AND :P819_FECHA_FIN',
'order by ID desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P819_GASTO,P819_USUARIOS,P819_NRO_PLANILLA,P819_FECHA_INICIO,P819_FECHA_FIN'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Combustibles'
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
 p_id=>wwv_flow_imp.id(463261719821640316)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7:P7_ID:#ID#'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'NZARATE'
,p_internal_uid=>463261719821640316
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(463261933095640318)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(463262087120640319)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Nro Planilla'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(463262396313640322)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>60
,p_column_identifier=>'C'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(463264652772640345)
,p_db_column_name=>'ID'
,p_display_order=>70
,p_column_identifier=>'D'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(463264796304640346)
,p_db_column_name=>'NRO_TICKET'
,p_display_order=>80
,p_column_identifier=>'E'
,p_column_label=>'Nro Ticket'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(463264836936640347)
,p_db_column_name=>'FECHA_TICKET'
,p_display_order=>90
,p_column_identifier=>'F'
,p_column_label=>'Fecha Ticket'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(463264917664640348)
,p_db_column_name=>'DISTRIBUIDORA'
,p_display_order=>100
,p_column_identifier=>'G'
,p_column_label=>'Distribuidora'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(463265096117640349)
,p_db_column_name=>'CHAPA'
,p_display_order=>110
,p_column_identifier=>'H'
,p_column_label=>'Chapa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(463265138226640350)
,p_db_column_name=>'KILOMETRAJE'
,p_display_order=>120
,p_column_identifier=>'I'
,p_column_label=>'Kilometraje'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(463288060120385901)
,p_db_column_name=>'TIPO_COMBUSTIBLE'
,p_display_order=>130
,p_column_identifier=>'J'
,p_column_label=>'Tipo Combustible'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(463288170471385902)
,p_db_column_name=>'PRECIO'
,p_display_order=>140
,p_column_identifier=>'K'
,p_column_label=>'Precio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(463288269151385903)
,p_db_column_name=>'TOTAL'
,p_display_order=>150
,p_column_identifier=>'L'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(463288383545385904)
,p_db_column_name=>'ZONA'
,p_display_order=>160
,p_column_identifier=>'M'
,p_column_label=>'Zona'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(463288495575385905)
,p_db_column_name=>'COD_CHOFER'
,p_display_order=>170
,p_column_identifier=>'N'
,p_column_label=>'Cod Chofer'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(463288582160385906)
,p_db_column_name=>'NOMBRE_CHOFER'
,p_display_order=>180
,p_column_identifier=>'O'
,p_column_label=>'Nombre Chofer'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(463288698979385907)
,p_db_column_name=>'COD_AYUDANTE_1'
,p_display_order=>190
,p_column_identifier=>'P'
,p_column_label=>'Cod Ayudante 1'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(463288740902385908)
,p_db_column_name=>'NOM_AYUDANTE1'
,p_display_order=>200
,p_column_identifier=>'Q'
,p_column_label=>'Nom Ayudante1'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(463288887056385909)
,p_db_column_name=>'COD_AYUDANTE_2'
,p_display_order=>210
,p_column_identifier=>'R'
,p_column_label=>'Cod Ayudante 2'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(463288949963385910)
,p_db_column_name=>'NOM_AYUDANTE2'
,p_display_order=>220
,p_column_identifier=>'S'
,p_column_label=>'Nom Ayudante2'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(463289078250385911)
,p_db_column_name=>'USUARIO'
,p_display_order=>230
,p_column_identifier=>'T'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(463302928363435341)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4633030'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NRO_PLANILLA:CANTIDAD:ID:NRO_TICKET:FECHA_TICKET:DISTRIBUIDORA:CHAPA:KILOMETRAJE:TIPO_COMBUSTIBLE:PRECIO:TOTAL:ZONA:COD_CHOFER:NOMBRE_CHOFER:COD_AYUDANTE_1:NOM_AYUDANTE1:COD_AYUDANTE_2:NOM_AYUDANTE2:USUARIO:'
,p_sort_column_1=>'FECHA_TICKET'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(503494929281121076)
,p_plug_name=>'Viatico de Choferes'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rowid,',
'       decode(COD_EMPRESA, 1, ''NGO'', 2, ''CPH'') cod_empresa,',
'       NRO_PLANILLA,',
'       TIPO_TRANS,',
'       SUB_TIPO_TRANS,',
'       CANTIDAD,',
'       PRECIO_UNITARIO,',
'       MONTO_TOTAL,',
'       TOTAL_IVA,',
'       TIP_CAMBIO,',
'       NRO_COMPROBANTE_REF,',
'       ',
'       decode(COD_MONEDA,',
'              1,',
'              ''GUARANIES'',',
'              2,',
'              ''DOLARES'',',
'              3,',
'              ''EUROS'',',
'              4,',
'              ''REALES'') cod_moneda,',
'       MONTO_TOTAL_VAL,',
'       TOTAL_IVA_VAL,',
'       DESCRIPCION,',
'       COD_PROVEEDOR_LOCAL,',
'       NRO_FACTURA_LOCAL,',
'       NUM_LINEA,',
'       NRO_COMPRA_REF,',
'       SER_FACTURA_LOCAL,',
'       FECHA_FACTURA_LOCAL,',
'       COMENTARIO,',
'       LITROS,',
'       COD_USR_INS,',
'       FEC_HOR_INS,',
'       COD_USR_UPD,',
'       FEC_HOR_UPD,',
'       (SELECT descripcion',
'          FROM subtipos_trans S',
'         where cod_empresa = 1',
'           and cod_modulo = ''RP''',
'           AND S.SUBTIPO_TRANS = A.SUB_TIPO_TRANS',
'          ) GASTO',
'',
'  from RP_REPARTO_GASTOS a',
' where cod_empresa = :P_COD_EMPRESA',
'  ',
'  and (SUB_TIPO_TRANS = :P819_GASTO or :P819_GASTO is null)',
' and (cod_usr_ins = :P819_USUARIOS or :P819_USUARIOS is null)',
' and (nro_planilla = :P819_NRO_PLANILLA or :P819_NRO_PLANILLA is null)',
'   and a.fec_hor_ins between :P819_FECHA_INICIO AND :P819_FECHA_FIN',
' order by nro_planilla desc',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P819_GASTO,P819_USUARIOS,P819_NRO_PLANILLA,P819_FECHA_INICIO,P819_FECHA_FIN'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Viatico de Choferes'
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
 p_id=>wwv_flow_imp.id(503495131245121078)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7:P7_ID:#ID#'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'MILAGROFE'
,p_internal_uid=>503495131245121078
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258686069790363637)
,p_db_column_name=>'ROWID'
,p_display_order=>10
,p_column_identifier=>'M'
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
 p_id=>wwv_flow_imp.id(258686129919363638)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>20
,p_column_identifier=>'N'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258686285506363639)
,p_db_column_name=>'NRO_PLANILLA'
,p_display_order=>30
,p_column_identifier=>'O'
,p_column_label=>'Nro Planilla'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258686384566363640)
,p_db_column_name=>'TIPO_TRANS'
,p_display_order=>40
,p_column_identifier=>'P'
,p_column_label=>'Tipo Trans'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258686421166363641)
,p_db_column_name=>'SUB_TIPO_TRANS'
,p_display_order=>50
,p_column_identifier=>'Q'
,p_column_label=>'Sub Tipo Trans'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258686587283363642)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>60
,p_column_identifier=>'R'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258686665314363643)
,p_db_column_name=>'PRECIO_UNITARIO'
,p_display_order=>70
,p_column_identifier=>'S'
,p_column_label=>'Precio Unitario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258686756133363644)
,p_db_column_name=>'MONTO_TOTAL'
,p_display_order=>80
,p_column_identifier=>'T'
,p_column_label=>'Monto Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258686816836363645)
,p_db_column_name=>'TOTAL_IVA'
,p_display_order=>90
,p_column_identifier=>'U'
,p_column_label=>'Total Iva'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258686940652363646)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>100
,p_column_identifier=>'V'
,p_column_label=>'Tip Cambio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258687046947363647)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>110
,p_column_identifier=>'W'
,p_column_label=>'Nro Comprobante Ref'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258687164463363648)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>120
,p_column_identifier=>'X'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258687291856363649)
,p_db_column_name=>'MONTO_TOTAL_VAL'
,p_display_order=>130
,p_column_identifier=>'Y'
,p_column_label=>'Monto Total Val'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(258687335399363650)
,p_db_column_name=>'TOTAL_IVA_VAL'
,p_display_order=>140
,p_column_identifier=>'Z'
,p_column_label=>'Total Iva Val'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(463260276705640301)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>150
,p_column_identifier=>'AA'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(463260377618640302)
,p_db_column_name=>'COD_PROVEEDOR_LOCAL'
,p_display_order=>160
,p_column_identifier=>'AB'
,p_column_label=>'Cod Proveedor Local'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(463260452024640303)
,p_db_column_name=>'NRO_FACTURA_LOCAL'
,p_display_order=>170
,p_column_identifier=>'AC'
,p_column_label=>'Nro Factura Local'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(463260587814640304)
,p_db_column_name=>'NUM_LINEA'
,p_display_order=>180
,p_column_identifier=>'AD'
,p_column_label=>'Num Linea'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(463260651398640305)
,p_db_column_name=>'NRO_COMPRA_REF'
,p_display_order=>190
,p_column_identifier=>'AE'
,p_column_label=>'Nro Compra Ref'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(463260709879640306)
,p_db_column_name=>'SER_FACTURA_LOCAL'
,p_display_order=>200
,p_column_identifier=>'AF'
,p_column_label=>'Ser Factura Local'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(463260845946640307)
,p_db_column_name=>'FECHA_FACTURA_LOCAL'
,p_display_order=>210
,p_column_identifier=>'AG'
,p_column_label=>'Fecha Factura Local'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(463260990554640308)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>220
,p_column_identifier=>'AH'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(463261099279640309)
,p_db_column_name=>'LITROS'
,p_display_order=>230
,p_column_identifier=>'AI'
,p_column_label=>'Litros'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(463261192125640310)
,p_db_column_name=>'COD_USR_INS'
,p_display_order=>240
,p_column_identifier=>'AJ'
,p_column_label=>'Cod Usr Ins'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(463261272705640311)
,p_db_column_name=>'FEC_HOR_INS'
,p_display_order=>250
,p_column_identifier=>'AK'
,p_column_label=>'Fec Hor Ins'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(463261304274640312)
,p_db_column_name=>'COD_USR_UPD'
,p_display_order=>260
,p_column_identifier=>'AL'
,p_column_label=>'Cod Usr Upd'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(463261433587640313)
,p_db_column_name=>'FEC_HOR_UPD'
,p_display_order=>270
,p_column_identifier=>'AM'
,p_column_label=>'Fec Hor Upd'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(463261501055640314)
,p_db_column_name=>'GASTO'
,p_display_order=>280
,p_column_identifier=>'AN'
,p_column_label=>'Gasto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(503511405926171182)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'402600'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FEC_HOR_INS:COD_MONEDA:COD_PROVEEDOR_LOCAL:COMENTARIO:GASTO:CANTIDAD:LITROS:FECHA_FACTURA_LOCAL:NRO_COMPROBANTE_REF:PRECIO_UNITARIO:MONTO_TOTAL:MONTO_TOTAL_VAL:NRO_PLANILLA:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1639717786915174339)
,p_plug_name=>'Filtro'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(463281897431648074)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1639717786915174339)
,p_button_name=>'Refrescar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refrescar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(463257175161636943)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(503494929281121076)
,p_button_name=>'BT_CREAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(463282293947648075)
,p_name=>'P819_GASTO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1639717786915174339)
,p_prompt=>'Gasto'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT descripcion,subtipo_trans',
'FROM subtipos_trans ',
'where cod_empresa = 1',
'and cod_modulo = ''RP''',
'order by descripcion;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-user-check'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(463282606545648092)
,p_name=>'P819_USUARIOS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1639717786915174339)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  p.nombre||'' - ''||cod_usr_ins usuario, cod_usr_ins',
'from rp_reparto_gastos r, usuarios u, personas p',
'where r.cod_empresa=:P_COD_empresa ',
'and r.cod_usr_ins=u.cod_usuario ',
'and u.cod_persona=p.cod_persona ',
'group by  p.nombre  , cod_usr_ins',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_lov_cascade_parent_items=>'P_COD_EMPRESA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-user-check'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(463283047380648093)
,p_name=>'P819_NRO_PLANILLA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1639717786915174339)
,p_prompt=>'Nro Planilla'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(463284284074648095)
,p_name=>'P819_FECHA_INICIO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(1639717786915174339)
,p_item_default=>'SYSDATE-TO_CHAR(SYSDATE,''dd'')+1'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Inicio'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(463284667420648095)
,p_name=>'P819_FECHA_FIN'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(1639717786915174339)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Fin'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(463257548688636980)
,p_name=>'Refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(463257175161636943)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(463257928240636985)
,p_event_id=>wwv_flow_imp.id(463257548688636980)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(503494929281121076)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(463258450789636986)
,p_event_id=>wwv_flow_imp.id(463257548688636980)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('apex.message.showPageSuccess(''El rol se guard\00F3 correctamente.'');')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(463258829014636986)
,p_name=>'Refresh1'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(503494929281121076)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(463259325911636986)
,p_event_id=>wwv_flow_imp.id(463258829014636986)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(503494929281121076)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(463259875948636986)
,p_event_id=>wwv_flow_imp.id(463258829014636986)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('apex.message.showPageSuccess(''El rol se guard\00F3 correctamente.'');')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(463289124212385912)
,p_name=>'New'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(463281897431648074)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(463289288739385913)
,p_event_id=>wwv_flow_imp.id(463289124212385912)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(503494929281121076)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(463289391868385914)
,p_event_id=>wwv_flow_imp.id(463289124212385912)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(463261654181640315)
);
wwv_flow_imp.component_end;
end;
/
