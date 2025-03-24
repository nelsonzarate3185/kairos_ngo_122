prompt --application/pages/page_00400
begin
--   Manifest
--     PAGE: 00400
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
 p_id=>400
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CAORDTRAV'
,p_alias=>'CAORDTRAV'
,p_step_title=>'Ordenes de Trabajo'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var nro_ticket = apex.item("P400_ID_TICKET").getValue();',
'',
'function fn_actualiza_datos(p_cod_cliente, p_nro_comprobante, p_ser_comprobante, p_cod_articulo, p_origen, p_garantia) {',
'    apex.navigation.redirect(apex.util.makeApplicationUrl({',
'                    pageId:370,',
'                    itemNames: ["P370_COD_CLIENTE", "P370_PARAM_NRO_OT", "P370_PARAM_SER_OT", "P370_OPERACION", "P370_COD_ARTICULO_OT", "P370_COD_ARTICULO_OT_1", "P370_NRO_COMPROBANTE_REF", "P370_COD_ORIGEN_AUX","P370_GARANT","P370_NRO_TICKET"],',
'                    itemValues: [p_cod_cliente, p_nro_comprobante, p_ser_comprobante, "MODIFICAR", p_cod_articulo, p_cod_articulo, p_nro_comprobante,p_origen,p_garantia,nro_ticket]',
'                }));',
'',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color:  hsl(147, 69%, 87%)  !important;',
'   border-color:  #c9fceb  !important;',
'}',
'',
'',
'#GRILLA   th.a-IRR-header {',
'  background-color:  #003A85;',
'  color: yellow;',
' /* border-color: rgb(43, 79, 80);*/',
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
'',
'',
'',
'#btn{ ',
'       ',
'        background:white;',
'        background-image: linear-gradient(180deg, rgb(1, 1, 131)  0%, #003a85de 100%);',
'        color:  yellow; ',
'        justify-content: center;',
'        align-items: center; ',
'        box-shadow: #79beca 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color: darkblue; ',
'}',
'',
'#btn2, #btn3, #btn4{ ',
'       ',
'        background:white;',
'        background-image: linear-gradient(180deg, rgb(1, 1, 131)  0%, #003a85de 100%);',
'        color:  yellow; ',
'        justify-content: center;',
'        align-items: center; ',
'        box-shadow: #79beca 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color: darkblue; ',
'}',
'',
'',
'',
'',
'',
' ',
'',
'',
'',
'.chip {',
'    padding: 4px 10px;',
'    border-radius: 16px;',
'    box-shadow: 0 1px 2px 0 rgba(0, 0, 0, .05);',
'}',
'',
'.chip-success {',
'    background: #cdffe0;',
'    color: #00592e;',
'}',
'',
'.chip-danger {',
'    background: #ffebeb;',
'    color: #a50000;',
'}',
'',
'.chip-warning {',
'    background: #fffedc;',
'    color: #764400;',
'}',
'',
'.chip-primary {',
'    background: #e9f5ff;',
'    color: #004f95;',
'}',
'',
'.chip-purple {',
'    background: #eddbfa;',
'    color: #5200a5;',
'}',
'',
'.chip-pink {',
'    background: #ffeffa;',
'    color: #990067;',
'}',
'',
'.chip-orange {',
'    background: #fff2e4;',
'    color: #8d3600;',
'}',
'',
'.chip-teal {',
'    background: #e4fdff;',
'    color: #00526e;',
'}',
'',
'#btndet{   ',
'        background:white;',
'        background-image: linear-gradient(180deg, rgb(1, 1, 131)  0%, #003a85de 100%);',
'        color:  yellow; ',
'        ',
'        justify-content: center;',
'        align-items: center; ',
'        box-shadow: #79beca 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color: rgb(97, 91, 0); ',
'        ',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'PBOGADO'
,p_last_upd_yyyymmddhh24miss=>'20250301102512'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(128551196121042344)
,p_plug_name=>'Ordenes de trabajo'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'nro_comprobante seq_id,',
'    ot.ser_comprobante || ''-'' || ot.nro_comprobante ot,      ',
'       NVL(( SELECT ''<span class="chip chip-PINK  ">''||CCC.ESTADO||''</span> ''                   ',
'                        FROM ca_ots_a_rendir_det  CCC',
'                        WHERE CCC.COD_PROVEEDOR   = ot.cod_proveedor',
'                        AND CCC.NRO_COMPROBANTE =  ot.nro_comprobante',
'                        AND CCC.SER_COMPROBANTE =  ot.ser_comprobante',
'                        and ccc.cod_empresa=ot.cod_empresa',
'                        and ccc.tip_comprobante=ot.tip_comprobante',
'                        AND ROWNUM=1),',
'        CASE ',
'            WHEN ot.estado_presu IN (''CPR'',''CRR'',''CSR'',''CSS'',''CE'',''CAD'',''VR'') THEN  ---- Azul',
'            ''<span class="chip chip-warning ">''||eo.descripcion||''</span> ''',
'',
'            WHEN  ot.estado_presu IN (''RMC'',''RME'',''RRE'',''RSPP'',''RSPPE'',''R'',''RU'') THEN ------ ROJO',
'            ''<span class="chip chip-danger ">''||eo.descripcion||''</span> ''',
'',
'            WHEN ot.estado_presu IN (''C'',''E'',''RN'') THEN -------Celeste',
'            ''<span class="chip chip-success ">''||eo.descripcion||''</span> ''',
'',
'            WHEN  ot.estado_presu IN (''CAD'',''CO'',''LI'',''RB'') THEN  ------ Amarillo',
'            ''<span class="chip chip-orange ">''||eo.descripcion||''</span> '' ',
'',
'            WHEN  ot.estado_presu IN (''A'',''AP'',''P'') THEN --------  Verde',
'            ''<span class="chip chip-primary ">''||eo.descripcion||''</span> ''   ',
'',
'            WHEN  ot.estado_presu IN (''CR'',''EP'',''PE'',''PR'',''RI'',''V'') THEN ----Purpura',
'            ''<span class="chip chip-teal  ">''||eo.descripcion||''</span> '' ',
'            else',
'            ''<span class="chip chip-purple  ">''||eo.descripcion||''</span> '' ',
'           END  ) estado,',
'    ',
'     ser_comprobante,',
'      nro_comprobante,',
'    ot.fec_comprobante fecha,',
'    ot.cod_articulo cod_articulo,',
'    nvl(ar.descripcion, ot.cod_articulo_call) desc_articulo,',
'    ot.cod_empresa,',
'    ot.tip_comprobante,',
'    ot.estado_presu,',
'    ot.serie,',
'    ot.cod_origen,',
'    case WHEN ot.ind_garantia = ''S'' then ''GARANTIA'' ELSE ''PARTICULAR''END IND_GARANTIA,',
'    ot.ind_entrega,',
'    ot.fec_cierre,',
'    ot.fec_entrega,',
'    ot.cod_distribuidor,',
'    ot.cod_cliente,',
'    ot.nom_cliente,',
'ot.cod_sta,',
'ot.nro_ot_proveedor,',
'ot.cod_proveedor,',
'    ot.hora_creacion,',
'    ''<button type="button"  class="fa fa-user-magnifying-glass fam-check fam-is-success" id="btndet" onclick="fn_actualiza_datos('' ||',
'             ot.cod_cliente || '','' || ot.nro_comprobante || '','' || '''''''' ||',
'             ot.ser_comprobante || '''''''' || '','' || '''''''' || ot.cod_articulo || '''''''' || '','' || '''''''' ||',
'             ot.cod_origen || '''''''' || '','' || '''''''' ||',
'             nvl(ot.ind_garantia, ''N'') || '''''')"></button>'' finalizar,',
'    eo.descripcion descripcion,',
'    (SELECT decode(a.tip_cliente,',
'                            1,',
'                            ''Distribuidor'',',
'                            ''Cliente Final'')',
'                FROM cc_clientes a',
'               WHERE a.cod_empresa = :P_COD_EMPRESA',
'                 AND a.cod_cliente = ot.cod_cliente',
'                 AND rownum = 1) tipo_cliente ,',
'                 ot.garantia_ot',
'        FROM vt_ordenes_trabajo ot, st_articulos ar, ca_estado_ot eo',
'       WHERE   ot.cod_empresa=:p_cod_empresa',
'        ---- and nvl(ot.anulado, ''N'') <> ''S''',
'         AND ot.fec_comprobante IS NOT NULL',
'         AND ot.cod_articulo = ar.cod_articulo',
'         AND ot.cod_empresa = ar.cod_empresa',
'         AND ot.estado_presu = eo.cod_estado',
'         AND ot.cod_empresa = eo.cod_empresa',
'            --   AND (nvl(p_estado, ''T'') = ''T'' OR ot.estado_presu IN (p_estado))',
'         AND ((''T'') IN (:P400_ESTADO) OR',
'              ot.estado_presu IN',
'              ((SELECT TRIM(regexp_substr(:P400_ESTADO, ''[^,]+'', 1, LEVEL)) AS token',
'                 FROM dual',
'               CONNECT BY regexp_substr(:P400_ESTADO, ''[^,]+'', 1, LEVEL) IS NOT NULL)))',
'         AND (nvl(:P400_CLIENTE, ''T'') = ''T'' OR :P400_CLIENTE = ot.cod_cliente)',
'         AND (:P400_PROVEEDOR IS NULL OR :P400_PROVEEDOR = ot.cod_proveedor)',
'         AND (:P400_NRO_OT IS NULL OR :P400_NRO_OT = ot.nro_comprobante)',
'         AND (:P400_SER_OT IS NULL OR :P400_SER_OT = ot.ser_comprobante)',
'         AND (:P400_ORIGEN IS NULL OR :P400_ORIGEN = ot.cod_origen)',
'         AND (:P400_SERIE_PROD IS NULL OR :P400_SERIE_PROD = ot.serie)',
'            ',
'            /*AND (p_fecha_ini IS NULL OR',
'            ot.fec_comprobante >= to_date(p_fecha_ini, ''DD/MM/YYYY''))*/',
'            ',
'         AND ((:P400_FECHA_ini IS NULL OR',
'              ot.fec_comprobante >= to_date(:P400_FECHA_ini, ''DD/MM/YYYY'') AND',
'              ot.fec_aprobacion IS NULL AND ot.fec_rechazo IS NULL) OR',
'              ot.fec_aprobacion >= to_date(:P400_FECHA_ini, ''DD/MM/YYYY'') OR',
'              ot.fec_rechazo >= to_date(:P400_FECHA_FIN, ''DD/MM/YYYY''))',
'         AND (:P400_FECHA_fin IS NULL OR',
'              ot.fec_comprobante <= to_date(:P400_FECHA_fin, ''DD/MM/YYYY''))',
'         AND (:P400_PARAM_CLIENTE IS NULL OR :P400_PARAM_CLIENTE = ot.cod_cliente)',
'       ORDER BY ot.fec_comprobante ASC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P400_FECHA_INI,P400_PROVEEDOR,P400_SER_COMPROBANTE,P400_NRO_COMPROBANTE,P400_ESTADO,P400_CLIENTE,P400_ORIGEN,P400_FECHA_FIN,P400_PARAM_NRO_OT,P400_PARAM_SER_OT,P400_COD_CLIENTE,P400_NRO_OT,P400_SERIE_PROD'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Ordenes de trabajo'
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
 p_id=>wwv_flow_imp.id(128551221886042345)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_LEFT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:370:&SESSION.::&DEBUG.:RR,400:P370_COD_CLIENTE,P370_PARAM_NRO_OT,P370_PARAM_SER_OT,P370_OPERACION,P370_COD_ARTICULO_OT,P370_COD_ARTICULO_OT_1,P370_NRO_COMPROBANTE_REF,P370_COD_ORIGEN_AUX:#COD_CLIENTE#,#NRO_COMPROBANTE#,#SER_COMPROBANTE#,'
||'MODIFICAR,#COD_ARTICULO#,#COD_ARTICULO#,#NRO_COMPROBANTE#,#COD_ORIGEN#'
,p_detail_link_text=>'<span aria-label="Editar"><span class="fa fa-search-plus" aria-hidden="true" title="Editar"></span></span>'
,p_detail_link_condition_type=>'FUNCTION_BODY'
,p_detail_link_cond=>'return false;'
,p_detail_link_cond2=>'PLSQL'
,p_owner=>'HSEGOVIA'
,p_internal_uid=>128551221886042345
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128551350064042346)
,p_db_column_name=>'OT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('N\00BA OT')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128551418978042347)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(128551649326042349)
,p_db_column_name=>'ESTADO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131432711153373202)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>unistr('C\00F3digo Art\00EDculo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131432812517373203)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>unistr('Descripci\00F3n Art\00EDculo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131432903636373204)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131433013314373205)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131433199432373206)
,p_db_column_name=>'ESTADO_PRESU'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Estado Presu'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131433287640373207)
,p_db_column_name=>'SERIE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131433399389373208)
,p_db_column_name=>'COD_ORIGEN'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cod Origen'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131433429025373209)
,p_db_column_name=>'IND_GARANTIA'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>unistr('Garant\00EDa')
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131433564610373210)
,p_db_column_name=>'IND_ENTREGA'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Ind Entrega'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131433834222373213)
,p_db_column_name=>'COD_DISTRIBUIDOR'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Cod Distribuidor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131433960802373214)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131434018873373215)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Nombre Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131434156559373216)
,p_db_column_name=>'COD_STA'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Cod Sta'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131434252502373217)
,p_db_column_name=>'NRO_OT_PROVEEDOR'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Nro Ot Proveedor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131434304426373218)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>unistr('T\00E9cnico')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131434428779373219)
,p_db_column_name=>'HORA_CREACION'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>unistr('Hora Creaci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131434573485373220)
,p_db_column_name=>'FINALIZAR'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Visualizar'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131434665959373221)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(131435123405373226)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(175727097922649208)
,p_db_column_name=>'TIPO_CLIENTE'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Tipo Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(861498347828195534)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(861498403673195535)
,p_db_column_name=>'FECHA'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(861498565354195536)
,p_db_column_name=>'FEC_CIERRE'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Fec Cierre'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(861498649691195537)
,p_db_column_name=>'FEC_ENTREGA'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Fec Entrega'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(896692423425028201)
,p_db_column_name=>'GARANTIA_OT'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Garantia Ot'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(131452081335302661)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1314521'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FINALIZAR:OT:COD_ORIGEN:ESTADO:NOM_CLIENTE:TIPO_CLIENTE:IND_GARANTIA:GARANTIA_OT:COD_ARTICULO:DESC_ARTICULO:FECHA:HORA_CREACION:COD_PROVEEDOR:'
,p_sort_column_1=>'FECHA'
,p_sort_direction_1=>'DESC NULLS LAST'
,p_sort_column_2=>'HORA_CREACION'
,p_sort_direction_2=>'DESC NULLS LAST'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(314029640603514962)
,p_plug_name=>'Parametros'
,p_region_name=>'PARAMETROS'
,p_region_template_options=>'t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(861495475981195505)
,p_plug_name=>'Ordenes de trabajo_OLD'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select ',
'    seq_id,',
'    c001 ot,      ',
'       NVL(( SELECT ''<span class="chip chip-PINK  ">''||CCC.ESTADO||''</span> ''                   ',
'                        FROM ca_ots_a_rendir_det  CCC',
'                        WHERE CCC.COD_PROVEEDOR   = c022',
'                        AND CCC.NRO_COMPROBANTE =  c004',
'                        AND CCC.SER_COMPROBANTE =  c003',
'                        AND ROWNUM=1),',
'        CASE ',
'            WHEN c002 IN (''CPR'',''CRR'',''CSR'',''CSS'',''CE'',''CAD'',''VR'') THEN  ---- Azul',
'            ''<span class="chip chip-warning ">''||c025||''</span> ''',
'',
'            WHEN  c002 IN (''RMC'',''RME'',''RRE'',''RSPP'',''RSPPE'',''R'',''RU'') THEN ------ ROJO',
'            ''<span class="chip chip-danger ">''||c025||''</span> ''',
'',
'            WHEN c002 IN (''C'',''E'',''RN'') THEN -------Celeste',
'            ''<span class="chip chip-success ">''||c025||''</span> ''',
'',
'            WHEN  c002 IN (''CAD'',''CO'',''LI'',''RB'') THEN  ------ Amarillo',
'            ''<span class="chip chip-orange ">''||c025||''</span> '' ',
'',
'            WHEN  c002 IN (''A'',''AP'',''P'') THEN --------  Verde',
'            ''<span class="chip chip-primary ">''||c025||''</span> ''   ',
'',
'            WHEN  c002 IN (''CR'',''EP'',''PE'',''PR'',''RI'',''V'') THEN ----Purpura',
'            ''<span class="chip chip-teal  ">''||c025||''</span> '' ',
'            else',
'            ''<span class="chip chip-purple  ">''||c025||''</span> '' ',
'           END  ) estado,',
'    ',
'    c003 ser_comprobante,',
'    c004 nro_comprobante,',
'    c005 fecha,',
'    c006 cod_articulo,',
'    c007 desc_articulo,',
'    c008 cod_empresa,',
'    c009 tip_comprobante,',
'    c010 estado_presu,',
'    c011 serie,',
'    c012 cod_origen,',
'    c013 ind_garantia,',
'    c014 ind_entrega,',
'    c015 fec_cierre,',
'    c016 fec_entrega,',
'    c017 cod_distribuidor,',
'    c018 cod_cliente,',
'    c019 nom_cliente,',
'    c020 cod_sta,',
'    c021 nro_ot_proveedor,',
'    c022 cod_proveedor,',
'    c023 hora_creacion,',
'    c024 finalizar,',
'    c025 descripcion,',
'    c027 tipo_cliente',
'  from apex_collections',
' where collection_name = ''VT_ORDEN_TRABAJO_OLD''',
' order by to_date(c005, ''DD/MM/YYYY'') DESC;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P400_FECHA_INI,P400_PROVEEDOR,P400_SER_COMPROBANTE,P400_NRO_COMPROBANTE,P400_ESTADO,P400_CLIENTE,P400_ORIGEN,P400_FECHA_FIN,P400_PARAM_NRO_OT,P400_PARAM_SER_OT,P400_COD_CLIENTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Ordenes de trabajo_OLD'
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
 p_id=>wwv_flow_imp.id(861495533609195506)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_LEFT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:370:&SESSION.::&DEBUG.:RR,400:P370_COD_CLIENTE,P370_PARAM_NRO_OT,P370_PARAM_SER_OT,P370_OPERACION,P370_COD_ARTICULO_OT,P370_COD_ARTICULO_OT_1,P370_NRO_COMPROBANTE_REF,P370_COD_ORIGEN_AUX:#COD_CLIENTE#,#NRO_COMPROBANTE#,#SER_COMPROBANTE#,'
||'MODIFICAR,#COD_ARTICULO#,#COD_ARTICULO#,#NRO_COMPROBANTE#,#COD_ORIGEN#'
,p_detail_link_text=>'<span aria-label="Editar"><span class="fa fa-search-plus" aria-hidden="true" title="Editar"></span></span>'
,p_detail_link_condition_type=>'FUNCTION_BODY'
,p_detail_link_cond=>'return false;'
,p_detail_link_cond2=>'PLSQL'
,p_owner=>'NZARATE'
,p_internal_uid=>861495533609195506
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(861495666540195507)
,p_db_column_name=>'OT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('N\00BA OT')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(861495786205195508)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(861495859094195509)
,p_db_column_name=>'ESTADO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(861495964927195510)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('C\00F3digo Art\00EDculo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(861496091395195511)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('Descripci\00F3n Art\00EDculo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(861496127859195512)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(861496225834195513)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(861496314958195514)
,p_db_column_name=>'ESTADO_PRESU'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Estado Presu'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(861496413461195515)
,p_db_column_name=>'SERIE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(861496530251195516)
,p_db_column_name=>'COD_ORIGEN'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Origen'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(861496643875195517)
,p_db_column_name=>'IND_GARANTIA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>unistr('Garant\00EDa')
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(861496750611195518)
,p_db_column_name=>'IND_ENTREGA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Ind Entrega'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(861496866805195519)
,p_db_column_name=>'COD_DISTRIBUIDOR'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cod Distribuidor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(861496928389195520)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(861497088614195521)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Nombre Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(861497125192195522)
,p_db_column_name=>'COD_STA'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Cod Sta'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(861497257856195523)
,p_db_column_name=>'NRO_OT_PROVEEDOR'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Nro Ot Proveedor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(861497317203195524)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>unistr('T\00E9cnico')
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
 p_id=>wwv_flow_imp.id(861497473066195525)
,p_db_column_name=>'HORA_CREACION'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>unistr('Hora Creaci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(861497527794195526)
,p_db_column_name=>'FINALIZAR'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Visualizar'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(861497676723195527)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(861497721746195528)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(861497834146195529)
,p_db_column_name=>'FECHA'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(861497976103195530)
,p_db_column_name=>'FEC_CIERRE'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Fec Cierre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(861498043529195531)
,p_db_column_name=>'FEC_ENTREGA'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Fec Entrega'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(861498143613195532)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(861498272313195533)
,p_db_column_name=>'TIPO_CLIENTE'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Tipo Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(112633320023008413)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(314029640603514962)
,p_button_name=>'CREATE'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear OT'
,p_button_redirect_url=>'f?p=&APP_ID.:370:&SESSION.::&DEBUG.:CR,400,370:P370_OPERACION,P370_NRO_PAGINA,P370_NRO_TICKET:AGREGAR,&P400_PAGINA.,&P400_ID_TICKET.'
,p_button_css_classes=>'u-color-1-bg'
,p_icon_css_classes=>'fa fa-pencil'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(147541629637413027)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(314029640603514962)
,p_button_name=>'Salir'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ir a Atendimiento'
,p_button_redirect_url=>'f?p=&APP_ID.:486:&SESSION.::&DEBUG.:400::'
,p_button_css_classes=>'u-color-1-bg'
,p_grid_new_row=>'N'
,p_grid_column=>10
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(110450741104068131)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(314029640603514962)
,p_button_name=>'PANEL'
,p_button_static_id=>'btn4'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Ir a Tablero General'
,p_button_redirect_url=>'f?p=&APP_ID.:308:&SESSION.::&DEBUG.:370,400::'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'valor number := 0;',
'begin',
'begin',
'select DISTINCT 1',
'into valor',
'from usuarios u,',
'     cm_proveedores p',
'where u.cod_usuario=:APP_USER',
'and   u.cod_persona=p.cod_persona',
'and   p.cod_empresa=:P_COD_EMPRESA',
'and   p.ind_servicio_tecnico=''STNGO'';',
'exception when no_data_found then',
'return false;',
'end;',
'if valor > 0 then',
'return true;',
'end if;',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'u-color-1-bg'
,p_grid_new_row=>'N'
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(194801512520105041)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(314029640603514962)
,p_button_name=>'Buscar'
,p_button_static_id=>'btn2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-1-bg'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(199315306111590110)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(314029640603514962)
,p_button_name=>'Limpiar'
,p_button_static_id=>'btn3'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-1-bg'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103251819664652615)
,p_name=>'P400_ID_TICKET'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(128551196121042344)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110476254598213429)
,p_name=>'P400_PARAM_NRO_OT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(314029640603514962)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110476387428213430)
,p_name=>'P400_PARAM_SER_OT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(314029640603514962)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(110476482897213431)
,p_name=>'P400_COD_CLIENTE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(314029640603514962)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112634087890008416)
,p_name=>'P400_PROVEEDOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(314029640603514962)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct p.cod_proveedor',
'from usuarios u,',
'     cm_proveedores p',
'where u.cod_usuario= v(''app_user'')',
'AND   u.cod_persona=p.cod_persona',
'AND   p.cod_empresa=:P_COD_EMPRESA',
'AND   NVL(p.ESTADO,''A'')NOT IN (''I'') ',
'AND   p.ind_servicio_tecnico =''STNGO'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112634441138008417)
,p_name=>'P400_PARAM_CLIENTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(314029640603514962)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112634855129008417)
,p_name=>'P400_CLIENTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(314029640603514962)
,p_item_default=>'T'
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct (pr.nombre||'' - ''||cl.cod_cliente||'' - ''||cip.numero||'' - ''||rip.numero) as cliente,',
'	cl.cod_cliente',
'from  VW_ORDENES_TRABAJO_APX v,',
'      cc_clientes cl,',
'      personas pr, ',
'      IDENT_PERSONAS cip,',
'      IDENT_PERSONAs rip',
'where 	v.COD_EMPRESA=cl.COD_EMPRESA',
'and   	v.COD_CLIENTE=cl.cod_cliente',
'and   	cl.cod_persona=pr.cod_persona',
'AND   	pr.cod_persona = cip.cod_persona(+)',
'AND 	CIP.COD_IDENT(+)= ''CI''',
'AND 	pr.COD_PERSONA = RIP.COD_PERSONA(+)',
'AND 	RIP.COD_IDENT(+)= ''RUC''',
'and   nvl(cl.estado,'''')<>''I''',
'AND   ( :P400_PROVEEDOR is null OR :P400_PROVEEDOR=v.COD_PROVEEDOR)',
'and   ( :P400_PARAM_CLIENTE is null or :P400_PARAM_CLIENTE=v.COD_CLIENTE)',
'union all',
'',
'SELECT',
'	''TODOS'',',
'	''T''',
'FROM',
'	DUAL',
'ORDER BY',
'	2;'))
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
 p_id=>wwv_flow_imp.id(112635263454008417)
,p_name=>'P400_ESTADO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(314029640603514962)
,p_item_default=>'T'
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct estado, estado_presu',
'from  VW_ORDENES_TRABAJO_APX t',
'union all',
'select ''TODOS'', ''T''',
'FROM DUAL',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'Y'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_11=>','
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112635671774008417)
,p_name=>'P400_FECHA_INI'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(314029640603514962)
,p_item_default=>'trunc(sysdate)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha desde'
,p_format_mask=>'DD/MM/YYYY'
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
 p_id=>wwv_flow_imp.id(112636022448008418)
,p_name=>'P400_FECHA_FIN'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(314029640603514962)
,p_prompt=>'Fecha hasta'
,p_format_mask=>'DD/MM/YYYY'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112636461816008418)
,p_name=>'P400_ORIGEN'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(314029640603514962)
,p_prompt=>'Origen'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select o.descripcion, o.cod_origen',
'from vt_origenes o,',
'     cm_proveedores p,',
'     usuarios u',
'where o.cod_empresa=:P_cod_empresa',
'and o.activo=''S''',
'and o.cod_empresa=p.cod_empresa',
'and o.origen=p.ind_servicio_tecnico',
'and p.cod_persona=u.cod_persona',
'and (v(''APP_USER'')not in (''FABIOARV'',''RICHARDISA'',''NORBERTORO'',''JOSEALF'',''EVERAQUI'',''ALEMCE'',''GASTROST'') ',
'        or (v(''APP_USER'') in (''FABIOARV'',''RICHARDISA'',''NORBERTORO'',''JOSEALF'',''EVERAQUI'',''ALEMCE'',''GASTROST'')  and o.cod_origen in(''38'',''15'')))',
'and u.cod_usuario=v(''APP_USER'')',
'union all ',
'select o.descripcion, o.cod_origen',
'from vt_origenes o  ',
'where o.cod_empresa=:P_cod_empresa',
'and o.activo=''S''',
'and not exists (',
'      Select distinct ''1''',
'      from  cm_proveedores p,',
'            usuarios u',
'      where p.cod_empresa=:P_cod_empresa ',
'      and p.ind_servicio_tecnico is not null',
'      and p.cod_persona=u.cod_persona',
'      and u.cod_usuario=v(''APP_USER'')',
'     )',
'',
'',
'     ',
''))
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
 p_id=>wwv_flow_imp.id(112636821847008418)
,p_name=>'P400_USER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(314029640603514962)
,p_source=>'&APP_USER.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112637254391008418)
,p_name=>'P400_SER_OT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(314029640603514962)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(112637639704008418)
,p_name=>'P400_NRO_OT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(314029640603514962)
,p_prompt=>'Nro. OT'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124022967235827327)
,p_name=>'P400_NRO_COMPROBANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(128551196121042344)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124023045610827328)
,p_name=>'P400_SER_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(128551196121042344)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124023246944827330)
,p_name=>'P400_OPERACION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(128551196121042344)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(181181512330121002)
,p_name=>'P400_PAGINA'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(314029640603514962)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(951133829301717702)
,p_name=>'P400_SERIE_PROD'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(314029640603514962)
,p_prompt=>'Nro Serie'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112638345911008421)
,p_name=>'CLIC_EST'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P400_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131435592441373230)
,p_event_id=>wwv_flow_imp.id(112638345911008421)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.caordtra.pr_carga_ot(p_estado        => :P400_ESTADO,',
'                        p_param_cliente   => :P400_PARAM_CLIENTE,',
'                        p_fecha_fin     => :P400_FECHA_FIN,',
'                        p_fecha_ini     => :P400_FECHA_INI,',
'                        p_origen        => :P400_ORIGEN,',
'                        p_ser_ot        => :P400_SER_OT,',
'                        p_nro_ot        => :P400_NRO_OT,',
'                        p_proveedor     => :P400_PROVEEDOR,',
'                        p_cliente       => :P400_CLIENTE,',
'                        p_usuario       =>  :APP_USER);'))
,p_attribute_02=>'P400_ESTADO,P400_PARAM_CLIENTE,P400_FECHA_FIN,P400_FECHA_INI,P400_ORIGEN,P400_SER_OT,P400_NRO_OT,P400_PROVEEDOR,P400_CLIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131435617325373231)
,p_event_id=>wwv_flow_imp.id(112638345911008421)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(128551196121042344)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112639221313008422)
,p_name=>'CLIC_CL'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P400_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131435838232373233)
,p_event_id=>wwv_flow_imp.id(112639221313008422)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.caordtra.pr_carga_ot(p_estado        => :P400_ESTADO,',
'                        p_param_cliente   => :P400_PARAM_CLIENTE,',
'                        p_fecha_fin     => :P400_FECHA_FIN,',
'                        p_fecha_ini     => :P400_FECHA_INI,',
'                        p_origen        => :P400_ORIGEN,',
'                        p_ser_ot        => :P400_SER_OT,',
'                        p_nro_ot        => :P400_NRO_OT,',
'                        p_proveedor     => :P400_PROVEEDOR,',
'                        p_cliente       => :P400_CLIENTE,',
'                        p_usuario       =>  :APP_USER);'))
,p_attribute_02=>'P400_ESTADO,P400_PARAM_CLIENTE,P400_FECHA_FIN,P400_FECHA_INI,P400_ORIGEN,P400_SER_OT,P400_NRO_OT,P400_PROVEEDOR,P400_CLIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131435928602373234)
,p_event_id=>wwv_flow_imp.id(112639221313008422)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(128551196121042344)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112640113356008422)
,p_name=>'CHNG_FEC_INI'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(194801512520105041)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(199317821627590135)
,p_event_id=>wwv_flow_imp.id(112640113356008422)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131436052631373235)
,p_event_id=>wwv_flow_imp.id(112640113356008422)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN NULL;/*inv.caordtra.pr_carga_ot(p_estado        => :P400_ESTADO,',
'                        p_param_cliente   => :P400_PARAM_CLIENTE,',
'                        p_fecha_fin     => :P400_FECHA_FIN,',
'                        p_fecha_ini     => :P400_FECHA_INI,',
'                        p_origen        => :P400_ORIGEN,',
'                        p_ser_ot        => :P400_SER_OT,',
'                        p_nro_ot        => :P400_NRO_OT,',
'                        p_proveedor     => :P400_PROVEEDOR,',
'                        p_cliente       => :P400_CLIENTE,',
'                        p_usuario       =>  :APP_USER);*/',
'                        END;'))
,p_attribute_02=>'P400_ESTADO,P400_PARAM_CLIENTE,P400_FECHA_FIN,P400_FECHA_INI,P400_ORIGEN,P400_SER_OT,P400_NRO_OT,P400_PROVEEDOR,P400_CLIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(199317905901590136)
,p_event_id=>wwv_flow_imp.id(112640113356008422)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131436179372373236)
,p_event_id=>wwv_flow_imp.id(112640113356008422)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(128551196121042344)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112641029169008422)
,p_name=>'CHNG_FEC_FIN'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P400_FECHA_FIN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131436213057373237)
,p_event_id=>wwv_flow_imp.id(112641029169008422)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.caordtra.pr_carga_ot(p_estado        => :P400_ESTADO,',
'                        p_param_cliente   => :P400_PARAM_CLIENTE,',
'                        p_fecha_fin     => :P400_FECHA_FIN,',
'                        p_fecha_ini     => :P400_FECHA_INI,',
'                        p_origen        => :P400_ORIGEN,',
'                        p_ser_ot        => :P400_SER_OT,',
'                        p_nro_ot        => :P400_NRO_OT,',
'                        p_proveedor     => :P400_PROVEEDOR,',
'                        p_cliente       => :P400_CLIENTE,',
'                        p_usuario       =>  :APP_USER);'))
,p_attribute_02=>'P400_ESTADO,P400_PARAM_CLIENTE,P400_FECHA_FIN,P400_FECHA_INI,P400_ORIGEN,P400_SER_OT,P400_NRO_OT,P400_PROVEEDOR,P400_CLIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131436385501373238)
,p_event_id=>wwv_flow_imp.id(112641029169008422)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(128551196121042344)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(112641981714008422)
,p_name=>'Sltd_origen'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P400_ORIGEN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131436468434373239)
,p_event_id=>wwv_flow_imp.id(112641981714008422)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.caordtra.pr_carga_ot(p_estado        => :P400_ESTADO,',
'                        p_param_cliente   => :P400_PARAM_CLIENTE,',
'                        p_fecha_fin     => :P400_FECHA_FIN,',
'                        p_fecha_ini     => :P400_FECHA_INI,',
'                        p_origen        => :P400_ORIGEN,',
'                        p_ser_ot        => :P400_SER_OT,',
'                        p_nro_ot        => :P400_NRO_OT,',
'                        p_proveedor     => :P400_PROVEEDOR,',
'                        p_cliente       => :P400_CLIENTE,',
'                        p_usuario       =>  :APP_USER);'))
,p_attribute_02=>'P400_ESTADO,P400_PARAM_CLIENTE,P400_FECHA_FIN,P400_FECHA_INI,P400_ORIGEN,P400_SER_OT,P400_NRO_OT,P400_PROVEEDOR,P400_CLIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131436536390373240)
,p_event_id=>wwv_flow_imp.id(112641981714008422)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(128551196121042344)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(125039194497689543)
,p_name=>'Imprime reporte'
,p_event_sequence=>80
,p_condition_element=>'P400_OPERACION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'AGREGAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(125039522611689538)
,p_event_id=>wwv_flow_imp.id(125039194497689543)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var params = []',
'var params2 = []',
'var comprobante = document.getElementById("P400_NRO_COMPROBANTE").value; ',
'var ser_comprobante = document.getElementById("P400_SER_COMPROBANTE").value; ',
'var cod_empresa = document.getElementById("P_COD_EMPRESA").value;',
'',
'',
'                ',
'var usuario = ''&APP_USER.'';',
'params.push({ name: ''p_cod_empresa'', value: cod_empresa}) ',
'params.push({ name: ''p_tip_comprobante'', value: ''ORT''}) ',
'params.push({ name: ''p_ser_comprobante'', value: ser_comprobante}) ',
'params.push({ name: ''p_nro_comprobante'', value: comprobante}) ',
'',
'params2.push({ name: ''p_cod_empresa'', value: cod_empresa}) ',
'params2.push({ name: ''p_ser_comprobante'', value: ser_comprobante}) ',
'params2.push({ name: ''p_id_ticket'', value: comprobante}) ',
'',
'apex.server.process(',
'                ''VERIFICA_CONTADOR'', ',
'                { x01: comprobante,',
'                  x02: ser_comprobante}, ',
'                {',
'                success: function (pData) { ',
'                    if (pData.p_contador === 0) {',
unistr('                        var htmldb_delete_messag_agregar =''\00BFDesea Visualizar la OT Nro. '' + comprobante + '''';  '),
'                        apex.message.confirm(htmldb_delete_messag_agregar, function( okPressed ) { ',
'                            if( okPressed ) {',
'                                apex.server.process(',
'                                    ''CONTADOR_IMPRESION'', ',
'                                    { x01: comprobante,',
'                                    x02: ser_comprobante}, ',
'                                    {',
'                                    success: function (pData) { ',
'                                        null;',
'                                    }, ',
'                                    });',
'                                    ',
'                                    createReportUrl("CAORDTRA", params)',
unistr('                                var htmldb_delete_messag_agregar =''\00BFDesea Visualizar la etiqueta Nro. '' + comprobante + '''';  '),
'                                apex.message.confirm(htmldb_delete_messag_agregar, function( okPressed ) { ',
'                                    if( okPressed ) {',
'                                        createReportUrl("ETIQUETAOT", params2)',
'                                    } else {',
'                                        null;',
'                                    }',
'                                });',
'                            } else {',
unistr('                            var htmldb_delete_messag_agregar =''\00BFDesea Visualizar la etiqueta Nro. '' + comprobante + '''';  '),
'                                apex.message.confirm(htmldb_delete_messag_agregar, function( okPressed ) { ',
'                                    if( okPressed ) {',
'                                        createReportUrl("ETIQUETAOT", params2)',
'                                    } else {',
'                                        null;',
'                                    }',
'                                });',
'                            }',
'                        });',
'                    }else  {',
'                        null;',
'                    }',
'                }, ',
'                });',
'',
'',
'',
'',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(131435295695373227)
,p_name=>'Carga datos'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131435364327373228)
,p_event_id=>wwv_flow_imp.id(131435295695373227)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.caordtra.pr_carga_ot(p_estado        => :P400_ESTADO,',
'                        p_param_cliente   => :P400_PARAM_CLIENTE,',
'                        p_fecha_fin     => :P400_FECHA_FIN,',
'                        p_fecha_ini     => :P400_FECHA_INI,',
'                        p_origen        => :P400_ORIGEN,',
'                        p_ser_ot        => :P400_SER_OT,',
'                        p_nro_ot        => :P400_NRO_OT,',
'                        p_proveedor     => :P400_PROVEEDOR,',
'                        p_cliente       => :P400_CLIENTE,',
'                        p_usuario       =>  :APP_USER);'))
,p_attribute_02=>'P400_ESTADO,P400_PARAM_CLIENTE,P400_FECHA_FIN,P400_FECHA_INI,P400_ORIGEN,P400_SER_OT,P400_NRO_OT,P400_PROVEEDOR,P400_CLIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(131435404248373229)
,p_event_id=>wwv_flow_imp.id(131435295695373227)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(128551196121042344)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(199315409774590111)
,p_name=>'Limpia datos'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(199315306111590110)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(199315588833590112)
,p_event_id=>wwv_flow_imp.id(199315409774590111)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P400_CLIENTE, P400_ESTADO, P400_ORIGEN, P400_FECHA_INI, P400_FECHA_FIN, P400_NRO_OT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(861498774889195538)
,p_event_id=>wwv_flow_imp.id(199315409774590111)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P400_CLIENTE:=''T'';',
':P400_ESTADO:=''T'';'))
,p_attribute_03=>'P400_CLIENTE,P400_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(194797530433105001)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CONTADOR_IMPRESION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_nro_comprobante VARCHAR2(50);',
'    v_ser_comprobante VARCHAR2(50);',
'BEGIN',
'    v_nro_comprobante := apex_application.g_x01;',
'    v_ser_comprobante := apex_application.g_x02;',
'',
'        BEGIN ',
'          INSERT INTO VT_CONTADOR_IMPRESION_ORT (COD_EMPRESA, TIP_COMPROBANTE, SER_COMPROBANTE, NRO_COMPROBANTE, DESCRIPCION, FECHA, COD_USUARIO)',
'          VALUES(:P_COD_EMPRESA, ''ORT'',v_ser_comprobante,v_nro_comprobante,''1'', SYSDATE, :APP_USER );',
'        EXCEPTION ',
'            WHEN OTHERS THEN ',
'                RAISE_APPLICATION_ERROR(-20001, ''Error en la insercion en la tabla VT_CONTADOR_IMPRESION_ORT ''|| sqlerrm);',
'        END;',
'  apex_json.open_object;',
'  apex_json.write(''success'', TRUE);',
'  apex_json.close_object;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    apex_json.open_object;',
'    apex_json.write(''success'', FALSE);',
'    apex_json.close_object;',
'END;'))
,p_process_clob_language=>'PLSQL'
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
 p_id=>wwv_flow_imp.id(194797739342105003)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'VERIFICA_CONTADOR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_nro_comprobante VARCHAR2(50);',
'    v_ser_comprobante VARCHAR2(50);',
'    v_contador NUMBER := 0;',
'BEGIN',
'    v_nro_comprobante := apex_application.g_x01;',
'    v_ser_comprobante := apex_application.g_x02;',
'        BEGIN',
'            select COUNT(*)',
'            INTO v_contador',
'            from VT_CONTADOR_IMPRESION_ORT   ',
'             where cod_empresa =:p_cod_empresa',
'             and TIP_COMPROBANTE =''ORT''',
'             and SER_COMPROBANTE = v_ser_comprobante',
'             and nro_comprobante = v_nro_comprobante;',
'         EXCEPTION ',
'             WHEN OTHERS THEN ',
'                v_contador := 0;',
'         END;',
'          ',
'  apex_json.open_object;',
'  apex_json.write(''success'', TRUE);',
'  apex_json.write(''p_contador'', v_contador);',
'  apex_json.close_object;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    apex_json.open_object;',
'    apex_json.write(''success'', FALSE);',
'    apex_json.write(''p_contador'', v_contador);',
'    apex_json.close_object;',
'END;',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
);
null;
wwv_flow_imp.component_end;
end;
/
