prompt --application/pages/page_00158
begin
--   Manifest
--     PAGE: 00158
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
 p_id=>158
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Consultas de Derivaciones Realizadas'
,p_alias=>'CONSULTAS-DE-DERIVACIONES-REALIZADAS'
,p_step_title=>'Consultas de Derivaciones Realizadas'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var gThis1;',
'var gThis2;',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Body-actions {',
'    width: 250px;',
'}',
'.t-Region {',
'    font-weight: bold;',
'}',
'#FILTROS .t-Region-header {',
'',
'background-color: #003a85 !important;',
'color: yellow;',
'}',
'.t-Region--accent1  > .t-Region-header {',
'    background-color: #003a85 !important;',
'    color: yellow !important;',
'    border-radius: 10px;',
'    ',
'}',
'.t-Region--accent2 > .t-Region-header {',
'    background-color: green !important;',
'    color: #ffffff !important;',
'    border-radius: 10px;',
'}',
'',
'.t-Region--accent3 > .t-Region-header {',
'    background-color: #b51503 !important;',
'    color: #ffffff !important;',
'    border-radius: 10px;',
'}',
'',
' #btnact,#btnlimp{   ',
'        background:white;',
'        background-image: linear-gradient(180deg, #ffee00e4  0%, #fff890 100%);',
'        color:  darkblue; ',
'        justify-content: center;',
'        align-items: center; ',
'        box-shadow: #79beca 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color: yellow; ',
'}',
''))
,p_step_template=>wwv_flow_imp.id(40071096862263645)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'CHARBA'
,p_last_upd_yyyymmddhh24miss=>'20240913102623'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24675039411441345)
,p_plug_name=>'Consulta de Derivaciones Realizadas'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useRegionTitle'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(24675194646441346)
,p_name=>'Casos'
,p_region_name=>'CASOS'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--textContent:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.ID_CASO,',
'       C.COD_CAMPANIA || ''-'' || CC.DESCRIPCION CAMPANHA,',
'       C.COD_MOTIVO || ''-'' || MO.DESCRIPCION MOTIVO,',
'       P.NOMBRE || ''('' || CLI.COD_CLIENTE || '')'' COD_CLIENTE,',
'       ''X'' CONTACTOS,',
'       C.OBSERVACION',
'  FROM CRM_CASOS    C,',
'       CRM_CAMPANIA CC,',
'       CC_CLIENTES  CLI,',
'       PERSONAS     P,',
'       CRM_MOTIVO   MO',
' WHERE C.COD_EMPRESA = :P_COD_EMPRESA',
'   AND C.COD_EMPRESA = CC.COD_EMPRESA',
'   AND C.COD_CAMPANIA = CC.COD_CAMPANIA',
'   AND MO.COD_MOTIVO = C.COD_MOTIVO',
'   AND MO.COD_EMPRESA = C.COD_EMPRESA',
'   AND CLI.COD_EMPRESA = C.COD_EMPRESA',
'   AND CLI.COD_CLIENTE = C.COD_CLIENTE',
'   AND P.COD_PERSONA = CLI.COD_PERSONA',
'   AND (C.COD_CLIENTE = :P158_CLIENTE_COD OR :P158_CLIENTE_COD IS NULL)',
'   AND 0 < (SELECT COUNT(*)',
'              FROM CRM_DERIVACIONES_CONTACTO D',
'             WHERE D.COD_EMPRESA = :P_COD_EMPRESA ',
'			   AND D.ID_CASO = C.ID_CASO',
'               AND D.COD_EMPRESA = C.COD_EMPRESA',
'               AND (D.ESTADO = :P158_ESTADO OR :P158_ESTADO = ''T'')',
'               AND (D.SUCURSAL_DERIVADA = :P158_COD_SUC_DERIV OR',
'                   :P158_COD_SUC_DERIV IS NULL)',
'               AND (D.AREA_DERIVADA = :P158_AREA_DERIV OR',
'                   :P158_AREA_DERIV IS NULL)',
'               AND (D.DPTO_DERIVADO = :P158_DPTO_DERIV OR',
'                   :P158_DPTO_DERIV IS NULL))',
' ORDER BY C.ID_CASO',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P158_CLIENTE_COD,P158_ESTADO,P158_COD_SUC_DERIV,P158_AREA_DERIV,P158_DPTO_DERIV'
,p_lazy_loading=>true
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>150000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Casos'
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
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27027302128233342)
,p_query_column_id=>1
,p_column_alias=>'ID_CASO'
,p_column_display_sequence=>40
,p_column_heading=>'Id Caso'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27027407528233343)
,p_query_column_id=>2
,p_column_alias=>'CAMPANHA'
,p_column_display_sequence=>50
,p_column_heading=>unistr('Campa\00F1a')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27027520788233344)
,p_query_column_id=>3
,p_column_alias=>'MOTIVO'
,p_column_display_sequence=>60
,p_column_heading=>'Motivo'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27027631625233345)
,p_query_column_id=>4
,p_column_alias=>'COD_CLIENTE'
,p_column_display_sequence=>20
,p_column_heading=>'Cliente'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27027750549233346)
,p_query_column_id=>5
,p_column_alias=>'CONTACTOS'
,p_column_display_sequence=>10
,p_column_heading=>'Ver Contactos'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript: void(0);'
,p_column_linktext=>'<img src="#APP_FILES#comunicar.png" width="25" height="25">'
,p_column_link_attr=>'class="setCASOS" data-id_caso="#ID_CASO#"'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27027824432233347)
,p_query_column_id=>6
,p_column_alias=>'OBSERVACION'
,p_column_display_sequence=>70
,p_column_heading=>'Observacion'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(26433642964807204)
,p_name=>'Contactos'
,p_region_name=>'CONTACT'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent2:t-Region--textContent:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--hideNoPagination'
,p_region_attributes=>'style="display:none"'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  C.ID_CASO,',
'        C.ID_CONTACTO,',
'        C.COD_CANAL||''-''||CC.DESCRIPCION CANAL,',
'        C.COD_USUARIO,',
'        C.FECHA_INICIO,',
'        C.FECHA_FIN,',
'        E.DESCRIPCION ESTADO,',
'        C.OBSERVACION,',
'        (SELECT COUNT(*) FROM CRM_DERIVACIONES_CONTACTO D WHERE C.ID_CASO = D.ID_CASO AND C.ID_CONTACTO = D.ID_CONTACTO AND C.COD_EMPRESA = D.COD_EMPRESA)CANT_DERIVACIONES,',
'        ''X'' VER_DERIVACIONES',
'  FROM CRM_CONTACTOS C,',
'       CRM_CANAL CC,',
'       CRM_ESTADOS E',
' WHERE C.COD_EMPRESA = :P_COD_EMPRESA',
'   AND C.ID_CASO = :P158_ID_CASO',
'   AND C.COD_CANAL = CC.COD_CANAL',
'   AND C.COD_EMPRESA = CC.COD_EMPRESA',
'   AND C.COD_EMPRESA = E.COD_EMPRESA',
'   AND C.COD_ESTADO = E.COD_ESTADO',
'   AND 0 < (SELECT COUNT(*)',
'              FROM CRM_DERIVACIONES_CONTACTO D',
'             WHERE D.ID_CASO = C.ID_CASO',
'               AND D.ID_CONTACTO = C.ID_CONTACTO',
'               AND D.COD_EMPRESA = C.COD_EMPRESA',
'               AND (D.ESTADO = :P158_ESTADO OR :P158_ESTADO = ''T'')',
'               AND (D.SUCURSAL_DERIVADA = :P158_COD_SUC_DERIV OR',
'                   :P158_COD_SUC_DERIV IS NULL)',
'               AND (D.AREA_DERIVADA = :P158_AREA_DERIV OR',
'                   :P158_AREA_DERIV IS NULL)',
'               AND (D.DPTO_DERIVADO = :P158_DPTO_DERIV OR',
'                   :P158_DPTO_DERIV IS NULL))',
' ORDER BY C.ID_CASO,C.ID_CONTACTO'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P158_ID_CASO,P158_ESTADO,P158_COD_SUC_DERIV,P158_AREA_DERIV,P158_DPTO_DERIV'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>150000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27027941674233348)
,p_query_column_id=>1
,p_column_alias=>'ID_CASO'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27028014542233349)
,p_query_column_id=>2
,p_column_alias=>'ID_CONTACTO'
,p_column_display_sequence=>20
,p_column_heading=>'ID Contacto'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27028169476233350)
,p_query_column_id=>3
,p_column_alias=>'CANAL'
,p_column_display_sequence=>30
,p_column_heading=>'Canal'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27738421954118601)
,p_query_column_id=>4
,p_column_alias=>'COD_USUARIO'
,p_column_display_sequence=>40
,p_column_heading=>'Cod Usuario'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27738512134118602)
,p_query_column_id=>5
,p_column_alias=>'FECHA_INICIO'
,p_column_display_sequence=>50
,p_column_heading=>'Fecha Inicio'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27738685850118603)
,p_query_column_id=>6
,p_column_alias=>'FECHA_FIN'
,p_column_display_sequence=>60
,p_column_heading=>'Fecha Fin'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27738751941118604)
,p_query_column_id=>7
,p_column_alias=>'ESTADO'
,p_column_display_sequence=>70
,p_column_heading=>'Estado'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27738859577118605)
,p_query_column_id=>8
,p_column_alias=>'OBSERVACION'
,p_column_display_sequence=>80
,p_column_heading=>'Observacion'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27738956426118606)
,p_query_column_id=>9
,p_column_alias=>'CANT_DERIVACIONES'
,p_column_display_sequence=>90
,p_column_heading=>'Cant Derivaciones'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27739047117118607)
,p_query_column_id=>10
,p_column_alias=>'VER_DERIVACIONES'
,p_column_display_sequence=>100
,p_column_heading=>'Ver Derivaciones'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript: $s(''P158_ID_CONTACTO'',''#ID_CONTACTO#'');'
,p_column_linktext=>'<img style="color : green" src="#APP_FILES#atencion-al-cliente.png" width="25" height="25">'
,p_column_link_attr=>'class="setCONTACT" data-contacto="#ID_CONTACTO#"'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(26435628926807224)
,p_name=>'Derivaciones'
,p_region_name=>'DERIVACIONES'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>30
,p_region_template_options=>'t-Region--noPadding:t-Region--accent3:t-Region--textContent:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--hideNoPagination'
,p_region_attributes=>'style="display:none"'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_DERIVACION,',
'       AREA_DERIVADA COD_AREA_DERIV,',
'       (SELECT R.DESCRIPCION',
'          FROM RH_AREAS R',
'         WHERE R.COD_EMPRESA = C.COD_EMPRESA',
'           AND R.COD_SUCURSAL = C.SUCURSAL_DERIVADA',
'           AND R.COD_AREA = C.AREA_DERIVADA) AREA_DERIVADA,',
'       (SELECT D.DESCRIPCION',
'          FROM RH_DEPARTAMENTOS D',
'         WHERE D.COD_EMPRESA = C.COD_EMPRESA',
'           AND D.COD_SUCURSAL = C.SUCURSAL_DERIVADA',
'           AND D.COD_AREA = C.AREA_DERIVADA',
'           AND D.COD_DEPARTAMENTO = C.DPTO_DERIVADO) DPTO_DERIVADO,',
'       OPERADOR_REC,',
'       FECHA_REC,',
'       OBS_REC,',
'       OPER_DERIV,',
'       FECHA_DERIV,',
'       OBS_DERIVADA,',
'       (SELECT E.DESCRIPCION',
'          FROM CRM_ESTADOS E',
'         WHERE E.COD_EMPRESA = C.COD_EMPRESA',
'           AND E.COD_ESTADO = C.ESTADO) ESTADO',
'  from CRM_DERIVACIONES_CONTACTO C',
' WHERE C.COD_EMPRESA = :P_COD_EMPRESA ',
'   AND C.ID_CASO = :P158_ID_CASO',
'   AND C.ID_CONTACTO = :P158_ID_CONTACTO',
'   AND (C.ESTADO = :P158_ESTADO OR :P158_ESTADO = ''T'')',
'   AND (C.SUCURSAL_DERIVADA = :P158_COD_SUC_DERIV OR :P158_COD_SUC_DERIV IS NULL)',
'   AND (C.AREA_DERIVADA = :P158_AREA_DERIV OR :P158_AREA_DERIV IS NULL)',
'   AND (C.DPTO_DERIVADO = :P158_DPTO_DERIV OR :P158_DPTO_DERIV IS NULL)',
' ORDER BY ID_DERIVACION',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P158_ID_CASO,P158_ID_CONTACTO,P158_ESTADO,P158_COD_SUC_DERIV,P158_AREA_DERIV,P158_DPTO_DERIV'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>1500000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No contiene derivaciones'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27739526075118612)
,p_query_column_id=>1
,p_column_alias=>'ID_DERIVACION'
,p_column_display_sequence=>50
,p_column_heading=>'ID Derivacion'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27739700694118614)
,p_query_column_id=>2
,p_column_alias=>'COD_AREA_DERIV'
,p_column_display_sequence=>70
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27739885893118615)
,p_query_column_id=>3
,p_column_alias=>'AREA_DERIVADA'
,p_column_display_sequence=>120
,p_column_heading=>'Area Derivada'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27739904142118616)
,p_query_column_id=>4
,p_column_alias=>'DPTO_DERIVADO'
,p_column_display_sequence=>130
,p_column_heading=>'Dpto. Derivado'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27740026229118617)
,p_query_column_id=>5
,p_column_alias=>'OPERADOR_REC'
,p_column_display_sequence=>140
,p_column_heading=>'Oper. Retorno'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27740152968118618)
,p_query_column_id=>6
,p_column_alias=>'FECHA_REC'
,p_column_display_sequence=>150
,p_column_heading=>'Fecha Retorno'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27740222664118619)
,p_query_column_id=>7
,p_column_alias=>'OBS_REC'
,p_column_display_sequence=>160
,p_column_heading=>'Obs. Retorno'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27740301424118620)
,p_query_column_id=>8
,p_column_alias=>'OPER_DERIV'
,p_column_display_sequence=>90
,p_column_heading=>'Oper. Emisor'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27740499863118621)
,p_query_column_id=>9
,p_column_alias=>'FECHA_DERIV'
,p_column_display_sequence=>100
,p_column_heading=>'Fecha Emitida'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27740552583118622)
,p_query_column_id=>10
,p_column_alias=>'OBS_DERIVADA'
,p_column_display_sequence=>110
,p_column_heading=>'Obs Emitida'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(27740650084118623)
,p_query_column_id=>11
,p_column_alias=>'ESTADO'
,p_column_display_sequence=>80
,p_column_heading=>'Estado'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27740742647118624)
,p_plug_name=>'Totalizador'
,p_region_name=>'DASH'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--textContent:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P158_ID_CASO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(27740869248118625)
,p_region_id=>wwv_flow_imp.id(27740742647118624)
,p_chart_type=>'pie'
,p_height=>'200'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlightAndExplode'
,p_no_data_found_message=>'No hay Datos'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(27740949406118626)
,p_chart_id=>wwv_flow_imp.id(27740869248118625)
,p_seq=>10
,p_name=>'Dash1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*),E.DESCRIPCION ESTADO',
'  FROM CRM_DERIVACIONES_CONTACTO C,',
'       CRM_ESTADOS E,',
'       CRM_CASOS CA',
' WHERE E.COD_EMPRESA   = C.COD_EMPRESA',
'   AND E.COD_ESTADO    = C.ESTADO',
'   AND CA.ID_CASO      = C.ID_CASO',
'   AND CA.COD_EMPRESA  = C.COD_EMPRESA',
'   AND (CA.COD_CLIENTE = :P158_CLIENTE_COD OR :P158_CLIENTE_COD IS NULL)',
'   AND (C.ESTADO       = :P158_ESTADO OR :P158_ESTADO = ''T'')',
'   AND (C.ID_CASO      = :P158_ID_CASO OR :P158_ID_CASO IS NULL)',
'   AND (C.ID_CONTACTO  = :P158_ID_CONTACTO OR :P158_ID_CONTACTO IS NULL)',
'   AND (C.SUCURSAL_DERIVADA = :P158_COD_SUC_DERIV OR :P158_COD_SUC_DERIV IS NULL)',
'   AND (C.AREA_DERIVADA = :P158_AREA_DERIV OR :P158_AREA_DERIV IS NULL)',
'   AND (C.DPTO_DERIVADO = :P158_DPTO_DERIV OR :P158_DPTO_DERIV IS NULL)',
'   AND C.COD_EMPRESA   = :P_COD_EMPRESA',
' GROUP BY E.DESCRIPCION',
''))
,p_ajax_items_to_submit=>'P158_ID_CONTACTO,P158_CLIENTE_COD,P158_ESTADO,P158_ID_CASO,P158_COD_SUC_DERIV,P158_AREA_DERIV,P158_DPTO_DERIV'
,p_series_name_column_name=>'ESTADO'
,p_items_value_column_name=>'COUNT(*)'
,p_items_label_column_name=>'ESTADO'
,p_items_short_desc_column_name=>'ESTADO'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'VALUE'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27742573307118642)
,p_plug_name=>'Tiempo de Respuesta'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--textContent:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P158_ID_CASO,P158_ID_CONTACTO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(27742671990118643)
,p_region_id=>wwv_flow_imp.id(27742573307118642)
,p_chart_type=>'lineWithArea'
,p_width=>'260'
,p_height=>'300'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'on'
,p_data_cursor_behavior=>'snap'
,p_hover_behavior=>'dim'
,p_stack=>'on'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'value-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>false
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_no_data_found_message=>unistr('No se ha seleccionado ninguna Derivaci\00F3n')
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(27742743138118644)
,p_chart_id=>wwv_flow_imp.id(27742671990118643)
,p_seq=>10
,p_name=>'Dash1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CONS.ID_DERIVACION,',
'       CONS.ID_CONTACTO,',
'       CONS.FECHA_REC,',
'       CONS.FECHA_DERIV,',
'       NVL(SUM(CONS.HORAS_REC),0) HORAS,',
'       MAX(CONS.HORAS_REC)MAX_HS,',
'       MIN(CONS.HORAS_REC)MIN_HS',
'            ',
'FROM(SELECT C.ID_DERIVACION,',
'       C.ID_CONTACTO,',
'       C.FECHA_REC,',
'       C.FECHA_DERIV,',
'       TRUNC((ROUND((DECODE(C.FECHA_REC,NULL,SYSDATE,C.FECHA_REC) - C.FECHA_DERIV) * 24, 4)) + 1) HORAS_REC',
'  FROM CRM_DERIVACIONES_CONTACTO C',
' WHERE C.ID_CASO = :P158_ID_CASO',
'   AND C.ID_CONTACTO = :P158_ID_CONTACTO',
'   AND C.COD_EMPRESA = :P_COD_EMPRESA',
'   AND (C.ESTADO = :P158_ESTADO OR :P158_ESTADO = ''T'')',
'   AND (C.SUCURSAL_DERIVADA = :P158_COD_SUC_DERIV OR :P158_COD_SUC_DERIV IS NULL)',
'   AND (C.AREA_DERIVADA = :P158_AREA_DERIV OR :P158_AREA_DERIV IS NULL)',
'   AND (C.DPTO_DERIVADO = :P158_DPTO_DERIV OR :P158_DPTO_DERIV IS NULL))CONS',
' GROUP BY CONS.ID_CONTACTO,',
'       CONS.ID_DERIVACION,',
'       CONS.FECHA_REC,',
'       CONS.FECHA_DERIV',
' ORDER BY CONS.ID_CONTACTO,CONS.ID_DERIVACION',
''))
,p_ajax_items_to_submit=>'P158_ID_CONTACTO,P158_ID_CASO,P158_ESTADO,P158_COD_SUC_DERIV,P158_AREA_DERIV,P158_DPTO_DERIV'
,p_series_name_column_name=>'ID_CONTACTO'
,p_items_value_column_name=>'HORAS'
,p_items_label_column_name=>'ID_DERIVACION'
,p_items_short_desc_column_name=>'HORAS'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'on'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(27742825201118645)
,p_chart_id=>wwv_flow_imp.id(27742671990118643)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Derivaciones'
,p_format_scaling=>'auto'
,p_scaling=>'log'
,p_baseline_scaling=>'min'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(27742973066118646)
,p_chart_id=>wwv_flow_imp.id(27742671990118643)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Tiempo de Respuessta'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(27960880656779006)
,p_chart_id=>wwv_flow_imp.id(27742671990118643)
,p_axis=>'y2'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_split_dual_y=>'auto'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27961766427779015)
,p_plug_name=>'Filtros'
,p_region_name=>'FILTROS'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:margin-top-sm:margin-left-md'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_display_point=>'REGION_POSITION_08'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27963252219779030)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27961766427779015)
,p_button_name=>'Limpiar'
,p_button_static_id=>'btnlimp'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_button_position=>'CLOSE'
,p_icon_css_classes=>'fa-eraser'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27963117104779029)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27961766427779015)
,p_button_name=>'ACTUALIZAR'
,p_button_static_id=>'btnact'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Actualizar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26433575261807203)
,p_name=>'P158_ID_CASO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(24675194646441346)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26435165091807219)
,p_name=>'P158_ID_CONTACTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(24675194646441346)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27961809300779016)
,p_name=>'P158_CLIENTE_COD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27961766427779015)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cliente '
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CLIENTE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_cliente||'' - ''||nombre D, ',
'         cod_cliente R',
'    FROM cc_clientes c, personas p',
'   WHERE c.cod_empresa = :P_COD_EMPRESA ',
'     AND c.cod_persona = p.cod_persona ',
'     AND nvl(c.estado,''X'') = ''A'' ',
'ORDER BY nombre;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(27962851332779026)
,p_name=>'P158_COD_SUC_DERIV'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(27961766427779015)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Suc. Derivada'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:262 - CDE;262,190 - SAN LORENZO(SL1);190,01 - CASA MATRIZ - ARTIGAS;01'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODAS LAS SUCURSALES'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186576483263678)
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
 p_id=>wwv_flow_imp.id(27962902637779027)
,p_name=>'P158_AREA_DERIV'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(27961766427779015)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\00C1rea Derivada')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.COD_AREA||''-''||A.DESCRIPCION D,',
'       A.COD_AREA R ',
'  FROM RH_AREAS A ',
'  WHERE A.COD_EMPRESA = :P_COD_EMPRESA',
'    AND A.COD_SUCURSAL = :P158_COD_SUC_DERIV'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>unistr('Todas las \00C1reas')
,p_lov_cascade_parent_items=>'P158_COD_SUC_DERIV'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186576483263678)
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
 p_id=>wwv_flow_imp.id(27963029152779028)
,p_name=>'P158_DPTO_DERIV'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(27961766427779015)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dpto. Derivado'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT D.COD_DEPARTAMENTO||''-''||D.DESCRIPCION D,',
'       D.COD_DEPARTAMENTO ',
'          FROM RH_DEPARTAMENTOS D',
'         WHERE D.COD_EMPRESA  = :P_COD_EMPRESA       ',
'           AND D.COD_SUCURSAL = :P158_COD_SUC_DERIV ',
'           AND D.COD_AREA     = :P158_AREA_DERIV;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Todos los departamentos'
,p_lov_cascade_parent_items=>'P158_COD_SUC_DERIV,P158_AREA_DERIV'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(29354078889448802)
,p_name=>'P158_ESTADO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(27961766427779015)
,p_use_cache_before_default=>'NO'
,p_item_default=>'T'
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT ''TODOS'',',
'        ''T''',
'  FROM DUAL',
'  UNION',
'SELECT E.DESCRIPCION,',
'       E.COD_ESTADO',
'  FROM CRM_ESTADOS E',
' WHERE E.COD_EMPRESA = :P_COD_EMPRESA ',
' ORDER BY 1 DESC',
''))
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'5'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27025276956233321)
,p_name=>'Clic en Casos'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.setCASOS'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27025320326233322)
,p_event_id=>wwv_flow_imp.id(27025276956233321)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''tr.level1_row'').slideUp(5, function(){$(this).remove();});',
'',
'gThis1 = $(this.triggeringElement);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27961541631779013)
,p_event_id=>wwv_flow_imp.id(27025276956233321)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P158_ID_CASO,P158_ID_CONTACTO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27025486860233323)
,p_event_id=>wwv_flow_imp.id(27025276956233321)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P158_ID_CASO'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).attr("data-id_caso")'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27025529090233324)
,p_event_id=>wwv_flow_imp.id(27025276956233321)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26433642964807204)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27741260768118629)
,p_event_id=>wwv_flow_imp.id(27025276956233321)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27740742647118624)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27961181581779009)
,p_event_id=>wwv_flow_imp.id(27025276956233321)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27742573307118642)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27025669174233325)
,p_name=>'Clic en Contactos'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.setCONTACT'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27025709257233326)
,p_event_id=>wwv_flow_imp.id(27025669174233325)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''tr.level2_row'').slideUp(5, function(){$(this).remove();});',
'gThis2 = $(this.triggeringElement);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27025850057233327)
,p_event_id=>wwv_flow_imp.id(27025669174233325)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P158_ID_CONTACTO'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).attr("data-contacto")'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27025993153233328)
,p_event_id=>wwv_flow_imp.id(27025669174233325)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26435628926807224)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27961629723779014)
,p_event_id=>wwv_flow_imp.id(27025669174233325)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27740742647118624)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27961282177779010)
,p_event_id=>wwv_flow_imp.id(27025669174233325)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27742573307118642)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27026038929233329)
,p_name=>'After Refresh Contactos'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(26433642964807204)
,p_bind_type=>'live'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27026172405233330)
,p_event_id=>wwv_flow_imp.id(27026038929233329)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var vThis = gThis1;',
'var vTRID = $v(''P158_ID_CASO'');',
'var vColSpan = $(vThis).closest("tr").find("td").length;',
'var vClass = $(vThis).closest("td").attr("class");',
'var vTR = $(vThis).closest("tr");',
'var vReportHTML = $(''#CONTACT'').clone();',
'vReportHTML = $(vReportHTML).removeAttr("id");',
'vReportHTML = $(vReportHTML).css("display", "block");',
'var vReportHTMLFinal = $(''<div>'').append($(vReportHTML)).html();',
'$(vTR).after(''<tr id="caso_''+vTRID+''" class="level1_row" style="display: none;"><td class="''+vClass+''" colspan="''+vColSpan+''" style="padding: 15px;">''+vReportHTMLFinal+''</td></tr>'');',
'$(''tr.level1_row'').slideDown(5);',
'$(''#DASH'').slideDown(5);',
'$(''#DASH'').css("display", "block");'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27742436543118641)
,p_event_id=>wwv_flow_imp.id(27026038929233329)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27740742647118624)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27026208776233331)
,p_name=>'After Refresh Derivaciones'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(26435628926807224)
,p_bind_type=>'live'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27026312491233332)
,p_event_id=>wwv_flow_imp.id(27026208776233331)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log("After Refresh Derivaciones");',
'var vThis = gThis2;',
'var vTRID = $v(''P158_ID_CONTACTO'');',
'var vColSpan = $(vThis).closest("tr").find("td").length;',
'console.log(vColSpan);',
'var vClass = $(vThis).closest("td").attr("class");',
'var vTR = $(vThis).closest("tr");',
'var vReportHTML = $(''#DERIVACIONES'').clone();',
'vReportHTML = $(vReportHTML).removeAttr("id");',
'vReportHTML = $(vReportHTML).css("display", "block");',
'var vReportHTMLFinal = $(''<div>'').append($(vReportHTML)).html();',
'$(vTR).after(''<tr id="contacto_''+vTRID+''" class="level2_row" style="display: none;"><td class="''+vClass+''" colspan="''+vColSpan+''" style="padding: 15px;">''+vReportHTMLFinal+''</td></tr>'');',
'$(''tr.level2_row'').slideDown(5);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27961405015779012)
,p_event_id=>wwv_flow_imp.id(27026208776233331)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27742573307118642)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27742115045118638)
,p_name=>'Iniciar Pagina'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27742292364118639)
,p_event_id=>wwv_flow_imp.id(27742115045118638)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27740742647118624)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27961356378779011)
,p_event_id=>wwv_flow_imp.id(27742115045118638)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27742573307118642)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27963983624779037)
,p_event_id=>wwv_flow_imp.id(27742115045118638)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24675194646441346)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27962185479779019)
,p_name=>'Cambiar Cliente Cod'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P158_CLIENTE_COD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27962365712779021)
,p_event_id=>wwv_flow_imp.id(27962185479779019)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24675194646441346)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27962452629779022)
,p_event_id=>wwv_flow_imp.id(27962185479779019)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27740742647118624)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27962592554779023)
,p_name=>'Cambiar Estado'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P158_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27962606845779024)
,p_event_id=>wwv_flow_imp.id(27962592554779023)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24675194646441346)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27962712235779025)
,p_event_id=>wwv_flow_imp.id(27962592554779023)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27740742647118624)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27963316329779031)
,p_name=>'Clic_Actualizar'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27963117104779029)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27963454885779032)
,p_event_id=>wwv_flow_imp.id(27963316329779031)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24675194646441346)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27963555709779033)
,p_event_id=>wwv_flow_imp.id(27963316329779031)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26433642964807204)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27963644928779034)
,p_event_id=>wwv_flow_imp.id(27963316329779031)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(26435628926807224)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27963707234779035)
,p_event_id=>wwv_flow_imp.id(27963316329779031)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27740742647118624)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27963804472779036)
,p_event_id=>wwv_flow_imp.id(27963316329779031)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27742573307118642)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27964012643779038)
,p_event_id=>wwv_flow_imp.id(27963316329779031)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24675194646441346)
);
wwv_flow_imp.component_end;
end;
/
