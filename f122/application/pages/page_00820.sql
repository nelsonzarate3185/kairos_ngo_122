prompt --application/pages/page_00820
begin
--   Manifest
--     PAGE: 00820
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
 p_id=>820
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Existencia OTs'
,p_alias=>'EXISTENCIA-OTS'
,p_step_title=>'Existencia OTs'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color:  hsl(147, 69%, 87%)  !important;',
'   border-color:  #c9fceb  !important;',
'}',
'',
'',
'#GRILLA   th.a-IRR-header {',
'  background-color:  #003A85;',
'  color: yellow; ',
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
' .a-IRR-header{',
'      background-color: #003a85 !important;',
'	  font-weight: bold !important;',
'      border:0.5px solid #16488a !important;',
'   }',
'',
'  .a-IRR-headerLink{',
'    background-color: #003a85 !important;',
'	  color: #FFED00 !important;    }',
'   ',
'.a-IRR-table tr td { ',
'        color: black !important;',
'   }',
' ',
'.a-IRR-table td {',
'    border: 1px solid #003a85b7 !important;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20250120124615'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(261554662786236906)
,p_plug_name=>'parametros'
,p_region_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>940
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(261554752272236907)
,p_plug_name=>'Listado de Ordenes de Trabajo'
,p_region_name=>'GRILLA'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>950
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.nro_comprobante,',
'       cc.cod_cliente,',
'       p.nombre,',
'       c.fec_comprobante fec_ingreso,',
'       ar.cod_articulo,',
'       AR.COD_ART_CORTO,',
'       ar.descripcion,',
'       CASE',
'         WHEN fec_PRESUPUESTADO is null and fec_aprobacion is null and',
'              NVL(C.ANULADO, ''N'') <> ''S'' and nvl(C.PRESUPUESTO, ''N'') <> ''S'' and',
'              C.FEC_CIERRE is null AND C.ESTADO_PRESU IS NULL AND',
'              NVL(C.IND_GARANTIA, ''N'') <> ''S'' AND',
'              NVL(C.PRESUPUESTO, ''N'') <> ''S'' THEN',
'          ''SIN PROCESAR''',
'         WHEN FEC_APROBACION is null and FEC_RECHAZO is null and',
'              fec_finalizado is null and FEC_PENDIENTE is null and',
'              NVL(ANULADO, ''N'') <> ''S'' and nvl(PRESUPUESTO, ''N'') = ''S'' and',
'              FEC_PRESUPUESTADO is null AND FEC_PENDIENTE IS NULL THEN',
'          ''APRESUPUESTAR''',
'         WHEN FEC_APROBACION is null and FEC_RECHAZO is null and',
'              FEC_CIERRE is null and',
'              (fec_pendiente is null or C.ESTADO_PRESU = ''P'') and',
'              NVL(ANULADO, ''N'') <> ''S'' AND C.ESTADO_PRESU = ''P'' AND',
'              NVL(C.CERRADO, ''N'') <> ''S'' and FEC_PRESUPUESTADO is not null THEN',
'          ''PRESUPUESTADO''',
'       ',
'         WHEN NVL(ANULADO, ''N'') <> ''S'' and FEC_ENTREGA is null AND',
'              NVL(C.CERRADO, ''N'') <> ''S'' AND C.ESTADO_PRESU = ''R'' THEN',
'          ''PRESUPUESTO RECHAZADO''',
'       ',
'         WHEN FEC_CIERRE is null and FEC_PENDIENTE is not null AND',
'              C.ESTADO_PRESU = ''PE'' AND NVL(C.CERRADO, ''N'') <> ''S'' THEN',
'          ''ESPERA DE REPUESTO''',
'       ',
'         WHEN FEC_APROBACION is not null AND NVL(C.CERRADO, ''N'') <> ''S'' and',
'              FEC_CIERRE is null AND C.ESTADO_PRESU = ''A'' THEN',
'          ''PRESUPUESTO APROBADO''',
'       ',
'         WHEN fec_CIERRE is not null AND CERRADO = ''S'' THEN',
'          ''CERRADO''',
'         WHEN C.IND_VERIFICADO = ''S'' AND C.FEC_PENDIENTE IS NULL AND',
'              C.FEC_PRESUPUESTADO IS NULL AND',
'              C.FEC_AUTORIZADO_GAR_POR IS NULL THEN',
'          ''VERIFICADO''',
'         WHEN fec_PRESUPUESTADO is null and fec_aprobacion is null and',
'              NVL(C.ANULADO, ''N'') <> ''S'' and nvl(C.PRESUPUESTO, ''N'') <> ''S'' and',
'              C.FEC_CIERRE is null AND C.ESTADO_PRESU IS NULL AND',
'              NVL(C.IND_GARANTIA, ''N'') = ''S'' THEN',
'          ''GARANTIA''',
'         WHEN fec_PRESUPUESTADO is null and fec_aprobacion is null and',
'              NVL(C.ANULADO, ''N'') <> ''S'' and nvl(C.PRESUPUESTO, ''N'') <> ''S'' and',
'              C.FEC_CIERRE is null AND C.ESTADO_PRESU IS NULL AND',
'              NVL(C.IND_GARANTIA, ''N'') <> ''S'' AND',
'              NVL(C.PRESUPUESTO, ''N'') = ''S'' THEN',
'          ''PRESUPUESTO''',
'         WHEN C.IND_VERIFICADO = ''S'' AND',
'             ',
'              nvl(C.FEC_PENDIENTE, c.fec_verificado - 2) <',
'              nvl(c.fec_modif_verificado, c.fec_verificado)',
'             ',
'              AND nvl(C.FEC_PRESUPUESTADO, c.fec_verificado - 2) <',
'              nvl(c.fec_modif_verificado, c.fec_verificado) AND',
'              nvl(C.FEC_AUTORIZADO_GAR_POR, c.fec_verificado - 2) <',
'              nvl(c.fec_modif_verificado, c.fec_verificado) THEN',
'          ''VERIFICADO''',
'       ',
'         WHEN C.Estado_Presu = ''SR'' and NVL(C.CERRADO, ''N'') <> ''S'' THEN',
'          ''SIN_REPUESTOS''',
'         ELSE',
'          (CASE',
'            WHEN ESTADO_PRESU = ''Ap'' then',
'             ''APRESUPUESTAR''',
'            WHEN ESTADO_PRESU = ''PE'' then',
'             ''ESPERA DE REPUESTO''',
'            WHEN ESTADO_PRESU = ''P'' then',
'             ''PRESUPUESTO''',
'            WHEN ESTADO_PRESU = ''A'' then',
'             ''PRESUPUESTO APROBADO''',
'            WHEN ESTADO_PRESU = ''R'' then',
'             ''PRESUPUESTO RECHAZADO''',
'            WHEN ESTADO_PRESU = ''V'' then',
'             ''VERIFICADO''',
'            ELSE',
'             ''APRESUPUESTAR''',
'          END)',
'       ',
'       END ESTADO_OT,',
'       ',
'       round(TO_NUMBER(SYSDATE - C.FEC_COMPROBANTE)) ANTIGUEDAD_DIAS,',
'       ',
'       case',
'         when NVL(c.ind_garantia, ''N'') = ''S'' THEN',
'         ',
'          0',
'         ELSE',
'         ',
'          NVL(C.TOT_MOBRA, 0) + NVL(C.TOT_REPUESTOS, 0)',
'       END COSTO,',
'       NVL((SELECT SO.DESCRIPCION',
'             FROM VT_ORDENES_TRABAJO_PROB_GEN PRO, CA_SOLUCIONES SO',
'            WHERE PRO.COD_EMPRESA = ''1''',
'              AND PRO.TIP_COMPROBANTE = C.TIP_COMPROBANTE',
'              AND PRO.SER_COMPROBANTE = C.SER_COMPROBANTE',
'              AND PRO.NRO_COMPROBANTE = C.NRO_COMPROBANTE',
'              AND PRO.COD_EMPRESA = SO.COD_EMPRESA',
'              AND PRO.COD_SOLUCION = SO.COD_SOLUCION',
'              AND ROWNUM = 1),',
'           C.COMENTARIO) SOLUCION,',
'       ',
'       (select U.POSICION',
'          from ca_ubic_productos u',
'         where u.cod_empresa = c.cod_empresa',
'           and u.tip_comprobante = c.tip_comprobante',
'           and u.ser_comprobante = c.ser_comprobante',
'           and u.nro_comprobante = c.nro_comprobante',
'           and u.ocupado = ''S''',
'           AND ROWNUM = 1) UBICACION,',
'       ',
'       case',
'         when nvl(c.ind_garantia, ''N'') = ''S'' THEN',
'          0',
'         ELSE',
'          NVL(C.TOT_MOBRA, 0) + NVL(C.TOT_REPUESTOS, 0)',
'       END TOTAL_OT,',
'       AR.COSTO_PROM COSTO_PROMEDIO,',
'       MAR.DESCRIPCION MARCA,',
'       CAT.DESCRIPCION CATEGORIA,',
'       div.desc_division,',
'       fa.descripcion desc_familia,',
'       round(nvl(ar.costo_prom, 0)) costo_producto_gs,',
'       suc.cod_sucursal ||'' - ''||suc.descripcion sucursal,',
'       1 CANT_DISPON,',
'       c.garantia,',
'       tip.descripcion descripcion_tipo,',
'       c.direccion,',
'       ',
'       (SELECT pro.Descripcion',
'          FROM DIREC_PERSONAS D, CIUDADES CI, PROVINCIAS Pro',
'         where d.cod_persona = p.cod_persona',
'           and pro.cod_pais = d.cod_pais',
'           and pro.cod_provincia = d.cod_provincia',
'           and ci.cod_pais = d.cod_pais',
'           and ci.cod_provincia = d.cod_provincia',
'           and ci.cod_ciudad = d.cod_ciudad',
'           and d.por_defecto = ''S''',
'           and rownum = 1) localidad,',
'       NVL((SELECT C.NRO_SOLICITUD',
'             FROM CA_CONFORMIDAD C',
'            WHERE C.COD_EMPRESA = c.cod_empresa',
'              AND C.TIP_COMPROBANTE_REF = c.tip_comprobante',
'              AND C.SER_COMPROBANTE_REF = c.ser_comprobante',
'              AND C.NRO_COMPROBANTE_REF = c.nro_comprobante',
'              AND ROWNUM = ''1''),',
'           '''') SNC',
'  from vt_ordenes_trabajo    c,',
'       cc_clientes           cc,',
'       personas              p,',
'       ca_agente_call        ag,',
'       st_articulos          ar,',
'       FV_VENDEDORES         FV,',
'       cm_proveedores        pro,',
'       personas              pr,',
'       CA_AGENTE_TECNICOS    ATEC,',
'       personas              pv,',
'       cc_clientes           dis,',
'       personas              pd,',
'       ST_MARCAS             MAR,',
'       ST_CATEGORIAS         CAT,',
'       st_division_articulos div,',
'       st_familia            fa,',
'       sucursales            suc,',
'       cc_tipo_cliente       tip',
' where nvl(:P820_EJECUTAR,''N'')=''S''',
'   and c.cod_empresa = :P_COD_EMPRESA',
'   and c.cod_empresa = cc.cod_empresa',
'   and c.cod_cliente = cc.cod_cliente',
'   and cc.cod_persona = p.cod_persona',
'   and ag.cod_vendedor(+) = cc.cod_vendedor',
'   AND ATEC.COD_PROVEEDOR(+) = C.COD_PROVEEDOR',
'   and c.cod_empresa = ar.cod_empresa',
'   and c.cod_articulo = ar.cod_articulo',
'   and c.fec_comprobante > to_date(''01/06/2000'', ''dd/mm/yyyy'')      ',
'   and tip.cod_tip_cliente(+) = cc.tip_cliente',
'      ----------------',
'   and (:P820_COD_SUCURSAL_DES is null or nvl(C.cod_sucursal, ''248'')=:P820_COD_SUCURSAL_DES )',
'   and (:P820_COD_SUCURSAL_HAS is null  or nvl(C.cod_sucursal, ''248'')=:P820_COD_SUCURSAL_HAS)',
'       ',
'   and (:P820_COD_ARTICULO_DES is null or ltrim(rtrim(c.cod_articulo)) =  :P820_COD_ARTICULO_DES)',
'   and (:P820_COD_ARTICULO_HAS is null or ltrim(rtrim(c.cod_articulo)) =  :P820_COD_ARTICULO_HAS)',
'     ',
'   and (:P820_COD_PROVEEDOR IS NULL OR c.COD_PROVEEDOR = :P820_COD_PROVEEDOR)',
'   and (:P820_COD_CATEGORIA is null or ar.cod_categoria = :P820_COD_CATEGORIA)',
'   and (:P820_COD_RUBRO is null or ar.cod_rubro = :P820_COD_RUBRO)',
'      ',
'   /*  ',
'   and (:P820_COD_LINEA is null or ar.cod_linea = :P820_COD_LINEA)',
'  and (:P820_COD_MARCA is null or ar.cod_marca = :P820_COD_MARCA)',
'   and (:P820_COD_FAMILIA is null or ar.cod_familia = :P820_COD_FAMILIA)   ',
'  ',
'*/ ',
'      ',
'   AND AR.COD_MARCA = MAR.COD_MARCA(+)',
'   AND CAT.COD_EMPRESA(+) = AR.COD_EMPRESA',
'   AND CAT.COD_CATEGORIA(+) = AR.COD_CATEGORIA',
'   and c.cod_empresa = suc.cod_empresa(+)',
'   and nvl(c.cod_sucursal, ''248'') = suc.cod_sucursal(+)',
'      ',
'   and c.cod_empresa = dis.cod_empresa(+)',
'   and c.cod_distribuidor = dis.cod_cliente(+)',
'   and dis.cod_persona = pd.cod_persona(+)',
'      ',
'   and ar.cod_division = div.cod_division(+)',
'   and ar.cod_familia = fa.cod_familia(+)',
'   and ar.cod_empresa = fa.cod_empresa(+)',
'   and NVL(ANULADO, ''N'') <> ''S''',
'   and c.cod_origen in (''1'', ''3'', ''9'', ''20'', ''33'', ''32'', ''24'')',
'      ',
'   and nvl(c.ind_retirado, ''N'') <> ''S''',
'   and nvl(c.ind_entrega, ''N'') <> ''S''',
'   AND FV.COD_EMPRESA(+) = CC.COD_EMPRESA',
'   AND FV.COD_VENDEDOR(+) = CC.COD_VENDEDOR',
'   and c.cod_empresa = pro.cod_empresa',
'   and c.cod_proveedor = pro.cod_proveedor',
'   and pr.cod_persona = pro.cod_persona',
'   and pv.cod_persona(+) = fv.cod_persona',
' order by round(TO_NUMBER(SYSDATE - C.FEC_COMPROBANTE)) DESC',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P820_COD_SUCURSAL_DES,P820_COD_SUCURSAL_HAS,P820_COD_PROVEEDOR,P820_COD_RUBRO,P820_COD_MARCA,P820_COD_FAMILIA,P820_COD_LINEA,P820_COD_CATEGORIA,P820_COD_ARTICULO_DES,P820_COD_ARTICULO_HAS,P820_EJECUTAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Listado de Ordenes de Trabajo'
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
 p_id=>wwv_flow_imp.id(468456982349450807)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANSA'
,p_internal_uid=>468456982349450807
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(468457064451450808)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('N\00B0 OT')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(468457188595450809)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(468457304628450811)
,p_db_column_name=>'FEC_INGRESO'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>'Fecha Ingreso'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(468457295249450810)
,p_db_column_name=>'NOMBRE'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(468457430310450812)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Codigo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(468457546343450813)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(468457620707450814)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Producto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(468457727011450815)
,p_db_column_name=>'ESTADO_OT'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Estado Ot'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(468457854584450816)
,p_db_column_name=>'ANTIGUEDAD_DIAS'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Antiguedad Dias'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(468457980662450817)
,p_db_column_name=>'COSTO'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Costo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(468458052322450818)
,p_db_column_name=>'SOLUCION'
,p_display_order=>120
,p_column_identifier=>'K'
,p_column_label=>'Solucion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(468458152069450819)
,p_db_column_name=>'UBICACION'
,p_display_order=>130
,p_column_identifier=>'L'
,p_column_label=>'Ubicacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(468458249781450820)
,p_db_column_name=>'TOTAL_OT'
,p_display_order=>140
,p_column_identifier=>'M'
,p_column_label=>'Total Ot'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(468458319031450821)
,p_db_column_name=>'COSTO_PROMEDIO'
,p_display_order=>150
,p_column_identifier=>'N'
,p_column_label=>'Costo Promedio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(468458489105450822)
,p_db_column_name=>'MARCA'
,p_display_order=>160
,p_column_identifier=>'O'
,p_column_label=>'Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(468458530612450823)
,p_db_column_name=>'CATEGORIA'
,p_display_order=>170
,p_column_identifier=>'P'
,p_column_label=>'Categoria'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(468458613501450824)
,p_db_column_name=>'DESC_DIVISION'
,p_display_order=>180
,p_column_identifier=>'Q'
,p_column_label=>'Desc Division'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(468458752779450825)
,p_db_column_name=>'DESC_FAMILIA'
,p_display_order=>190
,p_column_identifier=>'R'
,p_column_label=>'Desc Familia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(468458836330450826)
,p_db_column_name=>'COSTO_PRODUCTO_GS'
,p_display_order=>200
,p_column_identifier=>'S'
,p_column_label=>'Costo Producto Gs'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(468459100886450829)
,p_db_column_name=>'CANT_DISPON'
,p_display_order=>230
,p_column_identifier=>'V'
,p_column_label=>'Cant Dispon'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(468459249159450830)
,p_db_column_name=>'GARANTIA'
,p_display_order=>240
,p_column_identifier=>'W'
,p_column_label=>'Garantia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(468459373367450831)
,p_db_column_name=>'DESCRIPCION_TIPO'
,p_display_order=>250
,p_column_identifier=>'X'
,p_column_label=>'Descripcion Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(468459434380450832)
,p_db_column_name=>'DIRECCION'
,p_display_order=>260
,p_column_identifier=>'Y'
,p_column_label=>'Direccion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(468459553284450833)
,p_db_column_name=>'LOCALIDAD'
,p_display_order=>270
,p_column_identifier=>'Z'
,p_column_label=>'Localidad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(468459643985450834)
,p_db_column_name=>'SNC'
,p_display_order=>280
,p_column_identifier=>'AA'
,p_column_label=>'Snc'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(468459727387450835)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>290
,p_column_identifier=>'AB'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(468486299730631946)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'4684863'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SUCURSAL:NRO_COMPROBANTE:NOMBRE:FEC_INGRESO:COD_ARTICULO:DESCRIPCION:UBICACION:GARANTIA:SNC:'
,p_break_on=>'SUCURSAL:0:0:0:0:0'
,p_break_enabled_on=>'SUCURSAL:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(261558622944236946)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(261554662786236906)
,p_button_name=>'LimpiarCampos'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar Campos'
,p_button_execute_validations=>'N'
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(261558704601236947)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(261554662786236906)
,p_button_name=>'Filtrar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Filtrar'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(261557581855236935)
,p_name=>'P820_COD_SUCURSAL_DES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(261554662786236906)
,p_prompt=>'Sucursal Desde'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion ||''(''||cod_sucursal ||'')'' SUC, cod_sucursal  from sucursales ',
'where cod_empresa = :p_cod_empresa ',
'and estado=''S''',
'order by lpad(cod_sucursal, 5, '' '')'))
,p_lov_display_null=>'YES'
,p_lov_null_value=>'TODOS'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(261557617841236936)
,p_name=>'P820_COD_LINEA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(261554662786236906)
,p_prompt=>'Linea'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion,cod_linea from st_linea ',
'where cod_empresa = :P_cod_empresa',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_value=>'TODOS'
,p_cSize=>30
,p_tag_attributes=>'TODOS'
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(261557717960236937)
,p_name=>'P820_COD_RUBRO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(261554662786236906)
,p_prompt=>'Rubro'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_rubro ',
'from st_rubro ',
'where cod_empresa = :P_cod_empresa ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_value=>'TODOS'
,p_cSize=>30
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(261557821782236938)
,p_name=>'P820_COD_SUCURSAL_HAS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(261554662786236906)
,p_prompt=>'Sucursal Hasta'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion ||''(''||cod_sucursal ||'')'' SUC, cod_sucursal  from sucursales ',
'where cod_empresa = :p_cod_empresa ',
'and estado=''S''',
'order by lpad(cod_sucursal, 5, '' '')'))
,p_lov_display_null=>'YES'
,p_lov_null_value=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(261557960364236939)
,p_name=>'P820_COD_FAMILIA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(261554662786236906)
,p_prompt=>'Familia'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_familia ',
'from st_familia order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_value=>'TODOS'
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
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(261558028792236940)
,p_name=>'P820_COD_MARCA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(261554662786236906)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select descripcion, cod_marca from st_marcas order by 1'
,p_lov_display_null=>'YES'
,p_lov_null_value=>'TODOS'
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
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(261558186728236941)
,p_name=>'P820_COD_CATEGORIA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(261554662786236906)
,p_prompt=>'Categoria'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_categoria',
'  from st_categorias',
'order by 1 '))
,p_lov_display_null=>'YES'
,p_lov_null_value=>'TODOS'
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
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(261558295284236942)
,p_name=>'P820_COD_PROVEEDOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(261554662786236906)
,p_prompt=>'Proveedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim(p.nombre) nombre, v.cod_proveedor ',
'from personas p, cm_proveedores v ',
'where v.cod_empresa = :P_cod_empresa ',
'and v.cod_persona = p.cod_persona ',
'and nvl(estado,''A'') = ''A'' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_value=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(261558420161236944)
,p_name=>'P820_COD_ARTICULO_DES'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(261554662786236906)
,p_prompt=>'Articulo Desde'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct descripcion ||'' - ''   ||cod_articulo art, cod_articulo',
'from st_articulos ',
'where cod_empresa= :p_cod_empresa ',
'and (:P820_cod_rubro is null or cod_rubro = :P820_cod_rubro) ',
'and (:P820_cod_familia is null or cod_familia = :P820_cod_familia) ',
'and (:P820_cod_marca is null or cod_marca = :P820_cod_marca) ',
'order by lpad(cod_articulo, 20, '' '')'))
,p_lov_display_null=>'YES'
,p_lov_null_value=>'TODOS'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(261558516404236945)
,p_name=>'P820_COD_ARTICULO_HAS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(261554662786236906)
,p_prompt=>'Articulo Hasta'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion ||'' - ''||cod_articulo art, cod_articulo',
'from st_articulos ',
'where cod_empresa= :p_cod_empresa ',
'and (:P820_cod_rubro is null or cod_rubro = :P820_cod_rubro) ',
'and (:P820_cod_familia is null or cod_familia = :P820_cod_familia) ',
'and (:P820_cod_marca is null or cod_marca = :P820_cod_marca) ',
'order by lpad(cod_articulo, 20, '' '')'))
,p_lov_display_null=>'YES'
,p_lov_null_value=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(468456565027450803)
,p_name=>'P820_EJECUTAR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(261554662786236906)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(468456304314450801)
,p_name=>'da_setea'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(261558704601236947)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(468456440104450802)
,p_event_id=>wwv_flow_imp.id(468456304314450801)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P820_EJECUTAR'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'S'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(468456655573450804)
,p_name=>'da_ejecuta_rep'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P820_EJECUTAR'
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
 p_id=>wwv_flow_imp.id(468456773056450805)
,p_event_id=>wwv_flow_imp.id(468456655573450804)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(261554752272236907)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(468456898120450806)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'ClearPage'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp.component_end;
end;
/
