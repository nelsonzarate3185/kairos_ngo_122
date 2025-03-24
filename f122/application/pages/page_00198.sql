prompt --application/pages/page_00198
begin
--   Manifest
--     PAGE: 00198
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
 p_id=>198
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VTRCARTE'
,p_alias=>'VTRCARTE'
,p_step_title=>'VTRCARTE'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240920120348'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43352213136681503)
,p_plug_name=>'REPORTE VTRCARTV'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH CONSULTA AS( select pv.nombre vendedor,',
'       ma.descripcion desc_marca,',
'       ma.cod_marca,',
'       cl.cod_cliente,',
'       P.NOMBRE,',
'           ''N/A'' descripcion,',
'      ',
'       SUM(D.MONTO_OBJETIVO) CANTPRE,',
'       nvl(((SELECT SUM(DECODE(C1.TIP_COMPROBANTE,',
'                               ''NCR'',',
'                               D1.MONTO_TOTAL * -1,',
'                               D1.MONTO_TOTAL)  )  ',
'               FROM VT_COMPROBANTES_CABECERA C1,',
'                    VT_COMPROBANTES_DETALLE  D1,',
'                    st_articulos             ss',
'              WHERE :P198_AUX_CONTROL_REPORTE IS NOT NULL',
'                AND c1.COD_EMPRESA = D.COD_EMPRESA',
'                AND C1.cod_cliente = CL.cod_cliente',
'                and c1.FEC_COMPROBANTE >= d.fecha_inicio',
'                and c1.FEC_COMPROBANTE <= d.fecha_fin',
'                AND NVL(C1.ESTADO, ''P'') <> ''A''',
'                and c1.cod_empresa=d1.cod_empresa',
'                and c1.tip_comprobante = d1.tip_comprobante',
'                and c1.ser_comprobante = d1.ser_comprobante',
'                and c1.nro_comprobante = d1.nro_comprobaNTE',
'                and d1.cod_empresa= ss.cod_empresa ',
'                AND D1.COD_ARTICULO = SS.COD_ARTICULO',
'                AND ss.COD_EMPRESA = c1.COD_EMPRESA',
'                AND SS.COD_MARCA = D.COD_MARCA',
'',
'                AND SS.COD_RUBRO = ''PR'')),',
'           0) CANTEJE,',
'        ''N/A'' COD_CATEG,',
'    ''N/A''  desc_categoria',
'  from vt_cartera_clientes_cab c,',
'       vt_cartera_clientes_det d,',
'       CC_CLIENTES             CL,',
'       PERSONAS                P,',
'      ',
'      ',
'       st_marcas               ma,',
'       fv_vendedores           fv,',
'       personas                pv',
' where :P198_AUX_CONTROL_REPORTE IS NOT NULL',
' AND c.cod_empresa = d.cod_empresa',
'   and c.cod_cliente = d.cod_cliente',
'AND C.COD_EMPRESA=:P_COD_EMPRESA',
'   and c.cod_empresa = d.cod_empresa',
'',
'',
'   AND CL.COD_EMPRESA = C.COD_EMPRESA',
'   AND CL.COD_CLIENTE = C.COD_CLIENTE',
'   AND CL.COD_PERSONA = P.COD_PERSONA',
'   and nvl(D.estado, ''N'') = ''S''',
'   and ma.cod_marca = d.cod_marca',
'   and cl.cod_empresa = fv.cod_empresa',
'   and cl.cod_vendedor = fv.cod_vendedor',
'   and fv.cod_persona = pv.cod_persona',
'and d.cod_categoria is null',
'',
' ',
'',
'   AND c.cod_empresa = NVL(:P_COD_EMPRESA, ''1'')',
'   AND (Fv.cod_vendedor = :P198_COD_vendedor OR :P198_COD_vendedor IS NULL)',
'   AND (Cl.COD_CLIENTE = :P198_COD_CLIENTE OR :P198_COD_CLIENTE IS NULL)',
'   AND (MA.COD_MARCA = :P198_COD_MARCA_DES OR :P198_COD_MARCA_DES IS NULL)',
'--   AND (cat.cod_categoria = :P198_cod_categoria OR  :P198_cod_categoria IS NULL )',
'   and (d.fecha_inicio = :P198_FECHA_INI OR :P198_FECHA_INI IS NULL)',
'   and (d.fecha_fin = :P198_FECHA_FIN OR :P198_FECHA_FIN IS NULL)',
' GROUP BY P.NOMBRE,',
'          cl.cod_cliente,',
'          ',
'          ',
'          ma.descripcion,',
'          ma.cod_marca,',
'          pv.nombre,',
'          d.cod_marca,',
'          CL.COD_VENDEDOR,',
'          D.COD_CATEGORIA,',
'          D.COD_EMPRESA,',
'          d.fecha_inicio,',
'          d.fecha_fin, MA.COD_MARCA',
'         ',
'',
'union all',
'select pv.nombre vendedor,',
'       ma.descripcion desc_marca,',
'       ma.cod_marca,',
'       cl.cod_cliente,',
'       P.NOMBRE,',
'       cat.descripcion descripcion,',
'       SUM(D.CANTIDAD) CANTPRE,',
'       nvl(((SELECT SUM(DECODE(C1.TIP_COMPROBANTE,',
'                               ''NCR'',',
'                               D1.CANTIDAD * -1,',
'                               D1.CANTIDAD) /',
'                        decode(SS.COD_CATEGORIA, ''95'', 2, 1))  ',
'               FROM VT_COMPROBANTES_CABECERA C1,',
'                    VT_COMPROBANTES_DETALLE  D1,',
'                    st_articulos             ss',
'              WHERE :P198_AUX_CONTROL_REPORTE IS NOT NULL',
'                AND c1.COD_EMPRESA = D.COD_EMPRESA',
'                AND C1.cod_cliente = CL.cod_cliente',
'                and c1.FEC_COMPROBANTE >= d.fecha_inicio',
'                and c1.FEC_COMPROBANTE <= d.fecha_fin',
'                AND NVL(C1.ESTADO, ''P'') <> ''A''',
'                and c1.cod_empresa=d1.cod_empresa',
'                and c1.tip_comprobante = d1.tip_comprobante',
'                and c1.ser_comprobante = d1.ser_comprobante',
'                and c1.nro_comprobante = d1.nro_comprobaNTE',
'                and d1.cod_empresa= ss.cod_empresa ',
'                AND D1.COD_ARTICULO = SS.COD_ARTICULO',
'                AND ss.COD_EMPRESA = c1.COD_EMPRESA',
'                AND SS.COD_MARCA = D.COD_MARCA',
'                AND nvl(ss.cod_categoria_ant, ss.cod_categoria) =D.COD_CATEGORIA',
'                AND SS.COD_RUBRO = ''PR'')),',
'           0) CANTEJE,',
'       cat.cod_categoria COD_CATEG,',
'     nvl(cat.descripcion_anterior,cat.descripcion) desc_categoria',
'  from vt_cartera_clientes_cab c,',
'       vt_cartera_clientes_det d,',
'       CC_CLIENTES             CL,',
'       PERSONAS                P,',
'       st_categorias           cat,',
' ',
'       st_marcas               ma,',
'       fv_vendedores           fv,',
'       personas                pv',
' where :P198_AUX_CONTROL_REPORTE IS NOT NULL',
' AND c.cod_empresa = d.cod_empresa',
'   and c.cod_cliente = d.cod_cliente',
'AND C.COD_EMPRESA=:P_COD_EMPRESA',
'   and c.cod_empresa = d.cod_empresa',
'   and cat.cod_empresa = d.cod_empresa',
'   and cat.cod_categoria = d.cod_categoria',
'   AND CL.COD_EMPRESA = C.COD_EMPRESA',
'   AND CL.COD_CLIENTE = C.COD_CLIENTE',
'   AND CL.COD_PERSONA = P.COD_PERSONA',
'   and nvl(D.estado, ''N'') = ''S''',
'   and ma.cod_marca = d.cod_marca',
'   and cl.cod_empresa = fv.cod_empresa',
'   and cl.cod_vendedor = fv.cod_vendedor',
'   and fv.cod_persona = pv.cod_persona',
'   ',
'',
'   AND c.cod_empresa = NVL(:P_COD_EMPRESA, ''1'')',
'   AND (Fv.cod_vendedor = :P198_COD_vendedor OR :P198_COD_vendedor IS NULL)',
'   AND (Cl.COD_CLIENTE = :P198_COD_CLIENTE OR :P198_COD_CLIENTE IS NULL)',
'   AND (MA.COD_MARCA = :P198_COD_MARCA_DES OR :P198_COD_MARCA_DES IS NULL)',
'   AND (cat.cod_categoria = :P198_cod_categoria OR  :P198_cod_categoria IS NULL )',
'   and (d.fecha_inicio = :P198_FECHA_INI OR :P198_FECHA_INI IS NULL)',
'   and (d.fecha_fin = :P198_FECHA_FIN OR :P198_FECHA_FIN IS NULL)',
' GROUP BY P.NOMBRE,',
'          cl.cod_cliente,',
'          cat.cod_categoria,',
'          cat.descripcion,',
'          ma.descripcion,',
'          ma.cod_marca,',
'          pv.nombre,',
'          d.cod_marca,',
'          CL.COD_VENDEDOR,',
'          D.COD_CATEGORIA,',
'          D.COD_EMPRESA,',
'          d.fecha_inicio,',
'          d.fecha_fin, MA.COD_MARCA, nvl(cat.descripcion_anterior,cat.descripcion))',
'SELECT CS.VENDEDOR,',
'       CS.DESC_MARCA,',
'       CS.COD_MARCA,',
'       CS.COD_CLIENTE,',
'       CS.NOMBRE,',
'       CS.DESCRIPCION,',
'       CS.CANTPRE,',
'       CS.CANTEJE,',
'       --ROUND(((CS.CANTEJE/CS.CANTPRE)*100),2) PORC_EJEC,',
'      -- (SELECT SUM(CS.CANTEJE)/SUM(CS.CANTPRE)*100 FROM CONSULTA CS) PORC_TOTAL,',
'       CS.COD_CATEG,',
'       CS.DESC_CATEGORIA,',
'       VTRCARTE.calcular_porcentaje(:P_COD_EMPRESA, :P198_COD_CLIENTE, :P198_COD_VENDEDOR, ',
'       :P198_COD_LINEA_DES, :P198_COD_MARCA_DES, :P198_COD_CATEGORIA, :P198_PERIODO, :P198_FECHA_INI,',
'       :P198_FECHA_FIN) PORC_TOTAL_POR_VENDEDOR,',
'      ',
'       VTRCARTE.calcular_porcentaje_por_marca(:P_COD_EMPRESA, :P198_COD_CLIENTE, :P198_COD_VENDEDOR, ',
'       :P198_COD_LINEA_DES, CS.COD_MARCA, :P198_COD_CATEGORIA, :P198_PERIODO, :P198_FECHA_INI,',
'       :P198_FECHA_FIN) PORC_TOTAL_POR_MARCA',
'       ',
'FROM CONSULTA CS',
'',
'         ',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P198_COD_EMPRESA,P198_COD_CLIENTE,P198_COD_VENDEDOR,P198_COD_LINEA_DES,P198_COD_MARCA_DES,P198_COD_CATEGORIA,P198_PERIODO,P198_FECHA_INI,P198_FECHA_FIN,P198_REPORTE,P198_AUX_CONTROL_REPORTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE VTRCARTV'
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
 p_id=>wwv_flow_imp.id(43355973867681540)
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
,p_internal_uid=>43355973867681540
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43356070715681541)
,p_db_column_name=>'VENDEDOR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43356102968681542)
,p_db_column_name=>'DESC_MARCA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43356294203681543)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43356330287681544)
,p_db_column_name=>'NOMBRE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43356495614681545)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43356513100681546)
,p_db_column_name=>'CANTPRE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Objetivo'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43356635849681547)
,p_db_column_name=>'CANTEJE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Ejecutado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43356753755681548)
,p_db_column_name=>'COD_CATEG'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Categ'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43356859886681549)
,p_db_column_name=>'DESC_CATEGORIA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Categoria'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59349523846791047)
,p_db_column_name=>'PORC_TOTAL_POR_VENDEDOR'
,p_display_order=>120
,p_column_identifier=>'N'
,p_column_label=>'Porc %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59349697244791048)
,p_db_column_name=>'PORC_TOTAL_POR_MARCA'
,p_display_order=>130
,p_column_identifier=>'O'
,p_column_label=>'Porc Total Por Marca'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59349757692791049)
,p_db_column_name=>'COD_MARCA'
,p_display_order=>140
,p_column_identifier=>'P'
,p_column_label=>'Cod Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(44058248373413875)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'440583'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'DESC_MARCA:DESC_CATEGORIA:CANTPRE:CANTEJE:PORC_TOTAL_POR_VENDEDOR'
,p_break_on=>'DESC_MARCA:0:0:0:0:0'
,p_break_enabled_on=>'DESC_MARCA:0:0:0:0:0'
,p_sum_columns_on_break=>'CANTPRE:CANTEJE'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(60982167151665603)
,p_report_id=>wwv_flow_imp.id(44058248373413875)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'( G / F ) *100'
,p_format_mask=>'999G999G999G999G990D00'
,p_column_type=>'NUMBER'
,p_column_label=>'Porc %'
,p_report_label=>'Porc %'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(60925397607991372)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>unistr('Por marca y categor\00EDa')
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'609254'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'DESC_MARCA:DESC_CATEGORIA:CANTEJE:CANTPRE'
,p_break_on=>'DESC_MARCA:DESC_CATEGORIA:0:0:0:0'
,p_break_enabled_on=>'DESC_MARCA:DESC_CATEGORIA:0:0:0:0'
,p_sum_columns_on_break=>'CANTPRE:CANTEJE'
);
wwv_flow_imp_page.create_worksheet_group_by(
 p_id=>wwv_flow_imp.id(61297326423740904)
,p_report_id=>wwv_flow_imp.id(60925397607991372)
,p_group_by_columns=>'DESC_MARCA:DESC_CATEGORIA'
,p_function_01=>'SUM'
,p_function_column_01=>'CANTPRE'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'Total Objetivo '
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'N'
,p_function_02=>'SUM'
,p_function_column_02=>'CANTEJE'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_label_02=>'Total Ejecutado'
,p_function_format_mask_02=>'999G999G999G999G990'
,p_function_sum_02=>'N'
,p_function_03=>'MAX'
,p_function_column_03=>'PORC_TOTAL_POR_MARCA'
,p_function_db_column_name_03=>'APXWS_GBFC_03'
,p_function_label_03=>'porc%'
,p_function_format_mask_03=>'999G999G999G999G990D00'
,p_function_sum_03=>'N'
,p_sort_column_01=>'DESC_MARCA'
,p_sort_direction_01=>'ASC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(60931380738018461)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Por vendedor'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'609314'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'DESC_MARCA:DESC_CATEGORIA:CANTPRE:CANTEJE'
,p_break_on=>'0:0:0:0:0:0'
,p_break_enabled_on=>'0:0:0:0:0:0'
,p_sum_columns_on_break=>'CANTPRE:CANTEJE'
);
wwv_flow_imp_page.create_worksheet_group_by(
 p_id=>wwv_flow_imp.id(60982783005670578)
,p_report_id=>wwv_flow_imp.id(60931380738018461)
,p_group_by_columns=>'VENDEDOR'
,p_function_01=>'SUM'
,p_function_column_01=>'CANTPRE'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'Total Objetivo'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'N'
,p_function_02=>'SUM'
,p_function_column_02=>'CANTEJE'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_label_02=>'Total Ejecutado'
,p_function_format_mask_02=>'999G999G999G999G990'
,p_function_sum_02=>'N'
,p_function_03=>'MAX'
,p_function_column_03=>'PORC_TOTAL_POR_VENDEDOR'
,p_function_db_column_name_03=>'APXWS_GBFC_03'
,p_function_label_03=>'Porc%'
,p_function_format_mask_03=>'999G999G999G999G990D00'
,p_function_sum_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43352397541681504)
,p_plug_name=>'REPORTE VTRCARTC'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH CONSULTA AS(',
'                select pv.nombre vendedor,',
'                   ma.descripcion desc_marca,',
'                   ma.COD_MARCA COD_MARCA,',
'                   cl.cod_cliente,',
'                   P.NOMBRE,',
'                  ''N/A'' descripcion,',
'                   SUM(D.Monto_Objetivo) CANTPRE,',
'                   nvl(((SELECT SUM(DECODE(C1.TIP_COMPROBANTE,',
'                                           ''NCR'',',
'                                           D1.Monto_Total * -1,',
'                                           D1.Monto_Total)  )  ',
'                           FROM VT_COMPROBANTES_CABECERA C1,',
'                                VT_COMPROBANTES_DETALLE  D1,',
'                                st_articulos             ss',
'                          WHERE :P198_AUX_CONTROL_REPORTE IS NOT NULL',
'                            AND c1.COD_EMPRESA = D.COD_EMPRESA',
'                            AND C1.cod_cliente = CL.cod_cliente',
'                            and c1.FEC_COMPROBANTE >= d.fecha_inicio',
'                            and c1.FEC_COMPROBANTE <= d.fecha_fin',
'                            AND NVL(C1.ESTADO, ''P'') <> ''A''',
'                            and c1.cod_empresa=d1.cod_empresa',
'                            and c1.tip_comprobante = d1.tip_comprobante',
'                            and c1.ser_comprobante = d1.ser_comprobante',
'                            and c1.nro_comprobante = d1.nro_comprobaNTE',
'                            and d1.cod_empresa= ss.cod_empresa ',
'                            AND D1.COD_ARTICULO = SS.COD_ARTICULO',
'                            AND ss.COD_EMPRESA = c1.COD_EMPRESA',
'                            AND SS.COD_MARCA = D.COD_MARCA',
'',
'                            AND SS.COD_RUBRO = ''PR'')),',
'                       0) CANTEJE,',
'                   ''N/A'' COD_CATEG,',
'                  ''N/A'' desc_categoria',
'              from vt_cartera_clientes_cab c,',
'                   vt_cartera_clientes_det d,',
'                   CC_CLIENTES             CL,',
'                   PERSONAS                P,',
'              ',
'                 ',
'                   st_marcas               ma,',
'                   fv_vendedores           fv,',
'                   personas                pv',
'             where :P198_AUX_CONTROL_REPORTE IS NOT NULL',
'             AND c.cod_empresa = d.cod_empresa',
'               and c.cod_cliente = d.cod_cliente',
'             AND C.COD_EMPRESA=:P_COD_EMPRESA',
'               and c.cod_empresa = d.cod_empresa',
'',
'',
'               AND CL.COD_EMPRESA = C.COD_EMPRESA',
'               AND CL.COD_CLIENTE = C.COD_CLIENTE',
'               AND CL.COD_PERSONA = P.COD_PERSONA',
'               and nvl(D.estado, ''N'') = ''S''',
'               and ma.cod_marca = d.cod_marca',
'               and cl.cod_empresa = fv.cod_empresa',
'               and cl.cod_vendedor = fv.cod_vendedor',
'               and fv.cod_persona = pv.cod_persona',
'             ',
'               and d.cod_categoria is null',
'             ',
'',
'               AND c.cod_empresa = NVL(:P_COD_EMPRESA, ''1'')',
'               AND (Fv.cod_vendedor = :P198_COD_vendedor OR :P198_COD_vendedor IS NULL)',
'               AND (Cl.COD_CLIENTE = :P198_COD_CLIENTE OR :P198_COD_CLIENTE IS NULL)',
'               AND (MA.COD_MARCA = :P198_COD_MARCA_DES OR :P198_COD_MARCA_DES IS NULL)',
'               ',
'               and (d.fecha_inicio = :P198_FECHA_INI OR :P198_FECHA_INI IS NULL)',
'               and (d.fecha_fin = :P198_FECHA_FIN OR :P198_FECHA_FIN IS NULL)',
'             GROUP BY P.NOMBRE,',
'                      cl.cod_cliente,',
'',
'',
'                      ma.descripcion,',
'                      pv.nombre,',
'                      d.cod_marca,',
'                      CL.COD_VENDEDOR,',
'                      D.COD_CATEGORIA,',
'                      D.COD_EMPRESA,',
'                      d.fecha_inicio,',
'                      d.fecha_fin, MA.COD_MARCA',
'            union all',
'            select pv.nombre vendedor,',
'                   ma.descripcion desc_marca,',
'                   ma.COD_MARCA COD_MARCA,',
'                   cl.cod_cliente,',
'                   P.NOMBRE,',
'                   cat.descripcion descripcion,',
'                   SUM(D.CANTIDAD) CANTPRE,',
'                   nvl(((SELECT SUM(DECODE(C1.TIP_COMPROBANTE,',
'                                           ''NCR'',',
'                                           D1.CANTIDAD * -1,',
'                                           D1.CANTIDAD) /',
'                                    decode(SS.COD_CATEGORIA, ''95'', 2, 1))  ',
'                           FROM VT_COMPROBANTES_CABECERA C1,',
'                                VT_COMPROBANTES_DETALLE  D1,',
'                                st_articulos             ss',
'                          WHERE :P198_AUX_CONTROL_REPORTE IS NOT NULL',
'                            AND c1.COD_EMPRESA = D.COD_EMPRESA',
'                            AND C1.cod_cliente = CL.cod_cliente',
'                            and c1.FEC_COMPROBANTE >= d.fecha_inicio',
'                            and c1.FEC_COMPROBANTE <= d.fecha_fin',
'                            AND NVL(C1.ESTADO, ''P'') <> ''A''',
'                            and c1.cod_empresa=d1.cod_empresa',
'                            and c1.tip_comprobante = d1.tip_comprobante',
'                            and c1.ser_comprobante = d1.ser_comprobante',
'                            and c1.nro_comprobante = d1.nro_comprobaNTE',
'                            and d1.cod_empresa= ss.cod_empresa ',
'                            AND D1.COD_ARTICULO = SS.COD_ARTICULO',
'                            AND ss.COD_EMPRESA = c1.COD_EMPRESA',
'                            AND SS.COD_MARCA = D.COD_MARCA',
'             AND nvl(ss.cod_categoria_ant, ss.cod_categoria) =D.COD_CATEGORIA',
'                            AND SS.COD_RUBRO = ''PR'')),',
'                       0) CANTEJE,',
'                   cat.cod_categoria COD_CATEG,',
'                  nvl(cat.descripcion_anterior,cat.descripcion) desc_categoria',
'              from vt_cartera_clientes_cab c,',
'                   vt_cartera_clientes_det d,',
'                   CC_CLIENTES             CL,',
'                   PERSONAS                P,',
'                   st_categorias           cat,',
'                   ST_ENCARGADO_MARCAS     ST,',
'                   st_marcas               ma,',
'                   fv_vendedores           fv,',
'                   personas                pv',
'             where :P198_AUX_CONTROL_REPORTE IS NOT NULL',
'             AND c.cod_empresa = d.cod_empresa',
'               and c.cod_cliente = d.cod_cliente',
'',
'               and c.cod_empresa = d.cod_empresa',
'               and cat.cod_empresa = d.cod_empresa',
'               and cat.cod_categoria = d.cod_categoria',
'               AND CL.COD_EMPRESA = C.COD_EMPRESA',
'               AND CL.COD_CLIENTE = C.COD_CLIENTE',
'               AND CL.COD_PERSONA = P.COD_PERSONA',
'               and nvl(D.estado, ''N'') = ''S''',
'               and ma.cod_marca = d.cod_marca',
'               and cl.cod_empresa = fv.cod_empresa',
'               and cl.cod_vendedor = fv.cod_vendedor',
'               and fv.cod_persona = pv.cod_persona',
'               AND ST.COD_MARCA = D.COD_MARCA',
'             AND C.COD_EMPRESA=:P_COD_EMPRESA',
'',
'               AND c.cod_empresa = NVL(:P_COD_EMPRESA, ''1'')',
'               AND (Fv.cod_vendedor = :P198_COD_vendedor OR :P198_COD_vendedor IS NULL)',
'               AND (Cl.COD_CLIENTE = :P198_COD_CLIENTE OR :P198_COD_CLIENTE IS NULL)',
'               AND (MA.COD_MARCA = :P198_COD_MARCA_DES OR :P198_COD_MARCA_DES IS NULL)',
'               AND (cat.cod_categoria = :P198_cod_categoria OR  :P198_cod_categoria IS NULL )',
'               and (d.fecha_inicio = :P198_FECHA_INI OR :P198_FECHA_INI IS NULL)',
'               and (d.fecha_fin = :P198_FECHA_FIN OR :P198_FECHA_FIN IS NULL)',
'             GROUP BY P.NOMBRE,',
'                      cl.cod_cliente,',
'                      cat.cod_categoria,',
'                      cat.descripcion,',
'                      ma.descripcion,',
'                      pv.nombre,',
'                      d.cod_marca,',
'                      CL.COD_VENDEDOR,',
'                      D.COD_CATEGORIA,',
'                      D.COD_EMPRESA,',
'                      d.fecha_inicio,',
'                      d.fecha_fin, MA.COD_MARCA, nvl(cat.descripcion_anterior,cat.descripcion) ',
'            order by 2)',
'SELECT CS.VENDEDOR,',
'       CS.DESC_MARCA,',
'       CS.COD_MARCA,',
'       CS.COD_CLIENTE,',
'       CS.NOMBRE,',
'       CS.DESCRIPCION,',
'       CS.CANTPRE,',
'       CS.CANTEJE,',
'       ROUND(((CS.CANTEJE/CS.CANTPRE)*100),2)||''%'' PORC_EJEC,',
'       CS.COD_CATEG,',
'       CS.DESC_CATEGORIA,',
'       VTRCARTE.cal_porcentaje_VTRCARTC(:P_COD_EMPRESA,CS.COD_CLIENTE, :P198_COD_VENDEDOR, ',
'       :P198_COD_LINEA_DES, CS.COD_MARCA, :P198_COD_CATEGORIA, :P198_PERIODO, :P198_FECHA_INI,',
'       :P198_FECHA_FIN) PORC_TOTAL_CLIENTE,',
'       VTRCARTE.calcular_porcentaje(:P_COD_EMPRESA, :P198_COD_CLIENTE, :P198_COD_VENDEDOR, ',
'       :P198_COD_LINEA_DES, :P198_COD_MARCA_DES, :P198_COD_CATEGORIA, :P198_PERIODO, :P198_FECHA_INI,',
'       :P198_FECHA_FIN) PORC_TOTAL_POR_VENDEDOR,',
'      VTRCARTE.cal_porcentaje_VTRCARVC(:P_COD_EMPRESA, CS.COD_CLIENTE,CS.NOMBRE ,:P198_COD_VENDEDOR, ',
'       :P198_COD_LINEA_DES, :P198_COD_MARCA_DES, :P198_COD_CATEGORIA, :P198_PERIODO, :P198_FECHA_INI,',
'       :P198_FECHA_FIN) PORC_TOTAL_cliente2',
'       ',
'FROM CONSULTA CS',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P198_COD_EMPRESA,P198_COD_CLIENTE,P198_COD_VENDEDOR,P198_COD_LINEA_DES,P198_COD_MARCA_DES,P198_COD_CATEGORIA,P198_PERIODO,P198_FECHA_INI,P198_FECHA_FIN,P198_REPORTE,P198_AUX_CONTROL_REPORTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE VTRCARTC'
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
 p_id=>wwv_flow_imp.id(44052422988412906)
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
,p_internal_uid=>44052422988412906
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44052537545412907)
,p_db_column_name=>'VENDEDOR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44052654973412908)
,p_db_column_name=>'DESC_MARCA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44052732172412909)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44052841089412910)
,p_db_column_name=>'NOMBRE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44052995617412911)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44053056041412912)
,p_db_column_name=>'CANTPRE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Objetivo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44053137524412913)
,p_db_column_name=>'CANTEJE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Ejecutado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44053207341412914)
,p_db_column_name=>'COD_CATEG'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Categ'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44053394498412915)
,p_db_column_name=>'DESC_CATEGORIA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Categoria'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44172706660881313)
,p_db_column_name=>'PORC_EJEC'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Porc Ejec'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61740686176391423)
,p_db_column_name=>'PORC_TOTAL_CLIENTE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Porc %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61740740314391424)
,p_db_column_name=>'COD_MARCA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Cod Marca'
,p_column_type=>'STRING'
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
 p_id=>wwv_flow_imp.id(61741187317391428)
,p_db_column_name=>'PORC_TOTAL_CLIENTE2'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Porc %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61741234424391429)
,p_db_column_name=>'PORC_TOTAL_POR_VENDEDOR'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'PorcTotal'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(44128631535624053)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'441287'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'NOMBRE:DESC_MARCA:DESC_CATEGORIA:CANTPRE:CANTEJE:PORC_EJEC:'
,p_sort_column_1=>'NOMBRE'
,p_sort_direction_1=>'ASC'
,p_sum_columns_on_break=>'CANTPRE:CANTEJE'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(62246816082050065)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Por Cliente'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'622469'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'NOMBRE:DESC_MARCA:DESC_CATEGORIA:CANTPRE:CANTEJE:PORC_EJEC:'
,p_break_on=>'NOMBRE'
,p_break_enabled_on=>'NOMBRE'
,p_sum_columns_on_break=>'CANTPRE:CANTEJE'
);
wwv_flow_imp_page.create_worksheet_group_by(
 p_id=>wwv_flow_imp.id(62247240512050066)
,p_report_id=>wwv_flow_imp.id(62246816082050065)
,p_group_by_columns=>'NOMBRE'
,p_function_01=>'SUM'
,p_function_column_01=>'CANTPRE'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'N'
,p_function_02=>'SUM'
,p_function_column_02=>'CANTEJE'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_format_mask_02=>'999G999G999G999G990'
,p_function_sum_02=>'N'
,p_function_03=>'MAX'
,p_function_column_03=>'PORC_TOTAL_CLIENTE'
,p_function_db_column_name_03=>'APXWS_GBFC_03'
,p_function_label_03=>'Porc%'
,p_function_format_mask_03=>'999G999G999G999G990D00'
,p_function_sum_03=>'N'
,p_sort_column_01=>'NOMBRE'
,p_sort_direction_01=>'ASC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(63229417319065839)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Total Porcentaje'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'632295'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'NOMBRE:DESC_MARCA:DESC_CATEGORIA:CANTPRE:CANTEJE:PORC_TOTAL_CLIENTE2:PORC_TOTAL_POR_VENDEDOR:'
,p_sort_column_1=>'NOMBRE'
,p_sort_direction_1=>'ASC'
,p_sum_columns_on_break=>'CANTPRE:CANTEJE'
);
wwv_flow_imp_page.create_worksheet_group_by(
 p_id=>wwv_flow_imp.id(63229855981065840)
,p_report_id=>wwv_flow_imp.id(63229417319065839)
,p_group_by_columns=>'VENDEDOR'
,p_function_01=>'SUM'
,p_function_column_01=>'CANTPRE'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'Objetivo'
,p_function_format_mask_01=>'999G999G999G999G999G999G990'
,p_function_sum_01=>'N'
,p_function_02=>'SUM'
,p_function_column_02=>'CANTEJE'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_label_02=>'Ejecutado'
,p_function_format_mask_02=>'999G999G999G999G999G999G990'
,p_function_sum_02=>'N'
,p_function_03=>'MAX'
,p_function_column_03=>'PORC_TOTAL_POR_VENDEDOR'
,p_function_db_column_name_03=>'APXWS_GBFC_03'
,p_function_label_03=>'Porc %'
,p_function_format_mask_03=>'999G999G999G999G990D00'
,p_function_sum_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43352428396681505)
,p_plug_name=>'REPORTE VTRCARCOM'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'',
'WITH CONSULTA AS(',
'                select pv.nombre vendedor,',
'                       ma.COD_MARCA COD_MARCA,',
'                       ma.descripcion desc_marca,',
'                       cl.cod_cliente,',
'                       P.NOMBRE,',
'                      ''N/A'' descripcion,',
'                       SUM(D.MONTO_OBJETIVO) CANTPRE,',
'                       nvl(((SELECT SUM(DECODE(C1.TIP_COMPROBANTE,',
'                                               ''NCR'',',
'                                               D1.MONTO_TOTAL * -1,',
'                                               D1.MONTO_TOTAL) )  ',
'                               FROM VT_COMPROBANTES_CABECERA C1,',
'                                    VT_COMPROBANTES_DETALLE  D1,',
'                                    st_articulos             ss',
'                              WHERE :P198_AUX_CONTROL_REPORTE IS NOT NULL',
'                                 AND  c1.COD_EMPRESA = D.COD_EMPRESA',
'                                AND C1.cod_cliente = CL.cod_cliente',
'                                and c1.FEC_COMPROBANTE >= d.fecha_inicio',
'                                and c1.FEC_COMPROBANTE <= d.fecha_fin',
'                                AND NVL(C1.ESTADO, ''P'') <> ''A''',
'                                and c1.cod_empresa=d1.cod_empresa',
'                                and c1.tip_comprobante = d1.tip_comprobante',
'                                and c1.ser_comprobante = d1.ser_comprobante',
'                                and c1.nro_comprobante = d1.nro_comprobaNTE',
'                                and d1.cod_empresa= ss.cod_empresa ',
'                                AND D1.COD_ARTICULO = SS.COD_ARTICULO',
'                                AND ss.COD_EMPRESA = c1.COD_EMPRESA',
'                                AND SS.COD_MARCA = D.COD_MARCA',
'                ',
'                                AND SS.COD_RUBRO = ''PR'')),',
'                           0) CANTEJE,',
'                       ''N/A''COD_CATEG,',
'                    ''N/A''desc_categoria',
'                ',
'                ',
'                ,',
'                       nvl(((SELECT SUM(DECODE(C1.TIP_COMPROBANTE,',
'                                               ''NCR'',',
'                                               D1.monto_total * -1,',
'                                               D1.monto_total)  )',
'                               FROM VT_COMPROBANTES_CABECERA C1,',
'                                    VT_COMPROBANTES_DETALLE  D1,',
'                                    st_articulos             ss',
'                              WHERE :P198_AUX_CONTROL_REPORTE IS NOT NULL',
'                                AND  c1.COD_EMPRESA = D.COD_EMPRESA',
'                                AND C1.cod_cliente = CL.cod_cliente',
'                                and c1.FEC_COMPROBANTE >= d.fecha_inicio',
'                                and c1.FEC_COMPROBANTE <= d.fecha_fin',
'                                AND NVL(C1.ESTADO, ''P'') <> ''A''',
'                                and c1.cod_empresa = d1.cod_empresa',
'                                and c1.tip_comprobante = d1.tip_comprobante',
'                                and c1.ser_comprobante = d1.ser_comprobante',
'                                and c1.nro_comprobante = d1.nro_comprobaNTE',
'                                and d1.cod_empresa = ss.cod_empresa',
'                                AND D1.COD_ARTICULO = SS.COD_ARTICULO',
'                                AND ss.COD_EMPRESA = c1.COD_EMPRESA',
'                                AND SS.COD_MARCA = D.COD_MARCA',
'                ',
'                                AND SS.COD_RUBRO = ''PR'')),',
'                           0) MONTO_VTA',
'                ',
'                  from vt_cartera_clientes_cab c,',
'                       vt_cartera_clientes_det d,',
'                       CC_CLIENTES             CL,',
'                       PERSONAS                P,',
'                       ',
'                       st_marcas               ma,',
'                       fv_vendedores           fv,',
'                       personas                pv',
'                 where :P198_AUX_CONTROL_REPORTE IS NOT NULL',
'                   AND c.cod_empresa = d.cod_empresa',
'                   and c.cod_cliente = d.cod_cliente',
'                ',
'                   and c.cod_empresa = d.cod_empresa',
'                and c.cod_empresa=:p_cod_empresa',
'                ',
'                   AND CL.COD_EMPRESA = C.COD_EMPRESA',
'                   AND CL.COD_CLIENTE = C.COD_CLIENTE',
'                   AND CL.COD_PERSONA = P.COD_PERSONA',
'                   and nvl(D.estado, ''N'') = ''S''',
'                   and ma.cod_marca = d.cod_marca',
'                   and cl.cod_empresa = fv.cod_empresa',
'                   and cl.cod_vendedor = fv.cod_vendedor',
'                   and fv.cod_persona = pv.cod_persona',
'                ',
'                 ',
'                AND D.COD_CATEGORIA IS NULL',
'                   AND c.cod_empresa = NVL(:P_COD_EMPRESA, ''1'')',
'                   AND (Fv.cod_vendedor = :P198_COD_vendedor OR :P198_COD_vendedor IS NULL)',
'                   AND (Cl.COD_CLIENTE = :P198_COD_CLIENTE OR :P198_COD_CLIENTE IS NULL)',
'                   AND (MA.COD_MARCA = :P198_COD_MARCA_DES  OR :P198_COD_MARCA_DES IS NULL)',
'                ',
'                   and (d.fecha_inicio = :P198_FECHA_INI OR :P198_FECHA_INI IS NULL)',
'                   and (d.fecha_fin = :P198_FECHA_FIN OR :P198_FECHA_FIN IS NULL)',
'                 GROUP BY P.NOMBRE,',
'                          cl.cod_cliente,',
'                ',
'                          ma.descripcion,',
'                          pv.nombre,',
'                          d.cod_marca,',
'                          CL.COD_VENDEDOR,',
'                          D.COD_CATEGORIA,',
'                          D.COD_EMPRESA,',
'                          d.fecha_inicio,',
'                          d.fecha_fin, MA.COD_MARCA',
'                UNION ALL',
'                select pv.nombre vendedor,',
'                       ma.COD_MARCA COD_MARCA,',
'                       ma.descripcion desc_marca,',
'                       cl.cod_cliente,',
'                       P.NOMBRE,',
'                       cat.descripcion descripcion,',
'                       SUM(D.CANTIDAD) CANTPRE,',
'                       nvl(((SELECT SUM(DECODE(C1.TIP_COMPROBANTE,',
'                                               ''NCR'',',
'                                               D1.CANTIDAD * -1,',
'                                               D1.CANTIDAD) /',
'                                        decode(SS.COD_CATEGORIA, ''95'', 2, 1))  ',
'                               FROM VT_COMPROBANTES_CABECERA C1,',
'                                    VT_COMPROBANTES_DETALLE  D1,',
'                                    st_articulos             ss',
'                              WHERE :P198_AUX_CONTROL_REPORTE IS NOT NULL',
'                                AND  c1.COD_EMPRESA = D.COD_EMPRESA',
'                                AND C1.cod_cliente = CL.cod_cliente',
'                                and c1.FEC_COMPROBANTE >= d.fecha_inicio',
'                                and c1.FEC_COMPROBANTE <= d.fecha_fin',
'                                AND NVL(C1.ESTADO, ''P'') <> ''A''',
'                                and c1.cod_empresa=d1.cod_empresa',
'                                and c1.tip_comprobante = d1.tip_comprobante',
'                                and c1.ser_comprobante = d1.ser_comprobante',
'                                and c1.nro_comprobante = d1.nro_comprobaNTE',
'                                and d1.cod_empresa= ss.cod_empresa ',
'                                AND D1.COD_ARTICULO = SS.COD_ARTICULO',
'                                AND ss.COD_EMPRESA = c1.COD_EMPRESA',
'                                AND SS.COD_MARCA = D.COD_MARCA',
'                                AND nvl(ss.cod_categoria_ant, ss.cod_categoria) =D.COD_CATEGORIA',
'                                AND SS.COD_RUBRO = ''PR'')),',
'                           0) CANTEJE,',
'                       cat.cod_categoria COD_CATEG,',
'                     nvl(cat.descripcion_anterior,cat.descripcion) desc_categoria,',
'                       nvl(((SELECT SUM(DECODE(C1.TIP_COMPROBANTE,',
'                                               ''NCR'',',
'                                               D1.monto_total * -1,',
'                                               D1.monto_total) /',
'                                        decode(SS.COD_CATEGORIA, ''95'', 1, 1))',
'                               FROM VT_COMPROBANTES_CABECERA C1,',
'                                    VT_COMPROBANTES_DETALLE  D1,',
'                                    st_articulos             ss',
'                              WHERE :P198_AUX_CONTROL_REPORTE IS NOT NULL',
'                                 AND  c1.COD_EMPRESA = D.COD_EMPRESA',
'                                AND C1.cod_cliente = CL.cod_cliente',
'                                and c1.FEC_COMPROBANTE >= d.fecha_inicio',
'                                and c1.FEC_COMPROBANTE <= d.fecha_fin',
'                                AND NVL(C1.ESTADO, ''P'') <> ''A''',
'                                and c1.cod_empresa = d1.cod_empresa',
'                                and c1.tip_comprobante = d1.tip_comprobante',
'                                and c1.ser_comprobante = d1.ser_comprobante',
'                                and c1.nro_comprobante = d1.nro_comprobaNTE',
'                                and d1.cod_empresa = ss.cod_empresa',
'                                AND D1.COD_ARTICULO = SS.COD_ARTICULO',
'                                AND ss.COD_EMPRESA = c1.COD_EMPRESA',
'                                AND SS.COD_MARCA = D.COD_MARCA',
'                                AND nvl(ss.cod_categoria_ant, ss.cod_categoria) =',
'                                    D.COD_CATEGORIA',
'                                AND SS.COD_RUBRO = ''PR'')),',
'                           0) MONTO_VTA',
'                ',
'                  from vt_cartera_clientes_cab c,',
'                       vt_cartera_clientes_det d,',
'                       CC_CLIENTES             CL,',
'                       PERSONAS                P,',
'                       st_categorias           cat,',
'                       ST_ENCARGADO_MARCAS     ST,',
'                       st_marcas               ma,',
'                       fv_vendedores           fv,',
'                       personas                pv',
'                 where :P198_AUX_CONTROL_REPORTE IS NOT NULL',
'                    AND  c.cod_empresa = d.cod_empresa',
'                   and c.cod_cliente = d.cod_cliente',
'                and c.cod_empresa=:p_cod_empresa',
'                   and c.cod_empresa = d.cod_empresa',
'                   and cat.cod_empresa = d.cod_empresa',
'                   and cat.cod_categoria = d.cod_categoria',
'                   AND CL.COD_EMPRESA = C.COD_EMPRESA',
'                   AND CL.COD_CLIENTE = C.COD_CLIENTE',
'                   AND CL.COD_PERSONA = P.COD_PERSONA',
'                   and nvl(D.estado, ''N'') = ''S''',
'                   and ma.cod_marca = d.cod_marca',
'                   and cl.cod_empresa = fv.cod_empresa',
'                   and cl.cod_vendedor = fv.cod_vendedor',
'                   and fv.cod_persona = pv.cod_persona',
'                   AND ST.COD_MARCA = D.COD_MARCA',
'                 ',
'                ',
'                   AND c.cod_empresa = NVL(:P_COD_EMPRESA, ''1'')',
'                   AND (Fv.cod_vendedor = :P198_COD_vendedor OR :P198_COD_vendedor IS NULL)',
'                   AND (Cl.COD_CLIENTE = :P198_COD_CLIENTE OR :P198_COD_CLIENTE IS NULL)',
'                   AND (MA.COD_MARCA = :P198_COD_MARCA_DES OR :P198_COD_MARCA_DES IS NULL)',
'                   AND (cat.cod_categoria = :P198_cod_categoria OR  :P198_cod_categoria IS NULL )',
'                   and (d.fecha_inicio = :P198_FECHA_INI OR :P198_FECHA_INI IS NULL)',
'                   and (d.fecha_fin = :P198_FECHA_FIN OR :P198_FECHA_FIN IS NULL)',
'                 GROUP BY P.NOMBRE,',
'                          cl.cod_cliente,',
'                          cat.cod_categoria,',
'                          cat.descripcion,',
'                          ma.descripcion,',
'                          pv.nombre,',
'                          d.cod_marca,',
'                          CL.COD_VENDEDOR,',
'                          D.COD_CATEGORIA,',
'                          D.COD_EMPRESA,',
'                          d.fecha_inicio,',
'                          d.fecha_fin, MA.COD_MARCA, nvl(cat.descripcion_anterior,cat.descripcion))',
'SELECT CS.VENDEDOR,',
'       cs.cod_marca,',
'       CS.DESC_MARCA,',
'       CS.COD_CLIENTE,',
'       CS.NOMBRE,',
'       CS.DESCRIPCION,',
'       CS.CANTPRE,',
'       CS.CANTEJE,       ',
'       CS.COD_CATEG,',
'       CS.DESC_CATEGORIA,',
'       CS.MONTO_VTA,       ',
'',
'       VTRCARTE.cal_porc_total_VTRCARCOM(:P_COD_EMPRESA, :P198_COD_CLIENTE,CS.NOMBRE,  :P198_COD_VENDEDOR, ',
'       :P198_COD_LINEA_DES, :P198_COD_MARCA_DES, :P198_COD_CATEGORIA, :P198_PERIODO, :P198_FECHA_INI,',
'       :P198_FECHA_FIN)||''%'' PORC_TOTAL_VEND_EJEC, --PORC% ',
'       ',
'       ',
'       ',
'      VTRCARTE.cal_porcentaje_VTRCARCOM(:P_COD_EMPRESA, :P198_COD_CLIENTE,  :P198_COD_VENDEDOR, ',
'        cs.cod_marca, CS.COD_CATEG, :P198_PERIODO, :P198_FECHA_INI,',
'      :P198_FECHA_FIN)||''%'' PORC_marca, -- PORC%',
'',
'',
'',
'       CASE WHEN (VTRCARTE.cal_porcentaje_VTRCARCOM(:P_COD_EMPRESA, :P198_COD_CLIENTE,   :P198_COD_VENDEDOR, ',
'          cs.cod_marca, CS.COD_CATEG, :P198_PERIODO, :P198_FECHA_INI,',
'       :P198_FECHA_FIN)  ) >= 100 THEN',
'            0.1||''%''',
'            WHEN (VTRCARTE.cal_porcentaje_VTRCARCOM(:P_COD_EMPRESA, :P198_COD_CLIENTE,   :P198_COD_VENDEDOR, ',
'          cs.cod_marca, CS.COD_CATEG, :P198_PERIODO, :P198_FECHA_INI,',
'       :P198_FECHA_FIN) )>= 90 THEN',
'            0.05||''%''',
'            ELSE',
'             0||''%''',
'            END POR_COM_MARCA, -- PORC.COM.',
'',
'',
'      TO_NUMBER(CASE WHEN VTRCARTE.cal_porcentaje_VTRCARCOM(:P_COD_EMPRESA, :P198_COD_CLIENTE,  :P198_COD_VENDEDOR, ',
'        cs.cod_marca, CS.COD_CATEG, :P198_PERIODO, :P198_FECHA_INI,',
'      :P198_FECHA_FIN)>= 100 THEN',
'            0.1',
'           WHEN VTRCARTE.cal_porcentaje_VTRCARCOM(:P_COD_EMPRESA, :P198_COD_CLIENTE,  :P198_COD_VENDEDOR, ',
'        cs.cod_marca, CS.COD_CATEG, :P198_PERIODO, :P198_FECHA_INI,',
'      :P198_FECHA_FIN) >= 90 THEN',
'           0.05',
'           ELSE',
'            0',
'           END) * (VTRCARTE.cal_totalventa_marca_carcom(:P_COD_EMPRESA, :P198_COD_CLIENTE,  :P198_COD_VENDEDOR, ',
'        :P198_COD_MARCA_DES, CS.COD_CATEG, :P198_PERIODO, :P198_FECHA_INI,',
'      :P198_FECHA_FIN)) COMISION_x_marca,  --COMISION',
'',
'         VTRCARTE.cal_totalventa_marca_carcom(:P_COD_EMPRESA, :P198_COD_CLIENTE,  :P198_COD_VENDEDOR, ',
'        cs.cod_marca, CS.COD_CATEG, :P198_PERIODO, :P198_FECHA_INI,',
'      :P198_FECHA_FIN) total_ventas_x_marca, --TOTAL VENTA POR CATEG',
'      ',
'            VTRCARTE.cal_totalventa_VTRCARCOM(:P_COD_EMPRESA, :P198_COD_CLIENTE,CS.NOMBRE,  :P198_COD_VENDEDOR, ',
'      :P198_COD_LINEA_DES, :P198_COD_MARCA_DES, :P198_COD_CATEGORIA, :P198_PERIODO, :P198_FECHA_INI,',
'      :P198_FECHA_FIN) sum_total_ventas,--TOTAL VENTAS',
'      ',
'      VTRCARTE.comision_vendedor_vtrcarcom(:P_COD_EMPRESA, :P198_COD_CLIENTE, ',
'      ',
'        CASE WHEN (VTRCARTE.cal_porcentaje_VTRCARCOM(:P_COD_EMPRESA, :P198_COD_CLIENTE,   :P198_COD_VENDEDOR, ',
'          cs.cod_marca, CS.COD_CATEG, :P198_PERIODO, :P198_FECHA_INI,',
'       :P198_FECHA_FIN)  ) >= 100 THEN',
'            0.1',
'            WHEN (VTRCARTE.cal_porcentaje_VTRCARCOM(:P_COD_EMPRESA, :P198_COD_CLIENTE,   :P198_COD_VENDEDOR, ',
'          cs.cod_marca, CS.COD_CATEG, :P198_PERIODO, :P198_FECHA_INI,',
'       :P198_FECHA_FIN) )>= 90 THEN',
'            0.05',
'            ELSE',
'             0',
'            END ,  ',
'            :P198_COD_VENDEDOR, ',
'        cs.cod_marca, CS.COD_CATEG, :P198_PERIODO, :P198_FECHA_INI,',
'      :P198_FECHA_FIN) COMISION_VENDEDOR',
'',
'       ',
'       ',
'FROM CONSULTA CS',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P198_COD_EMPRESA,P198_COD_CLIENTE,P198_COD_VENDEDOR,P198_COD_LINEA_DES,P198_COD_MARCA_DES,P198_COD_CATEGORIA,P198_PERIODO,P198_FECHA_INI,P198_FECHA_FIN,P198_REPORTE,P198_AUX_CONTROL_REPORTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE VTRCARCOM'
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
 p_id=>wwv_flow_imp.id(44054720529412929)
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
,p_internal_uid=>44054720529412929
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44054876847412930)
,p_db_column_name=>'VENDEDOR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44054949873412931)
,p_db_column_name=>'DESC_MARCA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44055096831412932)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44055136177412933)
,p_db_column_name=>'NOMBRE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44055273446412934)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44055301060412935)
,p_db_column_name=>'CANTPRE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Objetivo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44055453330412936)
,p_db_column_name=>'CANTEJE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Ejecutado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44055531136412937)
,p_db_column_name=>'COD_CATEG'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Categ'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44055608235412938)
,p_db_column_name=>'DESC_CATEGORIA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Categoria'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44055705903412939)
,p_db_column_name=>'MONTO_VTA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Monto Venta'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(68591613716044149)
,p_db_column_name=>'COD_MARCA'
,p_display_order=>180
,p_column_identifier=>'V'
,p_column_label=>'Cod Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70411580494288604)
,p_db_column_name=>'COMISION_X_MARCA'
,p_display_order=>210
,p_column_identifier=>'AA'
,p_column_label=>'Comision Marca'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70411666324288605)
,p_db_column_name=>'SUM_TOTAL_VENTAS'
,p_display_order=>220
,p_column_identifier=>'AB'
,p_column_label=>'Total Ventas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70411785993288606)
,p_db_column_name=>'TOTAL_VENTAS_X_MARCA'
,p_display_order=>230
,p_column_identifier=>'AC'
,p_column_label=>'Total Ventas X Marca'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70411833044288607)
,p_db_column_name=>'COMISION_VENDEDOR'
,p_display_order=>240
,p_column_identifier=>'AD'
,p_column_label=>'Comision Vendedor'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70411914417288608)
,p_db_column_name=>'PORC_TOTAL_VEND_EJEC'
,p_display_order=>250
,p_column_identifier=>'AE'
,p_column_label=>'Porc Total Vend Ejec'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70412085349288609)
,p_db_column_name=>'PORC_MARCA'
,p_display_order=>260
,p_column_identifier=>'AF'
,p_column_label=>'Porc Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(70412154880288610)
,p_db_column_name=>'POR_COM_MARCA'
,p_display_order=>270
,p_column_identifier=>'AG'
,p_column_label=>'Por Com Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(44158586247746509)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'441586'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'DESC_MARCA:DESC_CATEGORIA:CANTPRE:CANTEJE:MONTO_VTA:COMISION_X_MARCA'
,p_sum_columns_on_break=>'CANTPRE:CANTEJE:MONTO_VTA:APXWS_CC_001'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(63256459355495732)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>unistr('Por Comisi\00F3n')
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'632565'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'DESC_MARCA:DESC_CATEGORIA:CANTPRE:CANTEJE:MONTO_VTA'
,p_break_on=>'0:0:0:0'
,p_break_enabled_on=>'0:0:0:0'
,p_sum_columns_on_break=>'CANTPRE:CANTEJE:MONTO_VTA:APXWS_CC_001'
);
wwv_flow_imp_page.create_worksheet_group_by(
 p_id=>wwv_flow_imp.id(71153216217657040)
,p_report_id=>wwv_flow_imp.id(63256459355495732)
,p_group_by_columns=>'DESC_MARCA:DESC_CATEGORIA'
,p_function_01=>'SUM'
,p_function_column_01=>'CANTPRE'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'Objetivo'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'N'
,p_function_02=>'SUM'
,p_function_column_02=>'CANTEJE'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_label_02=>'Ejecutado'
,p_function_format_mask_02=>'999G999G999G999G990'
,p_function_sum_02=>'N'
,p_function_03=>'MAX'
,p_function_column_03=>'PORC_MARCA'
,p_function_db_column_name_03=>'APXWS_GBFC_03'
,p_function_label_03=>'Porc.%'
,p_function_format_mask_03=>'999G999G999G999G990'
,p_function_sum_03=>'N'
,p_function_04=>'SUM'
,p_function_column_04=>'MONTO_VTA'
,p_function_db_column_name_04=>'APXWS_GBFC_04'
,p_function_label_04=>'Monto Venta'
,p_function_format_mask_04=>'999G999G999G999G990'
,p_function_sum_04=>'N'
,p_function_05=>'MAX'
,p_function_column_05=>'POR_COM_MARCA'
,p_function_db_column_name_05=>'APXWS_GBFC_05'
,p_function_label_05=>'Porc.Com.'
,p_function_format_mask_05=>'999G999G999G999G990D00'
,p_function_sum_05=>'N'
,p_function_06=>'MAX'
,p_function_column_06=>'COMISION_X_MARCA'
,p_function_db_column_name_06=>'APXWS_GBFC_06'
,p_function_label_06=>unistr('Comisi\00F3n')
,p_function_format_mask_06=>'999G999G999G999G990'
,p_function_sum_06=>'N'
,p_sort_column_01=>'DESC_MARCA'
,p_sort_direction_01=>'ASC'
,p_sort_column_02=>'DESC_CATEGORIA'
,p_sort_direction_02=>'ASC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(63365245970107057)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>unistr('Comisi\00F3n Total por Vendedor')
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'633653'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'DESC_MARCA:DESC_CATEGORIA:CANTPRE:CANTEJE:MONTO_VTA'
,p_sum_columns_on_break=>'CANTPRE:CANTEJE:MONTO_VTA:APXWS_CC_001'
);
wwv_flow_imp_page.create_worksheet_group_by(
 p_id=>wwv_flow_imp.id(71059559157292462)
,p_report_id=>wwv_flow_imp.id(63365245970107057)
,p_group_by_columns=>'VENDEDOR'
,p_function_01=>'SUM'
,p_function_column_01=>'CANTPRE'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'Objetivo'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'N'
,p_function_02=>'SUM'
,p_function_column_02=>'CANTEJE'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_label_02=>'Ejecutado'
,p_function_format_mask_02=>'999G999G999G999G990'
,p_function_sum_02=>'N'
,p_function_03=>'MAX'
,p_function_column_03=>'PORC_TOTAL_VEND_EJEC'
,p_function_db_column_name_03=>'APXWS_GBFC_03'
,p_function_label_03=>'Porc %'
,p_function_format_mask_03=>'999G999G999G999G990D00'
,p_function_sum_03=>'N'
,p_function_04=>'SUM'
,p_function_column_04=>'MONTO_VTA'
,p_function_db_column_name_04=>'APXWS_GBFC_04'
,p_function_label_04=>'Total Ventas'
,p_function_format_mask_04=>'999G999G999G999G990'
,p_function_sum_04=>'N'
,p_function_05=>'MAX'
,p_function_column_05=>'COMISION_X_MARCA'
,p_function_db_column_name_05=>'APXWS_GBFC_05'
,p_function_label_05=>unistr('Comisi\00F3n')
,p_function_format_mask_05=>'999G999G999G999G990'
,p_function_sum_05=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43354716796681528)
,p_plug_name=>'REPORTE VTRCARVC'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH CONSULTA AS(',
'                select pv.nombre vendedor,',
'                   ma.descripcion desc_marca,',
'                   cl.cod_cliente,',
'                   P.NOMBRE,',
'                   ''N/A'' descripcion,',
'                   SUM(D.MONTO_OBJETIVO) CANTPRE,',
'                   nvl(((SELECT SUM(DECODE(C1.TIP_COMPROBANTE,',
'                                           ''NCR'',',
'                                           D1.MONTO_TOTAL * -1,',
'                                           D1.MONTO_TOTAL)  )',
'                           FROM VT_COMPROBANTES_CABECERA C1,',
'                                VT_COMPROBANTES_DETALLE  D1,',
'                                st_articulos             ss',
'                          WHERE :P198_AUX_CONTROL_REPORTE IS NOT NULL',
'                            AND c1.COD_EMPRESA = D.COD_EMPRESA',
'                            AND C1.cod_cliente = CL.cod_cliente',
'                            and c1.FEC_COMPROBANTE >= d.fecha_inicio',
'                            and c1.FEC_COMPROBANTE <= d.fecha_fin',
'                            AND NVL(C1.ESTADO, ''P'') <> ''A''',
'                            and c1.cod_empresa=d1.cod_empresa',
'                            and c1.tip_comprobante = d1.tip_comprobante',
'                            and c1.ser_comprobante = d1.ser_comprobante',
'                            and c1.nro_comprobante = d1.nro_comprobaNTE',
'                            and d1.cod_empresa= ss.cod_empresa ',
'                            AND D1.COD_ARTICULO = SS.COD_ARTICULO',
'                            AND ss.COD_EMPRESA = c1.COD_EMPRESA',
'                            AND SS.COD_MARCA = D.COD_MARCA',
'',
'                            AND SS.COD_RUBRO = ''PR'')),',
'                       0) CANTEJE,',
'                         ''N/A'' COD_CATEG,',
'                          ''N/A''  desc_categoria',
'              from vt_cartera_clientes_cab c,',
'                   vt_cartera_clientes_det d,',
'                   CC_CLIENTES             CL,',
'                   PERSONAS                P,',
'                 ',
'                   st_marcas               ma,',
'                   fv_vendedores           fv,',
'                   personas                pv',
'             where :P198_AUX_CONTROL_REPORTE IS NOT NULL',
'               AND c.cod_empresa = d.cod_empresa',
'               and c.cod_cliente = d.cod_cliente',
'',
'               AND NVL(d.ESTADO, ''N'') = ''S''',
'               and c.cod_empresa = d.cod_empresa',
'               and c.cod_empresa=:p_cod_empresa',
'',
'',
'               AND CL.COD_EMPRESA = C.COD_EMPRESA',
'               AND CL.COD_CLIENTE = C.COD_CLIENTE',
'               AND CL.COD_PERSONA = P.COD_PERSONA',
'             AND D.COD_CATEGORIA IS NULL',
'',
'               and nvl(D.estado, ''N'') = ''S''',
'               and ma.cod_marca = d.cod_marca',
'               and cl.cod_empresa = fv.cod_empresa',
'               and cl.cod_vendedor = fv.cod_vendedor',
'               and fv.cod_persona = pv.cod_persona',
'',
'               AND c.cod_empresa = NVL(:P198_COD_EMPRESA, ''1'')',
'               AND (Fv.cod_vendedor = :P198_COD_vendedor OR :P198_COD_vendedor IS NULL)',
'               AND (Cl.COD_CLIENTE = :P198_COD_CLIENTE OR :P198_COD_CLIENTE IS NULL)',
'               AND (MA.COD_MARCA = :P198_COD_MARCA_DES OR :P198_COD_MARCA_DES IS NULL)',
'',
'               and (d.fecha_inicio = to_date(:P198_FECHA_INI,''DD/MM/YYYY'') OR :P198_FECHA_INI IS NULL)',
'               and (d.fecha_fin = TO_DATE(:P198_FECHA_FIN,''DD/MM/YYYY'') OR :P198_FECHA_FIN IS NULL)',
'             GROUP BY P.NOMBRE,',
'                      cl.cod_cliente,',
'                      ',
'                      ',
'                      ma.descripcion,',
'                      pv.nombre,',
'                      d.cod_marca,',
'                      CL.COD_VENDEDOR,',
'                      D.COD_CATEGORIA,',
'                      D.COD_EMPRESA,',
'                      d.fecha_inicio,',
'                      d.fecha_fin',
'',
'            UNION ALL',
'            select pv.nombre vendedor,',
'                   ma.descripcion desc_marca,',
'                   cl.cod_cliente,',
'                   P.NOMBRE,',
'                   cat.descripcion,',
'                   SUM(D.CANTIDAD) CANTPRE,',
'                   nvl(((SELECT SUM(DECODE(C1.TIP_COMPROBANTE,',
'                                           ''NCR'',',
'                                           D1.CANTIDAD * -1,',
'                                           D1.CANTIDAD) /',
'                                    decode(SS.COD_CATEGORIA, ''95'', 2, 1))',
'                           FROM VT_COMPROBANTES_CABECERA C1,',
'                                VT_COMPROBANTES_DETALLE  D1,',
'                                st_articulos             ss',
'                          WHERE :P198_AUX_CONTROL_REPORTE IS NOT NULL',
'                            AND c1.COD_EMPRESA = D.COD_EMPRESA',
'                            AND C1.cod_cliente = CL.cod_cliente',
'                            and c1.FEC_COMPROBANTE >= d.fecha_inicio',
'                            and c1.FEC_COMPROBANTE <= d.fecha_fin',
'                            AND NVL(C1.ESTADO, ''P'') <> ''A''',
'                            and c1.cod_empresa=d1.cod_empresa',
'                            and c1.tip_comprobante = d1.tip_comprobante',
'                            and c1.ser_comprobante = d1.ser_comprobante',
'                            and c1.nro_comprobante = d1.nro_comprobaNTE',
'                            and d1.cod_empresa= ss.cod_empresa ',
'                            AND D1.COD_ARTICULO = SS.COD_ARTICULO',
'                            AND ss.COD_EMPRESA = c1.COD_EMPRESA',
'                            AND SS.COD_MARCA = D.COD_MARCA',
'                            AND decode(SS.COD_CATEGORIA, ''23'', ''94'', ss.cod_categoria) =D.COD_CATEGORIA',
'                            AND SS.COD_RUBRO = ''PR'')),',
'                       0) CANTEJE,',
'                   cat.cod_categoria COD_CATEG,',
'                   cat.descripcion desc_categoria',
'              from vt_cartera_clientes_cab c,',
'                   vt_cartera_clientes_det d,',
'                   CC_CLIENTES             CL,',
'                   PERSONAS                P,',
'                   st_categorias           cat,',
'                   ST_ENCARGADO_MARCAS     ST,',
'                   st_marcas               ma,',
'                   fv_vendedores           fv,',
'                   personas                pv',
'             where :P198_AUX_CONTROL_REPORTE IS NOT NULL',
'               AND c.cod_empresa = d.cod_empresa',
'               and c.cod_cliente = d.cod_cliente',
'and c.cod_empresa=:p_cod_empresa',
'               AND NVL(d.ESTADO, ''N'') = ''S''',
'               and c.cod_empresa = d.cod_empresa',
'               and cat.cod_empresa = d.cod_empresa',
'               and cat.cod_categoria = d.cod_categoria',
'               AND CL.COD_EMPRESA = C.COD_EMPRESA',
'               AND CL.COD_CLIENTE = C.COD_CLIENTE',
'               AND CL.COD_PERSONA = P.COD_PERSONA',
'             ',
'',
'               and nvl(D.estado, ''N'') = ''S''',
'               and ma.cod_marca = d.cod_marca',
'               and cl.cod_empresa = fv.cod_empresa',
'               and cl.cod_vendedor = fv.cod_vendedor',
'               and fv.cod_persona = pv.cod_persona',
'               AND ST.COD_MARCA = D.COD_MARCA',
'               AND c.cod_empresa = NVL(:P198_COD_EMPRESA, ''1'')',
'               AND (Fv.cod_vendedor = :P198_COD_vendedor OR :P198_COD_vendedor IS NULL)',
'               AND (Cl.COD_CLIENTE = :P198_COD_CLIENTE OR :P198_COD_CLIENTE IS NULL)',
'               AND (MA.COD_MARCA = :P198_COD_MARCA_DES OR :P198_COD_MARCA_DES IS NULL)',
'              AND (cat.cod_categoria = :P198_cod_categoria OR ( :P198_cod_categoria IS NULL  and  :P198_COD_LINEA_DES  is null))',
'               and (d.fecha_inicio = TO_DATE(:P198_FECHA_INI,''DD/MM/YYYY'') OR :P198_FECHA_INI IS NULL)',
'               and (d.fecha_fin = TO_DATE(:P198_FECHA_FIN,''DD/MM/YYYY'') OR :P198_FECHA_FIN IS NULL)',
'             GROUP BY P.NOMBRE,',
'                      cl.cod_cliente,',
'                      cat.cod_categoria,',
'                      cat.descripcion,',
'                      ma.descripcion,',
'                      pv.nombre,',
'                      d.cod_marca,',
'                      CL.COD_VENDEDOR,',
'                      D.COD_CATEGORIA,',
'                      D.COD_EMPRESA,',
'                      d.fecha_inicio,',
'                      d.fecha_fin)',
'SELECT CS.VENDEDOR,',
'       CS.DESC_MARCA,',
'       CS.COD_CLIENTE,',
'       CS.NOMBRE,',
'       CS.DESCRIPCION,',
'       CS.CANTPRE,',
'       CS.CANTEJE,',
'       ROUND(((CS.CANTEJE/CS.CANTPRE)*100),2) PORC_EJEC,',
'       CS.COD_CATEG,',
'       CS.DESC_CATEGORIA,',
'        VTRCARTE.calcular_porcentaje(:P198_COD_EMPRESA, :P198_COD_CLIENTE, :P198_COD_VENDEDOR, ',
'       :P198_COD_LINEA_DES, :P198_COD_MARCA_DES, :P198_COD_CATEGORIA, :P198_PERIODO, :P198_FECHA_INI,',
'       :P198_FECHA_FIN) PORC_TOTAL_POR_VENDEDOR,',
'       VTRCARTE.cal_porcentaje_VTRCARVC(:P198_COD_EMPRESA, CS.COD_CLIENTE,CS.NOMBRE ,:P198_COD_VENDEDOR, ',
'       :P198_COD_LINEA_DES, :P198_COD_MARCA_DES, :P198_COD_CATEGORIA, :P198_PERIODO, :P198_FECHA_INI,',
'       :P198_FECHA_FIN) PORC_TOTAL_POR_cliente',
'       ',
'FROM CONSULTA CS',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P198_COD_EMPRESA,P198_COD_CLIENTE,P198_COD_VENDEDOR,P198_COD_LINEA_DES,P198_COD_MARCA_DES,P198_COD_CATEGORIA,P198_PERIODO,P198_FECHA_INI,P198_FECHA_FIN,P198_REPORTE,P198_AUX_CONTROL_REPORTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE VTRCARVC'
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(44056504786412947)
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
,p_internal_uid=>44056504786412947
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44056661282412948)
,p_db_column_name=>'VENDEDOR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44056786277412949)
,p_db_column_name=>'DESC_MARCA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44056824468412950)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44171526551881301)
,p_db_column_name=>'NOMBRE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44171621598881302)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44171789458881303)
,p_db_column_name=>'CANTPRE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Objetivo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44171812866881304)
,p_db_column_name=>'CANTEJE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Ejecutado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44171970946881305)
,p_db_column_name=>'COD_CATEG'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Categ'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44172062491881306)
,p_db_column_name=>'DESC_CATEGORIA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Categoria'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61740858559391425)
,p_db_column_name=>'PORC_TOTAL_POR_VENDEDOR'
,p_display_order=>100
,p_column_identifier=>'L'
,p_column_label=>'Porc %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61740974131391426)
,p_db_column_name=>'PORC_TOTAL_POR_CLIENTE'
,p_display_order=>110
,p_column_identifier=>'M'
,p_column_label=>'Porc %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(61741059722391427)
,p_db_column_name=>'PORC_EJEC'
,p_display_order=>120
,p_column_identifier=>'N'
,p_column_label=>'Porc Ejec parcial'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(44180422415934906)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'441805'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_view_mode=>'REPORT'
,p_report_columns=>'VENDEDOR:NOMBRE:DESC_MARCA:CANTPRE:CANTEJE:PORC_EJEC:'
,p_sort_column_1=>'NOMBRE'
,p_sort_direction_1=>'ASC'
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
,p_break_on=>'VENDEDOR:NOMBRE:0:0:0:0'
,p_break_enabled_on=>'VENDEDOR:NOMBRE:0:0:0:0'
,p_sum_columns_on_break=>'CANTPRE:CANTEJE'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(61338366468087018)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Vendedor-Cliente'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'613384'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'VENDEDOR:DESC_MARCA:NOMBRE:CANTPRE:CANTEJE'
,p_break_on=>'0:0:0'
,p_break_enabled_on=>'0:0:0'
,p_sum_columns_on_break=>'CANTPRE:CANTEJE'
);
wwv_flow_imp_page.create_worksheet_group_by(
 p_id=>wwv_flow_imp.id(61338791345087018)
,p_report_id=>wwv_flow_imp.id(61338366468087018)
,p_group_by_columns=>'NOMBRE'
,p_function_01=>'SUM'
,p_function_column_01=>'CANTPRE'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_format_mask_01=>'999G999G999G999G990D00'
,p_function_sum_01=>'N'
,p_function_02=>'SUM'
,p_function_column_02=>'CANTEJE'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_format_mask_02=>'999G999G999G999G990'
,p_function_sum_02=>'N'
,p_function_03=>'MAX'
,p_function_column_03=>'PORC_EJEC'
,p_function_db_column_name_03=>'APXWS_GBFC_03'
,p_function_label_03=>'Porc%'
,p_function_format_mask_03=>'999G999G999G999G990D00'
,p_function_sum_03=>'N'
,p_sort_column_01=>'NOMBRE'
,p_sort_direction_01=>'ASC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(63210563066594710)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'por Vendedor'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'632106'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'VENDEDOR:DESC_MARCA:NOMBRE:CANTPRE:CANTEJE'
,p_break_on=>'0:0:0'
,p_break_enabled_on=>'0:0:0'
,p_sum_columns_on_break=>'CANTPRE:CANTEJE'
);
wwv_flow_imp_page.create_worksheet_group_by(
 p_id=>wwv_flow_imp.id(63210958900594711)
,p_report_id=>wwv_flow_imp.id(63210563066594710)
,p_group_by_columns=>'VENDEDOR'
,p_function_01=>'SUM'
,p_function_column_01=>'CANTPRE'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'N'
,p_function_02=>'SUM'
,p_function_column_02=>'CANTEJE'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_format_mask_02=>'999G999G999G999G990'
,p_function_sum_02=>'N'
,p_function_03=>'MAX'
,p_function_column_03=>'PORC_EJEC'
,p_function_db_column_name_03=>'APXWS_GBFC_03'
,p_function_label_03=>'porc %'
,p_function_format_mask_03=>'999G999G999G999G990D00'
,p_function_sum_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85263927041468330)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85264680969468337)
,p_plug_name=>'VTRCARTE'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(86031235708530643)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43282449655538518)
,p_button_sequence=>210
,p_button_plug_id=>wwv_flow_imp.id(85264680969468337)
,p_button_name=>'P198_EJECUTAR_VTRCARTV'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43352842362681509)
,p_button_sequence=>220
,p_button_plug_id=>wwv_flow_imp.id(85264680969468337)
,p_button_name=>'P198_EJECUTAR_VTRCARTC'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43352927817681510)
,p_button_sequence=>230
,p_button_plug_id=>wwv_flow_imp.id(85264680969468337)
,p_button_name=>'P198_EJECUTAR_VTRCARCOM'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43354610643681527)
,p_button_sequence=>240
,p_button_plug_id=>wwv_flow_imp.id(85264680969468337)
,p_button_name=>'P198_EJECUTAR_VTRCARVC'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42750282305992135)
,p_name=>'P198_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(85264680969468337)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTES_VTRCARTE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) nombre, c.cod_cliente ',
'from cc_clientes c, personas p',
'where c.cod_empresa = :P_COD_EMPRESA',
'and c.cod_persona = p.cod_persona ',
'order by 1'))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(42750392471992136)
,p_name=>'P198_COD_FAMILIA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(85264680969468337)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42750427596992137)
,p_name=>'P198_DESC_FAMILIA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(85264680969468337)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42750531091992138)
,p_name=>'P198_COD_LINEA_DES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(85264680969468337)
,p_prompt=>'Linea'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_DES_LINEA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_linea||'' - ''||descripcion D,',
'         cod_linea R',
'    FROM st_linea ',
'ORDER BY 2;'))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(42750685973992139)
,p_name=>'P198_DESC_LINEA_DES'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(85264680969468337)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42750787431992140)
,p_name=>'P198_COD_MARCA_DES'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(85264680969468337)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_DES_MARCA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_marca R, ',
'         cod_marca||'' - ''||descripcion D',
'    FROM st_marcas ',
'ORDER BY 2;'))
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
 p_id=>wwv_flow_imp.id(42750804027992141)
,p_name=>'P198_DESC_MARCA_DES'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(85264680969468337)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42750900355992142)
,p_name=>'P198_COD_CATEGORIA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(85264680969468337)
,p_prompt=>'Categoria'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CATEGORIA_VTRCARTE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_categoria || '' - '' ||descripcion D, cod_categoria R',
'from st_categorias ',
'where cod_empresa=:P_COD_EMPRESA'))
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
 p_id=>wwv_flow_imp.id(42751042325992143)
,p_name=>'P198_DESC_CATEGORIA'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(85264680969468337)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42751190555992144)
,p_name=>'P198_NOM_CLIENTE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(85264680969468337)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42751272915992145)
,p_name=>'P198_COD_VENDEDOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(85264680969468337)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVVENDEDORES_VTRCARTE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ) nombre, v.cod_vendedor ',
'from fv_vendedores v, personas p ',
'where v.cod_empresa = :P_COD_EMPRESA',
'and v.cod_persona = p.cod_persona ',
'and nvl( v.estado, ''A'' ) = ''A'' ',
'order by 1'))
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
 p_id=>wwv_flow_imp.id(42751347046992146)
,p_name=>'P198_PERIODO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(85264680969468337)
,p_prompt=>'Periodo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PERIODO_VTRCARTE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWNUM PERIODO, ',
'    to_char(FECHA_INICIO,''DD/MM/YYYY'')FECHA_INICIO, ',
'    to_char(FECHA_FIN,''DD/MM/YYYY'')FECHA_FIN',
'FROM (',
'select DISTINCT  ',
'    FECHA_INICIO, ',
'    FECHA_FIN',
'from VT_CARTERA_CLIENTES_DET where cod_empresa=:p_cod_empresa)'))
,p_lov_display_null=>'YES'
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
,p_attribute_10=>'FECHA_INICIO:P198_FECHA_INI,FECHA_FIN:P198_FECHA_FIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42751451247992147)
,p_name=>'P198_NOM_VENDEDOR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(85264680969468337)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42751521008992148)
,p_name=>'P198_FECHA_INI'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(85264680969468337)
,p_prompt=>'Fecha inicial'
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
 p_id=>wwv_flow_imp.id(42751691665992149)
,p_name=>'P198_FECHA_FIN'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(85264680969468337)
,p_prompt=>'Fecha final'
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
 p_id=>wwv_flow_imp.id(42751795636992150)
,p_name=>'P198_USUARIO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(85264680969468337)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43282871372538518)
,p_name=>'P198_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(85263927041468330)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43300416990538530)
,p_name=>'P198_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(85263927041468330)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43300818950538530)
,p_name=>'P198_NOM_EMPRESA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(85263927041468330)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43301273585538531)
,p_name=>'P198_COD_USUARIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(85263927041468330)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43301607480538531)
,p_name=>'P198_COD_MODULO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(85263927041468330)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43302018537538531)
,p_name=>'P198_NOM_SUCURSAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(85263927041468330)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43303001667538531)
,p_name=>'P198_AUX_CONTROL_REPORTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(86031235708530643)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43352167913681502)
,p_name=>'P198_REPORTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(85264680969468337)
,p_prompt=>'Reporte'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Resumen por Vendedor;V,Resumen por Cliente;C,Detallado por Vendedor-Cliente;D,Detalle Comision por Vendedor;P'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43307335005538534)
,p_name=>'DA_CAMBIO_DE_REPORTE_V'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P198_REPORTE'
,p_condition_element=>'P198_REPORTE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'V'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43353687613681517)
,p_event_id=>wwv_flow_imp.id(43307335005538534)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(43282449655538518)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43354099113681521)
,p_event_id=>wwv_flow_imp.id(43307335005538534)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(43352927817681510)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43354157835681522)
,p_event_id=>wwv_flow_imp.id(43307335005538534)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(43352842362681509)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43355155282681532)
,p_event_id=>wwv_flow_imp.id(43307335005538534)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(43354610643681527)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43353476076681515)
,p_name=>'DA_CAMBIO_DE_REPORTE_C'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P198_REPORTE'
,p_condition_element=>'P198_REPORTE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'C'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43353736433681518)
,p_event_id=>wwv_flow_imp.id(43353476076681515)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(43352842362681509)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43354239773681523)
,p_event_id=>wwv_flow_imp.id(43353476076681515)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(43352927817681510)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43354317022681524)
,p_event_id=>wwv_flow_imp.id(43353476076681515)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(43282449655538518)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43355216241681533)
,p_event_id=>wwv_flow_imp.id(43353476076681515)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(43354610643681527)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43353527611681516)
,p_name=>'DA_CAMBIO_DE_REPORTE_P'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P198_REPORTE'
,p_condition_element=>'P198_REPORTE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'P'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43353825141681519)
,p_event_id=>wwv_flow_imp.id(43353527611681516)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(43352927817681510)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43354483019681525)
,p_event_id=>wwv_flow_imp.id(43353527611681516)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(43352842362681509)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43354533740681526)
,p_event_id=>wwv_flow_imp.id(43353527611681516)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(43282449655538518)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43355356803681534)
,p_event_id=>wwv_flow_imp.id(43353527611681516)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(43354610643681527)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43355402727681535)
,p_name=>'DA_CAMBIO_DE_REPORTE_D'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P198_REPORTE'
,p_condition_element=>'P198_REPORTE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'D'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43355566207681536)
,p_event_id=>wwv_flow_imp.id(43355402727681535)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(43354610643681527)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43355659169681537)
,p_event_id=>wwv_flow_imp.id(43355402727681535)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(43352842362681509)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43355799940681538)
,p_event_id=>wwv_flow_imp.id(43355402727681535)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(43282449655538518)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43355872624681539)
,p_event_id=>wwv_flow_imp.id(43355402727681535)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(43352927817681510)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43304518311538533)
,p_name=>'DA_OCULTAR_REPORTE'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43352540025681506)
,p_event_id=>wwv_flow_imp.id(43304518311538533)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43352428396681505)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43352614716681507)
,p_event_id=>wwv_flow_imp.id(43304518311538533)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43352397541681504)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43352723356681508)
,p_event_id=>wwv_flow_imp.id(43304518311538533)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43352213136681503)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43354883365681529)
,p_event_id=>wwv_flow_imp.id(43304518311538533)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43354716796681528)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43305475382538534)
,p_name=>'DA_MOSTAR_REPORTE_VTRCARTV'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(43282449655538518)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43306961405538534)
,p_event_id=>wwv_flow_imp.id(43305475382538534)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P198_AUX_CONTROL_REPORTE IS NULL THEN',
'    :P198_AUX_CONTROL_REPORTE := ''EJECUTAR'';',
'END IF;'))
,p_attribute_02=>'P198_AUX_CONTROL_REPORTE'
,p_attribute_03=>'P198_AUX_CONTROL_REPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43356979329681550)
,p_event_id=>wwv_flow_imp.id(43305475382538534)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43352213136681503)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44053496373412916)
,p_event_id=>wwv_flow_imp.id(43305475382538534)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43352397541681504)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44053571879412917)
,p_event_id=>wwv_flow_imp.id(43305475382538534)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43352428396681505)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44053649968412918)
,p_event_id=>wwv_flow_imp.id(43305475382538534)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43354716796681528)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44051950099412901)
,p_event_id=>wwv_flow_imp.id(43305475382538534)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43352213136681503)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43353052498681511)
,p_name=>'DA_OCULTAR_BOTONES'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43353151463681512)
,p_event_id=>wwv_flow_imp.id(43353052498681511)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(43352927817681510)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43353270978681513)
,p_event_id=>wwv_flow_imp.id(43353052498681511)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(43352842362681509)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43353355483681514)
,p_event_id=>wwv_flow_imp.id(43353052498681511)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(43282449655538518)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43354991381681530)
,p_event_id=>wwv_flow_imp.id(43353052498681511)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(43354610643681527)
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
 p_id=>wwv_flow_imp.id(44052166321412903)
,p_name=>'DA_MOSTRAR_REPORTE_VTRCARTC'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(43352842362681509)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44052030121412902)
,p_event_id=>wwv_flow_imp.id(44052166321412903)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P198_AUX_CONTROL_REPORTE IS NULL THEN',
'    :P198_AUX_CONTROL_REPORTE := ''EJECUTAR'';',
'END IF;',
'',
' '))
,p_attribute_02=>'P198_AUX_CONTROL_REPORTE'
,p_attribute_03=>'P198_AUX_CONTROL_REPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44052398526412905)
,p_event_id=>wwv_flow_imp.id(44052166321412903)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43352397541681504)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44053727975412919)
,p_event_id=>wwv_flow_imp.id(44052166321412903)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43352428396681505)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44053885511412920)
,p_event_id=>wwv_flow_imp.id(44052166321412903)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43352213136681503)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44053907310412921)
,p_event_id=>wwv_flow_imp.id(44052166321412903)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43354716796681528)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44052266435412904)
,p_event_id=>wwv_flow_imp.id(44052166321412903)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43352397541681504)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44054083136412922)
,p_name=>'DA_MOSTRAR_REPORTE_VTRCARCOM'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(43352927817681510)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44054249440412924)
,p_event_id=>wwv_flow_imp.id(44054083136412922)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P198_AUX_CONTROL_REPORTE IS NULL THEN',
'    :P198_AUX_CONTROL_REPORTE := ''EJECUTAR'';',
'END IF;',
'',
' '))
,p_attribute_02=>'P198_AUX_CONTROL_REPORTE'
,p_attribute_03=>'P198_AUX_CONTROL_REPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44054317942412925)
,p_event_id=>wwv_flow_imp.id(44054083136412922)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43352428396681505)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44054469165412926)
,p_event_id=>wwv_flow_imp.id(44054083136412922)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43352397541681504)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44054550789412927)
,p_event_id=>wwv_flow_imp.id(44054083136412922)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43352213136681503)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44054613253412928)
,p_event_id=>wwv_flow_imp.id(44054083136412922)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43354716796681528)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44054193444412923)
,p_event_id=>wwv_flow_imp.id(44054083136412922)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43352428396681505)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44055898578412940)
,p_name=>'DA_MOSTRAR_REPORTE_VTRCARVC'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(43354610643681527)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44056048001412942)
,p_event_id=>wwv_flow_imp.id(44055898578412940)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P198_AUX_CONTROL_REPORTE IS NULL THEN',
'    :P198_AUX_CONTROL_REPORTE := ''EJECUTAR'';',
'END IF;',
'',
' '))
,p_attribute_02=>'P198_AUX_CONTROL_REPORTE'
,p_attribute_03=>'P198_AUX_CONTROL_REPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44056168841412943)
,p_event_id=>wwv_flow_imp.id(44055898578412940)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43354716796681528)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44056223608412944)
,p_event_id=>wwv_flow_imp.id(44055898578412940)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43352428396681505)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44056318485412945)
,p_event_id=>wwv_flow_imp.id(44055898578412940)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43352397541681504)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44056482593412946)
,p_event_id=>wwv_flow_imp.id(44055898578412940)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43352213136681503)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44055925919412941)
,p_event_id=>wwv_flow_imp.id(44055898578412940)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(43354716796681528)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(43304122213538533)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'LIMPIAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(43303716731538533)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P198_COD_USUARIO := NVL(:P_COD_USUARIO, :APP_USER);',
':P198_COD_EMPRESA := ''1'';',
':P198_NOM_EMPRESA := NVL(:P_NOM_EMPRESA, NULL);',
':P198_COD_SUCURSAL:= ''01'';',
':P198_NOM_SUCURSAL := NVL(:P_NOM_SUCURSAL,NULL);',
':P198_COD_MODULO  := nvl(:P_COD_MODULO,''VT'');',
':P198_AUX_CONTROL_REPORTE := NULL;',
'--DATOS DE PPRUEBA periodo 23 - 01/MAR/20 a 30/ABR/20 RICARDO CUADRADO REPORTE DE VENDENDOR)',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
