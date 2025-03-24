prompt --application/pages/page_00781
begin
--   Manifest
--     PAGE: 00781
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
 p_id=>781
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Reporte estandarizado - STARTRES'
,p_alias=>'REPORTE-ESTANDARIZADO-STARTRES'
,p_step_title=>'Reporte estandarizado - STARTRES'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'EMILIANOP'
,p_last_upd_yyyymmddhh24miss=>'20240909115549'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(392629414821835719)
,p_plug_name=>'Main'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(392629588362835720)
,p_plug_name=>unistr('Filtros de B\00FAsqueda')
,p_parent_plug_id=>wwv_flow_imp.id(392629414821835719)
,p_region_template_options=>'#DEFAULT#:margin-bottom-lg'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_column=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(392629672315835721)
,p_plug_name=>'Reporte'
,p_parent_plug_id=>wwv_flow_imp.id(392629414821835719)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NULL SELECCIONAR,',
'       ROWID ROW_ID,',
'       COD_ARTICULO,',
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
'       FEC_ULT_NO_STOCK',
'  from ST_ARTICULOS',
' where COD_EMPRESA = :P_COD_EMPRESA',
' AND   (COD_ARTICULO = :P781_COD_ARTICULO_FILTRO OR :P781_COD_ARTICULO_FILTRO IS NULL);'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P781_COD_ARTICULO_FILTRO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reporte'
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
 p_id=>wwv_flow_imp.id(392629790606835722)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'EMILIANOP'
,p_internal_uid=>392629790606835722
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392629811217835723)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('C\00F3digo')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392629982067835724)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392630035811835725)
,p_db_column_name=>'COD_GRUPO_ART'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Grupo Art'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392630190526835726)
,p_db_column_name=>'COD_PAIS_ORIGEN'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Pais Origen'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392630223860835727)
,p_db_column_name=>'COD_MARCA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cod Marca'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392630366670835728)
,p_db_column_name=>'COD_RUBRO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Rubro'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392630452731835729)
,p_db_column_name=>'COD_FAMILIA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cod Familia'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392630590503835730)
,p_db_column_name=>'COD_LINEA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cod Linea'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392630602498835731)
,p_db_column_name=>'COD_ENVASE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Envase'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392630744544835732)
,p_db_column_name=>'COD_IVA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Iva'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392630824727835733)
,p_db_column_name=>'IND_MANEJA_STOCK'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>unistr('\00BFManeja Stock?')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392630932868835734)
,p_db_column_name=>'COD_UNIDAD_MEDIDA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Cod Unidad Medida'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392631047046835735)
,p_db_column_name=>'COSTO_PROM'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Costo Prom'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392631178139835736)
,p_db_column_name=>'COSTO_ULTIMO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Costo Ultimo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392631288200835737)
,p_db_column_name=>'COSTO_FOB'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Costo Fob'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392631327191835738)
,p_db_column_name=>'COD_MONEDA_COSTO'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Cod Moneda Costo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392631420513835739)
,p_db_column_name=>'FEC_ULTIMA_COMP'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Fec Ultima Comp'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392631505961835740)
,p_db_column_name=>'CANT_X_PAQUETE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Cant X Paquete'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392631688215835741)
,p_db_column_name=>'COD_PROVEEDOR_DFLT'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cod Proveedor Dflt'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392631728760835742)
,p_db_column_name=>'CANT_PEDIDO'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Cant Pedido'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392631850731835743)
,p_db_column_name=>'COD_ORIGEN_ART'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Cod Origen Art'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392631955175835744)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392632042364835745)
,p_db_column_name=>'ESTADO'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392632131450835746)
,p_db_column_name=>'PRECIO_BASE'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Precio Base'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392632292362835747)
,p_db_column_name=>'COD_MONEDA_BASE'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Cod Moneda Base'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392632329296835748)
,p_db_column_name=>'COD_BARRA_ART'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Cod Barra Art'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392632471954835749)
,p_db_column_name=>'IND_MODIFICA_PRECIO'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Ind Modifica Precio'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392632598993835750)
,p_db_column_name=>'PORC_DESCUENTO'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Porc Descuento'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392748757541863501)
,p_db_column_name=>'COD_GRUPO_COMISION'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Cod Grupo Comision'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392748811771863502)
,p_db_column_name=>'COSTO_PROM_ANTERIOR'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Costo Prom Anterior'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392748933920863503)
,p_db_column_name=>'COSTO_PROM_REF'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Costo Prom Ref'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392749083811863504)
,p_db_column_name=>'COSTO_FOB_REF'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Costo Fob Ref'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392749117560863505)
,p_db_column_name=>'COSTO_IMP_REF'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Costo Imp Ref'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392749218086863506)
,p_db_column_name=>'COD_ARANCEL'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Cod Arancel'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392749337396863507)
,p_db_column_name=>'IMP_COD_ORIGEN'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Imp Cod Origen'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392749492633863508)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392749594468863509)
,p_db_column_name=>'COD_GRUPO'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Cod Grupo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392749649020863510)
,p_db_column_name=>'COD_COLOR'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Cod Color'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392749702797863511)
,p_db_column_name=>'USADO'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Usado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392749899271863512)
,p_db_column_name=>'PORCEN_OBSOL'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Porcen Obsol'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392749974116863513)
,p_db_column_name=>'PESO_ARTICULO'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Peso Articulo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392750026035863514)
,p_db_column_name=>'PRECIO_BASE_ME'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Precio Base Me'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392750162813863515)
,p_db_column_name=>'COD_MONEDA_BASE_EXT'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Cod Moneda Base Ext'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392750219975863516)
,p_db_column_name=>'COSTO_PROM_EXT'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Costo Prom Ext'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392750385179863517)
,p_db_column_name=>'COD_MONEDA_COSTO_EXT'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Cod Moneda Costo Ext'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392750423173863518)
,p_db_column_name=>'COD_RELACION_UM'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Cod Relacion Um'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392750555426863519)
,p_db_column_name=>'ALTO_CM'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Alto Cm'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392750641760863520)
,p_db_column_name=>'LARGO_CM'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Largo Cm'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392750743624863521)
,p_db_column_name=>'ANCHO_CM'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Ancho Cm'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392750834155863522)
,p_db_column_name=>'PESO_GR'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Peso Gr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392750978495863523)
,p_db_column_name=>'MANEJA_COSTO'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Maneja Costo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392751019549863524)
,p_db_column_name=>'COSTO_PROM_REPUESTO'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Costo Prom Repuesto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392751122715863525)
,p_db_column_name=>'COSTO_PROM_ANTER_REP'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Costo Prom Anter Rep'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392751237124863526)
,p_db_column_name=>'IND_MANEJA_LOTES'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Ind Maneja Lotes'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392751302499863527)
,p_db_column_name=>'ES_MOTO'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'Es Moto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392751485076863528)
,p_db_column_name=>'COD_GRUPO_DESC'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'Cod Grupo Desc'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392751592064863529)
,p_db_column_name=>'COSTO_PROM_US'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'Costo Prom Us'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392751611000863530)
,p_db_column_name=>'COSTO_ULTIMO_US'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'Costo Ultimo Us'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392751754001863531)
,p_db_column_name=>'TIP_CAMBIO'
,p_display_order=>590
,p_column_identifier=>'BG'
,p_column_label=>'Tip Cambio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392751842497863532)
,p_db_column_name=>'COD_ALTERNO'
,p_display_order=>600
,p_column_identifier=>'BH'
,p_column_label=>'Cod Alterno'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392751972914863533)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>610
,p_column_identifier=>'BI'
,p_column_label=>'Cod Art Corto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392752044102863534)
,p_db_column_name=>'ESTIBA_MAX'
,p_display_order=>620
,p_column_identifier=>'BJ'
,p_column_label=>'Estiba Max'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392752162604863535)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>630
,p_column_identifier=>'BK'
,p_column_label=>'Fec Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392752233434863536)
,p_db_column_name=>'VOLUMENSINO'
,p_display_order=>640
,p_column_identifier=>'BL'
,p_column_label=>'Volumensino'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392752303576863537)
,p_db_column_name=>'PRECIO_BASE_FUT'
,p_display_order=>650
,p_column_identifier=>'BM'
,p_column_label=>'Precio Base Fut'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392752422516863538)
,p_db_column_name=>'RUTA_FOTO_1'
,p_display_order=>660
,p_column_identifier=>'BN'
,p_column_label=>'Ruta Foto 1'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392752597862863539)
,p_db_column_name=>'RUTA_FOTO_2'
,p_display_order=>670
,p_column_identifier=>'BO'
,p_column_label=>'Ruta Foto 2'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392752655434863540)
,p_db_column_name=>'RUTA_FOTO_3'
,p_display_order=>680
,p_column_identifier=>'BP'
,p_column_label=>'Ruta Foto 3'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392752753597863541)
,p_db_column_name=>'RUTA_FOTO_4'
,p_display_order=>690
,p_column_identifier=>'BQ'
,p_column_label=>'Ruta Foto 4'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392752860571863542)
,p_db_column_name=>'RUTA_FOTO_5'
,p_display_order=>700
,p_column_identifier=>'BR'
,p_column_label=>'Ruta Foto 5'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392752996302863543)
,p_db_column_name=>'CARACTERISTICAS'
,p_display_order=>710
,p_column_identifier=>'BS'
,p_column_label=>'Caracteristicas'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392753022534863544)
,p_db_column_name=>'SERIE'
,p_display_order=>720
,p_column_identifier=>'BT'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392753154466863545)
,p_db_column_name=>'GARANTIA'
,p_display_order=>730
,p_column_identifier=>'BU'
,p_column_label=>'Garantia'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392753209534863546)
,p_db_column_name=>'SERIE_GARANTIA'
,p_display_order=>740
,p_column_identifier=>'BV'
,p_column_label=>'Serie Garantia'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392753387269863547)
,p_db_column_name=>'DURACION_GARANTIA'
,p_display_order=>750
,p_column_identifier=>'BW'
,p_column_label=>'Duracion Garantia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(392753410772863548)
,p_db_column_name=>'IND_REQUIERE_SIM'
,p_display_order=>760
,p_column_identifier=>'BX'
,p_column_label=>'Ind Requiere Sim'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392753542884863549)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>770
,p_column_identifier=>'BY'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392753679107863550)
,p_db_column_name=>'FEC_INICIO_PB'
,p_display_order=>780
,p_column_identifier=>'BZ'
,p_column_label=>'Fec Inicio Pb'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392753734417863501)
,p_db_column_name=>'COD_MONEDA_BASE_FUT'
,p_display_order=>790
,p_column_identifier=>'CA'
,p_column_label=>'Cod Moneda Base Fut'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392753828712863502)
,p_db_column_name=>'PORC_DESCMAX'
,p_display_order=>800
,p_column_identifier=>'CB'
,p_column_label=>'Porc Descmax'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392753963647863503)
,p_db_column_name=>'STOCK_MIN'
,p_display_order=>810
,p_column_identifier=>'CC'
,p_column_label=>'Stock Min'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392754062909863504)
,p_db_column_name=>'SKU'
,p_display_order=>820
,p_column_identifier=>'CD'
,p_column_label=>'Sku'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392754112749863505)
,p_db_column_name=>'SKU_ORIGEN'
,p_display_order=>830
,p_column_identifier=>'CE'
,p_column_label=>'Sku Origen'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392754224967863506)
,p_db_column_name=>'COD_USUARIO_MOD'
,p_display_order=>840
,p_column_identifier=>'CF'
,p_column_label=>'Cod Usuario Mod'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392754327892863507)
,p_db_column_name=>'FEC_MOD'
,p_display_order=>850
,p_column_identifier=>'CG'
,p_column_label=>'Fec Mod'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392754413750863508)
,p_db_column_name=>'COD_EAN'
,p_display_order=>860
,p_column_identifier=>'CH'
,p_column_label=>'Cod Ean'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392754525601863509)
,p_db_column_name=>'COD_CATEGORIA'
,p_display_order=>870
,p_column_identifier=>'CI'
,p_column_label=>'Cod Categoria'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392754622367863510)
,p_db_column_name=>'ART_DESC_PROVEEDOR'
,p_display_order=>880
,p_column_identifier=>'CJ'
,p_column_label=>'Art Desc Proveedor'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392754717353863511)
,p_db_column_name=>'COD_DIVISION'
,p_display_order=>890
,p_column_identifier=>'CK'
,p_column_label=>'Cod Division'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392754899906863512)
,p_db_column_name=>'TRADUCCION_MO'
,p_display_order=>900
,p_column_identifier=>'CL'
,p_column_label=>'Traduccion Mo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392754942945863513)
,p_db_column_name=>'EN_OFERTA_WEB'
,p_display_order=>910
,p_column_identifier=>'CM'
,p_column_label=>'En Oferta Web'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392755045473863514)
,p_db_column_name=>'CAP_20GP'
,p_display_order=>920
,p_column_identifier=>'CN'
,p_column_label=>'Cap 20gp'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392755192611863515)
,p_db_column_name=>'CAP_40GP'
,p_display_order=>930
,p_column_identifier=>'CO'
,p_column_label=>'Cap 40gp'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392755242683863516)
,p_db_column_name=>'CAP_40HQ'
,p_display_order=>940
,p_column_identifier=>'CP'
,p_column_label=>'Cap 40hq'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392755344756863517)
,p_db_column_name=>'CAMION'
,p_display_order=>950
,p_column_identifier=>'CQ'
,p_column_label=>'Camion'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392755418700863518)
,p_db_column_name=>'FURGON'
,p_display_order=>960
,p_column_identifier=>'CR'
,p_column_label=>'Furgon'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392755574506863519)
,p_db_column_name=>'EMBARQUE_CONS'
,p_display_order=>970
,p_column_identifier=>'CS'
,p_column_label=>'Embarque Cons'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392755606704863520)
,p_db_column_name=>'IND_NETO'
,p_display_order=>980
,p_column_identifier=>'CT'
,p_column_label=>'Ind Neto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392755768127863521)
,p_db_column_name=>'IND_FUERA_LINEA'
,p_display_order=>990
,p_column_identifier=>'CU'
,p_column_label=>'Ind Fuera Linea'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392755806550863522)
,p_db_column_name=>'ID_NRO'
,p_display_order=>1000
,p_column_identifier=>'CV'
,p_column_label=>'Id Nro'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392755958984863523)
,p_db_column_name=>'ID_PROC'
,p_display_order=>1010
,p_column_identifier=>'CW'
,p_column_label=>'Id Proc'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392756084814863524)
,p_db_column_name=>'EXP_VIEW'
,p_display_order=>1020
,p_column_identifier=>'CX'
,p_column_label=>'Exp View'
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
,p_column_alignment=>'CENTER'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392756170676863525)
,p_db_column_name=>'SPARE'
,p_display_order=>1030
,p_column_identifier=>'CY'
,p_column_label=>'Spare'
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
,p_column_alignment=>'CENTER'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392756279840863526)
,p_db_column_name=>'PRODUCTO'
,p_display_order=>1040
,p_column_identifier=>'CZ'
,p_column_label=>'Producto'
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
,p_column_alignment=>'CENTER'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392756347427863527)
,p_db_column_name=>'DESCRIPCION_ING'
,p_display_order=>1050
,p_column_identifier=>'DA'
,p_column_label=>'Descripcion Ing'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392756405921863528)
,p_db_column_name=>'IND_EXP_VIEW'
,p_display_order=>1060
,p_column_identifier=>'DB'
,p_column_label=>'Ind Exp View'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392756535211863529)
,p_db_column_name=>'IND_NO_DESCUENTO'
,p_display_order=>1070
,p_column_identifier=>'DC'
,p_column_label=>'Ind No Descuento'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392756690764863530)
,p_db_column_name=>'PATH_SPARE'
,p_display_order=>1080
,p_column_identifier=>'DD'
,p_column_label=>'Path Spare'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392756786993863531)
,p_db_column_name=>'PATH_EXP'
,p_display_order=>1090
,p_column_identifier=>'DE'
,p_column_label=>'Path Exp'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392756888960863532)
,p_db_column_name=>'IND_LISTADO_PART'
,p_display_order=>1100
,p_column_identifier=>'DF'
,p_column_label=>'Ind Listado Part'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392756983514863533)
,p_db_column_name=>'CANT_NG'
,p_display_order=>1110
,p_column_identifier=>'DG'
,p_column_label=>'Cant Ng'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392757008516863534)
,p_db_column_name=>'PATH_MANUAL_USU'
,p_display_order=>1120
,p_column_identifier=>'DH'
,p_column_label=>'Path Manual Usu'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392757112225863535)
,p_db_column_name=>'IND_REQUIERE_DEVOLUCION'
,p_display_order=>1130
,p_column_identifier=>'DI'
,p_column_label=>'Ind Requiere Devolucion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392757238350863536)
,p_db_column_name=>'IND_PUESTA_MARCHA'
,p_display_order=>1140
,p_column_identifier=>'DJ'
,p_column_label=>'Ind Puesta Marcha'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392757334355863537)
,p_db_column_name=>'IND_VISITA'
,p_display_order=>1150
,p_column_identifier=>'DK'
,p_column_label=>'Ind Visita'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392757440466863538)
,p_db_column_name=>'COD_ENCARGADO'
,p_display_order=>1160
,p_column_identifier=>'DL'
,p_column_label=>'Cod Encargado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392757579955863539)
,p_db_column_name=>'CLASIFICACION'
,p_display_order=>1170
,p_column_identifier=>'DM'
,p_column_label=>'Clasificacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392757635582863540)
,p_db_column_name=>'VOLUMEN_M3'
,p_display_order=>1180
,p_column_identifier=>'DN'
,p_column_label=>'Volumen M3'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392757714480863541)
,p_db_column_name=>'PATH_IMG_PRO'
,p_display_order=>1190
,p_column_identifier=>'DO'
,p_column_label=>'Path Img Pro'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392757866247863542)
,p_db_column_name=>'COD_MADRE'
,p_display_order=>1200
,p_column_identifier=>'DP'
,p_column_label=>'Cod Madre'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392757969539863543)
,p_db_column_name=>'COD_FAMILIA_WEB'
,p_display_order=>1210
,p_column_identifier=>'DQ'
,p_column_label=>'Cod Familia Web'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392758028987863544)
,p_db_column_name=>'DESCRIPCION_WEB'
,p_display_order=>1220
,p_column_identifier=>'DR'
,p_column_label=>'Descripcion Web'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392758142905863545)
,p_db_column_name=>'COD_LINEA_ST'
,p_display_order=>1230
,p_column_identifier=>'DS'
,p_column_label=>'Cod Linea St'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392758211594863546)
,p_db_column_name=>'IND_MUESTRA_WEB'
,p_display_order=>1240
,p_column_identifier=>'DT'
,p_column_label=>'Ind Muestra Web'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392758394800863547)
,p_db_column_name=>'AUTOAPILABLE'
,p_display_order=>1250
,p_column_identifier=>'DU'
,p_column_label=>'Autoapilable'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392758476777863548)
,p_db_column_name=>'CANT_X_PALLET'
,p_display_order=>1260
,p_column_identifier=>'DV'
,p_column_label=>'Cant X Pallet'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392758547608863549)
,p_db_column_name=>'COD_PACK'
,p_display_order=>1270
,p_column_identifier=>'DW'
,p_column_label=>'Cod Pack'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392758645277863550)
,p_db_column_name=>'IND_NO_CUBRE_GARANTIA'
,p_display_order=>1280
,p_column_identifier=>'DX'
,p_column_label=>'Ind No Cubre Garantia'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392758763566863501)
,p_db_column_name=>'FEC_VENCIMIENTO'
,p_display_order=>1290
,p_column_identifier=>'DY'
,p_column_label=>'Fec Vencimiento'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392758842140863502)
,p_db_column_name=>'IND_DISCONTINUADO'
,p_display_order=>1300
,p_column_identifier=>'DZ'
,p_column_label=>'Ind Discontinuado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392758960728863503)
,p_db_column_name=>'CANTIDAD_MINIMA_COMPRA'
,p_display_order=>1310
,p_column_identifier=>'EA'
,p_column_label=>'Cantidad Minima Compra'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392759052454863504)
,p_db_column_name=>'PLAZO_ENTREGA'
,p_display_order=>1320
,p_column_identifier=>'EB'
,p_column_label=>'Plazo Entrega'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392759168909863505)
,p_db_column_name=>'COSTO_PROFORMA_GS'
,p_display_order=>1330
,p_column_identifier=>'EC'
,p_column_label=>'Costo Proforma Gs'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392759229624863506)
,p_db_column_name=>'COTIZACION_CP'
,p_display_order=>1340
,p_column_identifier=>'ED'
,p_column_label=>'Cotizacion Cp'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392759342654863507)
,p_db_column_name=>'COD_CATEGORIA_ANT'
,p_display_order=>1350
,p_column_identifier=>'EE'
,p_column_label=>'Cod Categoria Ant'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392759451687863508)
,p_db_column_name=>'COD_LINEA_ANT'
,p_display_order=>1360
,p_column_identifier=>'EF'
,p_column_label=>'Cod Linea Ant'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392759554820863509)
,p_db_column_name=>'COD_PUERTO'
,p_display_order=>1370
,p_column_identifier=>'EG'
,p_column_label=>'Cod Puerto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392759638689863510)
,p_db_column_name=>'ORIGEN_PUERTO'
,p_display_order=>1380
,p_column_identifier=>'EH'
,p_column_label=>'Origen Puerto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392759773469863511)
,p_db_column_name=>'TIPO_MO'
,p_display_order=>1390
,p_column_identifier=>'EI'
,p_column_label=>'Tipo Mo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392759886286863512)
,p_db_column_name=>'IND_CICLO_VIDA'
,p_display_order=>1400
,p_column_identifier=>'EJ'
,p_column_label=>'Ind Ciclo Vida'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392759906317863513)
,p_db_column_name=>'PRECIO_BASE_GARANTIA'
,p_display_order=>1410
,p_column_identifier=>'EK'
,p_column_label=>'Precio Base Garantia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392760075975863514)
,p_db_column_name=>'COD_ESPECIE'
,p_display_order=>1420
,p_column_identifier=>'EL'
,p_column_label=>'Cod Especie'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392760101582863515)
,p_db_column_name=>'COSTO_FOB_OC'
,p_display_order=>1430
,p_column_identifier=>'EM'
,p_column_label=>'Costo Fob Oc'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392760263791863516)
,p_db_column_name=>'PRODUCTO_SE_DEBE_ARMAR'
,p_display_order=>1440
,p_column_identifier=>'EN'
,p_column_label=>'Producto Se Debe Armar'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392760399830863517)
,p_db_column_name=>'ALTURA_TOTAL_APILADO'
,p_display_order=>1450
,p_column_identifier=>'EO'
,p_column_label=>'Altura Total Apilado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392760443175863518)
,p_db_column_name=>'APILADO_MAXIMO'
,p_display_order=>1460
,p_column_identifier=>'EP'
,p_column_label=>'Apilado Maximo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392760542270863519)
,p_db_column_name=>'CLAMP_DANA_PRODUCTO'
,p_display_order=>1470
,p_column_identifier=>'EQ'
,p_column_label=>'Clamp Dana Producto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392760676503863520)
,p_db_column_name=>'TIPO_ALMACENAMIENTO'
,p_display_order=>1480
,p_column_identifier=>'ER'
,p_column_label=>'Tipo Almacenamiento'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392760708467863521)
,p_db_column_name=>'TIPO_DE_CAJA'
,p_display_order=>1490
,p_column_identifier=>'ES'
,p_column_label=>'Tipo De Caja'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392760839284863522)
,p_db_column_name=>'UNIDADES_POR_ESTIBA_CAMADA'
,p_display_order=>1500
,p_column_identifier=>'ET'
,p_column_label=>'Unidades Por Estiba Camada'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392760927224863523)
,p_db_column_name=>'ESTIBAS_CAMADAS_POR_PALLET'
,p_display_order=>1510
,p_column_identifier=>'EU'
,p_column_label=>'Estibas Camadas Por Pallet'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392761053177863524)
,p_db_column_name=>'ULTIMA_CAMADA_ORIENTACION'
,p_display_order=>1520
,p_column_identifier=>'EV'
,p_column_label=>'Ultima Camada Orientacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392761106587863525)
,p_db_column_name=>'LARGO_PRODUCTO_COLECTIVO'
,p_display_order=>1530
,p_column_identifier=>'EW'
,p_column_label=>'Largo Producto Colectivo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392761239388863526)
,p_db_column_name=>'ANCHO_PRODUCTO_COLECTIVO'
,p_display_order=>1540
,p_column_identifier=>'EX'
,p_column_label=>'Ancho Producto Colectivo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392761393287863527)
,p_db_column_name=>'ALTO_PRODUCTO_COLECTIVO'
,p_display_order=>1550
,p_column_identifier=>'EY'
,p_column_label=>'Alto Producto Colectivo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392761499927863528)
,p_db_column_name=>'IND_MANTENIMIENTO'
,p_display_order=>1560
,p_column_identifier=>'EZ'
,p_column_label=>'Ind Mantenimiento'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392761575429863529)
,p_db_column_name=>'IND_LISTA_PRECIO'
,p_display_order=>1570
,p_column_identifier=>'FA'
,p_column_label=>'Ind Lista Precio'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392761613580863530)
,p_db_column_name=>'IND_SOLO_PROMO'
,p_display_order=>1580
,p_column_identifier=>'FB'
,p_column_label=>'Ind Solo Promo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392761739961863531)
,p_db_column_name=>'INFO_WEB'
,p_display_order=>1590
,p_column_identifier=>'FC'
,p_column_label=>'Info Web'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392761880300863532)
,p_db_column_name=>'NOMBRE_WEB'
,p_display_order=>1600
,p_column_identifier=>'FD'
,p_column_label=>'Nombre Web'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392761969865863533)
,p_db_column_name=>'DESCRIPCION_WEB2'
,p_display_order=>1610
,p_column_identifier=>'FE'
,p_column_label=>'Descripcion Web2'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392762097213863534)
,p_db_column_name=>'IND_PARTICULAR'
,p_display_order=>1620
,p_column_identifier=>'FF'
,p_column_label=>'Ind Particular'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392762141692863535)
,p_db_column_name=>'IMPORTE_COMISION_PARTICULAR'
,p_display_order=>1630
,p_column_identifier=>'FG'
,p_column_label=>'Importe Comision Particular'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392762259423863536)
,p_db_column_name=>'IMPORTE_COMISION_GARANTIA'
,p_display_order=>1640
,p_column_identifier=>'FH'
,p_column_label=>'Importe Comision Garantia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392762325027863537)
,p_db_column_name=>'IMPORTE_COMISION_JT_15'
,p_display_order=>1650
,p_column_identifier=>'FI'
,p_column_label=>'Importe Comision Jt 15'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392762416052863538)
,p_db_column_name=>'IMPORTE_COMISION_JT_7'
,p_display_order=>1660
,p_column_identifier=>'FJ'
,p_column_label=>'Importe Comision Jt 7'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392762595952863539)
,p_db_column_name=>'FECHA_ACTUALIZACION'
,p_display_order=>1670
,p_column_identifier=>'FK'
,p_column_label=>'Fecha Actualizacion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392762639580863540)
,p_db_column_name=>'IND_TECNICO_29'
,p_display_order=>1680
,p_column_identifier=>'FL'
,p_column_label=>'Ind Tecnico 29'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392762753083863541)
,p_db_column_name=>'ANCHO_PRODUCTO_CM'
,p_display_order=>1690
,p_column_identifier=>'FM'
,p_column_label=>'Ancho Producto Cm'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392762862419863542)
,p_db_column_name=>'ALTO_PRODUCTO_CM'
,p_display_order=>1700
,p_column_identifier=>'FN'
,p_column_label=>'Alto Producto Cm'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392762906001863543)
,p_db_column_name=>'LARGO_PRODUCTO_CM'
,p_display_order=>1710
,p_column_identifier=>'FO'
,p_column_label=>'Largo Producto Cm'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392763046808863544)
,p_db_column_name=>'PESO_PRODUCTO_GR'
,p_display_order=>1720
,p_column_identifier=>'FP'
,p_column_label=>'Peso Producto Gr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392763158217863545)
,p_db_column_name=>'IND_DEVOLUCION_REPUESTOS'
,p_display_order=>1730
,p_column_identifier=>'FQ'
,p_column_label=>'Ind Devolucion Repuestos'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392763278107863546)
,p_db_column_name=>'PORCENTAJE_SPP'
,p_display_order=>1740
,p_column_identifier=>'FR'
,p_column_label=>'Porcentaje Spp'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392763312901863547)
,p_db_column_name=>'IND_MIGRADO_OS'
,p_display_order=>1750
,p_column_identifier=>'FS'
,p_column_label=>'Ind Migrado Os'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392763408166863548)
,p_db_column_name=>'IND_MIGRADO_OS_MO'
,p_display_order=>1760
,p_column_identifier=>'FT'
,p_column_label=>'Ind Migrado Os Mo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392763516984863549)
,p_db_column_name=>'DIAS_ANALISIS'
,p_display_order=>1770
,p_column_identifier=>'FU'
,p_column_label=>'Dias Analisis'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392763667244863550)
,p_db_column_name=>'CLASIFICACION_REPUESTOS_ABC'
,p_display_order=>1780
,p_column_identifier=>'FV'
,p_column_label=>'Clasificacion Repuestos Abc'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392763719430863501)
,p_db_column_name=>'MOTIVO_NO_STOCK'
,p_display_order=>1790
,p_column_identifier=>'FW'
,p_column_label=>'Motivo No Stock'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392763811689863502)
,p_db_column_name=>'PATH_LISTA_ERR'
,p_display_order=>1800
,p_column_identifier=>'FX'
,p_column_label=>'Path Lista Err'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392763985155863503)
,p_db_column_name=>'FECHA_NO_STOCK'
,p_display_order=>1810
,p_column_identifier=>'FY'
,p_column_label=>'Fecha No Stock'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392764085080863504)
,p_db_column_name=>'CLASIFICACION_SLIM'
,p_display_order=>1820
,p_column_identifier=>'FZ'
,p_column_label=>'Clasificacion Slim'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(392764197358863505)
,p_db_column_name=>'PATH_IMG_PRO_1'
,p_display_order=>1830
,p_column_identifier=>'GA'
,p_column_label=>'Path Img Pro 1'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392764237057863506)
,p_db_column_name=>'PATH_IMG_PRO_2'
,p_display_order=>1840
,p_column_identifier=>'GB'
,p_column_label=>'Path Img Pro 2'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392764344448863507)
,p_db_column_name=>'IND_NO_FACTURAR'
,p_display_order=>1850
,p_column_identifier=>'GC'
,p_column_label=>'Ind No Facturar'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392764495220863508)
,p_db_column_name=>'APILABILIDAD'
,p_display_order=>1860
,p_column_identifier=>'GD'
,p_column_label=>'Apilabilidad'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392764591359863509)
,p_db_column_name=>'ALTO_ARMADO_CM'
,p_display_order=>1870
,p_column_identifier=>'GE'
,p_column_label=>'Alto Armado Cm'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392764687437863510)
,p_db_column_name=>'ANCHO_ARMADO_CM'
,p_display_order=>1880
,p_column_identifier=>'GF'
,p_column_label=>'Ancho Armado Cm'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392764756820863511)
,p_db_column_name=>'LARGO_ARMADO_CM'
,p_display_order=>1890
,p_column_identifier=>'GG'
,p_column_label=>'Largo Armado Cm'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392764851923863512)
,p_db_column_name=>'IND_ARMADO'
,p_display_order=>1900
,p_column_identifier=>'GH'
,p_column_label=>'Ind Armado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392764957619863513)
,p_db_column_name=>'IND_CONATEL'
,p_display_order=>1910
,p_column_identifier=>'GI'
,p_column_label=>'Ind Conatel'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392765023397863514)
,p_db_column_name=>'IND_HOMOLOGACION'
,p_display_order=>1920
,p_column_identifier=>'GJ'
,p_column_label=>'Ind Homologacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392765155262863515)
,p_db_column_name=>'REGISTRO_CONATEL'
,p_display_order=>1930
,p_column_identifier=>'GK'
,p_column_label=>'Registro Conatel'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392765248237863516)
,p_db_column_name=>'FECHA_PRIMER_INGRESO'
,p_display_order=>1940
,p_column_identifier=>'GL'
,p_column_label=>'Fecha Primer Ingreso'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392765375650863517)
,p_db_column_name=>'ANCHO_CLAMP'
,p_display_order=>1950
,p_column_identifier=>'GM'
,p_column_label=>'Ancho Clamp'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392765412591863518)
,p_db_column_name=>'LARGO_CLAMP'
,p_display_order=>1960
,p_column_identifier=>'GN'
,p_column_label=>'Largo Clamp'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392765594423863519)
,p_db_column_name=>'ALTO_CLAMP'
,p_display_order=>1970
,p_column_identifier=>'GO'
,p_column_label=>'Alto Clamp'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392765697292863520)
,p_db_column_name=>'COD_ARTICULO_QM'
,p_display_order=>1980
,p_column_identifier=>'GP'
,p_column_label=>'Cod Articulo Qm'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392765709316863521)
,p_db_column_name=>'CANTIDAD_MINIMA_WEB'
,p_display_order=>1990
,p_column_identifier=>'GQ'
,p_column_label=>'Cantidad Minima Web'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392765867367863522)
,p_db_column_name=>'XTR_ASSEMBLED_DEPTH'
,p_display_order=>2000
,p_column_identifier=>'GR'
,p_column_label=>'Xtr Assembled Depth'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392765903943863523)
,p_db_column_name=>'XTR_ASSEMBLED_HEIGHT'
,p_display_order=>2010
,p_column_identifier=>'GS'
,p_column_label=>'Xtr Assembled Height'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392766060036863524)
,p_db_column_name=>'XTR_ASSEMBLED_WIDTH'
,p_display_order=>2020
,p_column_identifier=>'GT'
,p_column_label=>'Xtr Assembled Width'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392766163548863525)
,p_db_column_name=>'XTR_ASSEMBLED_ASSEMBLABLE'
,p_display_order=>2030
,p_column_identifier=>'GU'
,p_column_label=>'Xtr Assembled Assemblable'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392766281028863526)
,p_db_column_name=>'XTR_INTERLOCKING_ROW'
,p_display_order=>2040
,p_column_identifier=>'GV'
,p_column_label=>'Xtr Interlocking Row'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392766367773863527)
,p_db_column_name=>'XTR_COUMPOUND_ROW'
,p_display_order=>2050
,p_column_identifier=>'GW'
,p_column_label=>'Xtr Coumpound Row'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392766486901863528)
,p_db_column_name=>'XTR_DAMAGEABLE_CLAMP'
,p_display_order=>2060
,p_column_identifier=>'GX'
,p_column_label=>'Xtr Damageable Clamp'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392766545406863529)
,p_db_column_name=>'XTR_SAFEGUARDED'
,p_display_order=>2070
,p_column_identifier=>'GY'
,p_column_label=>'Xtr Safeguarded'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392766656889863530)
,p_db_column_name=>'STK_SECONDARY_CLAMP_Z'
,p_display_order=>2080
,p_column_identifier=>'GZ'
,p_column_label=>'Stk Secondary Clamp Z'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392766717838863531)
,p_db_column_name=>'STK_SECONDARY_CLAMP_Y'
,p_display_order=>2090
,p_column_identifier=>'HA'
,p_column_label=>'Stk Secondary Clamp Y'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392766863229863532)
,p_db_column_name=>'STK_SECONDARY_CLAMP_X'
,p_display_order=>2100
,p_column_identifier=>'HB'
,p_column_label=>'Stk Secondary Clamp X'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392766950558863533)
,p_db_column_name=>'STK_PRIMARY_CLAMP_Z'
,p_display_order=>2110
,p_column_identifier=>'HC'
,p_column_label=>'Stk Primary Clamp Z'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392767037705863534)
,p_db_column_name=>'STK_PRIMARY_CLAMP_Y'
,p_display_order=>2120
,p_column_identifier=>'HD'
,p_column_label=>'Stk Primary Clamp Y'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392767182658863535)
,p_db_column_name=>'STK_PRIMARY_CLAMP_X'
,p_display_order=>2130
,p_column_identifier=>'HE'
,p_column_label=>'Stk Primary Clamp X'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392767268722863536)
,p_db_column_name=>'STK_TERTIARY_STACK_TER_ROW'
,p_display_order=>2140
,p_column_identifier=>'HF'
,p_column_label=>'Stk Tertiary Stack Ter Row'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392767322546863537)
,p_db_column_name=>'STK_TERTIARY_STACK_SEC_ROW'
,p_display_order=>2150
,p_column_identifier=>'HG'
,p_column_label=>'Stk Tertiary Stack Sec Row'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392767443644863538)
,p_db_column_name=>'STK_TERTIARY_STACK_PRI_ROW'
,p_display_order=>2160
,p_column_identifier=>'HH'
,p_column_label=>'Stk Tertiary Stack Pri Row'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392767517590863539)
,p_db_column_name=>'STK_SECONDARY_STACK_TER_ROW'
,p_display_order=>2170
,p_column_identifier=>'HI'
,p_column_label=>'Stk Secondary Stack Ter Row'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392767696106863540)
,p_db_column_name=>'STK_SECONDARY_STACK_SEC_ROW'
,p_display_order=>2180
,p_column_identifier=>'HJ'
,p_column_label=>'Stk Secondary Stack Sec Row'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392767741174863541)
,p_db_column_name=>'STK_SECONDARY_STACK_PRI_ROW'
,p_display_order=>2190
,p_column_identifier=>'HK'
,p_column_label=>'Stk Secondary Stack Pri Row'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392767867423863542)
,p_db_column_name=>'STK_PRIMARY_STACK_TER_ROW'
,p_display_order=>2200
,p_column_identifier=>'HL'
,p_column_label=>'Stk Primary Stack Ter Row'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392767914973863543)
,p_db_column_name=>'STK_PRIMARY_STACK_SEC_ROW'
,p_display_order=>2210
,p_column_identifier=>'HM'
,p_column_label=>'Stk Primary Stack Sec Row'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392768040449863544)
,p_db_column_name=>'STK_PRIMARY_STACK_PRI_ROW'
,p_display_order=>2220
,p_column_identifier=>'HN'
,p_column_label=>'Stk Primary Stack Pri Row'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392768128702863545)
,p_db_column_name=>'STK_TERTIARY_ROW'
,p_display_order=>2230
,p_column_identifier=>'HO'
,p_column_label=>'Stk Tertiary Row'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392768297299863546)
,p_db_column_name=>'STK_SECONDARY_ROW'
,p_display_order=>2240
,p_column_identifier=>'HP'
,p_column_label=>'Stk Secondary Row'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392768382161863547)
,p_db_column_name=>'STK_PRIMARY_ROW'
,p_display_order=>2250
,p_column_identifier=>'HQ'
,p_column_label=>'Stk Primary Row'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392768445897863548)
,p_db_column_name=>'STK_MAX_FACT_STOWAGE_HEIGHT'
,p_display_order=>2260
,p_column_identifier=>'HR'
,p_column_label=>'Stk Max Fact Stowage Height'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392768597785863549)
,p_db_column_name=>'STK_MAX_FACT_STOWAGE'
,p_display_order=>2270
,p_column_identifier=>'HS'
,p_column_label=>'Stk Max Fact Stowage'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392768655716863550)
,p_db_column_name=>'STK_MAX_STOWAGE_HEIGHT'
,p_display_order=>2280
,p_column_identifier=>'HT'
,p_column_label=>'Stk Max Stowage Height'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392768759108863501)
,p_db_column_name=>'CANTIDAD_POR_PALLET'
,p_display_order=>2290
,p_column_identifier=>'HU'
,p_column_label=>'Cantidad Por Pallet'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392768814417863502)
,p_db_column_name=>'PKG_TERTIARY_DEPTH'
,p_display_order=>2300
,p_column_identifier=>'HV'
,p_column_label=>'Pkg Tertiary Depth'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392768967452863503)
,p_db_column_name=>'PKG_TERTIARY_HEIGHT'
,p_display_order=>2310
,p_column_identifier=>'HW'
,p_column_label=>'Pkg Tertiary Height'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392769015438863504)
,p_db_column_name=>'PKG_TERTIARY_WIDTH'
,p_display_order=>2320
,p_column_identifier=>'HX'
,p_column_label=>'Pkg Tertiary Width'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392769151282863505)
,p_db_column_name=>'PKG_TERTIARY_WEIGHT'
,p_display_order=>2330
,p_column_identifier=>'HY'
,p_column_label=>'Pkg Tertiary Weight'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392769208104863506)
,p_db_column_name=>'PKG_TERTIARY_QUANTITY'
,p_display_order=>2340
,p_column_identifier=>'HZ'
,p_column_label=>'Pkg Tertiary Quantity'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392769376631863507)
,p_db_column_name=>'PKG_SECONDARY_DEPTH'
,p_display_order=>2350
,p_column_identifier=>'IA'
,p_column_label=>'Pkg Secondary Depth'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392769475660863508)
,p_db_column_name=>'PKG_SECONDARY_HEIGHT'
,p_display_order=>2360
,p_column_identifier=>'IB'
,p_column_label=>'Pkg Secondary Height'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392769522756863509)
,p_db_column_name=>'PKG_SECONDARY_WIDTH'
,p_display_order=>2370
,p_column_identifier=>'IC'
,p_column_label=>'Pkg Secondary Width'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392769658008863510)
,p_db_column_name=>'PKG_SECONDARY_WEIGHT'
,p_display_order=>2380
,p_column_identifier=>'ID'
,p_column_label=>'Pkg Secondary Weight'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392769701643863511)
,p_db_column_name=>'PKG_SECONDARY_QUANTITY'
,p_display_order=>2390
,p_column_identifier=>'IE'
,p_column_label=>'Pkg Secondary Quantity'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392769881055863512)
,p_db_column_name=>'PKG_MAIN_PACKAGING'
,p_display_order=>2400
,p_column_identifier=>'IF'
,p_column_label=>'Pkg Main Packaging'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392769962608863513)
,p_db_column_name=>'PKG_PRIMARY_DEPTH'
,p_display_order=>2410
,p_column_identifier=>'IG'
,p_column_label=>'Pkg Primary Depth'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392770001051863514)
,p_db_column_name=>'PKG_PRIMARY_HEIGHT'
,p_display_order=>2420
,p_column_identifier=>'IH'
,p_column_label=>'Pkg Primary Height'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392770178419863515)
,p_db_column_name=>'PKG_PRIMARY_WIDTH'
,p_display_order=>2430
,p_column_identifier=>'II'
,p_column_label=>'Pkg Primary Width'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392770220174863516)
,p_db_column_name=>'PKG_PRIMARY_WEIGHT'
,p_display_order=>2440
,p_column_identifier=>'IJ'
,p_column_label=>'Pkg Primary Weight'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392770367693863517)
,p_db_column_name=>'PKG_PRIMARY_QUANTITY'
,p_display_order=>2450
,p_column_identifier=>'IK'
,p_column_label=>'Pkg Primary Quantity'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392770420561863518)
,p_db_column_name=>'CANTIDAD_MINIMA_LISTA_PRECIO'
,p_display_order=>2460
,p_column_identifier=>'IL'
,p_column_label=>'Cantidad Minima Lista Precio'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392770589655863519)
,p_db_column_name=>'NRO_REGISTRO_SANITARIO'
,p_display_order=>2470
,p_column_identifier=>'IM'
,p_column_label=>'Nro Registro Sanitario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392770684684863520)
,p_db_column_name=>'VENCIMIENTO_REGISTRO_SANITARIO'
,p_display_order=>2480
,p_column_identifier=>'IO'
,p_column_label=>'Vencimiento Registro Sanitario'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392770773174863521)
,p_db_column_name=>'OBSERVACION_ART'
,p_display_order=>2490
,p_column_identifier=>'IP'
,p_column_label=>'Observacion Art'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392770881483863522)
,p_db_column_name=>'TIPO_ALMACENAMIENTO_ADAIA'
,p_display_order=>2500
,p_column_identifier=>'IQ'
,p_column_label=>'Tipo Almacenamiento Adaia'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392770914828863523)
,p_db_column_name=>'PRECIO_MO_ANT_STA'
,p_display_order=>2510
,p_column_identifier=>'IR'
,p_column_label=>'Precio Mo Ant Sta'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392771003193863524)
,p_db_column_name=>'FEC_ULT_NO_STOCK'
,p_display_order=>2520
,p_column_identifier=>'IT'
,p_column_label=>'Fec Ult No Stock'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392771241423863526)
,p_db_column_name=>'SELECCIONAR'
,p_display_order=>2530
,p_column_identifier=>'IV'
,p_column_label=>'Seleccionar'
,p_column_link=>'f?p=&APP_ID.:780:&SESSION.::&DEBUG.:780:P780_ROW_ID_ST_ARTICULOS:#ROW_ID#'
,p_column_linktext=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(392771328251863527)
,p_db_column_name=>'ROW_ID'
,p_display_order=>2540
,p_column_identifier=>'IW'
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
,p_column_alignment=>'CENTER'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(392856144964884719)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3928562'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SELECCIONAR:COD_ARTICULO:DESCRIPCION:PRECIO_BASE:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(392772262598863536)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(392629414821835719)
,p_button_name=>'BT_CREAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:780:&SESSION.::&DEBUG.:780:P780_ROW_ID_ST_ARTICULOS:'
,p_icon_css_classes=>'fa-plus-square-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(392772392720863537)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(392629414821835719)
,p_button_name=>'BT_LIMPIAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_button_position=>'TOP'
,p_icon_css_classes=>'fa-trash'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(392771996737863533)
,p_name=>'P781_COD_ARTICULO_FILTRO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(392629588362835720)
,p_prompt=>'Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_ART_CORTO || '' - '' || COD_ARTICULO || '' - '' || descripcion D, ',
'       COD_ARTICULO R',
'from st_articulos ',
'where cod_empresa = :P_cod_empresa ',
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(392772077095863534)
,p_name=>'DA_REFRESCAR_ARTICULO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P781_COD_ARTICULO_FILTRO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(392772186967863535)
,p_event_id=>wwv_flow_imp.id(392772077095863534)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(392629672315835721)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(392772467062863538)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_CLEAR_SESSION_STATE'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp.component_end;
end;
/
