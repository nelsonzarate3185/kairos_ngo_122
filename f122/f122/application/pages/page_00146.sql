prompt --application/pages/page_00146
begin
--   Manifest
--     PAGE: 00146
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
 p_id=>146
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CANOCONF - Solicitud No Conforme'
,p_alias=>'CANOCONF-SOLICITUD-NO-CONFORME'
,p_step_title=>'Solicitud No Conforme'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#DATOS{',
'border-radius: 10px;',
'}',
'',
'',
'#DATOS  > .t-Region-header {',
'    background-color: #003a85 !important;',
'    color: yellow !important;',
'    border-radius: 10px;',
'    ',
'}',
'',
'#P146_DESC_ART,#P146_PROVEEDOR_DET,#P146_TEXTO,#P146_CREA_USER{',
'    font-size: 11px;',
'   ',
'}',
'',
'#RESPONSABLE{',
'    display: inline;',
'}',
'#RS{',
'    ',
'    font-weight: bold !important;',
'    }',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'MLEDESMA'
,p_last_upd_yyyymmddhh24miss=>'20250321133128'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19174019260232420)
,p_plug_name=>'SNC'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>'SELECT ''X'' FROM DUAL WHERE :P146_ACCION IN (''U'',''N'')'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19174114746232421)
,p_plug_name=>'Solicitud No Conforme'
,p_parent_plug_id=>wwv_flow_imp.id(19174019260232420)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--leftLabels'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24671109080441306)
,p_plug_name=>'DETALLES'
,p_parent_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>380
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.C001 COD_EMPRESA,',
'       A.C002 NRO_SOLICITUD,',
'       A.C003 TIPO_SOLICITUD,',
'       A.C004 SER_SOLICITUD,',
'       A.C005 NRO_GARANTIA_ANT,',
'       A.C006 COD_ARTICULO,',
'       A.C007 COD_PROBLEMA,',
'       A.C008 PROBLEMA,',
'       A.C009 NRO_GARANTIA,',
'       A.C010 NRO_SERIE,',
'       A.C011 OBSERVACION,',
'       A.C012 RESPONSABLE_DETALLE,',
'       A.C013/*||''-''||( SELECT LTRIM(RTRIM(NVL(P.NOMBRE, P.NOMB_FANTASIA))) ',
'                        FROM CM_PROVEEDORES C, PERSONAS P',
'                       WHERE C.COD_EMPRESA = A.C001',
'                         AND C.COD_PERSONA = P.COD_PERSONA',
'                         AND C.COD_PROVEEDOR= A.C013)*/ COD_PROVEEDOR,',
'       A.C014 COSTO_REV,',
'       A.C015 COSTO_ART,',
'       :P146_COD_MOTIVO COD_MOTIVO,',
'       ''x''SELECCIONAR,',
'       CASE WHEN A.C005 IS NOT NULL THEN  ',
'       ''#APP_FILES#herramientas-para-reparar.png''',
'       ELSE',
'       ''#APP_FILES#editar.png''',
'       END ICONO,',
'       SEQ_ID,',
'       ''X'' OT/*,',
'       ''X'' GENERA_SEGUIMIENTO*/',
'       , A.C022 MONTO_VENTA',
'  FROM APEX_COLLECTIONS A',
'  WHERE A.COLLECTION_NAME = ''CA_CONFORMIDAD_DET'''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'DETALLES'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(36098680335119748)
,p_name=>'COD_EMPRESA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_EMPRESA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(36098700121119749)
,p_name=>'NRO_SOLICITUD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO_SOLICITUD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(36098888842119750)
,p_name=>'TIPO_SOLICITUD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIPO_SOLICITUD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(41783937785437101)
,p_name=>'SER_SOLICITUD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SER_SOLICITUD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(41784074024437102)
,p_name=>'NRO_GARANTIA_ANT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO_GARANTIA_ANT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('Nro. Garant\00EDa Ant.')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(41784161695437103)
,p_name=>'COD_ARTICULO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_ARTICULO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('Art\00EDculo')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'        SELECT A.COD_ARTICULO||'' - ''||A.DESCRIPCION D,',
'                     A.COD_ARTICULO R               ',
'        FROM VT_ORDENES_TRABAJO OT,             ',
'             ST_ARTICULOS A',
'        WHERE OT.COD_EMPRESA= :P_COD_EMPRESA',
'        AND ( OT.TIP_COMPROBANTE=:P146_TIP_COMPROBANTE_REF OR :P146_TIP_COMPROBANTE_REF IS NULL)',
'        AND ( OT.SER_COMPROBANTE=:P146_SER_COMPROBANTE_REF  OR :P146_SER_COMPROBANTE_REF IS NULL)',
'        AND   OT.NRO_COMPROBANTE=:P146_NRO_COMPROBANTE_REF',
'        AND   OT.COD_EMPRESA=A.COD_EMPRESA',
'        AND   OT.COD_ARTICULO=A.COD_ARTICULO',
'        AND :P146_TIPO_COMPROBANTE =''OT''',
'        ',
'    UNION',
'              SELECT S.COD_ARTICULO||'' - ''||S.DESCRIPCION D,',
'                     S.COD_ARTICULO R',
'              FROM CM_COMPRAS_DETALLE D,',
'                   st_articulos      s',
'              WHERE D.COD_EMPRESA= :P_COD_EMPRESA',
'              AND   D.NRO_COMPROBANTE= :P146_NRO_COMPROBANTE_REF',
'              AND  D.SER_COMPROBANTE= :P146_SER_COMPROBANTE_REF',
'              AND  D.TIP_COMPROBANTE= :P146_TIP_COMPROBANTE_REF',
'              AND d.cod_empresa = s.cod_empresa',
'              AND d.cod_articulo = s.cod_articulo',
'              AND :P146_TIPO_COMPROBANTE =''FC''',
'          ',
'   UNION',
'           SELECT D,R  ',
'             FROM(SELECT  S.COD_ARTICULO||'' - ''||S.DESCRIPCION D,',
'                     S.COD_ARTICULO R',
'              FROM VT_COMPROBANTES_DETALLE v,',
'                   st_articulos      s',
'              WHERE V.COD_EMPRESA= :P_COD_EMPRESA',
'              AND V.NRO_COMPROBANTE= :P146_NRO_COMPROBANTE_REF',
'              AND V.SER_COMPROBANTE= :P146_SER_COMPROBANTE_REF ',
'              AND V.TIP_COMPROBANTE= :P146_TIP_COMPROBANTE_REF ',
'              AND V.cod_empresa = s.cod_empresa',
'              AND V.cod_articulo = s.cod_articulo',
'              union all',
'              SELECT  S.COD_ARTICULO||'' - ''||S.DESCRIPCION D,',
'                     S.COD_ARTICULO R           ',
'              FROM   st_articulos      s',
'              WHERE S.COD_EMPRESA= :P_COD_EMPRESA',
'                           AND S.ESTADO IN (''S'',''A'')',
'              AND( S.cod_rubro in (''DP'',''PU'',''PMO'',''RPG'',''AN'') or s.cod_articulo=''00'')',
'              union all',
'              SELECT  S.COD_ARTICULO||'' - ''||S.DESCRIPCION D,',
'                     S.COD_ARTICULO R           ',
'              FROM   st_articulos  s',
'              WHERE S.COD_EMPRESA= :P_COD_EMPRESA',
'                AND S.ESTADO IN (''S'',''A'')',
'               AND S.COD_ARTICULO in (''SERV.REPARACION'',''ING.VARIOS'')      ',
'              )',
'             where  :P146_TIPO_COMPROBANTE =''FV''',
''))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'SEQ_ID'
,p_ajax_items_to_submit=>'P146_TIP_COMPROBANTE_REF,P146_SER_COMPROBANTE_REF,P146_NRO_COMPROBANTE_REF'
,p_ajax_optimize_refresh=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(41784200364437104)
,p_name=>'COD_PROBLEMA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_PROBLEMA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Problema'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
,p_is_required=>false
,p_max_length=>4000
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_MOTIVO||''-''||P.DESCRIPCION D, COD_MOTIVO--, RESPONSABLE',
'  FROM CA_PROBLEMAS_CONFORMIDAD P',
' WHERE P.COD_EMPRESA =:P_COD_EMPRESA',
'   AND NVL(ESTADO, ''N'') = ''S''',
'   AND PROBLEMA_CABECERA = :P146_COD_MOTIVO',
' ORDER BY 1'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'PROBLEMA'
,p_ajax_items_to_submit=>'P146_COD_MOTIVO'
,p_ajax_optimize_refresh=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(41784327027437105)
,p_name=>'PROBLEMA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROBLEMA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(41784472942437106)
,p_name=>'NRO_GARANTIA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO_GARANTIA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('Nro. Garant\00EDa')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(41784558272437107)
,p_name=>'NRO_SERIE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO_SERIE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nro Serie'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(41784615206437108)
,p_name=>'OBSERVACION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OBSERVACION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('Observaci\00F3n')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(41784785089437109)
,p_name=>'RESPONSABLE_DETALLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESPONSABLE_DETALLE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Responsable Detalle'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_stretch=>'A'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC2:COMERCIAL;COMERCIAL,DISTRIBUCION;DISTRIBUCION,SERVICIO TECNICO;SERVICIO TECNICO,REPUESTOS;REPUESTOS,FACTURACION;FACTURACION,COMPRAS;COMPRAS,LOGISTICA;LOGISTICA,DIRECTORIO;DIRECTORIO,MARKETING;MARKETING,COBRANZAS;COBRANZAS,POSTVENTA;POSTVENTA,'
||'ADMINISTRACION;ADMINISTRACION,OPERACIONES;OPERACIONES,ALMACENAMIENTO;ALMACENAMIENTO,TIC;TIC,NUEVOS NEGOCIOS;NUEVOSNEGOCIOS'
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'UPPER'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>true
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(41784870735437110)
,p_name=>'COD_PROVEEDOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_PROVEEDOR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(41784910618437111)
,p_name=>'COSTO_REV'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTO_REV'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(41785094562437112)
,p_name=>'COSTO_ART'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTO_ART'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(41785134277437113)
,p_name=>'SELECCIONAR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SELECCIONAR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(41785231285437114)
,p_name=>'ICONO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ICONO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(41785359893437115)
,p_name=>'SEQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEQ_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(46942199069805327)
,p_name=>'OT'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>10
,p_filter_is_required=>false
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(103149521436667820)
,p_name=>'COD_MOTIVO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_MOTIVO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(739758524057900426)
,p_name=>'MONTO_VENTA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MONTO_VENTA'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Monto Venta'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(36098513403119747)
,p_internal_uid=>36098513403119747
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>true
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(41789868216438558)
,p_interactive_grid_id=>wwv_flow_imp.id(36098513403119747)
,p_static_id=>'417899'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(41790075527438558)
,p_report_id=>wwv_flow_imp.id(41789868216438558)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(41790561161438561)
,p_view_id=>wwv_flow_imp.id(41790075527438558)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(36098680335119748)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(41791491870438564)
,p_view_id=>wwv_flow_imp.id(41790075527438558)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(36098700121119749)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(41792340022438566)
,p_view_id=>wwv_flow_imp.id(41790075527438558)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(36098888842119750)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(41793216467438568)
,p_view_id=>wwv_flow_imp.id(41790075527438558)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(41783937785437101)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(41794130196438569)
,p_view_id=>wwv_flow_imp.id(41790075527438558)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(41784074024437102)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(41795053095438571)
,p_view_id=>wwv_flow_imp.id(41790075527438558)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(41784161695437103)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(41795925285438572)
,p_view_id=>wwv_flow_imp.id(41790075527438558)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(41784200364437104)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(41796729738438574)
,p_view_id=>wwv_flow_imp.id(41790075527438558)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(41784327027437105)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(41797627578438575)
,p_view_id=>wwv_flow_imp.id(41790075527438558)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(41784472942437106)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(41798548924438577)
,p_view_id=>wwv_flow_imp.id(41790075527438558)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(41784558272437107)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(41799417001438578)
,p_view_id=>wwv_flow_imp.id(41790075527438558)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(41784615206437108)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(41800362897438580)
,p_view_id=>wwv_flow_imp.id(41790075527438558)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(41784785089437109)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(41801271002438581)
,p_view_id=>wwv_flow_imp.id(41790075527438558)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(41784870735437110)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(41802190107438583)
,p_view_id=>wwv_flow_imp.id(41790075527438558)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(41784910618437111)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(41803030713438584)
,p_view_id=>wwv_flow_imp.id(41790075527438558)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(41785094562437112)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(41803987868438586)
,p_view_id=>wwv_flow_imp.id(41790075527438558)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(41785134277437113)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(41804841002438587)
,p_view_id=>wwv_flow_imp.id(41790075527438558)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(41785231285437114)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(41805741450438589)
,p_view_id=>wwv_flow_imp.id(41790075527438558)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(41785359893437115)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47395734559782464)
,p_view_id=>wwv_flow_imp.id(41790075527438558)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(46942199069805327)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>57
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(107039957864246720)
,p_view_id=>wwv_flow_imp.id(41790075527438558)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(103149521436667820)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(749433785286915101)
,p_view_id=>wwv_flow_imp.id(41790075527438558)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(739758524057900426)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41787092941437132)
,p_plug_name=>'Det_Visor'
,p_parent_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46940390506805309)
,p_plug_name=>'Datos acciones'
,p_parent_plug_id=>wwv_flow_imp.id(41787092941437132)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19174223677232422)
,p_plug_name=>'Seguimiento'
,p_parent_plug_id=>wwv_flow_imp.id(19174019260232420)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody:margin-top-sm'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(46944283929805348)
,p_plug_name=>'Registros de Seguimientos'
,p_region_name=>'RS'
,p_parent_plug_id=>wwv_flow_imp.id(19174223677232422)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT S.seq_id NRO_ITEM,',
'       S.c001 EMPRESA,',
'       S.c002 USUARIO,',
'       S.c003 FECHA,',
'       S.c004 HORA,',
'       S.C005 COMENTARIO',
'  FROM APEX_COLLECTIONS S',
' WHERE S.collection_name = ''CA_SEGUIMIENTO'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Registros de Seguimientos'
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
 p_id=>wwv_flow_imp.id(46944389755805349)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ETRINIDAD'
,p_internal_uid=>46944389755805349
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46944464724805350)
,p_db_column_name=>'NRO_ITEM'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nro Item'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48370264631792501)
,p_db_column_name=>'FECHA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48370326209792502)
,p_db_column_name=>'HORA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Hora'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48370470602792503)
,p_db_column_name=>'USUARIO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48370503684792504)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48371165805792510)
,p_db_column_name=>'EMPRESA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Empresa'
,p_column_type=>'STRING'
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
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(48420789956175067)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'484208'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NRO_ITEM:FECHA:HORA:USUARIO:COMENTARIO'
,p_sort_column_1=>'NRO_ITEM'
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
,p_break_on=>'FECHA:USUARIO'
,p_break_enabled_on=>'FECHA:USUARIO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19175494594232434)
,p_plug_name=>'Datos'
,p_region_name=>'DATOS'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody:margin-top-sm:margin-left-sm'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_08'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P146_ACCION'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19176273702232442)
,p_plug_name=>'Conformidades'
,p_region_name=>'CONFORMIDADES'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody:margin-top-sm'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_08'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       COD_EMPRESA,',
'       NRO_SOLICITUD,',
'       FEC_SOLICITUD,',
'       COD_CLIENTE,',
'       AUTORIZA_USER,',
'       COD_PROVEEDOR,',
'       OBSERVACION,',
'       ESTADO,',
'       FECHA_AUTORIZA,',
'       FECHA_CREACION,',
'       FECHA_RECHAZO,',
'       FECHA_FINALIZA,',
'       RECHAZA_USER,',
'       FINALIZA_USER,',
'       CREA_USER,',
'       TIPO_SOLICITUD,',
'       SER_SOLICITUD,',
'       OPERACION,',
'       FECHA_ANULA,',
'       ANULA_USER,',
'       SERIE,',
'       COD_SUC_ENT,',
'       COD_SUC_SAL,',
'       TIPO_COMPROBANTE,',
'       TIP_COMPROBANTE_REF,',
'       SER_COMPROBANTE_REF,',
'       NRO_COMPROBANTE_REF,',
'       COD_SUCURSAL,',
'       COD_MOTIVO,',
'       DEPARTAMENTO,',
'       TIPO_SEGUIMIENTO,',
'       COD_REPARTIDOR,',
'       ''x'' EDITAR,',
'       DEPARTAMENTO_CREACION,',
'       (SELECT DISTINCT A.COD_MOTIVO||''-''||DESCRIPCION',
'          FROM PROBLEMAS_CONFORMIDAD A',
'         WHERE A.COD_EMPRESA = C.COD_EMPRESA',
'           AND A.COD_MOTIVO = C.COD_MOTIVO)MOTIVO_DESC',
'  FROM CA_CONFORMIDAD C',
' WHERE C.COD_EMPRESA       = :P_COD_EMPRESA',
'   AND (C.DEPARTAMENTO     = :P146_DEPARTAMENTO_B   OR :P146_DEPARTAMENTO_B   IS NULL)',
' ',
'   AND (C.OPERACION        IN (SELECT REGEXP_SUBSTR(:P146_OPERACION_B,''[^:]+'', 1, LEVEL) CLAVE',
'                                  FROM DUAL',
'                               CONNECT BY REGEXP_SUBSTR(:P146_OPERACION_B,''[^:]+'', 1, LEVEL) IS NOT NULL) OR REGEXP_REPLACE(:P146_OPERACION_B,'':'','','')  IS NULL)',
'   AND (C.ESTADO           = :P146_ESTADO_B         OR :P146_ESTADO_B         IS NULL)',
'   AND (C.TIPO_COMPROBANTE IN (SELECT REGEXP_SUBSTR(:P146_TIPO_COMPROB_B,''[^:]+'', 1, LEVEL) CLAVE',
'                                  FROM DUAL',
'                               CONNECT BY REGEXP_SUBSTR(:P146_TIPO_COMPROB_B,''[^:]+'', 1, LEVEL) IS NOT NULL)   OR REGEXP_REPLACE(:P146_TIPO_COMPROB_B,'':'','','')   IS NULL)',
'  /* AND :P146_ACCION = ''B''*/;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P146_DEPARTAMENTO_B,P146_OPERACION_B,P146_ESTADO_B,P146_TIPO_COMPROB_B'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Conformidades'
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
 p_id=>wwv_flow_imp.id(19176334043232443)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ETRINIDAD'
,p_internal_uid=>19176334043232443
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19176400425232444)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20083607371992209)
,p_db_column_name=>'TIPO_SOLICITUD'
,p_display_order=>20
,p_column_identifier=>'P'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20083709265992210)
,p_db_column_name=>'SER_SOLICITUD'
,p_display_order=>30
,p_column_identifier=>'Q'
,p_column_label=>'Ser Solicitud'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19176574560232445)
,p_db_column_name=>'NRO_SOLICITUD'
,p_display_order=>40
,p_column_identifier=>'B'
,p_column_label=>'Nro Solicitud'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19176616504232446)
,p_db_column_name=>'FEC_SOLICITUD'
,p_display_order=>50
,p_column_identifier=>'C'
,p_column_label=>'Fecha Solicitud'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19176799172232447)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>60
,p_column_identifier=>'D'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19176889723232448)
,p_db_column_name=>'AUTORIZA_USER'
,p_display_order=>70
,p_column_identifier=>'E'
,p_column_label=>'Autoriza User'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19176914107232449)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>80
,p_column_identifier=>'F'
,p_column_label=>'Cod Proveedor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19177024878232450)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>90
,p_column_identifier=>'G'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20082826317992201)
,p_db_column_name=>'ESTADO'
,p_display_order=>100
,p_column_identifier=>'H'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20082969294992202)
,p_db_column_name=>'FECHA_AUTORIZA'
,p_display_order=>110
,p_column_identifier=>'I'
,p_column_label=>'Fecha Autoriza'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20083075020992203)
,p_db_column_name=>'FECHA_CREACION'
,p_display_order=>120
,p_column_identifier=>'J'
,p_column_label=>'Fecha Creacion'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20083133716992204)
,p_db_column_name=>'FECHA_RECHAZO'
,p_display_order=>130
,p_column_identifier=>'K'
,p_column_label=>'Fecha Rechazo'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20083297228992205)
,p_db_column_name=>'FECHA_FINALIZA'
,p_display_order=>140
,p_column_identifier=>'L'
,p_column_label=>'Fecha Finaliza'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20083349084992206)
,p_db_column_name=>'RECHAZA_USER'
,p_display_order=>150
,p_column_identifier=>'M'
,p_column_label=>'Rechaza User'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20083493742992207)
,p_db_column_name=>'FINALIZA_USER'
,p_display_order=>160
,p_column_identifier=>'N'
,p_column_label=>'Finaliza User'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20083502354992208)
,p_db_column_name=>'CREA_USER'
,p_display_order=>170
,p_column_identifier=>'O'
,p_column_label=>'Crea User'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20083864212992211)
,p_db_column_name=>'OPERACION'
,p_display_order=>190
,p_column_identifier=>'R'
,p_column_label=>'Operacion'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20083992347992212)
,p_db_column_name=>'FECHA_ANULA'
,p_display_order=>200
,p_column_identifier=>'S'
,p_column_label=>'Fecha Anula'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20084072402992213)
,p_db_column_name=>'ANULA_USER'
,p_display_order=>210
,p_column_identifier=>'T'
,p_column_label=>'Anula User'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20084117305992214)
,p_db_column_name=>'SERIE'
,p_display_order=>220
,p_column_identifier=>'U'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20084282838992215)
,p_db_column_name=>'COD_SUC_ENT'
,p_display_order=>230
,p_column_identifier=>'V'
,p_column_label=>'Entrada'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(10765557050450931)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20084372791992216)
,p_db_column_name=>'COD_SUC_SAL'
,p_display_order=>240
,p_column_identifier=>'W'
,p_column_label=>'Salida'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(10765557050450931)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20084478217992217)
,p_db_column_name=>'TIPO_COMPROBANTE'
,p_display_order=>250
,p_column_identifier=>'X'
,p_column_label=>'Tipo '
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20084586043992218)
,p_db_column_name=>'TIP_COMPROBANTE_REF'
,p_display_order=>260
,p_column_identifier=>'Y'
,p_column_label=>'Tip Comp.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20084697314992219)
,p_db_column_name=>'SER_COMPROBANTE_REF'
,p_display_order=>270
,p_column_identifier=>'Z'
,p_column_label=>'Ser Comp.'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20084762936992220)
,p_db_column_name=>'NRO_COMPROBANTE_REF'
,p_display_order=>280
,p_column_identifier=>'AA'
,p_column_label=>'Nro Comp.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20084816381992221)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>290
,p_column_identifier=>'AB'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20084920405992222)
,p_db_column_name=>'COD_MOTIVO'
,p_display_order=>300
,p_column_identifier=>'AC'
,p_column_label=>'Cod Motivo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20085048963992223)
,p_db_column_name=>'DEPARTAMENTO'
,p_display_order=>310
,p_column_identifier=>'AD'
,p_column_label=>'Departamento'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20085139614992224)
,p_db_column_name=>'TIPO_SEGUIMIENTO'
,p_display_order=>320
,p_column_identifier=>'AE'
,p_column_label=>'Tipo Seguimiento'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20085211937992225)
,p_db_column_name=>'COD_REPARTIDOR'
,p_display_order=>330
,p_column_identifier=>'AF'
,p_column_label=>'Cod Repartidor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20085369021992226)
,p_db_column_name=>'DEPARTAMENTO_CREACION'
,p_display_order=>340
,p_column_identifier=>'AG'
,p_column_label=>'Departamento Creacion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20085494916992227)
,p_db_column_name=>'ROWID'
,p_display_order=>350
,p_column_identifier=>'AH'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20085653470992229)
,p_db_column_name=>'MOTIVO_DESC'
,p_display_order=>360
,p_column_identifier=>'AI'
,p_column_label=>'Motivo '
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21757657567052312)
,p_db_column_name=>'EDITAR'
,p_display_order=>370
,p_column_identifier=>'AJ'
,p_column_label=>'Visualizar'
,p_column_link=>'f?p=&APP_ID.:146:&SESSION.::&DEBUG.::P146_ACCION,P146_PARAM_NRO:BSMENSAJ,#NRO_SOLICITUD#'
,p_column_linktext=>'<span aria-label="Editar"><span class="fa fa-edit" aria-hidden="true" title="Editar"></span></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); ',
'',
'    IF VCONTROL = 0 THEN',
unistr('        RETURN TRUE; -- se modifico para la visualizaci\00F3n del detalle'),
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(20098140694992454)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'200982'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDITAR:TIPO_SOLICITUD:SER_SOLICITUD:NRO_SOLICITUD:FEC_SOLICITUD:ESTADO:OPERACION:TIPO_COMPROBANTE:TIP_COMPROBANTE_REF:SER_COMPROBANTE_REF:NRO_COMPROBANTE_REF:SERIE:COD_SUC_ENT:COD_SUC_SAL:MOTIVO_DESC:'
,p_sort_column_1=>'FEC_SOLICITUD'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43763367120968148)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(46943978049805345)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(19174223677232422)
,p_button_name=>'CARGAR_SEG'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cargar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21756500550052301)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(19175494594232434)
,p_button_name=>'LIMPIAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_icon_css_classes=>'fa-eraser'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20085514202992228)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(19175494594232434)
,p_button_name=>'BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20908666332597050)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(19175494594232434)
,p_button_name=>'NUEVO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo'
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
,p_icon_css_classes=>'fa-plus'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(739757606735900417)
,p_button_sequence=>350
,p_button_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_button_name=>'aCTUALIZAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--warning:t-Button--stretch:t-Button--gapLeft:t-Button--gapRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Actualizar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(739758643411900427)
,p_button_sequence=>360
,p_button_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_button_name=>'Eliminar_detalle'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger:t-Button--gapRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Eliminar Detalle'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-eraser'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24671025039441305)
,p_button_sequence=>370
,p_button_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_button_name=>'GENERAR_OPERACION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generar Operacion'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'select * from dual where :P146_ACCION != ''N'' AND :P146_ESTADO =''AUTORIZADO'''
,p_button_condition_type=>'EXISTS'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1031320780910625510)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_button_name=>'imprimir'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>' u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21759056867052326)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_button_name=>'CREAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'NEXT'
,p_button_condition=>'P146_ACCION'
,p_button_condition2=>'N'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_button_css_classes=>'u-color-19-bg'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(52978281236988125)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_button_name=>'ACTUALIZAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Actualizar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P146_ACCION = ''U'' THEN ',
'    DECLARE',
'',
'    VCONTROL NUMBER;',
'',
'    BEGIN',
'        VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                             papli0100_id => :P_APLI0100_ID,',
'                                                             pcod_empresa => :P_COD_EMPRESA,',
'                                                             pusua0100_id => :P_USUA0100_ID,',
'                                                             pdm_boto     => 2); ',
'',
'        IF VCONTROL = 0 THEN',
unistr('            RETURN FALSE; -- se modifico para la visualizaci\00F3n del detalle'),
'        ELSE',
'            RETURN TRUE;',
'        END IF;                                                     ',
'    END;',
'',
'    ELSE',
'        RETURN FALSE;',
'END IF;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'u-color-19-bg'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(52979849032988141)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_button_name=>'ELIMINAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Eliminar'
,p_button_position=>'NEXT'
,p_confirm_message=>'Estas seguro(a) que deseas eliminar esta solicitud?'
,p_confirm_style=>'information'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'if :P146_ACCION != ''N'' THEN',
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
'    END IF;   ',
'ELSE ',
'RETURN FALSE;         ',
' END IF;                                           ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'u-color-24-bg'
,p_icon_css_classes=>'fa-trash-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21758927879052325)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_button_name=>'CANCELAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_button_css_classes=>'u-color-21-bg'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(52980054075988143)
,p_branch_name=>'Autorizado'
,p_branch_action=>'f?p=&APP_ID.:146:&SESSION.::&DEBUG.::P146_ACCION:U&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P146_ESTADO'
,p_branch_condition_text=>'AUTORIZADO'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(108872305179382803)
,p_branch_name=>'Limpiar Pagina'
,p_branch_action=>'f?p=&APP_ID.:146:&SESSION.::&DEBUG.:146::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'CREAR,ACTUALIZAR,ELIMINAR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19174330911232423)
,p_name=>'P146_COD_EMPRESA'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_item_default=>'1'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19174490431232424)
,p_name=>'P146_TIPO_SOLICITUD'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_item_default=>'SNC'
,p_prompt=>'Solicitud'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_attribute_06=>'UPPER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19174510820232425)
,p_name=>'P146_SER_SOLICITUD'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_item_default=>'A'
,p_prompt=>'Serie'
,p_placeholder=>'Serie'
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
 p_id=>wwv_flow_imp.id(19174653701232426)
,p_name=>'P146_NRO_SOLICITUD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_prompt=>'Nro'
,p_placeholder=>'Nro. Solicitud'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19174825491232428)
,p_name=>'P146_COD_SUCURSAL'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSALES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_sucursal||'' - ''||descripcion L, ',
'         cod_sucursal V',
'    FROM sucursales ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY descripcion'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(19174946196232429)
,p_name=>'P146_COD_SUC_ENTRADA'
,p_is_required=>true
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_prompt=>'Entrada'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT S.COD_SUCURSAL||''-''||S.DESCRIPCION D,',
'         S.COD_SUCURSAL R ',
'    FROM ST_USUARIOS_SUCURSAL US,',
'         SUCURSALES S',
'   WHERE S.COD_EMPRESA  = US.COD_EMPRESA',
'     AND S.COD_SUCURSAL = US.COD_SUCURSAL ',
'     AND US.TIPO        = ''E''',
'     AND US.COD_EMPRESA = :P_COD_EMPRESA',
'     AND US.COD_USUARIO = :APP_USER',
'     ORDER BY 2'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Todos'
,p_cSize=>30
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(19175010080232430)
,p_name=>'P146_COD_SUC_SALIDA'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_prompt=>'Salida'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT S.COD_SUCURSAL||''-''||S.DESCRIPCION D,',
'         S.COD_SUCURSAL R ',
'    FROM ST_USUARIOS_SUCURSAL US,',
'         SUCURSALES S',
'   WHERE S.COD_EMPRESA  = US.COD_EMPRESA',
'     AND S.COD_SUCURSAL = US.COD_SUCURSAL ',
'     AND US.TIPO        = ''R''',
'     AND US.COD_EMPRESA = :P_COD_EMPRESA',
'     AND US.COD_USUARIO = :APP_USER',
'     ORDER BY 2'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(19175147491232431)
,p_name=>'P146_FECHA_SOLICITUD'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_item_default=>'SELECT SYSDATE FROM DUAL'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Fecha Solicitud'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19175210654232432)
,p_name=>'P146_TIPO_SEGUIMIENTO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_prompt=>'Seguimiento'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:PEDIDO;PED'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19175312677232433)
,p_name=>'P146_ESTADO'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_item_default=>'CREADO'
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:CREADO;CREADO,RECHAZADO;RECHAZADO,AUTORIZADO;AUTORIZADO,FINALIZADO;FINALIZADO,ANULADO;ANULADO,PROCESADO;PROCESADO'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19175932815232439)
,p_name=>'P146_OPERACION_B'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(19175494594232434)
,p_prompt=>unistr('Operaci\00F3n')
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2:CAMBIO;CMB,NOTA DE CREDITO;NCR,TRASLADO;TRA'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19176096628232440)
,p_name=>'P146_ESTADO_B'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19175494594232434)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:CREADO;CREADO,RECHAZADO;RECHAZADO,AUTORIZADO;AUTORIZADO,FINALIZADO;FINALIZADO,ANULADO;ANULADO,PROCESADO;PROCESADO'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cHeight=>1
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19176112256232441)
,p_name=>'P146_TIPO_COMPROB_B'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(19175494594232434)
,p_prompt=>'Tipo Comprobante'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:ORDEN TRABAJO;OT,FACTURA COMPRA;FC,FACTURA VENTA;FV'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21756673240052302)
,p_name=>'P146_ACCION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(19175494594232434)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21758021193052316)
,p_name=>'P146_IND_DETALLE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_item_default=>'S'
,p_prompt=>'Detalle'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21758232349052318)
,p_name=>'P146_OPERACION'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_prompt=>unistr('Operaci\00F3n')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:CAMBIO;CMB,NOTA CRED.;NCR,TRASLADO;TRA'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21758385234052319)
,p_name=>'P146_TIP_COMPROBANTE_REF'
,p_is_required=>true
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_prompt=>'Comprobante'
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
,p_attribute_06=>'UPPER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21758498922052320)
,p_name=>'P146_SER_COMPROBANTE_REF'
,p_is_required=>true
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_prompt=>'Serie'
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
,p_attribute_06=>'UPPER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21758542604052321)
,p_name=>'P146_NRO_COMPROBANTE_REF'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_prompt=>'Nro. Comprobante'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21758607629052322)
,p_name=>'P146_COD_CLIENTE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21758738000052323)
,p_name=>'P146_TIPO_COMPROBANTE'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_prompt=>'Tipo Comprobante'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:ORDEN TRABAJO;OT,FACTURA COMPRA;FC,FACTURA VENTA ;FV'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21759365757052329)
,p_name=>'P146_COD_MOTIVO'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion,a.cod_motivo from problemas_conformidad A, ca_departamento_motivo_snc Z',
'where a.cod_empresa=:p_cod_empresa',
'and a.cod_empresa=z.cod_empresa',
'and nvl(estado,''N'')=''S''',
'AND :P146_DEPARTAMENTO=Z.COD_AREA',
'and z.cod_motivo=a.cod_motivo  '))
,p_lov_cascade_parent_items=>'P146_TIPO_COMPROBANTE,P146_DEPARTAMENTO'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(21759415571052330)
,p_name=>'P146_COD_PROVEEDOR'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_prompt=>'Proveedor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
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
 p_id=>wwv_flow_imp.id(21760479865052340)
,p_name=>'P146_DEPARTAMENTO'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_prompt=>'Dpto. Responsable'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:ADMINISTRACION;ADMINISTRACION,COMERCIAL;COMERCIAL,DIRECTORIO;DIRECTORIO,OPERACIONES;OPERACIONES,REPUESTOS;REPUESTOS,POSTVENTA;POSTVENTA,MARKETING;MARKETING,TIC;TIC,NUEVOS NEGOCIOS;NUEVOSNEGOCIOS'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'   '
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(21761056985052346)
,p_name=>'P146_VENDEDOR'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21761171518052347)
,p_name=>'P146_COD_REPARTIDOR'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_prompt=>'Repartidor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_REPARTIDORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT R.COD_REPARTIDOR||''-''||LTRIM(RTRIM(NVL(P.NOMBRE, P.NOMB_FANTASIA))) NOMBRE ,',
'       R.COD_REPARTIDOR R',
'  FROM RP_REPARTIDORES R, PERSONAS P',
' WHERE R.COD_EMPRESA = :P_COD_EMPRESA',
'   AND R.COD_PERSONA = P.COD_PERSONA',
'   AND NVL(R.ACTIVO, ''S'') = ''S''',
' ORDER BY LTRIM(RTRIM(NVL(P.NOMBRE, P.NOMB_FANTASIA)))',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_display_when=>'VAR_MODIFICA_REPARTIDOR'
,p_display_when2=>'S'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
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
 p_id=>wwv_flow_imp.id(21761248439052348)
,p_name=>'P146_DEPARTAMENTO_CREACION'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_prompt=>'Dpto. Creacion'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22871413391981502)
,p_name=>'P146_COD_USUARIO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(46940390506805309)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22871501507981503)
,p_name=>'P146_FECHA_HORA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(46940390506805309)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22872717386981515)
,p_name=>'P146_AUTORIZA_USER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(46940390506805309)
,p_prompt=>'Autorizado por'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22872806464981516)
,p_name=>'P146_FECHA_AUTORIZA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(46940390506805309)
,p_format_mask=>'DD-MM-YYYY HH24:MI:SS'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22872964795981517)
,p_name=>'P146_FEC_RECHAZO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(46940390506805309)
,p_format_mask=>'DD-MM-YYYY HH24:MI:SS'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22874020342981528)
,p_name=>'P146_URL'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41786981901437131)
,p_name=>'P146_DESC_ART'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(41787092941437132)
,p_prompt=>'Descripcion Art.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41787290236437134)
,p_name=>'P146_PROVEEDOR_DET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(41787092941437132)
,p_prompt=>'Proveedor'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41787327985437135)
,p_name=>'P146_COSTO_REV_DET'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(41787092941437132)
,p_prompt=>'Costo Revision'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41787495112437136)
,p_name=>'P146_PRECIO_ARTICULO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(41787092941437132)
,p_prompt=>'Precio Articulo'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41787584950437137)
,p_name=>'P146_TIP_COMPROBANTE_GEN'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(41787092941437132)
,p_prompt=>'Comprobante Generado'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41787609069437138)
,p_name=>'P146_SER_COMPROBANTE_GEN'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(41787092941437132)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41787712501437139)
,p_name=>'P146_NRO_COMPROBANTE_GEN'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(41787092941437132)
,p_prompt=>'Nro. Comprobante'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41787815882437140)
,p_name=>'P146_TEXTO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(41787092941437132)
,p_prompt=>'Texto'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41787920397437141)
,p_name=>'P146_TIP_COMPROBANTE_SEG'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(41787092941437132)
,p_prompt=>'Seguimiento Generado'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43759776177968112)
,p_name=>'P146_SER_COMPROBANTE_SEG'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(41787092941437132)
,p_prompt=>'Ser Comprobante Seg'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43759891164968113)
,p_name=>'P146_NRO_COMPROBANTE_SEG'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(41787092941437132)
,p_prompt=>'Nro Comprobante Seg'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43759939200968114)
,p_name=>'P146_SEGUIMIENTO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(41787092941437132)
,p_prompt=>'Seguimiento'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43760737267968122)
,p_name=>'P146_PUEDE_FINALIZAR_SNC'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(41787092941437132)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43763452563968149)
,p_name=>'VAR_TIP_ORDEN_TRABAJO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(43763367120968148)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(43763520397968150)
,p_name=>'VAR_SER_ORDEN_TRABAJO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(43763367120968148)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46939543065805301)
,p_name=>'VAR_COD_MONEDA_BASE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(43763367120968148)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46939603979805302)
,p_name=>'VAR_FECHAOT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(43763367120968148)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46939715495805303)
,p_name=>'VAR_AUTORIZA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(43763367120968148)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46939839171805304)
,p_name=>'VAR_MODIFICA_DEPARTAMENTO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(43763367120968148)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46939908807805305)
,p_name=>'VAR_MODIFICA_PRECIO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(43763367120968148)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46940058970805306)
,p_name=>'VAR_UPD_ESTADO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(43763367120968148)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46940121655805307)
,p_name=>'VAR_MODIFICA_REPARTIDOR'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(43763367120968148)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46940408384805310)
,p_name=>'P146_CREA_USER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(46940390506805309)
,p_prompt=>'Creado por'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46940547088805311)
,p_name=>'P146_FECHA_CREACION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(46940390506805309)
,p_format_mask=>'DD-MM-YYYY HH24:MI:SS'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46940738659805313)
,p_name=>'P146_RECHAZA_USER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(46940390506805309)
,p_prompt=>'Rechazado por'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46940802721805314)
,p_name=>'P146_FINALIZA_USER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(46940390506805309)
,p_prompt=>'Finalizado por '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46940913681805315)
,p_name=>'P146_FECHA_FINALIZA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(46940390506805309)
,p_format_mask=>'DD-MM-YYYY HH24:MI:SS'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46941060990805316)
,p_name=>'P146_ANULA_USER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(46940390506805309)
,p_prompt=>'Anulado por '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46941106949805317)
,p_name=>'P146_FECHA_ANULA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(46940390506805309)
,p_format_mask=>'DD-MM-YYYY HH24:MI:SS'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46943822163805344)
,p_name=>'P146_CONF_SEGUIMIENTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19174223677232422)
,p_prompt=>'Seguimiento'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>1
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48373601688792535)
,p_name=>'P146_LAST_ID_SEL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(24671109080441306)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52978310799988126)
,p_name=>'P146_ESTADO_BD'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_item_default=>'CREADO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103150339864667828)
,p_name=>'P146_PROVEEDOR_DESC_CAB'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_prompt=>unistr('Descripci\00F3n ')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103150417307667829)
,p_name=>'P146_DESC_CLIENTE_CAB'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_prompt=>unistr('Raz\00F3n Social')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_attribute_06=>'UPPER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103151764867667842)
,p_name=>'P146_COD_SUCURSAL_AUX'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(43763367120968148)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103151801610667843)
,p_name=>'P146_COD_SUC_ENTRADA_AUX'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(43763367120968148)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103151964811667844)
,p_name=>'P146_COD_SUC_SALIDA_AUX'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(43763367120968148)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103152046245667845)
,p_name=>'P146_OPERACION_AUX'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(43763367120968148)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103152113242667846)
,p_name=>'P146_TIPO_COMPROBANTE_AUX'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(43763367120968148)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103152299251667847)
,p_name=>'P146_COD_MOTIVO_AUX'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(43763367120968148)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103152338122667848)
,p_name=>'P146_DEPARTAMENTO_AUX'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(43763367120968148)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103152562949667850)
,p_name=>'P146_SEQ_ID_DET'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(24671109080441306)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110777169651423512)
,p_name=>'P146_DEPARTAMENTO_B'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(19175494594232434)
,p_prompt=>'Dpto. Responsable'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:ADMINISTRACION;ADMINISTRACION,COMERCIAL;COMERCIAL,DIRECTORIO;DIRECTORIO,OPERACIONES;OPERACIONES,REPUESTOS;REPUESTOS,POSTVENTA;POSTVENTA,MARKETING;MARKETING,TIC;TIC,NUEVOS NEGOCIOS;NUEVOSNEGOCIOS'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'   ...'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
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
 p_id=>wwv_flow_imp.id(739757335415900414)
,p_name=>'P146_PROBLEMA_DETALLE'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_prompt=>'Problema Detalle'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_MOTIVO||''-''||P.DESCRIPCION D, COD_MOTIVO--, RESPONSABLE',
'  FROM CA_PROBLEMAS_CONFORMIDAD P',
' WHERE P.COD_EMPRESA =1-- :P_COD_EMPRESA',
'   AND NVL(ESTADO, ''N'') = ''S''',
'   AND PROBLEMA_CABECERA = :P146_COD_MOTIVO',
' ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P146_COD_MOTIVO'
,p_ajax_items_to_submit=>'P146_COD_MOTIVO'
,p_ajax_optimize_refresh=>'Y'
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
,p_attribute_08=>'600'
,p_attribute_09=>'400'
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
 p_id=>wwv_flow_imp.id(739757497581900415)
,p_name=>'P146_RESPONSABLE_DETALLE'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_prompt=>'Responsable Detalle'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:COMERCIAL;COMERCIAL,DISTRIBUCION;DISTRIBUCION,SERVICIO TECNICO;SERVICIO TECNICO,REPUESTOS;REPUESTOS,FACTURACION;FACTURACION,COMPRAS;COMPRAS,LOGISTICA;LOGISTICA,DIRECTORIO;DIRECTORIO,MARKETING;MARKETING,COBRANZAS;COBRANZAS,POSTVENTA;POSTVENTA,A'
||'DMINISTRACION;ADMINISTRACION,OPERACIONES;OPERACIONES,ALMACENAMIENTO;ALMACENAMIENTO,TIC;TIC,AUDITORIA;AUDITORIA,GENTE;GENTE,NUEVOS NEGOCIOS;NUEVOSNEGOCIOS'
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
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(832977491427065739)
,p_name=>'P146_PARAM_NRO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(19175494594232434)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(861498960558195540)
,p_name=>'P146_IND_AFECTA_GUARDA'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(19174114746232421)
,p_item_default=>'S'
,p_prompt=>'Afecta Guarda(S/N)'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(103149982255667824)
,p_validation_name=>'Valida Motivo'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF NVL(:P146_COD_MOTIVO,:P146_COD_MOTIVO_AUX) IS NULL THEN',
unistr('RETURN ''Debe a\00F1adir alg\00FAn dato en el Motivo'';'),
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_validation_condition=>'ACTUALIZAR,CREAR'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(21759365757052329)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21756772981052303)
,p_name=>'Clic_Nuevo'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(20908666332597050)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21756867788052304)
,p_event_id=>wwv_flow_imp.id(21756772981052303)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P146_ACCION := ''N'';'
,p_attribute_03=>'P146_ACCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21756932146052305)
,p_event_id=>wwv_flow_imp.id(21756772981052303)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21757047246052306)
,p_name=>'Clic_Buscar'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(20085514202992228)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110777350909423514)
,p_event_id=>wwv_flow_imp.id(21757047246052306)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19176273702232442)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110777477202423515)
,p_event_id=>wwv_flow_imp.id(21757047246052306)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19176273702232442)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22871601123981504)
,p_name=>'DA_Cambiar_Operacion'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P146_OPERACION'
,p_condition_element=>'P146_OPERACION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'NCR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22871717028981505)
,p_event_id=>wwv_flow_imp.id(22871601123981504)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P146_COD_SUC_SALIDA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22871896919981506)
,p_event_id=>wwv_flow_imp.id(22871601123981504)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P146_COD_SUC_SALIDA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22871915868981507)
,p_event_id=>wwv_flow_imp.id(22871601123981504)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P146_COD_SUC_ENTRADA,P146_COD_SUC_SALIDA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22872111437981509)
,p_name=>'DA_Cambiar_Tipo_Comprob'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P146_TIPO_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22872225955981510)
,p_event_id=>wwv_flow_imp.id(22872111437981509)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	IF :P146_TIPO_COMPROBANTE =''OT'' THEN',
'			:P146_TIP_COMPROBANTE_REF:=''ORT'';',
'			:P146_COD_SUCURSAL:=''30'';',
'	ELSIF :P146_TIPO_COMPROBANTE =''FV'' THEN',
'		--:CA_CONFORMIDAD.TIP_COMPROBANTE_REF:=''FCR'';		',
'			:P146_COD_SUCURSAL:=NVL(:P_COD_SUCURSAL,''01'');',
'	ELSIF :P146_TIPO_COMPROBANTE =''FC'' THEN',
'		:P146_TIP_COMPROBANTE_REF:=''FAC'';		',
'			:P146_COD_SUCURSAL:=NVL(:P_COD_SUCURSAL,''01'');',
'	END IF;',
'	',
'IF :P146_OPERACION=''TRA'' AND :P146_TIPO_COMPROBANTE<>''FC'' THEN',
'			RAISE_APPLICATION_ERROR(-20001,''Tipo de Comprobante no corresponde para OPERACION: TRASLADO'');',
'			',
'ELSIF :P146_OPERACION IN (''CMB'',''NCR'') AND :P146_TIPO_COMPROBANTE=''FC'' THEN',
'		  RAISE_APPLICATION_ERROR(-20001,''Tipo de Comprobante no corresponde para Operacion seleccionada'');',
'			',
'END IF;',
'',
':P146_SER_COMPROBANTE_REF := '''';',
':P146_NRO_COMPROBANTE_REF := '''';'))
,p_attribute_02=>'P146_OPERACION,P146_TIPO_COMPROBANTE'
,p_attribute_03=>'P146_TIP_COMPROBANTE_REF,P146_COD_SUCURSAL_AUX,P146_SER_COMPROBANTE_REF,P146_NRO_COMPROBANTE_REF'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22872314935981511)
,p_name=>'DA_Cambiar_Departamento'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P146_DEPARTAMENTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22872409531981512)
,p_event_id=>wwv_flow_imp.id(22872314935981511)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	IF :P146_TIPO_COMPROBANTE =''OT'' THEN',
'			:P146_TIP_COMPROBANTE_REF:=''ORT'';',
'			:P146_COD_SUCURSAL:=''30'';',
'	ELSIF :P146_TIPO_COMPROBANTE =''FV'' THEN',
'		--:CA_CONFORMIDAD.TIP_COMPROBANTE_REF:=''FCR'';		',
'			:P146_COD_SUCURSAL:=NVL(:P_COD_SUCURSAL,''01'');',
'	ELSIF :P146_TIPO_COMPROBANTE =''FC'' THEN',
'		:P146_TIP_COMPROBANTE_REF:=''FAC'';		',
'			:P146_COD_SUCURSAL:=NVL(:P_COD_SUCURSAL,''01'');',
'	END IF;',
'	',
'IF :P146_OPERACION=''TRA'' AND :P146_TIPO_COMPROBANTE<>''FC'' THEN',
'			RAISE_APPLICATION_ERROR(-20001,''Tipo de Comprobante no corresponde para OPERACION: TRASLADO'');',
'			',
'ELSIF :P146_OPERACION IN (''CMB'',''NCR'') AND :P146_TIPO_COMPROBANTE=''FC'' THEN',
'		  RAISE_APPLICATION_ERROR(-20001,''Tipo de Comprobante no corresponde para Operacion seleccionada'');',
'			',
'END IF;'))
,p_attribute_02=>'P146_OPERACION,P146_TIPO_COMPROBANTE'
,p_attribute_03=>'P146_TIP_COMPROBANTE_REF,P146_COD_SUCURSAL_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22872562601981513)
,p_name=>'DA_Cambiar_Estado'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P146_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22872628649981514)
,p_event_id=>wwv_flow_imp.id(22872562601981513)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P146_ACCION = ''N'' THEN',
'		:P146_ESTADO:=''CREADO'';',
'END IF;',
'',
'',
'',
'IF :P146_ESTADO = ''FINALIZADO'' AND :P146_FECHA_AUTORIZA is null and',
':P146_FEC_RECHAZO is null THEN ',
'',
'		RAISE_APPLICATION_ERROR(-20001,''El Comprobante No Se Puede Finalizar; Tiene Que Aprobarse O Rechazarse''); ',
'',
'END IF; ',
'',
'IF :P146_ESTADO = ''PROCESADO'' AND :P146_AUTORIZA_USER IS NULL THEN ',
'',
'		RAISE_APPLICATION_ERROR(-20001,''El Comprobante No Se Puede Finalizar; Tiene Un Pedido Pendiente O Facturado Parcialmente''); ',
'		--RAISE FORM_TRIGGER_FAILURE; ',
' ',
'END IF; ',
'CANOCONF.PROCBD_CONTROL_AUTORIZACION(:p_cod_empresa,',
'                              :APP_USER,',
'                              :P146_COD_MOTIVO,',
'                              :P146_DEPARTAMENTO,',
'                             ',
'                              :P146_ESTADO);'))
,p_attribute_02=>'P146_ACCION,P146_ESTADO,P146_FECHA_AUTORIZA,P146_FEC_RECHAZO,P146_COD_MOTIVO,P146_COD_EMPRESA,P146_DEPARTAMENTO'
,p_attribute_03=>'P146_ESTADO'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22873068059981518)
,p_event_id=>wwv_flow_imp.id(22872562601981513)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CANOCONF.PROCBD_CONTROL_AUTORIZACION(:P146_COD_EMPRESA,',
'                              :APP_USER,',
'                              :P146_COD_MOTIVO,',
'                              :P146_DEPARTAMENTO,',
'                             ',
'                              :P146_ESTADO);'))
,p_attribute_02=>'P146_COD_EMPRESA,P146_COD_MOTIVO,P146_DEPARTAMENTO,P146_ESTADO'
,p_attribute_03=>'P146_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22873162501981519)
,p_name=>'DA_Doble_Clic'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P146_NRO_COMPROBANTE_REF'
,p_condition_element=>'P146_TIP_COMPROBANTE_REF'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'FCR,FCO,ORT'
,p_bind_type=>'bind'
,p_bind_event_type=>'dblclick'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22874381178981531)
,p_event_id=>wwv_flow_imp.id(22873162501981519)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = "f?p=#APP_ID#:193:#SESSION#::NO:";',
'url = url.replace("#APP_ID#", $v("pFlowId"));',
'url = url.replace("#SESSION#", $v("pInstance"));',
'',
'apex.server.process("PREPARE_URL_DC", {',
'x01: url',
'  }, {',
'  success: function(pData) {',
'   if (pData.success === true) {',
' ',
'         apex.navigation.redirect(pData.url);',
'      /* window.open(pData.url,"Pagina Child","width=1800,height=800,scrollbars=NO") ;*/',
'     ',
'   } else {',
'     console.log("FALSE");',
'   }',
' },',
'error: function(request, status, error) {',
'console.log("status---" + status + " error----" + error);',
'  }',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24243023908646950)
,p_name=>'Cambiar_Cod_Suc_Ent'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P146_COD_SUC_ENTRADA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24670637819441301)
,p_event_id=>wwv_flow_imp.id(24243023908646950)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P146_COD_SUC_ENTRADA IS NOT NULL THEN ',
'DECLARE',
'   VSUC VARCHAR2(200);',
'   VERROR EXCEPTION;',
'BEGIN',
'  SELECT COD_SUCURSAL',
'    INTO VSUC',
'  FROM ST_USUARIOS_SUCURSAL',
'  WHERE COD_EMPRESA=:P_COD_EMPRESA',
'  AND COD_USUARIO=:APP_USER',
'  AND COD_SUCURSAL=:P146_COD_SUC_ENTRADA',
'  AND TIPO=''E'';',
'    IF VSUC<>:P146_COD_SUC_ENTRADA AND :P146_OPERACION=''CMB'' THEN',
'        RAISE_APPLICATION_ERROR(-20001,''El usuario ''|| :APP_USER ||'' solo puede enviar para la sucursal: ''||vsuc);',
'        :P146_COD_SUC_ENTRADA:=NULL;',
'        :P146_COD_SUC_SALIDA:=NULL;',
'       -- RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'  WHEN OTHERS THEN ',
'    RAISE_APPLICATION_ERROR(-20001,''El usuario ''|| :APP_USER ||'' no puede ENVIAR DE la sucursal: ''||:P146_COD_SUC_ENTRADA);',
'    :P146_COD_SUC_ENTRADA:=NULL;',
'    :P146_COD_SUC_SALIDA:=NULL;    ',
'    ',
'END; ',
'END IF;'))
,p_attribute_02=>'P146_COD_SUC_ENTRADA,P146_OPERACION'
,p_attribute_03=>'P146_COD_SUC_ENTRADA,P146_COD_SUC_SALIDA'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24670700604441302)
,p_name=>'Cambiar_Cod_Suc_Salida'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P146_COD_SUC_SALIDA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24670876764441303)
,p_event_id=>wwv_flow_imp.id(24670700604441302)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P146_COD_SUC_SALIDA IS NOT NULL THEN',
'',
'  DECLARE',
'   VSUC VARCHAR2(200);',
'   VERROR EXCEPTION;',
'BEGIN',
'  SELECT COD_SUCURSAL',
'    INTO VSUC',
'  FROM ST_USUARIOS_SUCURSAL',
'  WHERE COD_EMPRESA=:P_COD_EMPRESA',
'  AND COD_USUARIO=:APP_USER',
'  AND COD_SUCURSAL=:P146_COD_SUC_SALIDA',
'  AND TIPO=''E'';',
'  IF VSUC<>:P146_COD_SUC_SALIDA THEN',
'    --IF NVL(  :VARIABLES.RECEPCIONA_SUCURSAL,''N'')<>''S'' THEN',
'    RAISE_APPLICATION_ERROR(-20001,''EL Usuario ''|| :APP_USER ||'' solo puede enviar para la sucursal: ''||VSUC);',
'      :P146_COD_SUC_ENTRADA:=NULL;',
'    :P146_COD_SUC_SALIDA:=NULL; ',
'     --:B_CABECERA.REFERENCIA:=NULL;',
'--RAISE VERROR;',
'  END IF;',
'  --END IF;  ',
'    ',
'  ',
'  EXCEPTION',
'   /*   WHEN VERROR THEN ',
'        RAISE FORM_TRIGGER_FAILURE;*/',
'  WHEN OTHERS THEN ',
'  RAISE_APPLICATION_ERROR(-20001,''El Usuario ''|| :APP_USER ||'' no puede enviar de la sucursal: ''||:P146_COD_SUC_SALIDA);',
'    :P146_COD_SUC_ENTRADA:=NULL;',
'    :P146_COD_SUC_SALIDA:=NULL; ',
'    ',
'   ',
'END;',
'END IF;'))
,p_attribute_02=>'P146_COD_SUC_SALIDA'
,p_attribute_03=>'P146_COD_SUC_ENTRADA,P146_COD_SUC_SALIDA'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(36093989383119701)
,p_name=>'Cambiar_Nro_Comprobante_Ref'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P146_NRO_COMPROBANTE_REF'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36094041785119702)
,p_event_id=>wwv_flow_imp.id(36093989383119701)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P146_NRO_COMPROBANTE_REF IS NOT NULL  AND :P146_ACCION = ''N'' THEN ',
'CANOCONF.PROCBD_CARGA_DETALLE(''N'',',
'                              :P_COD_EMPRESA,',
'                              :P146_NRO_COMPROBANTE_REF,',
'                              :P146_SER_COMPROBANTE_REF,',
'                              :P146_TIP_COMPROBANTE_REF,',
'                              :P146_TIPO_COMPROBANTE,',
'                              :P146_IND_DETALLE,',
'                              :P146_NRO_SOLICITUD,',
'                              :P146_TIPO_SOLICITUD,',
'                              :P146_SER_SOLICITUD,',
'                              ----------------------',
'                              -------SALIDA---------',
'                              :P146_COD_CLIENTE,',
'                              :P146_DESC_CLIENTE_CAB,',
'                              :P146_COD_PROVEEDOR,',
'                              :P146_PROVEEDOR_DESC_CAB,',
'                              :P146_COD_REPARTIDOR);',
'                            ',
'END IF;',
' -- raise_application_error(-20001,:P146_DESC_CLIENTE_CAB);'))
,p_attribute_02=>'P146_ACCION,P146_NRO_COMPROBANTE_REF,P146_SER_COMPROBANTE_REF,P146_TIP_COMPROBANTE_REF,P146_TIPO_COMPROBANTE,P146_IND_DETALLE,P146_TIPO_SOLICITUD,P146_SER_SOLICITUD,P146_NRO_SOLICITUD'
,p_attribute_03=>'P146_COD_CLIENTE,P146_COD_PROVEEDOR,P146_COD_REPARTIDOR,P146_DESC_CLIENTE_CAB,P146_PROVEEDOR_DESC_CAB'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(36094107835119703)
,p_event_id=>wwv_flow_imp.id(36093989383119701)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24671109080441306)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41786710794437129)
,p_name=>'Cambiar_SEQ_ID_DET'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P146_SEQ_ID_DET'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41786879305437130)
,p_event_id=>wwv_flow_imp.id(41786710794437129)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cursor CUR_DET is ',
'SELECT A.C001 COD_EMPRESA,',
'       A.C002 NRO_SOLICITUD,',
'       A.C003 TIPO_SOLICITUD,',
'       A.C004 SER_SOLICITUD,',
'       A.C005 NRO_GARANTIA_ANT,',
'       A.C006 COD_ARTICULO,',
'       A.C007 COD_PROBLEMA,',
'       A.C008 PROBLEMA,',
'       A.C009 NRO_GARANTIA,',
'       A.C010 NRO_SERIE,',
'       A.C011 OBSERVACION,',
'       A.C012 RESPONSABLE_DETALLE,',
'       A.C013 COD_PROVEEDOR,',
'       A.C014 COSTO_REV,',
'       A.C015 COSTO_ART,',
'       A.C016 SER_COMPROBANTE_GEN,',
'       A.C017 TIP_COMPROBANTE_GEN,',
'       A.C018 NRO_COMPROBANTE_GEN,',
'       A.C019 SER_COMPROBANTE_SEG,',
'       A.C020 TIP_COMPROBANTE_SEG,',
'       A.C021 NRO_COMPROBANTE_SEG,',
'       a.c022 monto_venta',
'  FROM APEX_COLLECTIONS A',
'  WHERE A.COLLECTION_NAME = ''CA_CONFORMIDAD_DET''',
'    AND A.SEQ_ID =  (:P146_SEQ_ID_DET);',
'begin',
'FOR D IN CUR_DET LOOP ',
':P146_NRO_COMPROBANTE_GEN := D.NRO_COMPROBANTE_GEN;',
':P146_TIP_COMPROBANTE_GEN := D.TIP_COMPROBANTE_GEN;',
':P146_NRO_COMPROBANTE_SEG := D.NRO_COMPROBANTE_SEG;',
':P146_TIP_COMPROBANTE_SEG := D.TIP_COMPROBANTE_SEG;',
':P146_SER_COMPROBANTE_SEG := D.SER_COMPROBANTE_SEG;',
'',
'',
'',
'--raise_application_error(-20001,:P146_NRO_COMPROBANTE_SEG);  ',
'--IF :SEQ_ID != NVL(:P146_LAST_ID_SEL,0) THEN ',
'begin',
'CANOCONF.PROCBD_TRAE_DESCRIPCIONES( D.COD_EMPRESA,',
'                                    D.COD_ARTICULO,',
'                                    D.NRO_COMPROBANTE_GEN,',
'                                    D.TIP_COMPROBANTE_GEN,',
'                                    D.COD_PROVEEDOR,',
'                                   :P146_NRO_SOLICITUD,',
'                                   :P146_SER_SOLICITUD,',
'                                   :P146_TIPO_SOLICITUD,',
'                                    D.NRO_GARANTIA_ANT,',
'                                    D.NRO_COMPROBANTE_SEG,',
'                                    D.TIP_COMPROBANTE_SEG,',
'                                    D.SER_COMPROBANTE_SEG,',
'                                   ',
'                                   ---------------------------------',
'                                   -------------------salidas--------',
'                                   :P146_DESC_ART,',
'                                   :P146_TEXTO,',
'                                   :P146_PROVEEDOR_DET,',
'                                   :P146_SEGUIMIENTO,',
'                                   :P146_PUEDE_FINALIZAR_SNC);',
'',
'                                  :P146_COSTO_REV_DET :=  (D.COSTO_REV);',
'                                  :P146_PRECIO_ARTICULO :=  (D.COSTO_ART);',
'                                  exception when others then null;',
'                                  end;',
'--  :P146_LAST_ID_SEL := :SEQ_ID;',
'END LOOP;',
' exception when others then null;',
'                                  end;',
''))
,p_attribute_02=>'P146_NRO_SOLICITUD,P146_SER_SOLICITUD,P146_TIPO_SOLICITUD,P146_SEQ_ID_DET'
,p_attribute_03=>'P146_DESC_ART,P146_TEXTO,P146_PROVEEDOR_DET,P146_PUEDE_FINALIZAR_SNC,P146_COSTO_REV_DET,P146_PRECIO_ARTICULO,P146_NRO_COMPROBANTE_GEN,P146_TIP_COMPROBANTE_GEN,P146_NRO_COMPROBANTE_SEG,P146_TIP_COMPROBANTE_SEG,P146_SER_COMPROBANTE_SEG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P146_SEQ_ID_DET'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103150060978667825)
,p_event_id=>wwv_flow_imp.id(41786710794437129)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'		V_OT VARCHAR2(30);',
'BEGIN',
':p146_texto := '''';',
':P146_SEGUIMIENTO := '''';',
'',
'					select ''    OT: ''||O.SER_COMPROBANTE|| ''-''||O.NRO_COMPROBANTE',
'					INTO V_OT',
'					from vt_ordenes_trabajo o',
'					where  COD_EMPRESA= :P_COD_EMPRESA',
'					AND    nro_comprobante_ref =:p146_NRO_SOLICITUD',
'					AND    ser_comprobante_ref =:p146_SER_SOLICITUD',
'					AND    tip_comprobante = :p146_TIPO_SOLICITUD',
'					AND    GARANTIA_OT=:NRO_GARANTIA_ANT',
'					AND    COD_ARTICULO=	:COD_ARTICULO',
'					;',
'					',
'					:p146_texto:=:p146_texto||''  ''|| V_OT;',
'					',
'EXCEPTION',
'	WHEN OTHERS THEN',
'		NULL;',
'END;',
'',
'',
'DECLARE',
'		V_ncr VARCHAR2(30);',
'begin',
'					SELECT ''NCR:''  ||/*c.ser_comprobante ||''-''  ||*/ max(c.nro_comprobante)',
'					INTO V_ncr',
'					FROM VT_COMPROBANTES_CABECERA C',
'					WHERE C.COD_EMPRESA=:P_COD_EMPRESA',
'					AND   C.TIP_COMPROBANTE= ''NCR''',
'					AND   C.ESTADO<>''A''',
'					AND   C.TIP_OT=''SNC''  ',
'					AND   C.SER_OT=:P146_SER_SOLICITUD ',
'					AND   C.NRO_OT=:P146_NRO_SOLICITUD',
'					---and rownum=1',
'			;',
'					:P146_texto:=V_ncr||''     ''|| :P146_texto ;					',
'exception',
'		when others then',
'				null;',
'end;',
'',
'if :P146_NRO_COMPROBANTE_SEG is not null then ',
'',
'begin ',
'	 select decode(c.estado , ''P'', ''Pedido Pendiente'' , ''F'', ''Pedido Facturado'', '''')',
'	 into 	:P146_SEGUIMIENTO ',
'	 from vt_pedidos_cabecera c',
'	 	WHERE C.COD_EMPRESA=:P_COD_EMPRESA',
'		AND   C.ESTADO<>''A''',
'		AND   C.TIP_COMPROBANTE_REF= :P146_TIP_COMPROBANTE_SEG',
'		AND   C.SER_COMPROBANTE_REF= :P146_SER_COMPROBANTE_SEG ',
'		AND   C.NRO_COMPROBANTE_REF= :P146_NRO_COMPROBANTE_SEG; ',
'exception ',
'	when others then ',
'	  null; ',
'end; ',
'',
'  ',
'end if; ',
'',
'',
'',
'DECLARE',
'		V_PED VARCHAR2(30);',
'begin',
'					SELECT c.tip_comprobante||'' ''||c.ser_comprobante ||''-''||c.nro_comprobante',
'					INTO V_PED',
'					FROM VT_COMPROBANTES_CABECERA C',
'					WHERE C.COD_EMPRESA=:P_COD_EMPRESA',
'					AND   C.ESTADO<>''A''',
'					AND   C.TIP_COMPROBANTE_REF= :P146_TIP_COMPROBANTE_SEG ',
'					AND   C.SER_COMPROBANTE_REF= :P146_SER_COMPROBANTE_SEG ',
'					AND   C.NRO_COMPROBANTE_REF= :P146_NRO_COMPROBANTE_SEG ',
'					and rownum = 1;',
'				:P146_SEGUIMIENTO:=V_PED||'' ''|| inv.f_situacion_pedido_periferico (:P146_TIP_COMPROBANTE_SEG ,:P146_NRO_COMPROBANTE_SEG );					',
'exception',
'		when others then',
'			:P146_PUEDE_FINALIZAR_SNC := ''N'';',
'end;',
'		'))
,p_attribute_02=>'P_COD_EMPRESA,P146_NRO_SOLICITUD,P146_SER_SOLICITUD,P146_TIPO_SOLICITUD,P146_TIP_COMPROBANTE_SEG,P146_SER_COMPROBANTE_SEG,P146_NRO_COMPROBANTE_SEG'
,p_attribute_03=>'P146_TEXTO,P146_SEGUIMIENTO,P146_PUEDE_FINALIZAR_SNC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41786545744437127)
,p_name=>'Cambiar_Cod_Problema'
,p_event_sequence=>150
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(24671109080441306)
,p_triggering_element=>'COD_PROBLEMA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41786697508437128)
,p_event_id=>wwv_flow_imp.id(41786545744437127)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :COD_PROBLEMA IS NOT NULL THEN',
' ',
'BEGIN 	',
'            select RESPONSABLE',
'               into  :RESPONSABLE_DETALLE',
'               from CA_PROBLEMAS_CONFORMIDAD',
'               where cod_empresa   = :P_COD_EMPRESA',
'                 and cod_motivo = :COD_PROBLEMA ',
'                 ',
'and :P146_COD_MOTIVO=problema_cabecera',
'                 	AND nvl(ESTADO,''N'')=''S'';',
'EXCEPTION',
'	WHEN OTHERS THEN',
'		RAISE_APPLICATION_ERROR(-20001,''No se pudo recuperar los datos'');',
'',
'END;',
'	 ',
'END IF;'))
,p_attribute_02=>'COD_PROBLEMA,P146_COD_MOTIVO'
,p_attribute_03=>'RESPONSABLE_DETALLE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41785952162437121)
,p_name=>'Cambiar_Nro_Garantia_Ant'
,p_event_sequence=>160
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(24671109080441306)
,p_triggering_element=>'NRO_GARANTIA_ANT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41786080771437122)
,p_event_id=>wwv_flow_imp.id(41785952162437121)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN CANOCONF.PROCBD_VALIDA_NRO_GARANTIA_ANT(:P_COD_EMPRESA            ,',
'                                        :P146_IND_DETALLE         ,',
'                                        :P146_NRO_COMPROBANTE_REF ,',
'                                        :P146_TIP_COMPROBANTE_REF ,',
'                                        :P146_SER_COMPROBANTE_REF ,',
'                                        :NRO_GARANTIA_ANT    ,',
'                                        :P146_TIPO_COMPROBANTE    ,',
'                                        :P146_NRO_SOLICITUD       ,',
'                                        :P146_ACCION,',
'                                          ',
'                                        :COD_ARTICULO         ,',
'                                        :COSTO_REV      ,',
'                                        :COSTO_ART      ,',
'                                        :COD_PROVEEDOR );',
'                                        EXCEPTION WHEN OTHERS THEN NULL;',
'                                        END;'))
,p_attribute_02=>'P146_IND_DETALLE,P146_NRO_COMPROBANTE_REF,P146_NRO_COMPROBANTE_REF,P146_TIP_COMPROBANTE_REF,P146_SER_COMPROBANTE_REF,NRO_GARANTIA_ANT,P146_TIPO_COMPROBANTE,P146_NRO_SOLICITUD,P146_ACCION'
,p_attribute_03=>'COD_ARTICULO,COSTO_REV,COSTO_ART,COD_PROVEEDOR'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43761834917968133)
,p_name=>'Cambiar_Responsable'
,p_event_sequence=>170
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(24671109080441306)
,p_triggering_element=>'RESPONSABLE_DETALLE'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'RESPONSABLE_DETALLE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'5131232312+'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43761953046968134)
,p_event_id=>wwv_flow_imp.id(43761834917968133)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin	',
'IF :P146_OPERACION=''TRA'' AND :P146_TIPO_COMPROBANTE<>''FC'' THEN',
'			RAISE_APPLICATION_ERROR(-20001,''Tipo de Comprobante no corresponde para OPERACION: TRASLADO'');',
'ELSIF :P146_OPERACION IN (''CMB'',''NCR'') AND :P146_TIPO_COMPROBANTE=''FC'' THEN',
'		  RAISE_APPLICATION_ERROR(-20001,''Tipo de Comprobante no corresponde para Operacion seleccionada'');',
'		',
'END IF;',
'exception when others then null;',
'end;'))
,p_attribute_02=>'P146_OPERACION,P146_TIPO_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46943542127805341)
,p_name=>'Clic_Generar_Operacion'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24671025039441305)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46943681748805342)
,p_event_id=>wwv_flow_imp.id(46943542127805341)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CANOCONF.PROCBD_CLIC_GEN_OPER(:P_COD_EMPRESA,',
'                              :P146_ESTADO,',
'                              :P146_NRO_SOLICITUD,',
'                              :P146_TIPO_SOLICITUD,',
'                              :P146_SER_SOLICITUD,',
'                              :P146_COD_SUC_ENTRADA,',
'                              :P146_COD_SUC_SALIDA,',
'                              :P146_TIPO_COMPROBANTE,',
'                              :P146_NRO_COMPROBANTE_REF,',
'                              :P146_TIP_COMPROBANTE_REF,',
'                              :P146_SER_COMPROBANTE_REF,',
'                              :P146_COD_CLIENTE,',
'                              :P146_URL);',
''))
,p_attribute_02=>'P_COD_EMPRESA,P146_ESTADO,P146_NRO_SOLICITUD,P146_TIPO_SOLICITUD,P146_SER_SOLICITUD,P146_COD_SUC_ENTRADA,P146_COD_SUC_SALIDA,P146_TIPO_COMPROBANTE,P146_NRO_COMPROBANTE_REF,P146_TIP_COMPROBANTE_REF,P146_SER_COMPROBANTE_REF,P146_COD_CLIENTE'
,p_attribute_03=>'P146_URL'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48370827037792507)
,p_name=>'Clic_Cargar_Seg'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(46943978049805345)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48370938364792508)
,p_event_id=>wwv_flow_imp.id(48370827037792507)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CANOCONF.PROCBD_CARGA_SEGUIMIENTO(:P_COD_EMPRESA,',
'                                  :APP_USER,',
'                                  NULL,',
'                                  :P146_CONF_SEGUIMIENTO);'))
,p_attribute_02=>'P146_CONF_SEGUIMIENTO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48371059478792509)
,p_event_id=>wwv_flow_imp.id(48370827037792507)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(46944283929805348)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48373470829792533)
,p_event_id=>wwv_flow_imp.id(48370827037792507)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P146_CONF_SEGUIMIENTO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48373570875792534)
,p_event_id=>wwv_flow_imp.id(48370827037792507)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P146_CONF_SEGUIMIENTO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52977572297988118)
,p_name=>'Cambiar_Cod_Cliente'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P146_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52977681974988119)
,p_event_id=>wwv_flow_imp.id(52977572297988118)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P146_COD_CLIENTE IS NOT NULL THEN',
'		BEGIN',
'		select ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia)))',
'		INTO :P146_vendedor',
'		  from fv_vendedores c, personas p, vt_comprobantes_cabecera cc',
'		 where cc.cod_empresa = :P_cod_empresa',
'		   AND c.cod_vendedor = cc.cod_vendedor',
'		   and c.cod_persona = p.cod_persona',
'		   and c.cod_empresa=Cc.cod_empresa',
'		   and cc.tip_comprobante = :P146_tip_comprobante_ref',
'		   and cc.ser_comprobante = :P146_ser_comprobante_ref',
'		   and cc.nro_comprobante = :P146_nro_comprobante_ref',
'		 ;',
'		EXCEPTION	',
'			WHEN OTHERS THEN',
'					BEGIN',
'		select ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia)))',
'		INTO :P146_vendedor',
'		  from cc_clientes c, personas p, fv_vendedores fv',
'		 where c.cod_empresa = :P_cod_empresa',
'		   AND c.cod_cliente = :P146_COD_CLIENTE',
'		   and fv.cod_persona = p.cod_persona',
'		   and c.cod_empresa=fv.cod_empresa',
'		   and c.cod_vendedor=fv.cod_vendedor',
'		 ;',
'		EXCEPTION	',
'			WHEN OTHERS THEN',
'				:P146_vendedor:=	NULL;',
'		END;',
'		END;',
'END IF;'))
,p_attribute_02=>'P146_COD_CLIENTE,P146_TIP_COMPROBANTE_REF,P146_SER_COMPROBANTE_REF,P146_NRO_COMPROBANTE_REF'
,p_attribute_03=>'P146_VENDEDOR'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52979272291988135)
,p_name=>'CARGAR_PAGINA'
,p_event_sequence=>210
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52979332753988136)
,p_event_id=>wwv_flow_imp.id(52979272291988135)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(46944283929805348)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110777267584423513)
,p_event_id=>wwv_flow_imp.id(52979272291988135)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19176273702232442)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(103150527388667830)
,p_name=>'CARGAR_PAGINA_U'
,p_event_sequence=>230
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
' FROM DUAL WHERE :P146_ACCION = ''U''',
' AND :P146_ESTADO NOT IN (''CREADO'')'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103152490628667849)
,p_event_id=>wwv_flow_imp.id(103150527388667830)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P146_OPERACION_AUX := :P146_OPERACION;',
':P146_COD_MOTIVO_AUX := :P146_COD_MOTIVO;',
':P146_COD_SUCURSAL_AUX := :P146_COD_SUCURSAL;',
':P146_DEPARTAMENTO_AUX := :P146_DEPARTAMENTO;',
':P146_COD_SUC_SALIDA_AUX := :P146_COD_SUC_SALIDA;',
':P146_COD_SUC_ENTRADA_AUX := :P146_COD_SUC_ENTRADA;',
':P146_TIPO_COMPROBANTE_AUX := :P146_TIPO_COMPROBANTE;',
'',
'',
''))
,p_attribute_02=>'P146_OPERACION ,P146_COD_MOTIVO,P146_COD_SUCURSAL,P146_DEPARTAMENTO,P146_COD_SUC_SALIDA,P146_COD_SUC_ENTRADA,P146_TIPO_COMPROBANTE'
,p_attribute_03=>'P146_OPERACION_AUX ,P146_COD_MOTIVO_AUX,P146_COD_SUCURSAL_AUX,P146_DEPARTAMENTO_AUX,P146_COD_SUC_SALIDA_AUX,P146_COD_SUC_ENTRADA_AUX,P146_TIPO_COMPROBANTE_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103150769003667832)
,p_event_id=>wwv_flow_imp.id(103150527388667830)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//$(''#P146_TIPO_SOLICITUD'').attr(''readonly'',true);',
'//$(''#P146_NRO_SOLICITUD'').attr(''readonly'',true);',
'//$(''#P146_SER_SOLICITUD'').attr(''readonly'',true);',
'//$(''#P146_TIP_COMPROBANTE_REF'').attr(''readonly'',true);',
'//$(''#P146_SER_COMPROBANTE_REF'').attr(''readonly'',true);',
'//$(''#P146_NRO_COMPROBANTE_REF'').attr(''readonly'',true);',
'//$(''#P146_FECHA_SOLICITUD'').attr(''readonly'',true);',
'//$(''#P146_COD_SUCURSAL'').attr(''disabled'',true);',
'//$(''#P146_COD_SUC_ENTRADA'').attr(''disabled'',true);',
'//$(''#P146_OPERACION'').attr(''disabled'',true);',
'//$(''#P146_COD_MOTIVO'').attr(''disabled'',true);',
'//$(''#P146_DEPARTAMENTO'').attr(''disabled'',true);',
'//$(''#P146_COD_REPARTIDOR'').attr(''disabled'',true);',
'//$(''#P146_TIPO_COMPROBANTE'').attr(''disabled'',true);',
'//$(''#P146_IND_DETALLE'').attr(''disabled'',true);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(103149323959667818)
,p_name=>'obtener_url'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P146_URL'
,p_condition_element=>'P146_URL'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103149495045667819)
,p_event_id=>wwv_flow_imp.id(103149323959667818)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var vURL = apex.item(''P146_URL'').getValue();',
'apex.navigation.redirect (vURL);',
'',
'//window.open(vURL) ;',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(103151250489667837)
,p_name=>'Clic_Actualizar'
,p_event_sequence=>250
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(52978281236988125)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103151457477667839)
,p_event_id=>wwv_flow_imp.id(103151250489667837)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//$(''#P146_COD_SUC_ENTRADA'').attr(''enabled'',true);',
'$(''#P146_COD_SUC_ENTRADA'').attr(''disabled'',false);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103151378097667838)
,p_event_id=>wwv_flow_imp.id(103151250489667837)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'ACTUALIZAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(108872157002382801)
,p_name=>'Seleccionar'
,p_event_sequence=>260
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(24671109080441306)
,p_bind_type=>'bind'
,p_bind_event_type=>'select'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108872286029382802)
,p_event_id=>wwv_flow_imp.id(108872157002382801)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :SEQ_ID is not null then',
':P146_SEQ_ID_DET := :SEQ_ID;',
'end if;'))
,p_attribute_02=>'SEQ_ID'
,p_attribute_03=>'P146_SEQ_ID_DET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(739757752337900418)
,p_name=>'da_Actualiza_detalle'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(739757606735900417)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(739758123377900422)
,p_event_id=>wwv_flow_imp.id(739757752337900418)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P146_PROBLEMA_DETALLE is null  OR :P146_RESPONSABLE_DETALLE IS NULL THEN',
' raise_application_error(-20001,''Debe Cargar los valores de problema y responsable para actualizar el detalle'');',
'ELSE ',
'declare cursor ccab is ',
'SELECT SEQ_ID, A.C001 COD_EMPRESA,',
'       A.C002 NRO_SOLICITUD,',
'       A.C003 TIPO_SOLICITUD,',
'       A.C004 SER_SOLICITUD,',
'       A.C005 NRO_GARANTIA_ANT,',
'       A.C006 COD_ARTICULO,',
'       A.C007 COD_PROBLEMA,',
'       A.C008 PROBLEMA,',
'       A.C009 NRO_GARANTIA,',
'       A.C010 NRO_SERIE,',
'       A.C011 OBSERVACION,',
'       A.C012 RESPONSABLE_DETALLE,',
'       A.C013 COD_PROVEEDOR,',
'       A.C014 COSTO_REV,',
'       A.C015 COSTO_ART,',
'       :P146_COD_MOTIVO COD_MOTIVO ',
'  FROM APEX_COLLECTIONS A',
'  WHERE A.COLLECTION_NAME = ''CA_CONFORMIDAD_DET'';',
'  begin ',
'  for x in ccab loop',
'   APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE(',
'        p_collection_name => ''CA_CONFORMIDAD_DET'',',
unistr('        p_seq => x.SEQ_ID, -- El \00EDndice del elemento en la colecci\00F3n'),
unistr('        p_attr_number => 7, -- El n\00FAmero de atributo a actualizar (C007 en este caso)'),
'        p_attr_value => :P146_PROBLEMA_DETALLE',
'    );',
'',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE(',
'        p_collection_name => ''CA_CONFORMIDAD_DET'',',
unistr('        p_seq => x.SEQ_ID, -- El \00EDndice del elemento en la colecci\00F3n'),
unistr('        p_attr_number => 12, -- El n\00FAmero de atributo a actualizar (C012 en este caso)'),
'        p_attr_value => :P146_RESPONSABLE_DETALLE',
'    );',
'  end loop ;',
'  end;',
'  END IF;'))
,p_attribute_02=>'P146_PROBLEMA_DETALLE,P146_RESPONSABLE_DETALLE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(739757863061900419)
,p_event_id=>wwv_flow_imp.id(739757752337900418)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24671109080441306)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(739758732166900428)
,p_name=>'New'
,p_event_sequence=>280
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(739758643411900427)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(739758808018900429)
,p_event_id=>wwv_flow_imp.id(739758732166900428)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin   apex_collection.create_collection(p_collection_name    => ''CA_CONFORMIDAD_DET''',
'                                    ,p_truncate_if_exists       => ''YES''',
'                                      );',
'end;                                      '))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(739758938710900430)
,p_event_id=>wwv_flow_imp.id(739758732166900428)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24671109080441306)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1031320888162625511)
,p_name=>'da_imprimir'
,p_event_sequence=>290
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1031320780910625510)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1031320985080625512)
,p_event_id=>wwv_flow_imp.id(1031320888162625511)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var comprobante = document.getElementById("P146_NRO_SOLICITUD").value; ',
'var params = []',
'var empresa = apex.item("P_COD_EMPRESA").getValue();',
'var tip_comprobante =''SNC'';',
'var ser_comprobante = apex.item("P146_SER_SOLICITUD").getValue();',
'var nro_comprobante = apex.item("P146_NRO_SOLICITUD").getValue();',
'var cliente = ''&P146_COD_CLIENTE.'';',
'var usuario = ''&APP_USER.'';',
'var  vfacnom  ;',
' if (empresa == "1") {',
'    vfacnom = "CARNOCNF";',
'} else if (empresa == "18") {',
'    vfacnom = "CARNOCNF_BH";',
'} else {',
'    vfacnom = "CARNOCNF";',
'}',
' ',
'params.push({ name: ''P_COD_EMPRESA'', value: empresa})',
'params.push({ name: ''P_TIP_SOLICITUD'', value: tip_comprobante})',
'params.push({ name: ''P_SER_SOLICITUD'', value: ser_comprobante}) ',
'params.push({ name: ''P_NRO_SOLICITUD'', value: nro_comprobante}) ',
'',
'createReportUrl(vfacnom, params)',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22871313634981501)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Iniciar Pagina'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--:CA_CONFORMIDAD.SEGUIMIENTO:= NULL;',
':P146_COD_USUARIO:= :APP_USER ;',
':P146_FECHA_HORA := TO_CHAR(SYSDATE,''DD/MM/YYYY HH24:MI'') ;',
':P146_COD_EMPRESA := :P_COD_EMPRESA;',
'  --:P146_TIPO_SOLICITUD_B:=''SNC'';',
'  --:P146_SER_SOLICITUD_B:=''A'';',
'BEGIN',
'  SELECT E.DESC_AREA INTO :P146_DEPARTAMENTO_CREACION',
'  FROM V_EMPLEADOS E, USUARIOS U ',
'  WHERE E.COD_PERSONA=U.COD_PERSONA',
'  AND E.COD_EMPRESA=:P_COD_EMPRESA',
'  AND E.COD_EMPRESA=U.COD_EMPRESA',
'  AND U.COD_USUARIO=:APP_USER;',
'EXCEPTION ',
'  WHEN OTHERS THEN',
'  :P146_DEPARTAMENTO_CREACION:=''N/A'';',
'  ',
'END;',
' Begin',
'    APEX_COLLECTION.DELETE_ALL_COLLECTIONS_SESSION;',
'End;',
':VAR_AUTORIZA := 	busca_permiso ( :P_cod_empresa,',
'                                                      ''CANOCONF'', ',
'                                                      :P_cod_usuario,',
'                                                      ''AUTORIZA'' ) ;        ',
'',
'',
' '))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P146_ACCION'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(52979499459988137)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'carga_collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''CA_CONFORMIDAD_DET'');',
'if :P146_NRO_SOLICITUD is not null then ',
'',
'CANOCONF.PROCBD_TRAE_SEG(:P_COD_EMPRESA,',
'                         :P146_NRO_SOLICITUD);',
'',
'               ',
'end if;',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(59091268876406740)
,p_process_sequence=>40
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CARGA_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'select C.TIPO_SOLICITUD,',
'       C.SER_SOLICITUD,',
'       C.NRO_SOLICITUD,',
'       C.COD_SUCURSAL,',
'       C.COD_SUC_ENT,',
'       C.COD_SUC_SAL,',
'       C.TIPO_SEGUIMIENTO,',
'       C.FEC_SOLICITUD,',
'       C.ESTADO,',
'       C.ESTADO,',
'       C.OPERACION,',
'       C.TIP_COMPROBANTE_REF,',
'       C.SER_COMPROBANTE_REF,',
'       C.NRO_COMPROBANTE_REF,',
'       C.COD_CLIENTE,',
'       C.TIPO_COMPROBANTE,',
'       C.COD_MOTIVO,',
'       C.COD_PROVEEDOR,',
'       C.DEPARTAMENTO,',
'       C.COD_REPARTIDOR,',
'       C.DEPARTAMENTO_CREACION,',
'       C.AUTORIZA_USER,',
'       C.FECHA_AUTORIZA,',
'       C.CREA_USER,',
'       C.FECHA_CREACION,',
'       C.RECHAZA_USER,',
'       C.FECHA_RECHAZO,',
'       C.FINALIZA_USER,',
'       C.FECHA_FINALIZA, c.ind_afecta_guarda',
'  INTO :P146_TIPO_SOLICITUD,',
'       :P146_SER_SOLICITUD,',
'       :P146_NRO_SOLICITUD,',
'       :P146_COD_SUCURSAL,',
'       :P146_COD_SUC_ENTRADA ,',
'       :P146_COD_SUC_SALIDA ,',
'       :P146_TIPO_SEGUIMIENTO,',
'       :P146_FECHA_SOLICITUD,',
'       :P146_ESTADO,',
'       :P146_ESTADO_BD,',
'       :P146_OPERACION,',
'       :P146_TIP_COMPROBANTE_REF,',
'       :P146_SER_COMPROBANTE_REF,',
'       :P146_NRO_COMPROBANTE_REF,',
'       :P146_COD_CLIENTE,',
'       :P146_TIPO_COMPROBANTE,',
'       :P146_COD_MOTIVO,',
'       :P146_COD_PROVEEDOR,',
'       :P146_DEPARTAMENTO,',
'       :P146_COD_REPARTIDOR,',
'       :P146_DEPARTAMENTO_CREACION,',
'       :P146_AUTORIZA_USER,',
'       :P146_FECHA_AUTORIZA,',
'       :P146_CREA_USER,',
'       :P146_FECHA_CREACION,',
'       :P146_RECHAZA_USER,',
'       :P146_FEC_RECHAZO,',
'       :P146_FINALIZA_USER,',
'       :P146_FECHA_FINALIZA, :P146_IND_AFECTA_GUARDA',
'  FROM CA_CONFORMIDAD C',
' WHERE C.TIPO_SOLICITUD =''SNC''',
'  AND  C.SER_SOLICITUD = ''A''',
'  AND  C.NRO_SOLICITUD = :P146_PARAM_NRO ',
'  and c.cod_empresa=:p_cod_empresa',
'  ;',
' ',
'',
'',
' IF :P146_COD_PROVEEDOR IS NOT NULL THEN ',
' select ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia))) ',
'            into :P146_PROVEEDOR_DESC_CAB',
'            from cm_proveedores c, personas p',
'           where c.cod_empresa = :P_cod_empresa',
'             and c.cod_persona = p.cod_persona',
'             and c.cod_proveedor= :P146_COD_PROVEEDOR;',
' END IF;',
'',
' IF :P146_COD_CLIENTE IS NOT NULL THEN',
' SELECT ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia)))',
'          INTO :P146_DESC_CLIENTE_CAB',
'          FROM CC_CLIENTES C,',
'               PERSONAS P',
'         WHERE C.COD_PERSONA = P.COD_PERSONA',
'           AND C.COD_EMPRESA = :P_COD_EMPRESA',
'           AND C.COD_CLIENTE = :P146_COD_CLIENTE;',
'',
'     ',
' END IF;',
'',
'CANOCONF.PROCBD_TRAE_SEG(:P_COD_EMPLEADO,',
'                         :P146_NRO_SOLICITUD);',
'',
' :P146_ACCION := ''U'';',
' ',
'CANOCONF.PROCBD_CARGA_DETALLE(:P146_ACCION,',
'                              :P_COD_EMPRESA,',
'                              :P146_NRO_COMPROBANTE_REF,',
'                              :P146_SER_COMPROBANTE_REF,',
'                              :P146_TIP_COMPROBANTE_REF,',
'                              :P146_TIPO_COMPROBANTE,',
'                              :P146_IND_DETALLE,',
'                              :P146_NRO_SOLICITUD,',
'                              :P146_TIPO_SOLICITUD,',
'                              :P146_SER_SOLICITUD,',
'                              ----------------------',
'                              -------SALIDA---------',
'                              :P146_COD_CLIENTE,',
'                              :P146_DESC_CLIENTE_CAB,',
'                              :P146_COD_PROVEEDOR,',
'                              :P146_PROVEEDOR_DESC_CAB,',
'                              :P146_COD_REPARTIDOR);',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'SQLRREM'
,p_process_when=>'P146_ACCION'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'BSMENSAJ'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(103149807464667823)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(24671109080441306)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ABM_COLLECTION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'',
'BEGIN ',
'    CASE :APEX$ROW_STATUS ',
'        WHEN ''C'' THEN ',
'        IF :cod_articulo IS NOT NULL THEN   ',
'            apex_collection.add_member(p_collection_name => ''CA_CONFORMIDAD_DET'',',
'                                       p_c001            => :cod_empresa,',
'                                       p_c002            => :NRO_SOLICITUD,',
'                                       p_c003            => :TIPO_SOLICITUD,',
'                                       p_c004            => :SER_SOLICITUD,',
'                                       p_c005            => :NRO_GARANTIA_ANT,',
'                                       p_c006            => :COD_ARTICULO,',
'                                       p_c007            => :COD_PROBLEMA,',
'                                       p_c008            => :PROBLEMA,',
'                                       p_C009            => :NRO_GARANTIA,',
'                                       p_c010            => :NRO_SERIE,',
'                                       p_c011            => :OBSERVACION,',
'                                       p_c012            => :RESPONSABLE_DETALLE,',
'                                       p_c013            => :COD_PROVEEDOR,',
'                                       p_c014            => :COSTO_REV,',
'                                       p_c015            => :COSTO_ART,',
'                                       p_c022            => :monto_venta                                       );',
'                                       ',
'            END IF;',
'        WHEN ''U'' THEN ',
'                apex_collection.update_member(p_collection_name => ''CA_CONFORMIDAD_DET'',',
'                                       p_seq             => :SEQ_ID,',
'                                       p_c001            => :cod_empresa,',
'                                       p_c002            => :NRO_SOLICITUD,',
'                                       p_c003            => :TIPO_SOLICITUD,',
'                                       p_c004            => :SER_SOLICITUD,',
'                                       p_c005            => :NRO_GARANTIA_ANT,',
'                                       p_c006            => :COD_ARTICULO,',
'                                       p_c007            => :COD_PROBLEMA,',
'                                       p_c008            => :PROBLEMA,',
'                                       p_C009            => :NRO_GARANTIA,',
'                                       p_c010            => :NRO_SERIE,',
'                                       p_c011            => :OBSERVACION,',
'                                       p_c012            => :RESPONSABLE_DETALLE,',
'                                       p_c013            => :COD_PROVEEDOR,',
'                                       p_c014            => :COSTO_REV,',
'                                       p_c015            => :COSTO_ART,',
'                                       p_c022            => :monto_venta',
'                                       );',
'        WHEN ''D'' THEN ',
'               APEX_COLLECTION.DELETE_MEMBER(',
'                        p_collection_name => ''CA_CONFORMIDAD_DET'',',
'                        p_seq             => :SEQ_ID);',
'        END CASE; ',
'         ',
' ',
'        EXCEPTION  ',
'        WHEN OTHERS THEN ',
'                raise_application_error(-20001,  sqlerrm);   ',
'END; ',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(21759215919052328)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'CANCELAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CANCELAR,CANCELAR_1'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(103151523012667840)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'VALIDACIONES'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_ESTADO VARCHAR2(50);',
'BEGIN',
':VAR_AUTORIZA := 	busca_permiso ( :P_COD_EMPRESA,',
'                                                      ''CANOCONF'', ',
'                                                      :P_cod_usuario,',
'                                                      ''AUTORIZA'' ) ;',
'    select DISTINCT ESTADO',
'		INTO V_ESTADO',
'		from CA_CONFORMIDAD',
'		WHERE COD_EMPRESA= :P_COD_EMPRESA',
'		AND   TIPO_SOLICITUD=''SNC''',
'		AND   SER_SOLICITUD=:P146_SER_SOLICITUD',
'		AND   NRO_SOLICITUD=:P146_NRO_SOLICITUD',
'	 ;',
'			',
'			IF V_ESTADO in (''ANULADO'' )  THEN',
'			    RAISE_APPLICATION_ERROR(-20001,''No puede modificar. La Solicitud se encuentra ANULADA '');',
'			    --RETURN FALSE;',
'			END IF;',
'				IF V_ESTADO in ( ''RECHAZADO'') and (nvl( :VAR_AUTORIZA ,''N'')<>''S'' AND',
'					:P146_CREA_USER<>:APP_USER ) THEN',
'			    RAISE_APPLICATION_ERROR(-20001,''No puede modificar. La Solicitud se encuentra RECHAZADO '');',
'			   -- RETURN FALSE;',
'			END IF;',
'			',
'			IF V_ESTADO =''FINALIZADO'' THEN',
'			    RAISE_APPLICATION_ERROR(-20001,''No puede modificar. La Solicitud se encuentra FINALIZADA'');',
'			    --RETURN FALSE;',
'			END IF;',
'			',
'			IF V_ESTADO<>''AUTORIZADO'' AND :P146_ESTADO=''AUTORIZADO'' and NVL(:VAR_AUTORIZA,''N'')=''N'' THEN',
'			    RAISE_APPLICATION_ERROR(-20001,''No cuenta con permiso para Autorizar.'');',
'			   -- RETURN FALSE;',
'			END IF;			',
'			',
'			',
'			',
'			IF :P146_COD_SUC_ENTRADA IS NULL THEN ',
'			    RAISE_APPLICATION_ERROR(-20001,''Debe cargar la Sucursal de entrada.'');',
'			   -- RETURN FALSE;',
'			END IF;',
'			',
'		 /*IF NVL(:P146_ESTADO,''CREADO'')<>''CREADO'' AND (',
'		  	 NVL(:P146_OPERACION, '' '') !=  NVL(GET_ITEM_PROPERTY(''P146_OPERACION'', DATABASE_VALUE), '' '')or',
'		  	 NVL(:CA_CONFORMIDAD.TIPO_COMPROBANTE, '' '') !=  NVL(GET_ITEM_PROPERTY(''CA_CONFORMIDAD.TIPO_COMPROBANTE'', DATABASE_VALUE), '' '')or',
'		  	 NVL(:CA_CONFORMIDAD.NRO_COMPROBANTE_REF, '' '') !=  NVL(GET_ITEM_PROPERTY(''CA_CONFORMIDAD.NRO_COMPROBANTE_REF'', DATABASE_VALUE), '' '') ',
'		  	 ) THEN',
'			    mensaje(''No se puede modificar la Solicitud.'');',
'			    RETURN FALSE;',
'       END IF;*/',
'					',
'			IF V_ESTADO not in (''RECHAZADO'',''ANULADO'') AND :P146_ESTADO IN(''RECHAZADO'',''ANULADO'') and NVL(:VAR_AUTORIZA,''N'')=''N'' THEN',
'			    RAISE_APPLICATION_ERROR(-20001,''No cuenta con permiso para Anular/Rechazar.'');',
'			   -- RETURN FALSE;',
'			END IF;			',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'ACTUALIZAR'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(48371804389792517)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERTA_SOLICITUD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ROWID VARCHAR2(500);',
'BEGIN',
'---------------------------------------------------------------------------------',
'---------------------------INSERTA CABECERA DE CONFORMIDAD-----------------------',
' ',
'',
'IF :P146_COD_MOTIVO IS NULL THEN ',
'  RAISE_APPLICATION_ERROR(-20001,''Debe especificar motivo'');',
'END IF;',
'	IF :P146_COD_SUC_ENTRADA IS NULL THEN ',
'			    RAISE_APPLICATION_ERROR(-20001,''Debe cargar la Sucursal de entrada.'');',
'			   -- RETURN FALSE;',
'			END IF;',
'CANOCONF.PROCBD_VALIDA_NRO(:P_COD_EMPRESA,',
'                           :P146_NRO_SOLICITUD,',
'                           :P146_TIPO_SOLICITUD,',
'                           :P146_SER_SOLICITUD);',
'IF :P146_ACCION = ''N'' THEN ',
'     IF :P146_PARAM_NRO IS NOT NULL THEN',
'            BEGIN',
'                select rowid',
'                INTO V_ROWID',
'                from CA_CONFORMIDAD c',
'                where cod_empresa= :P_COD_EMPRESA',
'                and   nro_solicitud= :P146_PARAM_NRO;',
'            EXCEPTION',
'                WHEN OTHERS THEN',
'                        NULL;',
'            END;',
'        END IF;',
'',
'',
'CANOCONF.PROCBD_INSERT_SOLICITUD(:P_COD_EMPRESA               ,',
'                                 :P146_NRO_SOLICITUD          ,',
'                                 :P146_FECHA_SOLICITUD        ,',
'                                 :P146_COD_CLIENTE            ,',
'                                 :P146_COD_PROVEEDOR          ,',
'                                 :P146_ESTADO                 ,',
'                                 :P146_FECHA_CREACION         ,',
'                                 :APP_USER                    ,',
'                                 :P146_TIPO_SOLICITUD         ,',
'                                 :P146_SER_SOLICITUD          ,',
'                                 :P146_OPERACION              ,',
'                                 :P146_COD_SUC_ENTRADA        ,',
'                                 :P146_COD_SUC_SALIDA         ,',
'                                 :P146_TIPO_COMPROBANTE       ,',
'                                 :P146_TIP_COMPROBANTE_REF    ,',
'                                 :P146_SER_COMPROBANTE_REF    ,',
'                                 :P146_NRO_COMPROBANTE_REF    ,',
'                                 :P146_COD_SUCURSAL           ,',
'                                 :P146_COD_MOTIVO             ,',
'                                 :P146_DEPARTAMENTO           ,',
'                                 :P146_COD_REPARTIDOR         ,',
'                                 :P146_DEPARTAMENTO_CREACION ,',
'                                 :P146_IND_AFECTA_GUARDA,',
'                                 V_ROWID);',
'',
'',
'',
'END IF;',
'',
'---------------------------------------------------------------------------------',
'---------------------------INSERTA DETALLE DE CONFORMIDAD------------------------',
'DECLARE ',
'V_CONT NUMBER:= 0;',
'CURSOR CUR_DET IS ',
'SELECT A.C001 COD_EMPRESA,',
'       A.C002 NRO_SOLICITUD,',
'       A.C003 TIPO_SOLICITUD,',
'       A.C004 SER_SOLICITUD,',
'       A.C005 NRO_GARANTIA_ANT,',
'       A.C006 COD_ARTICULO,',
'       A.C007 COD_PROBLEMA,',
'       A.C008 PROBLEMA,',
'       A.C009 NRO_GARANTIA,',
'       A.C010 NRO_SERIE,',
'       A.C011 OBSERVACION,',
'       A.C012 RESPONSABLE_DETALLE,',
'       A.C013/*||''-''||( SELECT LTRIM(RTRIM(NVL(P.NOMBRE, P.NOMB_FANTASIA))) ',
'                        FROM CM_PROVEEDORES C, PERSONAS P',
'                       WHERE C.COD_EMPRESA = A.C001',
'                         AND C.COD_PERSONA = P.COD_PERSONA',
'                         AND C.COD_PROVEEDOR= A.C013)*/ COD_PROVEEDOR,',
'       A.C014 COSTO_REV,',
'       A.C015 COSTO_ART,',
'       A.C022 MONTO_VENTA',
' FROM APEX_COLLECTIONS A ',
' WHERE COLLECTION_NAME = ''CA_CONFORMIDAD_DET'';',
'',
'BEGIN',
'FOR D IN CUR_DET loop',
'IF D.COD_ARTICULO is null THEN',
unistr('  RAISE_APPLICATION_ERROR(-20001,''Debe cargar el Art\00EDculo'');'),
' ',
'END IF;',
'IF D.COD_PROBLEMA is null THEN',
unistr('  RAISE_APPLICATION_ERROR(-20001, ''Debe detallar el problema para el Art\00EDculo'');'),
' ',
'END IF;',
'------------------------------------------------------------------------------------------------------',
'------------------------------------------------------------------------------------------------------',
'IF D.NRO_GARANTIA_ANT IS NOT NULL THEN',
'				DECLARE',
'						DUMMY VARCHAR2(20);	',
'				BEGIN ',
'					SELECT DISTINCT C.NRO_SOLICITUD',
'					INTO DUMMY',
'					FROM CA_CONFORMIDAD C,',
'							 CA_CONFORMIDAD_DET D',
'					WHERE C.COD_EMPRESA=:P_COD_EMPRESA',
'					AND   C.NRO_SOLICITUD=D.NRO_SOLICITUD',
'					AND   C.SER_SOLICITUD=D.SER_SOLICITUD',
'					AND   C.TIPO_SOLICITUD=D.TIPO_SOLICITUD',
'					AND   C.COD_EMPRESA=D.COD_EMPRESA',
'					AND 	C.NRO_SOLICITUD <> :P162_NRO_SOLICITUD',
'					',
'							',
'					and c.tip_comprobante_ref=:P162_TIP_COMPROBANTE_REF',
'					and c.ser_comprobante_ref=:P162_SER_COMPROBANTE_REF',
'					and c.nro_comprobante_ref=:P162_NRO_COMPROBANTE_REF',
'					',
'					AND   C.ESTADO IN (''PROCESADO'',''CREADO'',''AUTORIZADO'')',
'					AND 	D.NRO_GARANTIA_ANT=D.NRO_GARANTIA_ANT;	',
'					',
'			    RAISE_APPLICATION_ERROR(-20001,''No se puede cargar el ArticuloD.''||D.COD_ARTICULO',
'			    ||'' con Garantia NroD.''||D.NRO_GARANTIA_ANT',
unistr('			    ||chr(10)||'' Ya existe la Solicitud N\00BA ''||DUMMY);	'),
'		',
'			    ',
'		    ',
'				EXCEPTION',
'					WHEN TOO_MANY_ROWS THEN',
'						 RAISE_APPLICATION_ERROR(-20001,''No se puede cargar el ArticuloD.''||D.COD_ARTICULO',
'			    					  ||'' con Garantia NroD.''||D.NRO_GARANTIA_ANT',
'			    	 ||chr(10)||'' Ya existe la Solicitud relacionada a la Garantia'');',
'			  ',
'		    		',
'					WHEN OTHERS THEN',
'						NULL;',
'				END;',
'END IF;',
'',
'CANOCONF.PROCBD_INSERT_SOL_DET(:P_COD_EMPRESA,',
'                               :P146_NRO_SOLICITUD,',
'                               :P146_TIPO_SOLICITUD,',
'                               :P146_SER_SOLICITUD,',
'                               D.NRO_GARANTIA,',
'                               D.COD_ARTICULO,',
'                               D.COD_PROVEEDOR,',
'                               to_number(D.COSTO_ART),',
'                               to_number(D.COSTO_REV),',
'                               null,',
'                               D.OBSERVACION,',
'                               D.COD_PROBLEMA,',
'                               D.NRO_GARANTIA_ANT,',
'                               D.MONTO_VENTA,',
'                               D.RESPONSABLE_DETALLE);',
'    V_CONT := V_CONT + 1;',
'END LOOP;',
'',
'IF V_CONT = 0 THEN',
unistr('RAISE_APPLICATION_ERROR(-20001,''Debe a\00F1adir un detalle'');'),
'END IF;',
'EXCEPTION ',
'WHEN NO_DATA_FOUND THEN ',
unistr('RAISE_APPLICATION_ERROR(-20001,''Debe a\00F1adir un detalle'');'),
'end;',
'--:P146_ACCION := ''U'';',
'END;',
'',
'',
'			 ',
'begin',
'  -- Call the procedure',
'  inv.sp_correo_snc_creada(p_cod_empresa => :p_cod_empresa,',
'                           p_tipo_solicitud => :P146_tipo_solicitud,',
'                           p_ser_solicitud => :P146_ser_solicitud,',
'                           p_nro_solicitud => :P146_nro_solicitud,',
'                           p_departamento => :P146_departamento,',
'                           p_operacion => :P146_operacion,',
'                           p_tip_comprobante_ref => :P146_tip_comprobante_ref,',
'                           p_ser_comprobante_ref => :P146_ser_comprobante_ref,',
'                           p_nro_comprobante_ref => :P146_nro_comprobante_ref,',
'                           p_cod_motivo => :P146_cod_motivo,',
'                           p_cod_cliente => :P146_cod_cliente);',
'end;',
'			 '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREAR'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>unistr('Solicitud N\00B0 &P146_NRO_SOLICITUD. registrada!')
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(52978061152988123)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update_Solicitud'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P146_ESTADO = ''PROCESADO'' AND :P146_AUTORIZA_USER IS NULL THEN ',
'',
'		RAISE_APPLICATION_ERROR(-20001,''EL COMPROBANTE NO SE PUEDE PROCESAR; ESTA PENDIENTE DE AUTORIZACION'');',
'END IF;',
'',
'CANOCONF.PROCBD_CONTROL_AUTORIZACION(:P_COD_EMPRESA,',
'                              :APP_USER,',
'                              :P146_COD_MOTIVO,',
'                              :P146_DEPARTAMENTO,',
'                             ',
'                              :P146_ESTADO);',
'',
'update CA_CONFORMIDAD C',
'  set  C.COD_SUCURSAL          = nvl(:P146_COD_SUCURSAL,:P146_COD_SUCURSAL_AUX),',
'       C.COD_SUC_ENT           = nvl(:P146_COD_SUC_ENTRADA,:P146_COD_SUC_ENTRADA_AUX),',
'       C.COD_SUC_SAL           = nvl(:P146_COD_SUC_SALIDA,:P146_COD_SUC_SALIDA_AUX),',
'       C.TIPO_SEGUIMIENTO      = :P146_TIPO_SEGUIMIENTO,',
'       C.FEC_SOLICITUD         = :P146_FECHA_SOLICITUD,',
'       C.ESTADO                = :P146_ESTADO,',
'       C.OPERACION             = nvl(:P146_OPERACION,:P146_OPERACION_AUX),',
'       C.TIP_COMPROBANTE_REF   = :P146_TIP_COMPROBANTE_REF,',
'       C.SER_COMPROBANTE_REF   = :P146_SER_COMPROBANTE_REF,',
'       C.NRO_COMPROBANTE_REF   = :P146_NRO_COMPROBANTE_REF,',
'       C.COD_CLIENTE           = :P146_COD_CLIENTE,',
'       C.TIPO_COMPROBANTE      = NVL(:P146_TIPO_COMPROBANTE,:P146_TIPO_COMPROBANTE_AUX),',
'       C.COD_MOTIVO            = NVL(:P146_COD_MOTIVO,:P146_COD_MOTIVO_AUX),',
'       C.COD_PROVEEDOR         = :P146_COD_PROVEEDOR,',
'       C.DEPARTAMENTO          = NVL(:P146_DEPARTAMENTO,:P146_DEPARTAMENTO_AUX),',
'       C.COD_REPARTIDOR        = :P146_COD_REPARTIDOR,',
'       C.DEPARTAMENTO_CREACION = :P146_DEPARTAMENTO_CREACION,',
'       c.ind_afecta_guarda = :P146_IND_AFECTA_GUARDA',
' where C.TIPO_SOLICITUD        = ''SNC''',
'  AND  C.SER_SOLICITUD         = ''A''',
'  AND  C.NRO_SOLICITUD         = :P146_PARAM_NRO',
' ;',
' ',
'       ',
':P146_ESTADO_BD := :P146_ESTADO;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'ACTUALIZAR'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(52978103018988124)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(24671109080441306)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update_Solicitud_DET'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' UPDATE CA_CONFORMIDAD_DET D',
'       SET   D.NRO_GARANTIA = :NRO_GARANTIA,',
'             D.COD_ARTICULO = :COD_ARTICULO,',
'             D.COD_PROVEEDOR = :COD_PROVEEDOR,',
'             D.COSTO_ARTICULO = :COSTO_ART,',
'             D.COSTO_REVISION = :COSTO_REV,',
'             D.COSTO_FLETE    = NULL,',
'             D.OBSERVACION    = :OBSERVACION,',
'             D.COD_PROBLEMA = :COD_PROBLEMA,',
'             D.NRO_GARANTIA_ANT = :NRO_GARANTIA_ANT,',
'             D.MONTO_VENTA        = :MONTO_VENTA,',
'             D.RESPONSABLE_DETALLE = :RESPONSABLE_DETALLE',
'   WHERE D.COD_EMPRESA =:P_COD_EMPRESA',
'     AND D.NRO_SOLICITUD = :NRO_SOLICITUD',
'     AND D.TIPO_SOLICITUD = :TIPO_SOLICITUD',
'     AND D.SER_SOLICITUD = :SER_SOLICITUD;',
'       ',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'ACTUALIZAR'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_exec_cond_for_each_row=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(52978943557988132)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Inserta Seguimiento'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CANOCONF.PROCBD_INSERT_SEGUIMIENTO(:P_COD_EMPRESA,',
'                                   :P146_NRO_SOLICITUD);',
'',
'',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREAR,ACTUALIZAR'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(52979553901988138)
,p_process_sequence=>120
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(24671109080441306)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'VALIDA_CANT_ART'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' DECLARE',
' V_CANT NUMBER;	',
'	',
'CURSOR REG IS ',
'	SELECT COD_ARTICULO,NVL(SUM(CANTIDAD),0)CANT',
'	FROM VT_COMPROBANTES_DETALLE ',
'	WHERE COD_EMPRESA= :P_COD_EMPRESA',
'	AND   TIP_COMPROBANTE= :P146_TIP_COMPROBANTE_REF',
'	AND   SER_COMPROBANTE= :P146_SER_COMPROBANTE_REF',
'	AND   NRO_COMPROBANTE= :P146_NRO_COMPROBANTE_REF',
'	GROUP BY COD_ARTICULO;',
'	',
'BEGIN',
'	',
'		FOR R IN REG LOOP',
'			V_CANT:=0;',
'		    IF :COD_ARTICULO = R.COD_ARTICULO THEN',
'			   V_CANT:= V_CANT+1;',
'		    END IF;',
'				',
'							',
'	',
'',
'			IF R.CANT<V_CANT THEN',
unistr('					RAISE_APPLICATION_ERROR(-20001,''La cantidad de items es mayor a la cantidad del art\00EDculo ''||R.COD_ARTICULO ||'' que fue Facturado'');'),
unistr('					--MESSAGE(''La cantidad de items es mayor a la cantidad del art\00EDculo ''||R.COD_ARTICULO ||'' que fue Facturado'');'),
'					--RAISE FORM_TRIGGER_FAILURE;',
'			END IF;',
'        END LOOP;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREAR,ACTUALIZAR'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_exec_cond_for_each_row=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(52979713528988140)
,p_process_sequence=>130
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete_Solicitud'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CANOCONF.PROCBD_ELIMINA_SNC(:P_COD_EMPRESA,',
'                            :P146_NRO_SOLICITUD,',
'                            :P146_TIPO_SOLICITUD,',
'                            :P146_SER_SOLICITUD);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'ELIMINAR'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22873853874981526)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PREPARE_URL_DC'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'   result varchar2(32767);',
'begin',
'   if :P146_TIP_COMPROBANTE_REF in (''FCR'',''FCO'') THEN ',
'   SELECT  APEX_PAGE.GET_URL (p_application => 122,',
'            p_page   => 193,',
'            p_items  => ''P193_ID,P193_VISITA'',',
'            p_values => :P146_TIP_COMPROBANTE_REF||:P146_SER_COMPROBANTE_REF||:P146_NRO_COMPROBANTE_REF||'',S'' ) "URL"',
'     INTO result',
'     from dual;',
'     ELSIF :P146_TIP_COMPROBANTE_REF = ''ORT'' THEN',
'     SELECT  APEX_PAGE.GET_URL (p_application => 122,',
'            p_page   => 588,',
'            p_items  => ''P588_SER_COMPROBANTE,P588_NRO_COMPROBANTE'',',
'            p_values => :P146_SER_COMPROBANTE_REF||'',''||:P146_NRO_COMPROBANTE_REF ) "URL"',
'     INTO result',
'     from dual;',
'     ',
'  END IF;',
'   --result:=apex_util.prepare_url(apex_application.g_x01);',
'   apex_json.open_object;',
'   apex_json.write(''success'', true);',
'   apex_json.write(''url'', result);',
'   apex_json.close_object;',
'exception',
' when others then',
'   apex_json.open_object;',
'   apex_json.write(''success'', false);',
'   apex_json.write(''message'', sqlerrm);',
'   apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
