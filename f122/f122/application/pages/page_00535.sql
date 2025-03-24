prompt --application/pages/page_00535
begin
--   Manifest
--     PAGE: 00535
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
 p_id=>535
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'TUR - PROCESAR OT'
,p_alias=>'PROCESAR-OT'
,p_step_title=>'PROCESAR OT'
,p_allow_duplicate_submissions=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function seleccionar (seq_id, valor) {',
'     apex.server.process(',
'        ''ACTUALIZA_COLECCION'', ',
'        { x01: seq_id,',
'          x02: valor}, ',
'        {',
'        success: function (pData) { ',
'            apex.region("ot").refresh();',
'          null;',
'            ',
'        }, ',
'        });',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'PBOGADO'
,p_last_upd_yyyymmddhh24miss=>'20241209160019'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(160860838192518820)
,p_name=>'OTS CONFIRMADAS'
,p_region_name=>'ot'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id,',
'        c001  check1,',
'         c002 ser_comp,',
'         c003 cod_empresa,',
'         c004 ticomprobante,',
'         c005 ser_comprobante,',
'         c006 nro_comprobante,',
'         c007 cod_usuario_ped,',
'         c008 fec_alta,',
'         c009 hora_alta,',
'         c010 estado,',
'         c011 cod_usuario_proc,',
'         c012 fec_proceso,',
'         c013 hora_proceso,',
'         c014 observacion,',
'         c015 cod_grupo,',
'         c016 tipo,',
'         c017 origen,',
'         c018 procesado,',
'         c019 solicitud_creado_por,',
'         c020 cod_motivo,',
'         c021 id_solicitud,',
'         c022 articulo_ot,',
'         c023 condicion_ot,',
'         c024 ind_migrado_dm,',
'         c025 fecha_migrado,',
'         c026 garantia,',
'         c027 rechazo,',
'         c028 calidad,',
'         c029 cod_cliente, ',
'         c031 sele,',
'         APEX_ITEM.CHECKBOX(1,SEQ_ID,decode(C031,''S'',''CHECKED'',''UNCHECKED'' )||'' onclick="seleccionar(''||SEQ_ID||'',''''''||C031||'''''')"'','' disabled'') AS SELECCIONAR',
'FROM apex_collections',
'WHERE collection_name = ''VT_ORDEN2'';'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(161012472379538817)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>300
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(160863233799518844)
,p_query_column_id=>2
,p_column_alias=>'CHECK1'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(160863312229518845)
,p_query_column_id=>3
,p_column_alias=>'SER_COMP'
,p_column_display_sequence=>130
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(160863431528518846)
,p_query_column_id=>4
,p_column_alias=>'COD_EMPRESA'
,p_column_display_sequence=>140
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(161012595535538818)
,p_query_column_id=>5
,p_column_alias=>'TICOMPROBANTE'
,p_column_display_sequence=>310
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(160861154946518823)
,p_query_column_id=>6
,p_column_alias=>'SER_COMPROBANTE'
,p_column_display_sequence=>50
,p_column_heading=>'Serie'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(160863511986518847)
,p_query_column_id=>7
,p_column_alias=>'NRO_COMPROBANTE'
,p_column_display_sequence=>60
,p_column_heading=>'Comprobante'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(160863624944518848)
,p_query_column_id=>8
,p_column_alias=>'COD_USUARIO_PED'
,p_column_display_sequence=>70
,p_column_heading=>unistr('C\00F3d. Usuario Ped.')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(160863711459518849)
,p_query_column_id=>9
,p_column_alias=>'FEC_ALTA'
,p_column_display_sequence=>80
,p_column_heading=>'Fecha Alta'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(160863895201518850)
,p_query_column_id=>10
,p_column_alias=>'HORA_ALTA'
,p_column_display_sequence=>150
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(161010828892538801)
,p_query_column_id=>11
,p_column_alias=>'ESTADO'
,p_column_display_sequence=>160
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(161010924985538802)
,p_query_column_id=>12
,p_column_alias=>'COD_USUARIO_PROC'
,p_column_display_sequence=>170
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(161011031806538803)
,p_query_column_id=>13
,p_column_alias=>'FEC_PROCESO'
,p_column_display_sequence=>180
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(161011197994538804)
,p_query_column_id=>14
,p_column_alias=>'HORA_PROCESO'
,p_column_display_sequence=>190
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(161011297824538805)
,p_query_column_id=>15
,p_column_alias=>'OBSERVACION'
,p_column_display_sequence=>90
,p_column_heading=>unistr('Observaci\00F3n')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(161011317144538806)
,p_query_column_id=>16
,p_column_alias=>'COD_GRUPO'
,p_column_display_sequence=>200
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(161011409095538807)
,p_query_column_id=>17
,p_column_alias=>'TIPO'
,p_column_display_sequence=>210
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(161011506980538808)
,p_query_column_id=>18
,p_column_alias=>'ORIGEN'
,p_column_display_sequence=>220
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(161011642943538809)
,p_query_column_id=>19
,p_column_alias=>'PROCESADO'
,p_column_display_sequence=>230
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(161011725980538810)
,p_query_column_id=>20
,p_column_alias=>'SOLICITUD_CREADO_POR'
,p_column_display_sequence=>240
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(161011877479538811)
,p_query_column_id=>21
,p_column_alias=>'COD_MOTIVO'
,p_column_display_sequence=>250
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(161011960316538812)
,p_query_column_id=>22
,p_column_alias=>'ID_SOLICITUD'
,p_column_display_sequence=>30
,p_column_heading=>'Nro. Solicitud'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(161012055303538813)
,p_query_column_id=>23
,p_column_alias=>'ARTICULO_OT'
,p_column_display_sequence=>260
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(161012103310538814)
,p_query_column_id=>24
,p_column_alias=>'CONDICION_OT'
,p_column_display_sequence=>270
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(161012223593538815)
,p_query_column_id=>25
,p_column_alias=>'IND_MIGRADO_DM'
,p_column_display_sequence=>280
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(161012371243538816)
,p_query_column_id=>26
,p_column_alias=>'FECHA_MIGRADO'
,p_column_display_sequence=>290
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(160861988593518831)
,p_query_column_id=>27
,p_column_alias=>'GARANTIA'
,p_column_display_sequence=>100
,p_column_heading=>unistr('Garant\00EDa')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(160862711638518839)
,p_query_column_id=>28
,p_column_alias=>'RECHAZO'
,p_column_display_sequence=>110
,p_column_heading=>'Rechazo'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:537:&SESSION.::&DEBUG.::P537_ID_SOLICITUD,P537_COD_CLIENTE:#ID_SOLICITUD#,#COD_CLIENTE#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(160862813885518840)
,p_query_column_id=>29
,p_column_alias=>'CALIDAD'
,p_column_display_sequence=>120
,p_column_heading=>'Calidad'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:538:&SESSION.::&DEBUG.::P538_TIP_COMPROBANTE,P538_SER_COMPROBANTE,P538_NRO_COMPROBANTE:#TICOMPROBANTE#,#SER_COMPROBANTE#,#NRO_COMPROBANTE#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(160861455007518826)
,p_query_column_id=>30
,p_column_alias=>'COD_CLIENTE'
,p_column_display_sequence=>40
,p_column_heading=>unistr('C\00F3d. Cliente')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(161012739109538820)
,p_query_column_id=>31
,p_column_alias=>'SELE'
,p_column_display_sequence=>320
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(161012998220538822)
,p_query_column_id=>32
,p_column_alias=>'SELECCIONAR'
,p_column_display_sequence=>20
,p_column_heading=>'Seleccionar'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(161013222031538825)
,p_plug_name=>'BOTONERAS'
,p_parent_plug_id=>wwv_flow_imp.id(160860838192518820)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(327737928715437637)
,p_name=>'OTS SOLICITADAS'
,p_region_name=>'ot'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id,',
'        C001 tip_comprobante,',
'        C002 ser_comprobante,',
'        C003 nro_ot,',
'        to_date(C004) fecha,',
'        C005 cod_cliente,',
'        C006 cod_clientes,',
'        C007 nom_cliente,',
'        C008 cod_articulo,',
'        C009 cerrado,',
'        C010 garantia,',
'        C011 ind_entrega,',
'        C012 anulado,',
'        C013 ind_facturado,',
'        C014 ind_retirado,',
'        C015 SELE,',
'        case when C017   = ''S''  THEN ',
'            APEX_ITEM.CHECKBOX(1,SEQ_ID, decode(C017,''S'',''CHECKED disabled'',''UNCHECKED'' )||'' onclick="seleccionar(''||SEQ_ID||'',''''''||C015||'''''')"'','' disabled'')',
'        ELSE ',
'            APEX_ITEM.CHECKBOX(1,SEQ_ID, decode(C015,''S'',''CHECKED'',''UNCHECKED'' )||'' onclick="seleccionar(''||SEQ_ID||'',''''''||C015||'''''')"'','' disabled'')',
'        END  SELECCIONAR,',
'        C017 SE',
'        FROM apex_collections',
'       WHERE collection_name = ''VT_ORDEN''',
'       and c003 not in (SELECT c006 nro_comprobante',
'                            FROM apex_collections',
'                            WHERE collection_name = ''VT_ORDEN2'')',
'		AND c017 = ''S'';'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P535_ID_CLIENTE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(169809690897105811)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(169806895098105813)
,p_query_column_id=>2
,p_column_alias=>'TIP_COMPROBANTE'
,p_column_display_sequence=>20
,p_column_heading=>'Tip Comprobante'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(169807245049105812)
,p_query_column_id=>3
,p_column_alias=>'SER_COMPROBANTE'
,p_column_display_sequence=>30
,p_column_heading=>'Ser Comprobante'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(169807696141105812)
,p_query_column_id=>4
,p_column_alias=>'NRO_OT'
,p_column_display_sequence=>40
,p_column_heading=>'Nro Ot'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(169808052863105812)
,p_query_column_id=>5
,p_column_alias=>'FECHA'
,p_column_display_sequence=>50
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(169808439304105812)
,p_query_column_id=>6
,p_column_alias=>'COD_CLIENTE'
,p_column_display_sequence=>60
,p_column_heading=>'Cod Cliente'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(169808815910105811)
,p_query_column_id=>7
,p_column_alias=>'COD_CLIENTES'
,p_column_display_sequence=>70
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(169809213630105811)
,p_query_column_id=>8
,p_column_alias=>'NOM_CLIENTE'
,p_column_display_sequence=>80
,p_column_heading=>'Nom Cliente'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(169810090690105811)
,p_query_column_id=>9
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>90
,p_column_heading=>'Cod Articulo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(169810493814105811)
,p_query_column_id=>10
,p_column_alias=>'CERRADO'
,p_column_display_sequence=>100
,p_column_heading=>'Cerrado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(169810861495105810)
,p_query_column_id=>11
,p_column_alias=>'GARANTIA'
,p_column_display_sequence=>110
,p_column_heading=>'Garantia'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(169811214102105810)
,p_query_column_id=>12
,p_column_alias=>'IND_ENTREGA'
,p_column_display_sequence=>120
,p_column_heading=>'Ind Entrega'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(169811621885105810)
,p_query_column_id=>13
,p_column_alias=>'ANULADO'
,p_column_display_sequence=>130
,p_column_heading=>'Anulado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(169812032725105810)
,p_query_column_id=>14
,p_column_alias=>'IND_FACTURADO'
,p_column_display_sequence=>140
,p_column_heading=>'Ind Facturado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(169812432045105810)
,p_query_column_id=>15
,p_column_alias=>'IND_RETIRADO'
,p_column_display_sequence=>150
,p_column_heading=>'Ind Retirado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(169813234629105809)
,p_query_column_id=>16
,p_column_alias=>'SELE'
,p_column_display_sequence=>160
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(169813600304105809)
,p_query_column_id=>17
,p_column_alias=>'SELECCIONAR'
,p_column_display_sequence=>1
,p_column_heading=>'Seleccionar'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(169812897793105810)
,p_query_column_id=>18
,p_column_alias=>'SE'
,p_column_display_sequence=>170
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(161013471001538827)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(161013222031538825)
,p_button_name=>'Cancelar'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_redirect_url=>'f?p=&APP_ID.:784:&SESSION.::&DEBUG.:535::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(72426147966335713)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(161013222031538825)
,p_button_name=>'Refrescar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Refrescar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(161013360706538826)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(161013222031538825)
,p_button_name=>'Confirmar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_grid_new_row=>'N'
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(161013521823538828)
,p_branch_action=>'f?p=&APP_ID.:486:&SESSION.::&DEBUG.:535::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(190746130792605907)
,p_name=>'P535_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(160860838192518820)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(160862956777518841)
,p_name=>'Obtiene datos '
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161012657099538819)
,p_event_id=>wwv_flow_imp.id(160862956777518841)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.catickets.pr_carga_proceso_ot(p_usuario => :APP_USER,',
'                                 p_cod_cliente => :P535_COD_CLIENTE);'))
,p_attribute_02=>'P535_COD_CLIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(160863008767518842)
,p_event_id=>wwv_flow_imp.id(160862956777518841)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(160860838192518820)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(161013913264538832)
,p_name=>'Refresca datos'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(160860838192518820)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161014197581538834)
,p_event_id=>wwv_flow_imp.id(161013913264538832)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.catickets.pr_carga_proceso_ot(p_usuario => :APP_USER,',
'                                  p_cod_cliente => :P535_COD_CLIENTE);'))
,p_attribute_02=>'P535_COD_CLIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(161014051701538833)
,p_event_id=>wwv_flow_imp.id(161013913264538832)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(160860838192518820)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72426203466335714)
,p_name=>'Actualiza tablas'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(72426147966335713)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64602294563457121)
,p_event_id=>wwv_flow_imp.id(72426203466335714)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.catickets.pr_carga_proceso_ot_ATC(p_usuario => :APP_USER,',
'                                 p_cod_empresa => :P_COD_EMPRESA);'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72426300159335715)
,p_event_id=>wwv_flow_imp.id(72426203466335714)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(327737928715437637)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72426442822335716)
,p_event_id=>wwv_flow_imp.id(72426203466335714)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(160860838192518820)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(161014228429538835)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Validaciones'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'    v_contador NUMBER:= 0;',
'BEGIN',
'    begin ',
'         SELECT count(*)',
'         INTO v_contador',
'        FROM apex_collections',
'        WHERE collection_name = ''VT_ORDEN2''',
'        AND c031 = ''S'';',
'        EXCEPTION ',
'            WHEN OTHERS THEN ',
'                v_contador := 0;',
'    end;',
'    IF v_contador  = 0 THEN',
'        RAISE_APPLICATION_ERROR (-20001, ''Debe seleccionar la orden de trabajo'');',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(161013165680538824)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ACTUALIZAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
' wser_comprobante varchar2(200);',
' wnro_comprobante varchar2(200);',
' CURSOR CUR_DETALLES IS ',
' SELECT seq_id,',
'        c001  check1,',
'         c002 ser_comp,',
'         c003 cod_empresa,',
'         c004 ticomprobante,',
'         c005 ser_comprobante,',
'         c006 nro_comprobante,',
'         c007 cod_usuario_ped,',
'         c008 fec_alta,',
'         c009 hora_alta,',
'         c010 estado,',
'         c011 cod_usuario_proc,',
'         c012 fec_proceso,',
'         c013 hora_proceso,',
'         c014 observacion,',
'         c015 cod_grupo,',
'         c016 tipo,',
'         c017 origen,',
'         c018 procesado,',
'         c019 solicitud_creado_por,',
'         c020 cod_motivo,',
'         c021 id_solicitud,',
'         c022 articulo_ot,',
'         c023 condicion_ot,',
'         c024 ind_migrado_dm,',
'         c025 fecha_migrado,',
'         c026 garantia,',
'         c027 rechazo,',
'         c028 calidad,',
'         c029 cod_cliente, ',
'         c031 sele',
'FROM apex_collections',
'WHERE collection_name = ''VT_ORDEN2''',
'AND c031 = ''S'';',
'begin',
'  FOR i IN CUR_DETALLES LOOP',
'    ',
'    update vt_ordenes_trabajo',
'       set ind_entrega  = ''S'',',
'           fec_entrega  = to_char(sysdate, ''DD/MON/YYYY''),',
'           ind_retirado = ''S'',',
'           fec_retirado = to_char(sysdate, ''DD/MON/YYYY'')',
'     where cod_empresa = :P_COD_EMPRESA',
'       and tip_comprobante = ''ORT''',
'       and ser_comprobante = I.ser_comprobante',
'       and nro_comprobante = I.nro_comprobante;',
'  END LOOP;',
'commit;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(161013008648538823)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ACTUALIZA_COLECCION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_seq_id NUMBER;',
'  v_valor   VARCHAR2(20);',
'BEGIN',
'  v_seq_id := apex_application.g_x01;',
'  v_valor := apex_application.g_x02;',
'',
'  IF v_valor = ''S'' THEN ',
'      APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (p_collection_name => ''VT_ORDEN2'',',
'                                                p_seq => v_seq_id,',
'                                                p_attr_number  => ''31'',',
'                                                p_attr_value  => ''N''); ',
' ELSE ',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (p_collection_name => ''VT_ORDEN2'',',
'                                            p_seq => v_seq_id,',
'                                            p_attr_number => ''31'',',
'                                            p_attr_value  => ''S''); ',
'  END IF;',
'  apex_json.open_object;',
'  apex_json.write(''success'', TRUE);',
'  apex_json.close_object;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    apex_json.open_object;',
'    apex_json.write(''success'', FALSE);',
'    apex_json.close_object;',
'END;',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
