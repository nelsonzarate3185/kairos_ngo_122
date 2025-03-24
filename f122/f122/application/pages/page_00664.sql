prompt --application/pages/page_00664
begin
--   Manifest
--     PAGE: 00664
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
 p_id=>664
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>unistr('Impresi\00F3n de Barras - Zebra')
,p_alias=>'STBARRA'
,p_step_title=>unistr('Impresi\00F3n de Barras - Zebra')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function imprimirArticulo(p_descripcion,p_codigo,p_cant_paq,p_cantidad){',
'',
'        var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/IMPRIME_ET.pdf?''',
'',
'            +''P_DESCRIPCION=''+p_descripcion',
'            +''&P_CODIGO=''+p_codigo',
'            +''&P_CANT_PAQ=''+p_cant_paq',
'            +''&P_CANTIDAD=''+p_cantidad          ',
'            +''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');}',
'',
'function imprimirEan(p_descripcion,p_codigo,p_cant_paq,p_cantidad){',
'',
'        var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/IMPRIME_ET_EAN.pdf?''',
'',
'            +''P_DESCRIPCION=''+p_descripcion',
'            +''&P_CODIGO=''+p_codigo',
'            +''&P_CANT_PAQ=''+p_cant_paq',
'            +''&P_CANTIDAD=''+p_cantidad          ',
'            +''&j_username=jasperadmin&j_password=jasperadmin'';',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');}    ',
'',
'',
'',
'',
'',
'',
'    '))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20250218100557'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(233030726469964024)
,p_plug_name=>'Main'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(233030836938964025)
,p_plug_name=>unistr('Impresi\00F3n de Barras - Zebra')
,p_parent_plug_id=>wwv_flow_imp.id(233030726469964024)
,p_region_css_classes=>'u-color-43-border'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(234456295376690239)
,p_plug_name=>'ITEMS - AUXILIARES'
,p_parent_plug_id=>wwv_flow_imp.id(233030836938964025)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(233031882132964035)
,p_plug_name=>'Reporte '
,p_parent_plug_id=>wwv_flow_imp.id(233030726469964024)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_ARTICULO,',
'       DESCRIPCION,',
'       COD_GRUPO_ART,',
'       COD_PAIS_ORIGEN,',
'       COD_MARCA,',
'       COD_RUBRO,',
'       COD_FAMILIA,',
'       COD_LINEA,',
'       COD_ENVASE,',
'       COD_IVA,',
'       IND_MANEJA_STOCK,',
'       COD_UNIDAD_MEDIDA,',
'       COSTO_PROM,',
'       COSTO_ULTIMO,',
'       COSTO_FOB,',
'       COD_MONEDA_COSTO,',
'       FEC_ULTIMA_COMP,',
'       CANT_X_PAQUETE,',
'       COD_PROVEEDOR_DFLT,',
'       CANT_PEDIDO,',
'       COD_ORIGEN_ART,',
'       COD_EMPRESA,',
'       ESTADO,',
'       PRECIO_BASE,',
'       COD_MONEDA_BASE,',
'       COD_BARRA_ART,',
'       IND_MODIFICA_PRECIO,',
'       PORC_DESCUENTO,',
'       COD_GRUPO_COMISION,',
'       COSTO_PROM_ANTERIOR,',
'       COSTO_PROM_REF,',
'       COSTO_FOB_REF,',
'       COSTO_IMP_REF,',
'       COD_ARANCEL,',
'       IMP_COD_ORIGEN,',
'       COMENTARIO,',
'       COD_GRUPO,',
'       COD_COLOR,',
'       USADO,',
'       PORCEN_OBSOL,',
'       PESO_ARTICULO,',
'       PRECIO_BASE_ME,',
'       COD_MONEDA_BASE_EXT,',
'       COSTO_PROM_EXT,',
'       COD_MONEDA_COSTO_EXT,',
'       COD_RELACION_UM,',
'       ALTO_CM,',
'       LARGO_CM,',
'       ANCHO_CM,',
'       PESO_GR,',
'       MANEJA_COSTO,',
'       COSTO_PROM_REPUESTO,',
'       COSTO_PROM_ANTER_REP,',
'       IND_MANEJA_LOTES,',
'       ES_MOTO,',
'       COD_GRUPO_DESC,',
'       COSTO_PROM_US,',
'       COSTO_ULTIMO_US,',
'       TIP_CAMBIO,',
'       COD_ALTERNO,',
'       COD_ART_CORTO,',
'       ESTIBA_MAX,',
'       FEC_ALTA,',
'       VOLUMENSINO,',
'       PRECIO_BASE_FUT,',
'       RUTA_FOTO_1,',
'       RUTA_FOTO_2,',
'       RUTA_FOTO_3,',
'       RUTA_FOTO_4,',
'       RUTA_FOTO_5,',
'       CARACTERISTICAS,',
'       SERIE,',
'       GARANTIA,',
'       SERIE_GARANTIA,',
'       DURACION_GARANTIA,',
'       IND_REQUIERE_SIM,',
'       COD_USUARIO,',
'       FEC_INICIO_PB,',
'       COD_MONEDA_BASE_FUT,',
'       PORC_DESCMAX,',
'       STOCK_MIN,',
'       SKU,',
'       SKU_ORIGEN,',
'       COD_USUARIO_MOD,',
'       FEC_MOD,',
'       COD_EAN,',
'       COD_CATEGORIA,',
'       ART_DESC_PROVEEDOR,',
'       COD_DIVISION,',
'       TRADUCCION_MO,',
'       EN_OFERTA_WEB,',
'       CAP_20GP,',
'       CAP_40GP,',
'       CAP_40HQ,',
'       CAMION,',
'       FURGON,',
'       EMBARQUE_CONS,',
'       IND_NETO,',
'       IND_FUERA_LINEA,',
'       ID_NRO,',
'       ID_PROC,',
'       EXP_VIEW,',
'       SPARE,',
'       PRODUCTO,',
'       DESCRIPCION_ING,',
'       IND_EXP_VIEW,',
'       IND_NO_DESCUENTO,',
'       PATH_SPARE,',
'       PATH_EXP,',
'       IND_LISTADO_PART,',
'       CANT_NG,',
'       PATH_MANUAL_USU,',
'       IND_REQUIERE_DEVOLUCION,',
'       IND_PUESTA_MARCHA,',
'       IND_VISITA,',
'       COD_ENCARGADO,',
'       CLASIFICACION,',
'       VOLUMEN_M3,',
'       PATH_IMG_PRO,',
'       COD_MADRE,',
'       COD_FAMILIA_WEB,',
'       DESCRIPCION_WEB,',
'       COD_LINEA_ST,',
'       IND_MUESTRA_WEB,',
'       AUTOAPILABLE,',
'       CANT_X_PALLET,',
'       COD_PACK,',
'       IND_NO_CUBRE_GARANTIA,',
'       FEC_VENCIMIENTO,',
'       IND_DISCONTINUADO,',
'       CANTIDAD_MINIMA_COMPRA,',
'       PLAZO_ENTREGA,',
'       COSTO_PROFORMA_GS,',
'       COTIZACION_CP,',
'       COD_CATEGORIA_ANT,',
'       COD_LINEA_ANT,',
'       COD_PUERTO,',
'       ORIGEN_PUERTO,',
'       TIPO_MO,',
'       IND_CICLO_VIDA,',
'       PRECIO_BASE_GARANTIA,',
'       COD_ESPECIE,',
'       COSTO_FOB_OC,',
'       PRODUCTO_SE_DEBE_ARMAR,',
'       ALTURA_TOTAL_APILADO,',
'       APILADO_MAXIMO,',
'       CLAMP_DANA_PRODUCTO,',
'       TIPO_ALMACENAMIENTO,',
'       TIPO_DE_CAJA,',
'       UNIDADES_POR_ESTIBA_CAMADA,',
'       ESTIBAS_CAMADAS_POR_PALLET,',
'       ULTIMA_CAMADA_ORIENTACION,',
'       LARGO_PRODUCTO_COLECTIVO,',
'       ANCHO_PRODUCTO_COLECTIVO,',
'       ALTO_PRODUCTO_COLECTIVO,',
'       IND_MANTENIMIENTO,',
'       IND_LISTA_PRECIO,',
'       IND_SOLO_PROMO,',
'       INFO_WEB,',
'       NOMBRE_WEB,',
'       DESCRIPCION_WEB2,',
'       IND_PARTICULAR,',
'       IMPORTE_COMISION_PARTICULAR,',
'       IMPORTE_COMISION_GARANTIA,',
'       IMPORTE_COMISION_JT_15,',
'       IMPORTE_COMISION_JT_7,',
'       FECHA_ACTUALIZACION,',
'       IND_TECNICO_29,',
'       ANCHO_PRODUCTO_CM,',
'       ALTO_PRODUCTO_CM,',
'       LARGO_PRODUCTO_CM,',
'       PESO_PRODUCTO_GR,',
'       IND_DEVOLUCION_REPUESTOS,',
'       PORCENTAJE_SPP,',
'       IND_MIGRADO_OS,',
'       IND_MIGRADO_OS_MO,',
'       DIAS_ANALISIS,',
'       CLASIFICACION_REPUESTOS_ABC,',
'       MOTIVO_NO_STOCK,',
'       PATH_LISTA_ERR,',
'       FECHA_NO_STOCK,',
'       CLASIFICACION_SLIM,',
'       PATH_IMG_PRO_1,',
'       PATH_IMG_PRO_2,',
'       IND_NO_FACTURAR,',
'       APILABILIDAD,',
'       ALTO_ARMADO_CM,',
'       ANCHO_ARMADO_CM,',
'       LARGO_ARMADO_CM,',
'       IND_ARMADO,',
'       IND_CONATEL,',
'       IND_HOMOLOGACION,',
'       REGISTRO_CONATEL,',
'       FECHA_PRIMER_INGRESO,',
'       ANCHO_CLAMP,',
'       LARGO_CLAMP,',
'       ALTO_CLAMP,',
'       COD_ARTICULO_QM,',
'       CANTIDAD_MINIMA_WEB,',
'       XTR_ASSEMBLED_DEPTH,',
'       XTR_ASSEMBLED_HEIGHT,',
'       XTR_ASSEMBLED_WIDTH,',
'       XTR_ASSEMBLED_ASSEMBLABLE,',
'       XTR_INTERLOCKING_ROW,',
'       XTR_COUMPOUND_ROW,',
'       XTR_DAMAGEABLE_CLAMP,',
'       XTR_SAFEGUARDED,',
'       STK_SECONDARY_CLAMP_Z,',
'       STK_SECONDARY_CLAMP_Y,',
'       STK_SECONDARY_CLAMP_X,',
'       STK_PRIMARY_CLAMP_Z,',
'       STK_PRIMARY_CLAMP_Y,',
'       STK_PRIMARY_CLAMP_X,',
'       STK_TERTIARY_STACK_TER_ROW,',
'       STK_TERTIARY_STACK_SEC_ROW,',
'       STK_TERTIARY_STACK_PRI_ROW,',
'       STK_SECONDARY_STACK_TER_ROW,',
'       STK_SECONDARY_STACK_SEC_ROW,',
'       STK_SECONDARY_STACK_PRI_ROW,',
'       STK_PRIMARY_STACK_TER_ROW,',
'       STK_PRIMARY_STACK_SEC_ROW,',
'       STK_PRIMARY_STACK_PRI_ROW,',
'       STK_TERTIARY_ROW,',
'       STK_SECONDARY_ROW,',
'       STK_PRIMARY_ROW,',
'       STK_MAX_FACT_STOWAGE_HEIGHT,',
'       STK_MAX_FACT_STOWAGE,',
'       STK_MAX_STOWAGE_HEIGHT,',
'       CANTIDAD_POR_PALLET,',
'       PKG_TERTIARY_DEPTH,',
'       PKG_TERTIARY_HEIGHT,',
'       PKG_TERTIARY_WIDTH,',
'       PKG_TERTIARY_WEIGHT,',
'       PKG_TERTIARY_QUANTITY,',
'       PKG_SECONDARY_DEPTH,',
'       PKG_SECONDARY_HEIGHT,',
'       PKG_SECONDARY_WIDTH,',
'       PKG_SECONDARY_WEIGHT,',
'       PKG_SECONDARY_QUANTITY,',
'       PKG_MAIN_PACKAGING,',
'       PKG_PRIMARY_DEPTH,',
'       PKG_PRIMARY_HEIGHT,',
'       PKG_PRIMARY_WIDTH,',
'       PKG_PRIMARY_WEIGHT,',
'       PKG_PRIMARY_QUANTITY,',
'       CANTIDAD_MINIMA_LISTA_PRECIO,',
'       NRO_REGISTRO_SANITARIO,',
'       VENCIMIENTO_REGISTRO_SANITARIO,',
'       OBSERVACION_ART,',
'       TIPO_ALMACENAMIENTO_ADAIA,',
'       PRECIO_MO_ANT_STA,',
'       FEC_ULT_NO_STOCK,',
'       ROWID,',
'       NULL IMPRIMIR,',
'       NULL IMP_COD_CORTO,',
'       NULL IMPRIMIR_EAN',
'       ',
'      /* --- QUERY CANT_X_PAQUETE---',
'       (select cant_x_paquete',
'          from st_articulos c',
'    	  where cod_empresa = :P_COD_EMPRESA',
'    	  and c.cod_articulo = :P664_COD_ARTICULO ) CANT_PAQUETE */',
'',
'  from ST_ARTICULOS c',
' where cod_empresa = :P_COD_EMPRESA and nvl(estado,''A'') in ( ''A'',''S'')',
' AND (cod_articulo = :P664_COD_ARTICULO OR :P664_COD_ARTICULO is null)',
' AND (COD_ART_CORTO = :P664_COD_ART_CORTO OR :P664_COD_ART_CORTO is null)',
' AND (cod_rubro = :P664_COD_RUBRO OR :P664_COD_RUBRO is null)',
' AND (cod_linea = :P664_COD_LINEA OR :P664_COD_LINEA is null)',
' AND (COD_PROVEEDOR_DFLT = :P664_COD_PROVEEDOR OR :P664_COD_PROVEEDOR is null)',
' AND (cod_marca = :P664_COD_MARCA OR :P664_COD_MARCA is null)',
' AND (cod_familia = :P664_COD_FAMILIA OR :P664_COD_FAMILIA is null)',
' AND (cod_ean = :P664_COD_EAN OR :P664_COD_EAN is null)',
' --AND :P664_AUX = 1'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P664_AUX,P664_COD_ARTICULO,P664_COD_RUBRO,P664_COD_LINEA,P664_COD_PROVEEDOR,P664_COD_MARCA,P664_COD_FAMILIA,P664_COD_EAN'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reporte '
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
 p_id=>wwv_flow_imp.id(233031947994964036)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_sort=>'N'
,p_show_control_break=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_show_help=>'N'
,p_download_formats=>'XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JANDERSON'
,p_internal_uid=>233031947994964036
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(233032088378964037)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('Art\00EDculo')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(233032183989964038)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234432942037690106)
,p_db_column_name=>'CANT_PEDIDO'
,p_display_order=>40
,p_column_identifier=>'T'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234432720621690104)
,p_db_column_name=>'CANT_X_PAQUETE'
,p_display_order=>50
,p_column_identifier=>'R'
,p_column_label=>'Cantidad por Paquete'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234434549936690122)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>60
,p_column_identifier=>'AJ'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234733787064433025)
,p_db_column_name=>'ROWID'
,p_display_order=>70
,p_column_identifier=>'IU'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234733875071433026)
,p_db_column_name=>'IMPRIMIR'
,p_display_order=>80
,p_column_identifier=>'IV'
,p_column_label=>'Imprimir'
,p_column_link=>'javascript:$s(''P664_AUX_IMPRIMIR'', ''#ROWID#'');'
,p_column_linktext=>'<span class="fa fa-print" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234734068708433028)
,p_db_column_name=>'IMP_COD_CORTO'
,p_display_order=>90
,p_column_identifier=>'IX'
,p_column_label=>'Imprimir Cod.Corto'
,p_column_link=>'javascript:$s(''P664_AUX_IMP_COD_CORTO'', ''#ROWID#'');'
,p_column_linktext=>'<span class="fa fa-print" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(233032234184964039)
,p_db_column_name=>'COD_GRUPO_ART'
,p_display_order=>100
,p_column_identifier=>'C'
,p_column_label=>'Cod Grupo Art'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(233032387429964040)
,p_db_column_name=>'COD_PAIS_ORIGEN'
,p_display_order=>110
,p_column_identifier=>'D'
,p_column_label=>'Cod Pais Origen'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(233032436508964041)
,p_db_column_name=>'COD_MARCA'
,p_display_order=>120
,p_column_identifier=>'E'
,p_column_label=>'Cod Marca'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(233032573456964042)
,p_db_column_name=>'COD_RUBRO'
,p_display_order=>130
,p_column_identifier=>'F'
,p_column_label=>'Cod Rubro'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(233032695923964043)
,p_db_column_name=>'COD_FAMILIA'
,p_display_order=>140
,p_column_identifier=>'G'
,p_column_label=>'Cod Familia'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(233032737030964044)
,p_db_column_name=>'COD_LINEA'
,p_display_order=>150
,p_column_identifier=>'H'
,p_column_label=>'Cod Linea'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(233032841529964045)
,p_db_column_name=>'COD_ENVASE'
,p_display_order=>160
,p_column_identifier=>'I'
,p_column_label=>'Cod Envase'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(233032958579964046)
,p_db_column_name=>'COD_IVA'
,p_display_order=>170
,p_column_identifier=>'J'
,p_column_label=>'Cod Iva'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(233033094501964047)
,p_db_column_name=>'IND_MANEJA_STOCK'
,p_display_order=>180
,p_column_identifier=>'K'
,p_column_label=>'Ind Maneja Stock'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(233033123138964048)
,p_db_column_name=>'COD_UNIDAD_MEDIDA'
,p_display_order=>190
,p_column_identifier=>'L'
,p_column_label=>'Cod Unidad Medida'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(233033269449964049)
,p_db_column_name=>'COSTO_PROM'
,p_display_order=>200
,p_column_identifier=>'M'
,p_column_label=>'Costo Prom'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(233033300288964050)
,p_db_column_name=>'COSTO_ULTIMO'
,p_display_order=>210
,p_column_identifier=>'N'
,p_column_label=>'Costo Ultimo'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234432496369690101)
,p_db_column_name=>'COSTO_FOB'
,p_display_order=>220
,p_column_identifier=>'O'
,p_column_label=>'Costo Fob'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234432508066690102)
,p_db_column_name=>'COD_MONEDA_COSTO'
,p_display_order=>230
,p_column_identifier=>'P'
,p_column_label=>'Cod Moneda Costo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234432633557690103)
,p_db_column_name=>'FEC_ULTIMA_COMP'
,p_display_order=>240
,p_column_identifier=>'Q'
,p_column_label=>'Fec Ultima Comp'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234432860042690105)
,p_db_column_name=>'COD_PROVEEDOR_DFLT'
,p_display_order=>250
,p_column_identifier=>'S'
,p_column_label=>'Cod Proveedor Dflt'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234433008329690107)
,p_db_column_name=>'COD_ORIGEN_ART'
,p_display_order=>260
,p_column_identifier=>'U'
,p_column_label=>'Cod Origen Art'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234433159967690108)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>270
,p_column_identifier=>'V'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234433293603690109)
,p_db_column_name=>'ESTADO'
,p_display_order=>280
,p_column_identifier=>'W'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234433361273690110)
,p_db_column_name=>'PRECIO_BASE'
,p_display_order=>290
,p_column_identifier=>'X'
,p_column_label=>'Precio Base'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234433453355690111)
,p_db_column_name=>'COD_MONEDA_BASE'
,p_display_order=>300
,p_column_identifier=>'Y'
,p_column_label=>'Cod Moneda Base'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234433552358690112)
,p_db_column_name=>'COD_BARRA_ART'
,p_display_order=>310
,p_column_identifier=>'Z'
,p_column_label=>'Cod Barra Art'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234433624972690113)
,p_db_column_name=>'IND_MODIFICA_PRECIO'
,p_display_order=>320
,p_column_identifier=>'AA'
,p_column_label=>'Ind Modifica Precio'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234433791794690114)
,p_db_column_name=>'PORC_DESCUENTO'
,p_display_order=>330
,p_column_identifier=>'AB'
,p_column_label=>'Porc Descuento'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234433825389690115)
,p_db_column_name=>'COD_GRUPO_COMISION'
,p_display_order=>340
,p_column_identifier=>'AC'
,p_column_label=>'Cod Grupo Comision'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234433933199690116)
,p_db_column_name=>'COSTO_PROM_ANTERIOR'
,p_display_order=>350
,p_column_identifier=>'AD'
,p_column_label=>'Costo Prom Anterior'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234434032344690117)
,p_db_column_name=>'COSTO_PROM_REF'
,p_display_order=>360
,p_column_identifier=>'AE'
,p_column_label=>'Costo Prom Ref'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234434120769690118)
,p_db_column_name=>'COSTO_FOB_REF'
,p_display_order=>370
,p_column_identifier=>'AF'
,p_column_label=>'Costo Fob Ref'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234434206471690119)
,p_db_column_name=>'COSTO_IMP_REF'
,p_display_order=>380
,p_column_identifier=>'AG'
,p_column_label=>'Costo Imp Ref'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234434398844690120)
,p_db_column_name=>'COD_ARANCEL'
,p_display_order=>390
,p_column_identifier=>'AH'
,p_column_label=>'Cod Arancel'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234434492169690121)
,p_db_column_name=>'IMP_COD_ORIGEN'
,p_display_order=>400
,p_column_identifier=>'AI'
,p_column_label=>'Imp Cod Origen'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234434600990690123)
,p_db_column_name=>'COD_GRUPO'
,p_display_order=>410
,p_column_identifier=>'AK'
,p_column_label=>'Cod Grupo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234434767266690124)
,p_db_column_name=>'COD_COLOR'
,p_display_order=>420
,p_column_identifier=>'AL'
,p_column_label=>'Cod Color'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234434818869690125)
,p_db_column_name=>'USADO'
,p_display_order=>430
,p_column_identifier=>'AM'
,p_column_label=>'Usado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234434958587690126)
,p_db_column_name=>'PORCEN_OBSOL'
,p_display_order=>440
,p_column_identifier=>'AN'
,p_column_label=>'Porcen Obsol'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234435089906690127)
,p_db_column_name=>'PESO_ARTICULO'
,p_display_order=>450
,p_column_identifier=>'AO'
,p_column_label=>'Peso Articulo'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234435128238690128)
,p_db_column_name=>'PRECIO_BASE_ME'
,p_display_order=>460
,p_column_identifier=>'AP'
,p_column_label=>'Precio Base Me'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234435251808690129)
,p_db_column_name=>'COD_MONEDA_BASE_EXT'
,p_display_order=>470
,p_column_identifier=>'AQ'
,p_column_label=>'Cod Moneda Base Ext'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234435386552690130)
,p_db_column_name=>'COSTO_PROM_EXT'
,p_display_order=>480
,p_column_identifier=>'AR'
,p_column_label=>'Costo Prom Ext'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234435429776690131)
,p_db_column_name=>'COD_MONEDA_COSTO_EXT'
,p_display_order=>490
,p_column_identifier=>'AS'
,p_column_label=>'Cod Moneda Costo Ext'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234435547014690132)
,p_db_column_name=>'COD_RELACION_UM'
,p_display_order=>500
,p_column_identifier=>'AT'
,p_column_label=>'Cod Relacion Um'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234435611668690133)
,p_db_column_name=>'ALTO_CM'
,p_display_order=>510
,p_column_identifier=>'AU'
,p_column_label=>'Alto Cm'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234435755789690134)
,p_db_column_name=>'LARGO_CM'
,p_display_order=>520
,p_column_identifier=>'AV'
,p_column_label=>'Largo Cm'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234435806430690135)
,p_db_column_name=>'ANCHO_CM'
,p_display_order=>530
,p_column_identifier=>'AW'
,p_column_label=>'Ancho Cm'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234435956718690136)
,p_db_column_name=>'PESO_GR'
,p_display_order=>540
,p_column_identifier=>'AX'
,p_column_label=>'Peso Gr'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234436047098690137)
,p_db_column_name=>'MANEJA_COSTO'
,p_display_order=>550
,p_column_identifier=>'AY'
,p_column_label=>'Maneja Costo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234436152624690138)
,p_db_column_name=>'COSTO_PROM_REPUESTO'
,p_display_order=>560
,p_column_identifier=>'AZ'
,p_column_label=>'Costo Prom Repuesto'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234436296557690139)
,p_db_column_name=>'COSTO_PROM_ANTER_REP'
,p_display_order=>570
,p_column_identifier=>'BA'
,p_column_label=>'Costo Prom Anter Rep'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234436378189690140)
,p_db_column_name=>'IND_MANEJA_LOTES'
,p_display_order=>580
,p_column_identifier=>'BB'
,p_column_label=>'Ind Maneja Lotes'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234436415610690141)
,p_db_column_name=>'ES_MOTO'
,p_display_order=>590
,p_column_identifier=>'BC'
,p_column_label=>'Es Moto'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234436568874690142)
,p_db_column_name=>'COD_GRUPO_DESC'
,p_display_order=>600
,p_column_identifier=>'BD'
,p_column_label=>'Cod Grupo Desc'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234436623518690143)
,p_db_column_name=>'COSTO_PROM_US'
,p_display_order=>610
,p_column_identifier=>'BE'
,p_column_label=>'Costo Prom Us'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234436756424690144)
,p_db_column_name=>'COSTO_ULTIMO_US'
,p_display_order=>620
,p_column_identifier=>'BF'
,p_column_label=>'Costo Ultimo Us'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234436805895690145)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>630
,p_column_identifier=>'BG'
,p_column_label=>'Tip Cambio'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
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
 p_id=>wwv_flow_imp.id(234436900977690146)
,p_db_column_name=>'COD_ALTERNO'
,p_display_order=>640
,p_column_identifier=>'BH'
,p_column_label=>'Cod Alterno'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234437064625690147)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>650
,p_column_identifier=>'BI'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234437187321690148)
,p_db_column_name=>'ESTIBA_MAX'
,p_display_order=>660
,p_column_identifier=>'BJ'
,p_column_label=>'Estiba Max'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234437287946690149)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>670
,p_column_identifier=>'BK'
,p_column_label=>'Fec Alta'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234437375168690150)
,p_db_column_name=>'VOLUMENSINO'
,p_display_order=>680
,p_column_identifier=>'BL'
,p_column_label=>'Volumensino'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234437460868690101)
,p_db_column_name=>'PRECIO_BASE_FUT'
,p_display_order=>690
,p_column_identifier=>'BM'
,p_column_label=>'Precio Base Fut'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234437599017690102)
,p_db_column_name=>'RUTA_FOTO_1'
,p_display_order=>700
,p_column_identifier=>'BN'
,p_column_label=>'Ruta Foto 1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234437690498690103)
,p_db_column_name=>'RUTA_FOTO_2'
,p_display_order=>710
,p_column_identifier=>'BO'
,p_column_label=>'Ruta Foto 2'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234437728557690104)
,p_db_column_name=>'RUTA_FOTO_3'
,p_display_order=>720
,p_column_identifier=>'BP'
,p_column_label=>'Ruta Foto 3'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234437856196690105)
,p_db_column_name=>'RUTA_FOTO_4'
,p_display_order=>730
,p_column_identifier=>'BQ'
,p_column_label=>'Ruta Foto 4'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234437985713690106)
,p_db_column_name=>'RUTA_FOTO_5'
,p_display_order=>740
,p_column_identifier=>'BR'
,p_column_label=>'Ruta Foto 5'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234438082278690107)
,p_db_column_name=>'CARACTERISTICAS'
,p_display_order=>750
,p_column_identifier=>'BS'
,p_column_label=>'Caracteristicas'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234438107892690108)
,p_db_column_name=>'SERIE'
,p_display_order=>760
,p_column_identifier=>'BT'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234438286294690109)
,p_db_column_name=>'GARANTIA'
,p_display_order=>770
,p_column_identifier=>'BU'
,p_column_label=>'Garantia'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234438335857690110)
,p_db_column_name=>'SERIE_GARANTIA'
,p_display_order=>780
,p_column_identifier=>'BV'
,p_column_label=>'Serie Garantia'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234438402739690111)
,p_db_column_name=>'DURACION_GARANTIA'
,p_display_order=>790
,p_column_identifier=>'BW'
,p_column_label=>'Duracion Garantia'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234438564010690112)
,p_db_column_name=>'IND_REQUIERE_SIM'
,p_display_order=>800
,p_column_identifier=>'BX'
,p_column_label=>'Ind Requiere Sim'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234438684671690113)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>810
,p_column_identifier=>'BY'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234438717526690114)
,p_db_column_name=>'FEC_INICIO_PB'
,p_display_order=>820
,p_column_identifier=>'BZ'
,p_column_label=>'Fec Inicio Pb'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234438873013690115)
,p_db_column_name=>'COD_MONEDA_BASE_FUT'
,p_display_order=>830
,p_column_identifier=>'CA'
,p_column_label=>'Cod Moneda Base Fut'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234438905262690116)
,p_db_column_name=>'PORC_DESCMAX'
,p_display_order=>840
,p_column_identifier=>'CB'
,p_column_label=>'Porc Descmax'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234439086397690117)
,p_db_column_name=>'STOCK_MIN'
,p_display_order=>850
,p_column_identifier=>'CC'
,p_column_label=>'Stock Min'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234439191278690118)
,p_db_column_name=>'SKU'
,p_display_order=>860
,p_column_identifier=>'CD'
,p_column_label=>'Sku'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234439251522690119)
,p_db_column_name=>'SKU_ORIGEN'
,p_display_order=>870
,p_column_identifier=>'CE'
,p_column_label=>'Sku Origen'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234439366781690120)
,p_db_column_name=>'COD_USUARIO_MOD'
,p_display_order=>880
,p_column_identifier=>'CF'
,p_column_label=>'Cod Usuario Mod'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234439461800690121)
,p_db_column_name=>'FEC_MOD'
,p_display_order=>890
,p_column_identifier=>'CG'
,p_column_label=>'Fec Mod'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234439504748690122)
,p_db_column_name=>'COD_EAN'
,p_display_order=>900
,p_column_identifier=>'CH'
,p_column_label=>'Cod Ean'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234439664983690123)
,p_db_column_name=>'COD_CATEGORIA'
,p_display_order=>910
,p_column_identifier=>'CI'
,p_column_label=>'Cod Categoria'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234439718262690124)
,p_db_column_name=>'ART_DESC_PROVEEDOR'
,p_display_order=>920
,p_column_identifier=>'CJ'
,p_column_label=>'Art Desc Proveedor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234439881341690125)
,p_db_column_name=>'COD_DIVISION'
,p_display_order=>930
,p_column_identifier=>'CK'
,p_column_label=>'Cod Division'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234439967207690126)
,p_db_column_name=>'TRADUCCION_MO'
,p_display_order=>940
,p_column_identifier=>'CL'
,p_column_label=>'Traduccion Mo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234440070157690127)
,p_db_column_name=>'EN_OFERTA_WEB'
,p_display_order=>950
,p_column_identifier=>'CM'
,p_column_label=>'En Oferta Web'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234440124791690128)
,p_db_column_name=>'CAP_20GP'
,p_display_order=>960
,p_column_identifier=>'CN'
,p_column_label=>'Cap 20gp'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234440206579690129)
,p_db_column_name=>'CAP_40GP'
,p_display_order=>970
,p_column_identifier=>'CO'
,p_column_label=>'Cap 40gp'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234440388991690130)
,p_db_column_name=>'CAP_40HQ'
,p_display_order=>980
,p_column_identifier=>'CP'
,p_column_label=>'Cap 40hq'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234440441005690131)
,p_db_column_name=>'CAMION'
,p_display_order=>990
,p_column_identifier=>'CQ'
,p_column_label=>'Camion'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234440570231690132)
,p_db_column_name=>'FURGON'
,p_display_order=>1000
,p_column_identifier=>'CR'
,p_column_label=>'Furgon'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234440629093690133)
,p_db_column_name=>'EMBARQUE_CONS'
,p_display_order=>1010
,p_column_identifier=>'CS'
,p_column_label=>'Embarque Cons'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234440754891690134)
,p_db_column_name=>'IND_NETO'
,p_display_order=>1020
,p_column_identifier=>'CT'
,p_column_label=>'Ind Neto'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234440891997690135)
,p_db_column_name=>'IND_FUERA_LINEA'
,p_display_order=>1030
,p_column_identifier=>'CU'
,p_column_label=>'Ind Fuera Linea'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234440909538690136)
,p_db_column_name=>'ID_NRO'
,p_display_order=>1040
,p_column_identifier=>'CV'
,p_column_label=>'Id Nro'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234441093661690137)
,p_db_column_name=>'ID_PROC'
,p_display_order=>1050
,p_column_identifier=>'CW'
,p_column_label=>'Id Proc'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234441142823690138)
,p_db_column_name=>'EXP_VIEW'
,p_display_order=>1060
,p_column_identifier=>'CX'
,p_column_label=>'Exp View'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234441256681690139)
,p_db_column_name=>'SPARE'
,p_display_order=>1070
,p_column_identifier=>'CY'
,p_column_label=>'Spare'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234441303356690140)
,p_db_column_name=>'PRODUCTO'
,p_display_order=>1080
,p_column_identifier=>'CZ'
,p_column_label=>'Producto'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234441460076690141)
,p_db_column_name=>'DESCRIPCION_ING'
,p_display_order=>1090
,p_column_identifier=>'DA'
,p_column_label=>'Descripcion Ing'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234441542716690142)
,p_db_column_name=>'IND_EXP_VIEW'
,p_display_order=>1100
,p_column_identifier=>'DB'
,p_column_label=>'Ind Exp View'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234441674587690143)
,p_db_column_name=>'IND_NO_DESCUENTO'
,p_display_order=>1110
,p_column_identifier=>'DC'
,p_column_label=>'Ind No Descuento'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234441793637690144)
,p_db_column_name=>'PATH_SPARE'
,p_display_order=>1120
,p_column_identifier=>'DD'
,p_column_label=>'Path Spare'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234441819180690145)
,p_db_column_name=>'PATH_EXP'
,p_display_order=>1130
,p_column_identifier=>'DE'
,p_column_label=>'Path Exp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234441998695690146)
,p_db_column_name=>'IND_LISTADO_PART'
,p_display_order=>1140
,p_column_identifier=>'DF'
,p_column_label=>'Ind Listado Part'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234442038460690147)
,p_db_column_name=>'CANT_NG'
,p_display_order=>1150
,p_column_identifier=>'DG'
,p_column_label=>'Cant Ng'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234442178568690148)
,p_db_column_name=>'PATH_MANUAL_USU'
,p_display_order=>1160
,p_column_identifier=>'DH'
,p_column_label=>'Path Manual Usu'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234442246000690149)
,p_db_column_name=>'IND_REQUIERE_DEVOLUCION'
,p_display_order=>1170
,p_column_identifier=>'DI'
,p_column_label=>'Ind Requiere Devolucion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234442319316690150)
,p_db_column_name=>'IND_PUESTA_MARCHA'
,p_display_order=>1180
,p_column_identifier=>'DJ'
,p_column_label=>'Ind Puesta Marcha'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234442439475690101)
,p_db_column_name=>'IND_VISITA'
,p_display_order=>1190
,p_column_identifier=>'DK'
,p_column_label=>'Ind Visita'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234442580194690102)
,p_db_column_name=>'COD_ENCARGADO'
,p_display_order=>1200
,p_column_identifier=>'DL'
,p_column_label=>'Cod Encargado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234442657699690103)
,p_db_column_name=>'CLASIFICACION'
,p_display_order=>1210
,p_column_identifier=>'DM'
,p_column_label=>'Clasificacion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234442741821690104)
,p_db_column_name=>'VOLUMEN_M3'
,p_display_order=>1220
,p_column_identifier=>'DN'
,p_column_label=>'Volumen M3'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234442878791690105)
,p_db_column_name=>'PATH_IMG_PRO'
,p_display_order=>1230
,p_column_identifier=>'DO'
,p_column_label=>'Path Img Pro'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234442981358690106)
,p_db_column_name=>'COD_MADRE'
,p_display_order=>1240
,p_column_identifier=>'DP'
,p_column_label=>'Cod Madre'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234443072026690107)
,p_db_column_name=>'COD_FAMILIA_WEB'
,p_display_order=>1250
,p_column_identifier=>'DQ'
,p_column_label=>'Cod Familia Web'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234443114505690108)
,p_db_column_name=>'DESCRIPCION_WEB'
,p_display_order=>1260
,p_column_identifier=>'DR'
,p_column_label=>'Descripcion Web'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234443239985690109)
,p_db_column_name=>'COD_LINEA_ST'
,p_display_order=>1270
,p_column_identifier=>'DS'
,p_column_label=>'Cod Linea St'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234443372958690110)
,p_db_column_name=>'IND_MUESTRA_WEB'
,p_display_order=>1280
,p_column_identifier=>'DT'
,p_column_label=>'Ind Muestra Web'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234443430754690111)
,p_db_column_name=>'AUTOAPILABLE'
,p_display_order=>1290
,p_column_identifier=>'DU'
,p_column_label=>'Autoapilable'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234443505015690112)
,p_db_column_name=>'CANT_X_PALLET'
,p_display_order=>1300
,p_column_identifier=>'DV'
,p_column_label=>'Cant X Pallet'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234443651738690113)
,p_db_column_name=>'COD_PACK'
,p_display_order=>1310
,p_column_identifier=>'DW'
,p_column_label=>'Cod Pack'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234443701088690114)
,p_db_column_name=>'IND_NO_CUBRE_GARANTIA'
,p_display_order=>1320
,p_column_identifier=>'DX'
,p_column_label=>'Ind No Cubre Garantia'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234443899998690115)
,p_db_column_name=>'FEC_VENCIMIENTO'
,p_display_order=>1330
,p_column_identifier=>'DY'
,p_column_label=>'Fec Vencimiento'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234443972072690116)
,p_db_column_name=>'IND_DISCONTINUADO'
,p_display_order=>1340
,p_column_identifier=>'DZ'
,p_column_label=>'Ind Discontinuado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234444007875690117)
,p_db_column_name=>'CANTIDAD_MINIMA_COMPRA'
,p_display_order=>1350
,p_column_identifier=>'EA'
,p_column_label=>'Cantidad Minima Compra'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234444146132690118)
,p_db_column_name=>'PLAZO_ENTREGA'
,p_display_order=>1360
,p_column_identifier=>'EB'
,p_column_label=>'Plazo Entrega'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234444273171690119)
,p_db_column_name=>'COSTO_PROFORMA_GS'
,p_display_order=>1370
,p_column_identifier=>'EC'
,p_column_label=>'Costo Proforma Gs'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234444312147690120)
,p_db_column_name=>'COTIZACION_CP'
,p_display_order=>1380
,p_column_identifier=>'ED'
,p_column_label=>'Cotizacion Cp'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234444468485690121)
,p_db_column_name=>'COD_CATEGORIA_ANT'
,p_display_order=>1390
,p_column_identifier=>'EE'
,p_column_label=>'Cod Categoria Ant'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234444503864690122)
,p_db_column_name=>'COD_LINEA_ANT'
,p_display_order=>1400
,p_column_identifier=>'EF'
,p_column_label=>'Cod Linea Ant'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234444615559690123)
,p_db_column_name=>'COD_PUERTO'
,p_display_order=>1410
,p_column_identifier=>'EG'
,p_column_label=>'Cod Puerto'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234444736675690124)
,p_db_column_name=>'ORIGEN_PUERTO'
,p_display_order=>1420
,p_column_identifier=>'EH'
,p_column_label=>'Origen Puerto'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234444871369690125)
,p_db_column_name=>'TIPO_MO'
,p_display_order=>1430
,p_column_identifier=>'EI'
,p_column_label=>'Tipo Mo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234444999490690126)
,p_db_column_name=>'IND_CICLO_VIDA'
,p_display_order=>1440
,p_column_identifier=>'EJ'
,p_column_label=>'Ind Ciclo Vida'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234445013880690127)
,p_db_column_name=>'PRECIO_BASE_GARANTIA'
,p_display_order=>1450
,p_column_identifier=>'EK'
,p_column_label=>'Precio Base Garantia'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234445183023690128)
,p_db_column_name=>'COD_ESPECIE'
,p_display_order=>1460
,p_column_identifier=>'EL'
,p_column_label=>'Cod Especie'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234445256727690129)
,p_db_column_name=>'COSTO_FOB_OC'
,p_display_order=>1470
,p_column_identifier=>'EM'
,p_column_label=>'Costo Fob Oc'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234445346539690130)
,p_db_column_name=>'PRODUCTO_SE_DEBE_ARMAR'
,p_display_order=>1480
,p_column_identifier=>'EN'
,p_column_label=>'Producto Se Debe Armar'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234445404137690131)
,p_db_column_name=>'ALTURA_TOTAL_APILADO'
,p_display_order=>1490
,p_column_identifier=>'EO'
,p_column_label=>'Altura Total Apilado'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234445580827690132)
,p_db_column_name=>'APILADO_MAXIMO'
,p_display_order=>1500
,p_column_identifier=>'EP'
,p_column_label=>'Apilado Maximo'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234445635298690133)
,p_db_column_name=>'CLAMP_DANA_PRODUCTO'
,p_display_order=>1510
,p_column_identifier=>'EQ'
,p_column_label=>'Clamp Dana Producto'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234445731906690134)
,p_db_column_name=>'TIPO_ALMACENAMIENTO'
,p_display_order=>1520
,p_column_identifier=>'ER'
,p_column_label=>'Tipo Almacenamiento'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234445817484690135)
,p_db_column_name=>'TIPO_DE_CAJA'
,p_display_order=>1530
,p_column_identifier=>'ES'
,p_column_label=>'Tipo De Caja'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234445978316690136)
,p_db_column_name=>'UNIDADES_POR_ESTIBA_CAMADA'
,p_display_order=>1540
,p_column_identifier=>'ET'
,p_column_label=>'Unidades Por Estiba Camada'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234446077166690137)
,p_db_column_name=>'ESTIBAS_CAMADAS_POR_PALLET'
,p_display_order=>1550
,p_column_identifier=>'EU'
,p_column_label=>'Estibas Camadas Por Pallet'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234446134822690138)
,p_db_column_name=>'ULTIMA_CAMADA_ORIENTACION'
,p_display_order=>1560
,p_column_identifier=>'EV'
,p_column_label=>'Ultima Camada Orientacion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234446250239690139)
,p_db_column_name=>'LARGO_PRODUCTO_COLECTIVO'
,p_display_order=>1570
,p_column_identifier=>'EW'
,p_column_label=>'Largo Producto Colectivo'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234446339879690140)
,p_db_column_name=>'ANCHO_PRODUCTO_COLECTIVO'
,p_display_order=>1580
,p_column_identifier=>'EX'
,p_column_label=>'Ancho Producto Colectivo'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234446400350690141)
,p_db_column_name=>'ALTO_PRODUCTO_COLECTIVO'
,p_display_order=>1590
,p_column_identifier=>'EY'
,p_column_label=>'Alto Producto Colectivo'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234446524594690142)
,p_db_column_name=>'IND_MANTENIMIENTO'
,p_display_order=>1600
,p_column_identifier=>'EZ'
,p_column_label=>'Ind Mantenimiento'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234446614140690143)
,p_db_column_name=>'IND_LISTA_PRECIO'
,p_display_order=>1610
,p_column_identifier=>'FA'
,p_column_label=>'Ind Lista Precio'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234446761179690144)
,p_db_column_name=>'IND_SOLO_PROMO'
,p_display_order=>1620
,p_column_identifier=>'FB'
,p_column_label=>'Ind Solo Promo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234446806153690145)
,p_db_column_name=>'INFO_WEB'
,p_display_order=>1630
,p_column_identifier=>'FC'
,p_column_label=>'Info Web'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234446945877690146)
,p_db_column_name=>'NOMBRE_WEB'
,p_display_order=>1640
,p_column_identifier=>'FD'
,p_column_label=>'Nombre Web'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234447045950690147)
,p_db_column_name=>'DESCRIPCION_WEB2'
,p_display_order=>1650
,p_column_identifier=>'FE'
,p_column_label=>'Descripcion Web2'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234447175902690148)
,p_db_column_name=>'IND_PARTICULAR'
,p_display_order=>1660
,p_column_identifier=>'FF'
,p_column_label=>'Ind Particular'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234447277063690149)
,p_db_column_name=>'IMPORTE_COMISION_PARTICULAR'
,p_display_order=>1670
,p_column_identifier=>'FG'
,p_column_label=>'Importe Comision Particular'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234447386785690150)
,p_db_column_name=>'IMPORTE_COMISION_GARANTIA'
,p_display_order=>1680
,p_column_identifier=>'FH'
,p_column_label=>'Importe Comision Garantia'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234447470664690201)
,p_db_column_name=>'IMPORTE_COMISION_JT_15'
,p_display_order=>1690
,p_column_identifier=>'FI'
,p_column_label=>'Importe Comision Jt 15'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234447590413690202)
,p_db_column_name=>'IMPORTE_COMISION_JT_7'
,p_display_order=>1700
,p_column_identifier=>'FJ'
,p_column_label=>'Importe Comision Jt 7'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
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
 p_id=>wwv_flow_imp.id(234447688596690203)
,p_db_column_name=>'FECHA_ACTUALIZACION'
,p_display_order=>1710
,p_column_identifier=>'FK'
,p_column_label=>'Fecha Actualizacion'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234447769386690204)
,p_db_column_name=>'IND_TECNICO_29'
,p_display_order=>1720
,p_column_identifier=>'FL'
,p_column_label=>'Ind Tecnico 29'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234447884283690205)
,p_db_column_name=>'ANCHO_PRODUCTO_CM'
,p_display_order=>1730
,p_column_identifier=>'FM'
,p_column_label=>'Ancho Producto Cm'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234447949015690206)
,p_db_column_name=>'ALTO_PRODUCTO_CM'
,p_display_order=>1740
,p_column_identifier=>'FN'
,p_column_label=>'Alto Producto Cm'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234448099756690207)
,p_db_column_name=>'LARGO_PRODUCTO_CM'
,p_display_order=>1750
,p_column_identifier=>'FO'
,p_column_label=>'Largo Producto Cm'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234448100923690208)
,p_db_column_name=>'PESO_PRODUCTO_GR'
,p_display_order=>1760
,p_column_identifier=>'FP'
,p_column_label=>'Peso Producto Gr'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234448254283690209)
,p_db_column_name=>'IND_DEVOLUCION_REPUESTOS'
,p_display_order=>1770
,p_column_identifier=>'FQ'
,p_column_label=>'Ind Devolucion Repuestos'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234448307498690210)
,p_db_column_name=>'PORCENTAJE_SPP'
,p_display_order=>1780
,p_column_identifier=>'FR'
,p_column_label=>'Porcentaje Spp'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234448453922690211)
,p_db_column_name=>'IND_MIGRADO_OS'
,p_display_order=>1790
,p_column_identifier=>'FS'
,p_column_label=>'Ind Migrado Os'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234448541991690212)
,p_db_column_name=>'IND_MIGRADO_OS_MO'
,p_display_order=>1800
,p_column_identifier=>'FT'
,p_column_label=>'Ind Migrado Os Mo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234448660165690213)
,p_db_column_name=>'DIAS_ANALISIS'
,p_display_order=>1810
,p_column_identifier=>'FU'
,p_column_label=>'Dias Analisis'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234448791424690214)
,p_db_column_name=>'CLASIFICACION_REPUESTOS_ABC'
,p_display_order=>1820
,p_column_identifier=>'FV'
,p_column_label=>'Clasificacion Repuestos Abc'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234448830735690215)
,p_db_column_name=>'MOTIVO_NO_STOCK'
,p_display_order=>1830
,p_column_identifier=>'FW'
,p_column_label=>'Motivo No Stock'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234448989198690216)
,p_db_column_name=>'PATH_LISTA_ERR'
,p_display_order=>1840
,p_column_identifier=>'FX'
,p_column_label=>'Path Lista Err'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234449015079690217)
,p_db_column_name=>'FECHA_NO_STOCK'
,p_display_order=>1850
,p_column_identifier=>'FY'
,p_column_label=>'Fecha No Stock'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234449171249690218)
,p_db_column_name=>'CLASIFICACION_SLIM'
,p_display_order=>1860
,p_column_identifier=>'FZ'
,p_column_label=>'Clasificacion Slim'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234449250112690219)
,p_db_column_name=>'PATH_IMG_PRO_1'
,p_display_order=>1870
,p_column_identifier=>'GA'
,p_column_label=>'Path Img Pro 1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234449374641690220)
,p_db_column_name=>'PATH_IMG_PRO_2'
,p_display_order=>1880
,p_column_identifier=>'GB'
,p_column_label=>'Path Img Pro 2'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234449475430690221)
,p_db_column_name=>'IND_NO_FACTURAR'
,p_display_order=>1890
,p_column_identifier=>'GC'
,p_column_label=>'Ind No Facturar'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234449589764690222)
,p_db_column_name=>'APILABILIDAD'
,p_display_order=>1900
,p_column_identifier=>'GD'
,p_column_label=>'Apilabilidad'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234449600719690223)
,p_db_column_name=>'ALTO_ARMADO_CM'
,p_display_order=>1910
,p_column_identifier=>'GE'
,p_column_label=>'Alto Armado Cm'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234449789784690224)
,p_db_column_name=>'ANCHO_ARMADO_CM'
,p_display_order=>1920
,p_column_identifier=>'GF'
,p_column_label=>'Ancho Armado Cm'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234449891252690225)
,p_db_column_name=>'LARGO_ARMADO_CM'
,p_display_order=>1930
,p_column_identifier=>'GG'
,p_column_label=>'Largo Armado Cm'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234449936493690226)
,p_db_column_name=>'IND_ARMADO'
,p_display_order=>1940
,p_column_identifier=>'GH'
,p_column_label=>'Ind Armado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234450063873690227)
,p_db_column_name=>'IND_CONATEL'
,p_display_order=>1950
,p_column_identifier=>'GI'
,p_column_label=>'Ind Conatel'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234450182471690228)
,p_db_column_name=>'IND_HOMOLOGACION'
,p_display_order=>1960
,p_column_identifier=>'GJ'
,p_column_label=>'Ind Homologacion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234450285087690229)
,p_db_column_name=>'REGISTRO_CONATEL'
,p_display_order=>1970
,p_column_identifier=>'GK'
,p_column_label=>'Registro Conatel'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234450387165690230)
,p_db_column_name=>'FECHA_PRIMER_INGRESO'
,p_display_order=>1980
,p_column_identifier=>'GL'
,p_column_label=>'Fecha Primer Ingreso'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234450494700690231)
,p_db_column_name=>'ANCHO_CLAMP'
,p_display_order=>1990
,p_column_identifier=>'GM'
,p_column_label=>'Ancho Clamp'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234450587918690232)
,p_db_column_name=>'LARGO_CLAMP'
,p_display_order=>2000
,p_column_identifier=>'GN'
,p_column_label=>'Largo Clamp'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234450628985690233)
,p_db_column_name=>'ALTO_CLAMP'
,p_display_order=>2010
,p_column_identifier=>'GO'
,p_column_label=>'Alto Clamp'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234450763642690234)
,p_db_column_name=>'COD_ARTICULO_QM'
,p_display_order=>2020
,p_column_identifier=>'GP'
,p_column_label=>'Cod Articulo Qm'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234450880550690235)
,p_db_column_name=>'CANTIDAD_MINIMA_WEB'
,p_display_order=>2030
,p_column_identifier=>'GQ'
,p_column_label=>'Cantidad Minima Web'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234450964172690236)
,p_db_column_name=>'XTR_ASSEMBLED_DEPTH'
,p_display_order=>2040
,p_column_identifier=>'GR'
,p_column_label=>'Xtr Assembled Depth'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234451061174690237)
,p_db_column_name=>'XTR_ASSEMBLED_HEIGHT'
,p_display_order=>2050
,p_column_identifier=>'GS'
,p_column_label=>'Xtr Assembled Height'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234451165091690238)
,p_db_column_name=>'XTR_ASSEMBLED_WIDTH'
,p_display_order=>2060
,p_column_identifier=>'GT'
,p_column_label=>'Xtr Assembled Width'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234451286023690239)
,p_db_column_name=>'XTR_ASSEMBLED_ASSEMBLABLE'
,p_display_order=>2070
,p_column_identifier=>'GU'
,p_column_label=>'Xtr Assembled Assemblable'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234451332881690240)
,p_db_column_name=>'XTR_INTERLOCKING_ROW'
,p_display_order=>2080
,p_column_identifier=>'GV'
,p_column_label=>'Xtr Interlocking Row'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234451436143690241)
,p_db_column_name=>'XTR_COUMPOUND_ROW'
,p_display_order=>2090
,p_column_identifier=>'GW'
,p_column_label=>'Xtr Coumpound Row'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234451545547690242)
,p_db_column_name=>'XTR_DAMAGEABLE_CLAMP'
,p_display_order=>2100
,p_column_identifier=>'GX'
,p_column_label=>'Xtr Damageable Clamp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234451609092690243)
,p_db_column_name=>'XTR_SAFEGUARDED'
,p_display_order=>2110
,p_column_identifier=>'GY'
,p_column_label=>'Xtr Safeguarded'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234451736151690244)
,p_db_column_name=>'STK_SECONDARY_CLAMP_Z'
,p_display_order=>2120
,p_column_identifier=>'GZ'
,p_column_label=>'Stk Secondary Clamp Z'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234451819466690245)
,p_db_column_name=>'STK_SECONDARY_CLAMP_Y'
,p_display_order=>2130
,p_column_identifier=>'HA'
,p_column_label=>'Stk Secondary Clamp Y'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234451968335690246)
,p_db_column_name=>'STK_SECONDARY_CLAMP_X'
,p_display_order=>2140
,p_column_identifier=>'HB'
,p_column_label=>'Stk Secondary Clamp X'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234452023804690247)
,p_db_column_name=>'STK_PRIMARY_CLAMP_Z'
,p_display_order=>2150
,p_column_identifier=>'HC'
,p_column_label=>'Stk Primary Clamp Z'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234452170662690248)
,p_db_column_name=>'STK_PRIMARY_CLAMP_Y'
,p_display_order=>2160
,p_column_identifier=>'HD'
,p_column_label=>'Stk Primary Clamp Y'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234452209518690249)
,p_db_column_name=>'STK_PRIMARY_CLAMP_X'
,p_display_order=>2170
,p_column_identifier=>'HE'
,p_column_label=>'Stk Primary Clamp X'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234452370603690250)
,p_db_column_name=>'STK_TERTIARY_STACK_TER_ROW'
,p_display_order=>2180
,p_column_identifier=>'HF'
,p_column_label=>'Stk Tertiary Stack Ter Row'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234452449150690201)
,p_db_column_name=>'STK_TERTIARY_STACK_SEC_ROW'
,p_display_order=>2190
,p_column_identifier=>'HG'
,p_column_label=>'Stk Tertiary Stack Sec Row'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234452563018690202)
,p_db_column_name=>'STK_TERTIARY_STACK_PRI_ROW'
,p_display_order=>2200
,p_column_identifier=>'HH'
,p_column_label=>'Stk Tertiary Stack Pri Row'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234452624759690203)
,p_db_column_name=>'STK_SECONDARY_STACK_TER_ROW'
,p_display_order=>2210
,p_column_identifier=>'HI'
,p_column_label=>'Stk Secondary Stack Ter Row'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234452749397690204)
,p_db_column_name=>'STK_SECONDARY_STACK_SEC_ROW'
,p_display_order=>2220
,p_column_identifier=>'HJ'
,p_column_label=>'Stk Secondary Stack Sec Row'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234452868752690205)
,p_db_column_name=>'STK_SECONDARY_STACK_PRI_ROW'
,p_display_order=>2230
,p_column_identifier=>'HK'
,p_column_label=>'Stk Secondary Stack Pri Row'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234452991526690206)
,p_db_column_name=>'STK_PRIMARY_STACK_TER_ROW'
,p_display_order=>2240
,p_column_identifier=>'HL'
,p_column_label=>'Stk Primary Stack Ter Row'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234453042099690207)
,p_db_column_name=>'STK_PRIMARY_STACK_SEC_ROW'
,p_display_order=>2250
,p_column_identifier=>'HM'
,p_column_label=>'Stk Primary Stack Sec Row'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234453159211690208)
,p_db_column_name=>'STK_PRIMARY_STACK_PRI_ROW'
,p_display_order=>2260
,p_column_identifier=>'HN'
,p_column_label=>'Stk Primary Stack Pri Row'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234453258307690209)
,p_db_column_name=>'STK_TERTIARY_ROW'
,p_display_order=>2270
,p_column_identifier=>'HO'
,p_column_label=>'Stk Tertiary Row'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234453378372690210)
,p_db_column_name=>'STK_SECONDARY_ROW'
,p_display_order=>2280
,p_column_identifier=>'HP'
,p_column_label=>'Stk Secondary Row'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234453485389690211)
,p_db_column_name=>'STK_PRIMARY_ROW'
,p_display_order=>2290
,p_column_identifier=>'HQ'
,p_column_label=>'Stk Primary Row'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234453581455690212)
,p_db_column_name=>'STK_MAX_FACT_STOWAGE_HEIGHT'
,p_display_order=>2300
,p_column_identifier=>'HR'
,p_column_label=>'Stk Max Fact Stowage Height'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234453638850690213)
,p_db_column_name=>'STK_MAX_FACT_STOWAGE'
,p_display_order=>2310
,p_column_identifier=>'HS'
,p_column_label=>'Stk Max Fact Stowage'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234453767751690214)
,p_db_column_name=>'STK_MAX_STOWAGE_HEIGHT'
,p_display_order=>2320
,p_column_identifier=>'HT'
,p_column_label=>'Stk Max Stowage Height'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234453846977690215)
,p_db_column_name=>'CANTIDAD_POR_PALLET'
,p_display_order=>2330
,p_column_identifier=>'HU'
,p_column_label=>'Cantidad Por Pallet'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234453985746690216)
,p_db_column_name=>'PKG_TERTIARY_DEPTH'
,p_display_order=>2340
,p_column_identifier=>'HV'
,p_column_label=>'Pkg Tertiary Depth'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234454051164690217)
,p_db_column_name=>'PKG_TERTIARY_HEIGHT'
,p_display_order=>2350
,p_column_identifier=>'HW'
,p_column_label=>'Pkg Tertiary Height'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234454109984690218)
,p_db_column_name=>'PKG_TERTIARY_WIDTH'
,p_display_order=>2360
,p_column_identifier=>'HX'
,p_column_label=>'Pkg Tertiary Width'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234454218684690219)
,p_db_column_name=>'PKG_TERTIARY_WEIGHT'
,p_display_order=>2370
,p_column_identifier=>'HY'
,p_column_label=>'Pkg Tertiary Weight'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234454303734690220)
,p_db_column_name=>'PKG_TERTIARY_QUANTITY'
,p_display_order=>2380
,p_column_identifier=>'HZ'
,p_column_label=>'Pkg Tertiary Quantity'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234454401156690221)
,p_db_column_name=>'PKG_SECONDARY_DEPTH'
,p_display_order=>2390
,p_column_identifier=>'IA'
,p_column_label=>'Pkg Secondary Depth'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234454519179690222)
,p_db_column_name=>'PKG_SECONDARY_HEIGHT'
,p_display_order=>2400
,p_column_identifier=>'IB'
,p_column_label=>'Pkg Secondary Height'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234454633284690223)
,p_db_column_name=>'PKG_SECONDARY_WIDTH'
,p_display_order=>2410
,p_column_identifier=>'IC'
,p_column_label=>'Pkg Secondary Width'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234454750682690224)
,p_db_column_name=>'PKG_SECONDARY_WEIGHT'
,p_display_order=>2420
,p_column_identifier=>'ID'
,p_column_label=>'Pkg Secondary Weight'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234454803009690225)
,p_db_column_name=>'PKG_SECONDARY_QUANTITY'
,p_display_order=>2430
,p_column_identifier=>'IE'
,p_column_label=>'Pkg Secondary Quantity'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234454962118690226)
,p_db_column_name=>'PKG_MAIN_PACKAGING'
,p_display_order=>2440
,p_column_identifier=>'IF'
,p_column_label=>'Pkg Main Packaging'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234455016195690227)
,p_db_column_name=>'PKG_PRIMARY_DEPTH'
,p_display_order=>2450
,p_column_identifier=>'IG'
,p_column_label=>'Pkg Primary Depth'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234455137491690228)
,p_db_column_name=>'PKG_PRIMARY_HEIGHT'
,p_display_order=>2460
,p_column_identifier=>'IH'
,p_column_label=>'Pkg Primary Height'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234455206695690229)
,p_db_column_name=>'PKG_PRIMARY_WIDTH'
,p_display_order=>2470
,p_column_identifier=>'II'
,p_column_label=>'Pkg Primary Width'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234455326963690230)
,p_db_column_name=>'PKG_PRIMARY_WEIGHT'
,p_display_order=>2480
,p_column_identifier=>'IJ'
,p_column_label=>'Pkg Primary Weight'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234455443795690231)
,p_db_column_name=>'PKG_PRIMARY_QUANTITY'
,p_display_order=>2490
,p_column_identifier=>'IK'
,p_column_label=>'Pkg Primary Quantity'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234455512255690232)
,p_db_column_name=>'CANTIDAD_MINIMA_LISTA_PRECIO'
,p_display_order=>2500
,p_column_identifier=>'IL'
,p_column_label=>'Cantidad Minima Lista Precio'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234455626773690233)
,p_db_column_name=>'NRO_REGISTRO_SANITARIO'
,p_display_order=>2510
,p_column_identifier=>'IM'
,p_column_label=>'Nro Registro Sanitario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234455766871690234)
,p_db_column_name=>'VENCIMIENTO_REGISTRO_SANITARIO'
,p_display_order=>2520
,p_column_identifier=>'IO'
,p_column_label=>'Vencimiento Registro Sanitario'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234455801072690235)
,p_db_column_name=>'OBSERVACION_ART'
,p_display_order=>2530
,p_column_identifier=>'IP'
,p_column_label=>'Observacion Art'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234455945145690236)
,p_db_column_name=>'TIPO_ALMACENAMIENTO_ADAIA'
,p_display_order=>2540
,p_column_identifier=>'IQ'
,p_column_label=>'Tipo Almacenamiento Adaia'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234456091196690237)
,p_db_column_name=>'PRECIO_MO_ANT_STA'
,p_display_order=>2550
,p_column_identifier=>'IR'
,p_column_label=>'Precio Mo Ant Sta'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(234456143405690238)
,p_db_column_name=>'FEC_ULT_NO_STOCK'
,p_display_order=>2560
,p_column_identifier=>'IT'
,p_column_label=>'Fec Ult No Stock'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(377838320497388213)
,p_db_column_name=>'IMPRIMIR_EAN'
,p_display_order=>2570
,p_column_identifier=>'IY'
,p_column_label=>'Imprimir EAN'
,p_column_link=>'javascript:$s(''P664_AUX_IMPRIMIR_EAN'', ''#ROWID#'');'
,p_column_linktext=>'<span class="fa fa-print" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(234533568066736014)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2345336'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'COD_ARTICULO:DESCRIPCION:CANT_PEDIDO:CANT_X_PAQUETE:COMENTARIO:IMPRIMIR:IMP_COD_CORTO:IMPRIMIR_EAN:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(233031658173964033)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(233030836938964025)
,p_button_name=>'BT_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(233031770542964034)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(233030836938964025)
,p_button_name=>'BT_LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(234731849917433006)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(233031882132964035)
,p_button_name=>'BT_IMPRIMIR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(234731996179433007)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(233031882132964035)
,p_button_name=>'BT_IMPRIMIR_COD_CORTO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir Cod.Corto'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(233030926155964026)
,p_name=>'P664_COD_RUBRO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(233030836938964025)
,p_prompt=>'Rubro'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_RUBRO_STBARRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion,cod_rubro ',
'from st_rubro ',
'where cod_empresa = :P_COD_EMPRESA ',
'order by descripcion'))
,p_lov_display_null=>'YES'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(233031002701964027)
,p_name=>'P664_COD_LINEA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(233030836938964025)
,p_prompt=>unistr('L\00EDnea')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_LINEA_STBARRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion,cod_linea ',
'from st_linea ',
'where cod_empresa = :P_COD_EMPRESA',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(233031173160964028)
,p_name=>'P664_COD_PROVEEDOR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(233030836938964025)
,p_prompt=>'Proveedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PROVEEDOR_STBARRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim(pe.nombre) nombre, pr.cod_proveedor ',
'from personas pe, cm_proveedores pr ',
'where pr.cod_empresa = :P_COD_EMPRESA',
'and pr.cod_persona = pe.cod_persona ',
'order by nombre'))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(233031226962964029)
,p_name=>'P664_COD_MARCA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(233030836938964025)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MARCAS_STBARRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion,cod_marca ',
'from st_marcas ',
'--WHERE COD_EMPRESA = :P_COD_EMPRESA',
'order by descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(233031353178964030)
,p_name=>'P664_COD_FAMILIA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(233030836938964025)
,p_prompt=>'Familia'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_FAMILIA_STBARRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion,cod_familia ',
'from st_familia',
'WHERE COD_EMPRESA = :P_COD_EMPRESA ',
'order by descripcion'))
,p_lov_display_null=>'YES'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(233031411048964031)
,p_name=>'P664_COD_ART_CORTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(233030836938964025)
,p_prompt=>unistr('C\00F3digo Art\00EDculo Corto')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVARTICULO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_art_corto D, cod_art_corto R,r.cod_articulo, r.descripcion',
'FROM st_articulos r',
'WHERE cod_empresa = :p_cod_empresa ',
'AND COD_RUBRO = ''PR''',
'ORDER BY descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(233031588241964032)
,p_name=>'P664_COD_EAN'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(233030836938964025)
,p_prompt=>unistr('C\00F3digo EAN')
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
 p_id=>wwv_flow_imp.id(234456391443690240)
,p_name=>'P664_COD_ARTICULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(233030836938964025)
,p_prompt=>unistr('C\00F3digo Art\00EDculo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS_STBARRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_articulo ',
'from st_articulos ',
'where cod_empresa = :P_COD_EMPRESA',
'and nvl(estado,''A'') in (''A'',''S'') order by 1'))
,p_lov_display_null=>'YES'
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234456524473690242)
,p_name=>'P664_AUX'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(234456295376690239)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234456669855690243)
,p_name=>'P664_DESC_ARTICULO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(233030836938964025)
,p_prompt=>unistr('Descripci\00F3n Art\00EDculo')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234732504175433013)
,p_name=>'P664_URL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(234456295376690239)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234732681130433014)
,p_name=>'P664_URL_2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(234456295376690239)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234732944584433017)
,p_name=>'P664_CANTIDAD'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(233030836938964025)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234733035247433018)
,p_name=>'P664_CANT_X_PAQ'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(233030836938964025)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234733516072433023)
,p_name=>'P664_AUX_IMPRIMIR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(234456295376690239)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234733693105433024)
,p_name=>'P664_AUX_IMP_COD_CORTO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(234456295376690239)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234734442619433032)
,p_name=>'P664_AUX_COD_ARTICULO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(234456295376690239)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234734522596433033)
,p_name=>'P664_AUX_COD_CORTO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(234456295376690239)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234735286002433040)
,p_name=>'P664_AUX_DESCRIPCION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(234456295376690239)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(234735377022433041)
,p_name=>'P664_MSG'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(234456295376690239)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(379316830127250906)
,p_name=>'P664_AUX_IMPRIMIR_EAN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(234456295376690239)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(234456764943690244)
,p_name=>'DA_COD_ARTICULO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P664_COD_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(234456805147690245)
,p_event_id=>wwv_flow_imp.id(234456764943690244)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P664_COD_ARTICULO IS NOT NULL THEN',
'  BEGIN',
'    select descripcion',
'      into :P664_DESC_ARTICULO',
'      from st_articulos',
'     where cod_empresa = :P_COD_EMPRESA',
'       and cod_articulo = :P664_COD_ARTICULO;',
'  exception',
'    when no_data_found then',
'      :P664_DESC_ARTICULO := null;',
'    when others then',
'      :P664_DESC_ARTICULO := null;',
unistr('      APEX_DEBUG.ERROR(''Error en la tabla de Art\00EDculos ''||sqlerrm);'),
'  end; ',
'ELSE',
'  :P664_DESC_ARTICULO := NULL ;',
'END IF;'))
,p_attribute_02=>'P664_COD_ARTICULO'
,p_attribute_03=>'P664_DESC_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(234456955099690246)
,p_name=>'DA_ART_CORTO'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P664_COD_ART_CORTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(234457081196690247)
,p_event_id=>wwv_flow_imp.id(234456955099690246)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P664_COD_ARTICULO IS NOT NULL THEN--:P664_COD_ART_CORTO IS NOT NULL THEN',
'  BEGIN',
'    select descripcion, cod_articulo',
'      into :P664_DESC_ARTICULO,:P664_COD_ARTICULO',
'      from st_articulos',
'     where cod_empresa = :P_COD_EMPRESA',
'       and cod_art_corto = :P664_COD_ART_CORTO;',
'       --and cod_articulo = :P664_COD_ARTICULO;',
'  exception',
'    when no_data_found then',
'      :P664_DESC_ARTICULO := null;',
'      :P664_COD_ART_CORTO := null;',
'    when others then',
'    :P664_DESC_ARTICULO := null;',
'    :P664_COD_ART_CORTO := null;',
unistr('      APEX_DEBUG.ERROR(''Error en la tabla de Art\00EDculos ''||sqlerrm);'),
'  end; ',
'',
'END IF;'))
,p_attribute_02=>'P664_COD_ART_CORTO'
,p_attribute_03=>'P664_COD_ARTICULO,P664_DESC_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(234457209517690249)
,p_name=>'DA_BUSCAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(233031658173964033)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(234457311390690250)
,p_event_id=>wwv_flow_imp.id(234457209517690249)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P664_AUX := 1;',
'END;'))
,p_attribute_03=>'P664_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(234731369989433001)
,p_event_id=>wwv_flow_imp.id(234457209517690249)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(233031882132964035)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(234731407784433002)
,p_event_id=>wwv_flow_imp.id(234457209517690249)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(233031882132964035)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(234731504852433003)
,p_name=>'DA_LOAD'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(234731691883433004)
,p_event_id=>wwv_flow_imp.id(234731504852433003)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(233031882132964035)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(234732006811433008)
,p_name=>'DA_LIMPIAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(233031770542964034)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(234732132398433009)
,p_event_id=>wwv_flow_imp.id(234732006811433008)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFSeguro/a que desea limpiar los datos ingresados?')
,p_attribute_03=>'information'
,p_attribute_04=>'fa-eraser'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(234732276427433010)
,p_event_id=>wwv_flow_imp.id(234732006811433008)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P664_COD_ART_CORTO := NULL;',
':P664_COD_ARTICULO := null;',
':P664_DESC_ARTICULO := null;',
':P664_COD_RUBRO := null;',
':P664_COD_LINEA := null;',
':P664_COD_PROVEEDOR := null;',
':P664_COD_MARCA := null;',
':P664_COD_FAMILIA := null;',
':P664_COD_EAN := null;',
':P664_AUX := 0;'))
,p_attribute_03=>'P664_COD_ART_CORTO,P664_AUX,P664_COD_ARTICULO,P664_DESC_ARTICULO,P664_COD_RUBRO,P664_COD_LINEA,P664_COD_PROVEEDOR,P664_COD_MARCA,P664_COD_FAMILIA,P664_COD_EAN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(234732360485433011)
,p_event_id=>wwv_flow_imp.id(234732006811433008)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(233031882132964035)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(234732497347433012)
,p_event_id=>wwv_flow_imp.id(234732006811433008)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(233031882132964035)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(234732726931433015)
,p_name=>'DA_IMPRIMIR'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(234731849917433006)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(234732817430433016)
,p_event_id=>wwv_flow_imp.id(234732726931433015)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'imprimirArticulo (  apex.item(''P664_DESC_ARTICULO'').getValue(),',
'                    apex.item(''P664_COD_ARTICULO'').getValue(),',
'                    apex.item(''P664_CANT_X_PAQ'').getValue(),',
'                    apex.item(''P664_CANTIDAD'').getValue());'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(234733147527433019)
,p_name=>'DA_PAQUETE'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P664_CANT_X_PAQ'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(234733293239433020)
,p_event_id=>wwv_flow_imp.id(234733147527433019)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P664_CANTIDAD := 1 ;',
'begin',
'	select cant_x_paquete',
'	  into :P664_CANT_X_PAQ',
'	 from st_articulos',
'	 where cod_empresa = :P_COD_EMPRESA',
'	 and cod_articulo = :P664_COD_ARTICULO;',
'exception',
'	when others then ',
'	  :P664_CANT_X_PAQ:=null;',
'	end;'))
,p_attribute_02=>'P664_CANTIDAD'
,p_attribute_03=>'P664_CANT_X_PAQ,P664_COD_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(234733394255433021)
,p_name=>'DA_IMP_CORTO'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(234731996179433007)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(234733470182433022)
,p_event_id=>wwv_flow_imp.id(234733394255433021)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'imprimirArticulo (  apex.item(''P664_DESC_ARTICULO'').getValue(),',
'                    apex.item(''P664_COD_ART_CORTO'').getValue(),',
'                    apex.item(''P664_CANT_X_PAQ'').getValue(),',
'                    apex.item(''P664_CANTIDAD'').getValue());'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(234734165289433029)
,p_name=>'DA_IMPRIMIR_AUX'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P664_AUX_IMPRIMIR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(234734323664433031)
,p_event_id=>wwv_flow_imp.id(234734165289433029)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT ',
'           COD_ARTICULO,',
'           DESCRIPCION ',
'           ',
'   INTO   :P664_AUX_COD_ARTICULO,',
'          :P664_AUX_DESCRIPCION',
'   FROM   ST_ARTICULOS',
'   WHERE    ROWID = :P664_AUX_IMPRIMIR;',
'',
'   EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_IMPRIMIR - 01.'' || SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P664_AUX_IMPRIMIR'
,p_attribute_03=>'P664_AUX_COD_ARTICULO,P664_AUX_DESCRIPCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(234734227939433030)
,p_event_id=>wwv_flow_imp.id(234734165289433029)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'imprimirArticulo (  apex.item(''P664_AUX_DESCRIPCION'').getValue(),',
'                    apex.item(''P664_AUX_COD_ARTICULO'').getValue(),',
'                    apex.item(''P664_CANT_X_PAQ'').getValue(),',
'                    apex.item(''P664_CANTIDAD'').getValue());'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(234734968833433037)
,p_name=>'DA_IMP_COD_CORTO'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P664_AUX_IMP_COD_CORTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(234735069025433038)
,p_event_id=>wwv_flow_imp.id(234734968833433037)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    ',
'        SELECT ',
'            COD_ART_CORTO,',
'            DESCRIPCION',
'        INTO',
'            :P664_AUX_COD_CORTO,',
'            :P664_AUX_DESCRIPCION',
'        FROM',
'            ST_ARTICULOS',
'        WHERE',
'            ROWID = :P664_AUX_IMP_COD_CORTO;',
'',
'    IF :P664_AUX_COD_CORTO IS NOT NULL THEN',
'        :P664_MSG := null;',
'    ELSE',
unistr('       :P664_MSG := ''No existe c\00F3digo corto en este art\00EDculo'';'),
'    END IF; ',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            APEX_DEBUG.ERROR(''Error en DA_IMP_COD_CORTO - 01.'' || SQLERRM);',
'END;',
''))
,p_attribute_02=>'P664_AUX_IMP_COD_CORTO'
,p_attribute_03=>'P664_AUX_COD_CORTO,P664_AUX_DESCRIPCION,P664_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(234735657397433044)
,p_event_id=>wwv_flow_imp.id(234734968833433037)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P664_MSG := null;',
'        SELECT ',
'            COD_ART_CORTO',
'        INTO',
'            :P664_AUX_COD_CORTO',
'        FROM',
'            ST_ARTICULOS',
'        WHERE',
'            ROWID = :P664_AUX_IMP_COD_CORTO;',
'',
'    EXCEPTION',
'        WHEN no_data_found THEN',
unistr('            :P664_MSG := ''No existe codigo corto para este art\00EDculo'';'),
'',
'        WHEN :P664_AUX_COD_CORTO is not null THEN ',
'            :P664_AUX_COD_CORTO := NULL;',
'END;',
''))
,p_attribute_02=>'P664_AUX_IMP_COD_CORTO'
,p_attribute_03=>'P664_AUX_COD_CORTO,P664_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(234735139092433039)
,p_event_id=>wwv_flow_imp.id(234734968833433037)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'imprimirArticulo (  apex.item(''P664_AUX_DESCRIPCION'').getValue(),',
'                    apex.item(''P664_AUX_COD_CORTO'').getValue(),',
'                    apex.item(''P664_CANT_X_PAQ'').getValue(),',
'                    apex.item(''P664_CANTIDAD'').getValue());'))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P664_AUX_COD_CORTO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(234735445048433042)
,p_name=>'DA_MSG'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P664_MSG'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(234735594979433043)
,p_event_id=>wwv_flow_imp.id(234735445048433042)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P664_MSG.'
,p_attribute_03=>'information'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P664_MSG'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(379316935338250907)
,p_name=>'DA_IMPRIMIR_EAN_AUX'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P664_AUX_IMPRIMIR_EAN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(379317155480250909)
,p_event_id=>wwv_flow_imp.id(379316935338250907)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT COD_ARTICULO,',
'           DESCRIPCION ',
'                      ',
'   INTO   :P664_AUX_COD_ARTICULO,',
'          :P664_AUX_DESCRIPCION',
'   FROM   ST_ARTICULOS',
'   WHERE  ROWID = :P664_AUX_IMPRIMIR_EAN;',
'',
'   EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR (''Error en DA_IMPRIMIR_EAN_AUX - 01.'' || SQLERRM);',
'',
'END;'))
,p_attribute_02=>'P664_AUX_IMPRIMIR_EAN'
,p_attribute_03=>'P664_AUX_COD_ARTICULO,P664_AUX_DESCRIPCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(379317233325250910)
,p_event_id=>wwv_flow_imp.id(379316935338250907)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'imprimirEan (  apex.item(''P664_AUX_DESCRIPCION'').getValue(),',
'               apex.item(''P664_AUX_COD_ARTICULO'').getValue(),',
'               apex.item(''P664_CANT_X_PAQ'').getValue(),',
'               apex.item(''P664_CANTIDAD'').getValue());'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(234457187740690248)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_INIT'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp.component_end;
end;
/
