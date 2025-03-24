prompt --application/pages/page_00075
begin
--   Manifest
--     PAGE: 00075
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
 p_id=>75
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Venta Cruzada'
,p_alias=>'VENTA-CRUZADA'
,p_step_title=>'Venta Cruzada'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20250305105345'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(63577941027636890)
,p_plug_name=>'Filtro'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64669058060218200)
,p_plug_name=>'Venta Cruzada'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ss.cod_art_corto,',
'       SS.COD_ARTICULO codigo_articulo,',
'       ss.descripcion desc_articulo,',
'       ma.cod_marca,',
'       ma.descripcion marca,',
'       li.cod_linea, li.descripcion desc_linea,',
'       ss.cod_categoria,',
'       cat.descripcion desc_categoria,',
'       sum(ex.cant_dispon) stock,',
'       nvl((select sum(t.CANT)',
'             from v_en_transito_sabana t',
'            where t.COD_ARTICULO = ss.cod_articulo),',
'           0) transito,',
'       ',
'       NVL((select sum(vd.cantidad - nvl(vd.cantidad_facturada, 0))',
'             from vt_pedidos_cabecera vc, vt_pedidos_detalle vd, fv_vendedores fv',
'            where vc.cod_empresa = SS.cod_empresa',
'              and (vc.cod_cliente = :P75_cod_cliente OR :P75_COD_CLIENTE IS NULL)',
'              and vc.cod_empresa=fv.cod_empresa',
'              and vc.cod_vendedor=fv.cod_vendedor',
'              and (fv.cod_vendedor = :P75_COD_VENDEDOR OR :P75_COD_VENDEDOR IS NULL)',
'              and (fv.Cod_Supervisor = :P75_COD_SUPERVISOR OR :P75_COD_SUPERVISOR IS NULL)',
'              and vc.cod_empresa = vd.cod_empresa',
'              AND VD.COD_ARTICULO=SS.COD_ARTICULO',
'              AND vc.fec_comprobante BETWEEN :P75_FECHA_INICIAL AND',
'                  :P75_FECHA_FINAL',
'              and vc.tip_comprobante = vd.tip_comprobante',
'              and vc.ser_comprobante = vd.ser_comprobante',
'              and vc.nro_comprobante = vd.nro_comprobante',
'              AND VD.CANTIDAD > NVL(VD.CANTIDAD_FACTURADA, 0)',
'              and vc.estado not in (''A'', ''C'')),',
'           0) PEDIDO_PENDIENTE,',
'       ',
'       nvl((select CASE',
'                    WHEN MAX(VC.FEC_COMPROBANTE) BETWEEN',
'                         (:P75_FECHA_INICIAL) AND :P75_FECHA_FINAL AND',
'                         SUM(VD.CANTIDAD',
'                         * (CASE',
'                               WHEN VD.TIP_COMPROBANTE = ''NCR'' THEN',
'                                -1',
'                               ELSE',
'                                1',
'                             END) )>0 THEN',
'                             ',
'                     ''COMPRO EN EL TRIMESTRE''',
'                     ',
'                      when SUM(VD.CANTIDAD',
'                         * (CASE',
'                               WHEN VD.TIP_COMPROBANTE = ''NCR'' THEN',
'                                -1',
'                               ELSE',
'                                1',
'                             END) )>0 THEN',
'                     ''NO COMPRO EN EL TRIMESTRE''',
'                     else ',
'                      ''NUNCA COMPRO''',
'                  END VENTA',
'             from vt_comprobantes_cabecera vc, vt_comprobantes_detalle vd, FV_VENDEDORES FV',
'            where vc.cod_empresa = SS.cod_empresa',
'                 and (vc.cod_cliente = :P75_cod_cliente OR :P75_COD_CLIENTE IS NULL)',
'              and vc.cod_empresa = vd.cod_empresa',
'AND VD.COD_ARTICULO=SS.COD_ARTICULO',
'              AND vc.fec_comprobante BETWEEN',
'                  add_months(:P75_FECHA_INICIAL, -6) AND :P75_FECHA_FINAL',
'                   and (vc.cod_cliente = :P75_cod_cliente OR :P75_COD_CLIENTE IS NULL)',
'              and vc.cod_empresa=fv.cod_empresa',
'              and vc.cod_vendedor=fv.cod_vendedor',
'              and (vc.cod_vendedor = :P75_COD_VENDEDOR OR :P75_COD_VENDEDOR IS NULL)',
'              and (fv.Cod_Supervisor = :P75_COD_SUPERVISOR OR :P75_COD_SUPERVISOR IS NULL)',
'              and vc.tip_comprobante = vd.tip_comprobante',
'              and vc.ser_comprobante = vd.ser_comprobante',
'              and vc.nro_comprobante = vd.nro_comprobante',
'              and vc.estado not in (''A'')),',
'           ''NUNCA COMPRO'')venta,',
'                  precio_web(ss.cod_articulo,''1'',0)precio_lista,',
'           ((select   MAX(VC.FEC_COMPROBANTE) ',
'             from vt_comprobantes_cabecera vc, vt_comprobantes_detalle vd, FV_VENDEDORES FV',
'            where vc.cod_empresa = SS.cod_empresa',
'                 and (vc.cod_cliente = :P75_cod_cliente OR :P75_COD_CLIENTE IS NULL)',
'              and vc.cod_empresa = vd.cod_empresa',
'AND VD.COD_ARTICULO=SS.COD_ARTICULO',
'              AND vc.fec_comprobante BETWEEN',
'                  add_months(:P75_FECHA_INICIAL, -12) AND :P75_FECHA_FINAL',
'                   and (vc.cod_cliente = :P75_cod_cliente OR :P75_COD_CLIENTE IS NULL)',
'              and vc.cod_empresa=fv.cod_empresa',
'              and vc.cod_vendedor=fv.cod_vendedor',
'              and (vc.cod_vendedor = :P75_COD_VENDEDOR OR :P75_COD_VENDEDOR IS NULL)',
'              and (fv.Cod_Supervisor = :P75_COD_SUPERVISOR OR :P75_COD_SUPERVISOR IS NULL)',
'              and vc.tip_comprobante = vd.tip_comprobante',
'              and vc.ser_comprobante = vd.ser_comprobante',
'              and vc.nro_comprobante = vd.nro_comprobante',
'              and vc.estado not in (''A'')))ultima_compra',
'',
'  FROM st_articulos          ss,',
'       st_categorias         cat,',
'       st_marcas             ma,',
'       st_linea              li,',
'       st_existencia_art     ex,',
'       st_familiA            fw,',
'       st_division_articulos div',
' where ss.cod_empresa = :P_COD_EMPRESA',
'   and ss.cod_empresa = cat.cod_empresa(+)',
'   and ss.cod_categoria = cat.cod_categoria(+)',
'   and ss.cod_empresa = li.cod_empresa(+)',
'   and ss.cod_linea = li.cod_linea(+)',
'   and (ss.cod_division = :P75_COD_DIVISION OR :P75_COD_DIVISION IS NULL)',
'   AND (SS.COD_MARCA = :P75_COD_MARCA OR :P75_COD_MARCA IS NULL)',
'   AND (SS.COD_CATEGORIA = :P75_COD_CATEGORIA OR :P75_COD_CATEGORIA IS NULL)',
'   AND (SS.COD_LINEA = :P75_COD_LINEA OR :P75_COD_LINEA IS NULL)',
'    AND (SS.COD_art_corto = :P75_COD_ART_CORTO OR :P75_COD_ART_CORTO IS NULL)',
'   AND SS.COD_MARCA NOT IN ''RAT''',
'      ',
'   and ma.path_marca is not null',
'   and ma.cod_marca = case',
'         when ss.Cod_Art_Corto = ''G1714'' then',
'          ''TO''',
'         ELSE',
'          ss.cod_marca',
'       END',
'   and NVL(ss.path_img_pro, ''SIN_IMAGEN.BMP'') is not null',
'   and ss.precio_base > 0',
'   and ss.cod_empresa = ex.cod_empresa',
'   and ss.cod_articulo = ex.cod_articulo',
'   and nvl(ex.cant_dispon, 0) >= case',
'         when ex.cod_sucursal in (''07'', ''02'', ''03'') or',
'              ss.cod_division in (''T12'') OR SS.COD_ART_CORTO = ''S80'' then',
'          1',
'         WHEN ss.cod_division in (''T10'') then',
'          5',
'         WHEN SS.COD_ARTICULO IN',
'              (SELECT B.COD_ARTICULO',
'                 FROM vt_articulos_incluir_lista B',
'                WHERE B.COD_EMPRESA = ''1''',
'                  AND B.COD_ARTICULO = SS.COD_ARTICULO) THEN',
'          1',
'         else',
'          2',
'       end',
'   and ss.cod_empresa = fw.cod_empresa(+)',
'   and ss.cod_familia = fw.cod_familia(+)',
'   and nvl(ma.estado, ''S'') NOT IN (''N'', ''I'')',
'   and nvl(ss.ind_lista_precio, ''N'') = ''S''',
'   and ss.cod_division = div.cod_division(+)',
'   and nvl(ss.ind_lista_precio, ''N'') = ''S''',
'      ',
'   and ex.cod_sucursal in (''01'', ''190'', ''209'', ''262'')',
'   and (:P75_COD_VENDEDOR IS NOT NULL OR :P75_COD_SUPERVISOR IS NOT NULL)',
'   and cod_rubro = ''PR''',
' group by SS.COD_EMPRESA,',
'          SS.COD_ARTICULO,',
'          ss.descripcion,',
'          ma.descripcion,',
'          nvl(fw.descripcion, cat.descripcion),',
'          nvl(ss.cod_familia, ss.cod_categoria),',
'          SS.ANCHO_CM,',
'          SS.ALTO_CM,',
'          SS.LARGO_CM,',
'          MA.ORDEN_LISTA,',
'          ss.peso_gr,',
'          ss.cod_familia,',
'          ss.descripcion_web,',
'          ss.path_manual_usu,',
'          li.descripcion,',
'          ss.cod_division,',
'          div.desc_division,',
'          ss.cod_categoria,',
'          cat.descripcion,',
'          ma.cod_marca,',
'          SS.COD_ART_CORTO,',
'          MA.PATH_MARCA2,',
'          SS.COD_EAN,',
'          SS.CANT_X_PAQUETE,',
'          SS.COD_MARCA, li.cod_linea',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P75_COD_VENDEDOR,P75_COD_SUPERVISOR,P75_COD_DIVISION,P75_COD_MARCA,P75_COD_CATEGORIA,P75_COD_ART_CORTO,P75_FECHA_INICIAL,P75_FECHA_FINAL,P75_COD_CLIENTE,P75_COD_LINEA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Venta Cruzada'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(64669159276218200)
,p_name=>'Venta Cruzada'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No se han encontrado datos'
,p_max_rows_per_page=>'500'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'INV'
,p_internal_uid=>64669159276218200
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13205044200869524)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13205477137869525)
,p_db_column_name=>'CODIGO_ARTICULO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Codigo Articulo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13205894899869525)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Desc Articulo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13206299909869525)
,p_db_column_name=>'COD_MARCA'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Cod Marca'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13206629327869525)
,p_db_column_name=>'MARCA'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Marca'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13207017971869526)
,p_db_column_name=>'COD_LINEA'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Cod Linea'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13207404645869526)
,p_db_column_name=>'DESC_LINEA'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Desc Linea'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13207813665869526)
,p_db_column_name=>'COD_CATEGORIA'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Cod Categoria'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13208263640869527)
,p_db_column_name=>'DESC_CATEGORIA'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Desc Categoria'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13208699818869527)
,p_db_column_name=>'STOCK'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Stock'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13209031225869527)
,p_db_column_name=>'TRANSITO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Transito'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13209462226869527)
,p_db_column_name=>'PEDIDO_PENDIENTE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Pedido Pendiente'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13209876796869528)
,p_db_column_name=>'VENTA'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Venta'
,p_column_link=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.:RP,74:P74_COD_ARTICULO,P74_COD_SUPERVISOR,P74_COD_VENDEDOR:#CODIGO_ARTICULO#,&P72_COD_SUPERVISOR.,&P72_COD_VENDEDOR.'
,p_column_linktext=>'#VENTA#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13210278316869528)
,p_db_column_name=>'PRECIO_LISTA'
,p_display_order=>23
,p_column_identifier=>'N'
,p_column_label=>'Precio Lista'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13210607328869529)
,p_db_column_name=>'ULTIMA_COMPRA'
,p_display_order=>33
,p_column_identifier=>'O'
,p_column_label=>'Ultima Compra'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MM-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(64677807128340148)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'402591'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MARCA:DESC_LINEA:COD_ART_CORTO:DESC_ARTICULO:STOCK:TRANSITO:PEDIDO_PENDIENTE:VENTA::PRECIO_LISTA:ULTIMA_COMPRA'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(13211304712869529)
,p_report_id=>wwv_flow_imp.id(64677807128340148)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'VENTA'
,p_operator=>'='
,p_expr=>'COMPRO EN EL TRIMESTRE'
,p_condition_sql=>' (case when ("VENTA" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''COMPRO EN EL TRIMESTRE''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#0AF741'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(13211760852869530)
,p_report_id=>wwv_flow_imp.id(64677807128340148)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'VENTA'
,p_operator=>'='
,p_expr=>'NO COMPRO EN EL TRIMESTRE'
,p_condition_sql=>' (case when ("VENTA" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''NO COMPRO EN EL TRIMESTRE''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#F2F209'
,p_column_font_color=>'#000000'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(13212136525869530)
,p_report_id=>wwv_flow_imp.id(64677807128340148)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'VENTA'
,p_operator=>'='
,p_expr=>'NUNCA COMPRO'
,p_condition_sql=>' (case when ("VENTA" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''NUNCA COMPRO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#F70F0F'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13200396577869521)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(63577941027636890)
,p_button_name=>'reRESCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Rerescar'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13200779732869521)
,p_name=>'P75_COD_VENDEDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(63577941027636890)
,p_prompt=>'Cod Vendedor'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LVVENDEDORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT v.cod_vendedor||'' - ''||nvl( v.descripcion, p.nombre ) L, ',
'         v.cod_vendedor V, p.nombre',
'    FROM fv_vendedores v, personas p ',
'   WHERE v.cod_empresa = :p_cod_empresa ',
'     AND v.cod_persona = p.cod_persona ',
'     AND v.estado = ''A'' ',
'ORDER BY 1'))
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
 p_id=>wwv_flow_imp.id(13201113249869522)
,p_name=>'P75_COD_SUPERVISOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(63577941027636890)
,p_prompt=>'Cod Supervisor'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_SUPERVISORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  P.NOMBRE,Fc.COD_VENDEDOR FROM FV_VENDEDORES F, PERSONAS P, fv_vendedores fc',
'WHERE F.COD_EMPRESA=:p_cod_empresa',
'and f.cod_empresa=fc.cod_empresa',
'and f.cod_supervisor=fc.cod_vendedor',
'AND Fc.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I''',
'group by  P.NOMBRE,Fc.COD_VENDEDOR'))
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
 p_id=>wwv_flow_imp.id(13201583584869522)
,p_name=>'P75_COD_CLIENTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(63577941027636890)
,p_prompt=>'Cod Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre ||'' ''||PI.NUMERO||'' (''||C.COD_CLIENTE||'')'' NOMBRE,cod_cliente ',
'from cc_clientes c, personas p, ',
'telef_personas pt, ident_personas pi ',
'where c.cod_empresa = ''1''',
'and c.cod_persona = p.cod_persona',
'and p.cod_persona = pt.cod_persona(+) ',
'and p.cod_persona = pi.cod_persona(+) ',
'and nvl(c.estado,''X'') IN (''A'',''C'',''B'') ',
'and c.tip_cliente in (''1'',''27'',''6'',''60'',''63'',''31'')',
'order by nombre'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
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
 p_id=>wwv_flow_imp.id(13201903748869522)
,p_name=>'P75_COD_DIVISION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(63577941027636890)
,p_prompt=>'Division'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_DIVISION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESC_DIVISION, COD_DIVISION FROM ST_DIVISION_ARTICULOS',
'WHERE ESTADO=''A''',
'ORDER BY 1'))
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
 p_id=>wwv_flow_imp.id(13202377445869522)
,p_name=>'P75_COD_MARCA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(63577941027636890)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_MARCAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_marca||'' - ''||descripcion D, cod_marca R',
'from st_marcas',
'order by descripcion;'))
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
 p_id=>wwv_flow_imp.id(13202796960869522)
,p_name=>'P75_COD_CATEGORIA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(63577941027636890)
,p_prompt=>'Categoria'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_CATEGORIAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_categoria||'' - '' ||descripcion D, ',
'         cod_categoria R',
'    FROM st_categorias',
'  ',
'  WHERE COD_EMPRESA=:P_COD_EMPRESA',
'  AND ESTADO IN(''S'',''A'');',
' '))
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
 p_id=>wwv_flow_imp.id(13203128808869523)
,p_name=>'P75_COD_LINEA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(63577941027636890)
,p_prompt=>'Linea'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_linea',
'from st_linea ',
'where ESTADO in (''N'',''S'')'))
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
 p_id=>wwv_flow_imp.id(13203545222869523)
,p_name=>'P75_COD_ART_CORTO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(63577941027636890)
,p_prompt=>'Cod Art Corto'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select A.DESCRIPCION, A.COD_ART_CORTO',
'from st_articulos a where a.cod_empresa=:P_COD_EMPRESA',
'and a.cod_rubro=''PR''',
'AND A.COD_ART_CORTO IS NOT NULL'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
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
 p_id=>wwv_flow_imp.id(13203989850869523)
,p_name=>'P75_FECHA_INICIAL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(63577941027636890)
,p_item_default=>'SYSDATE'
,p_prompt=>'Fecha Inicial'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13204381169869523)
,p_name=>'P75_FECHA_FINAL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(63577941027636890)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Final'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13212573394869531)
,p_name=>'da_actualizar_reporte'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13200396577869521)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13213031982869531)
,p_event_id=>wwv_flow_imp.id(13212573394869531)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(64669058060218200)
);
wwv_flow_imp.component_end;
end;
/
