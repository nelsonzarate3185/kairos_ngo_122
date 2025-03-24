prompt --application/pages/page_00729
begin
--   Manifest
--     PAGE: 00729
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
 p_id=>729
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Consulta de OTS - CC'
,p_alias=>'CONSULTA-DE-OTS'
,p_step_title=>'Consulta de OTS'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var nro_ticket = apex.item("P729_ID_TICKET").getValue();',
'',
'function fn_actualiza_datos(p_cod_cliente, p_nro_comprobante, p_ser_comprobante, p_cod_articulo, p_origen, p_garantia) {',
'    apex.navigation.redirect(apex.util.makeApplicationUrl({',
'                    pageId:730,',
'                    itemNames: ["P730_COD_CLIENTE", "P730_PARAM_NRO_OT", "P730_PARAM_SER_OT", "P730_OPERACION", "P730_COD_ARTICULO_OT", "P730_COD_ARTICULO_OT_1", "P730_NRO_COMPROBANTE_REF", "P730_COD_ORIGEN_AUX","P730_GARANT","P730_NRO_TICKET"],',
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
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20241214102241'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(407751298168402298)
,p_plug_name=>'Ordenes de trabajo'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
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
'         AND NVL(ot.cod_articulo,OT.COD_ARTICULO_CALL) = ar.cod_articulo',
'         AND ot.cod_empresa = ar.cod_empresa',
'         AND ot.estado_presu = eo.cod_estado',
'         AND ot.cod_empresa = eo.cod_empresa',
'            --   AND (nvl(p_estado, ''T'') = ''T'' OR ot.estado_presu IN (p_estado))',
'         AND ((''T'') IN (:P729_ESTADO) OR',
'              ot.estado_presu IN',
'              ((SELECT TRIM(regexp_substr(:P729_ESTADO, ''[^,]+'', 1, LEVEL)) AS token',
'                 FROM dual',
'               CONNECT BY regexp_substr(:P729_ESTADO, ''[^,]+'', 1, LEVEL) IS NOT NULL)))',
'         AND (nvl(:P729_CLIENTE, ''T'') = ''T'' OR :P729_CLIENTE = ot.cod_cliente)',
'         AND (:P729_PROVEEDOR IS NULL OR :P729_PROVEEDOR = ot.cod_proveedor)',
'         AND (:P729_NRO_OT IS NULL OR :P729_NRO_OT = ot.nro_comprobante)',
'         AND (:P729_SER_OT IS NULL OR :P729_SER_OT = ot.ser_comprobante)',
'         AND (:P729_ORIGEN IS NULL OR :P729_ORIGEN = ot.cod_origen)',
'         AND (:P729_NRO_GARANTIA IS NULL OR :P729_NRO_GARANTIA = ot.GARANTIA_OT)',
'            ',
'            /*AND (p_fecha_ini IS NULL OR',
'            ot.fec_comprobante >= to_date(p_fecha_ini, ''DD/MM/YYYY''))*/',
'            ',
'         AND ((:P729_FECHA_ini IS NULL OR',
'              ot.fec_comprobante >= to_date(:P729_FECHA_ini, ''DD/MM/YYYY'') AND',
'              ot.fec_aprobacion IS NULL AND ot.fec_rechazo IS NULL) OR',
'              ot.fec_aprobacion >= to_date(:P729_FECHA_ini, ''DD/MM/YYYY'') OR',
'              ot.fec_rechazo >= to_date(:P729_FECHA_FIN, ''DD/MM/YYYY''))',
'         AND (:P729_FECHA_fin IS NULL OR',
'              ot.fec_comprobante <= to_date(:P729_FECHA_fin, ''DD/MM/YYYY''))',
'         AND (:P729_PARAM_CLIENTE IS NULL OR :P729_PARAM_CLIENTE = ot.cod_cliente)',
'       ORDER BY ot.fec_comprobante ASC',
'',
'       /*P729_ESTADO,P729_PARAM_CLIENTE,P729_FECHA_FIN,P729_FECHA_INI,P729_ORIGEN,P729_SER_OT,P729_NRO_OT,P729_PROVEEDOR,P729_CLIENTE,P729_TECNICO',
'       ',
'       */'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P729_ESTADO,P729_PARAM_CLIENTE,P729_FECHA_FIN,P729_FECHA_INI,P729_ORIGEN,P729_SER_OT,P729_NRO_OT,P729_PROVEEDOR,P729_CLIENTE,P729_TECNICO,P729_NRO_GARANTIA'
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
 p_id=>wwv_flow_imp.id(407751323933402299)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_LEFT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:730:&SESSION.::&DEBUG.:RR,729:P730_COD_CLIENTE,P730_PARAM_NRO_OT,P730_PARAM_SER_OT,P730_OPERACION,P730_COD_ARTICULO_OT,P730_COD_ARTICULO_OT_1,P730_NRO_COMPROBANTE_REF,P730_COD_ORIGEN_AUX:#COD_CLIENTE#,#NRO_COMPROBANTE#,#SER_COMPROBANTE#,'
||'MODIFICAR,#COD_ARTICULO#,#COD_ARTICULO#,#NRO_COMPROBANTE#,#COD_ORIGEN#'
,p_detail_link_text=>'<span aria-label="Editar"><span class="fa fa-search-plus" aria-hidden="true" title="Editar"></span></span>'
,p_detail_link_condition_type=>'FUNCTION_BODY'
,p_detail_link_cond=>'return false;'
,p_detail_link_cond2=>'PLSQL'
,p_owner=>'HSEGOVIA'
,p_internal_uid=>407751323933402299
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279200715633359959)
,p_db_column_name=>'OT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('N\00BA OT')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279201126883359960)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279201583630359960)
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
 p_id=>wwv_flow_imp.id(279201918827359960)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>unistr('C\00F3digo Art\00EDculo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279202375511359960)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>unistr('Descripci\00F3n Art\00EDculo')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279202746226359960)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279203145601359961)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279203591283359961)
,p_db_column_name=>'ESTADO_PRESU'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Estado Presu'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279203931440359961)
,p_db_column_name=>'SERIE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Serie'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279204360818359961)
,p_db_column_name=>'COD_ORIGEN'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cod Origen'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279204729427359961)
,p_db_column_name=>'IND_GARANTIA'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>unistr('En Garant\00EDa')
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279205114004359961)
,p_db_column_name=>'IND_ENTREGA'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Ind Entrega'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279205504422359962)
,p_db_column_name=>'COD_DISTRIBUIDOR'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Cod Distribuidor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279205996274359962)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279206366835359962)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Nombre Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279206715434359962)
,p_db_column_name=>'COD_STA'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Cod Sta'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279207124815359962)
,p_db_column_name=>'NRO_OT_PROVEEDOR'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Nro Ot Proveedor'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279207541402359962)
,p_db_column_name=>'COD_PROVEEDOR'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>unistr('T\00E9cnico')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(7890231354376850)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279207984909359963)
,p_db_column_name=>'HORA_CREACION'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>unistr('Hora Creaci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279208379362359963)
,p_db_column_name=>'FINALIZAR'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Visualizar'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279208751034359963)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279210734266359964)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279211105208359964)
,p_db_column_name=>'TIPO_CLIENTE'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Tipo Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(432285722763518216)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>330
,p_column_identifier=>'AI'
,p_column_label=>'Nro Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(432285849588518217)
,p_db_column_name=>'FECHA'
,p_display_order=>340
,p_column_identifier=>'AJ'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(432285973172518218)
,p_db_column_name=>'FEC_CIERRE'
,p_display_order=>350
,p_column_identifier=>'AK'
,p_column_label=>'Fec Cierre'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(432286078457518219)
,p_db_column_name=>'FEC_ENTREGA'
,p_display_order=>360
,p_column_identifier=>'AL'
,p_column_label=>'Fec Entrega'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(432286193697518220)
,p_db_column_name=>'GARANTIA_OT'
,p_display_order=>370
,p_column_identifier=>'AM'
,p_column_label=>'Garantia Ot'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(410652183382662615)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1314521'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FINALIZAR:OT:FECHA:ESTADO:NOM_CLIENTE:DESC_ARTICULO:IND_GARANTIA:COD_PROVEEDOR:'
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
 p_id=>wwv_flow_imp.id(593229742650874916)
,p_plug_name=>'Parametros'
,p_region_name=>'PARAMETROS'
,p_region_template_options=>'t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(751547035395995184)
,p_plug_name=>'Botones'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(289535373017011073)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(751547035395995184)
,p_button_name=>'visualizar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight:t-Button--padLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Visualizar OT'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'u-color-22-text'
,p_icon_css_classes=>'fa fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(289535795158011073)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(751547035395995184)
,p_button_name=>'Etiqueta'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Etiqueta'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'u-color-22-text'
,p_icon_css_classes=>'fa fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(289536188477011073)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(751547035395995184)
,p_button_name=>'Imprimir'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight:t-Button--padLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'u-color-22-text'
,p_icon_css_classes=>'fa fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(289536531053011074)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(751547035395995184)
,p_button_name=>'NUEVO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight:t-Button--padLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo'
,p_button_position=>'EDIT'
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'u-color-2-bg u-color-22-text'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(285813729330143330)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(751547035395995184)
,p_button_name=>'crear_cliente'
,p_button_static_id=>'CREA_CLIENTE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear Cliente'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.:CR,92:P92_CI,P92_RUC,P92_NOMBRE:&P729_CI.,&P729_RUC.,&P729_NOM_CLIENTE.'
,p_button_css_classes=>'u-color-1-bg'
,p_icon_css_classes=>'fa fa-pencil'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279215398106359968)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(751547035395995184)
,p_button_name=>'Limpiar'
,p_button_static_id=>'btn3'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-1-bg'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(285814207756143335)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(751547035395995184)
,p_button_name=>'CREAR_OT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear OT'
,p_button_position=>'EDIT'
,p_button_css_classes=>'u-color-1-bg'
,p_icon_css_classes=>'fa fa-pencil'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279214914077359968)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(751547035395995184)
,p_button_name=>'Buscar'
,p_button_static_id=>'btn2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-1-bg'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(285814173838143334)
,p_branch_name=>'ir_730'
,p_branch_action=>'f?p=&APP_ID.:730:&SESSION.::&DEBUG.:730:P730_OPERACION,P730_COD_CLIENTE:AGREGAR,&P729_CLIENTE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279151777062711708)
,p_name=>'P729_TECNICO'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(593229742650874916)
,p_prompt=>'Tecnico'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia)))||''- (''||c.cod_proveedor||'')'' nombre, c.cod_proveedor',
'  from cm_proveedores c, personas p',
' where c.cod_empresa = :P_COD_EMPRESA',
'   and c.ind_servicio_tecnico = ''STA''',
'   and c.cod_persona = p.cod_persona',
'AND NVL(C.ESTADO,''A'')NOT IN (''I'')   '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'...'
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
 p_id=>wwv_flow_imp.id(279211862031359967)
,p_name=>'P729_NRO_COMPROBANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(407751298168402298)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279212293948359967)
,p_name=>'P729_SER_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(407751298168402298)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279212637161359967)
,p_name=>'P729_OPERACION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(407751298168402298)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279213042017359967)
,p_name=>'P729_ID_TICKET'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(407751298168402298)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279215725995359969)
,p_name=>'P729_PROVEEDOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(593229742650874916)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct p.cod_proveedor',
'from usuarios u,',
'     cm_proveedores p',
'where u.cod_usuario= v(''app_user'')',
'AND   u.cod_persona=p.cod_persona',
'AND   p.cod_empresa = :P_COD_EMPRESA',
'AND   NVL(p.ESTADO,''A'')NOT IN (''I'') ',
'AND   p.ind_servicio_tecnico =''STNGO'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279216134580359969)
,p_name=>'P729_PARAM_CLIENTE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(593229742650874916)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279216564204359969)
,p_name=>'P729_CLIENTE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(593229742650874916)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_OTS_CONSULTAS_PAG_729'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct pr.nombre,cl.cod_cliente, v.documento',
'from  VW_ORDENES_TRABAJO_APX v,',
'      cc_clientes cl,',
'      personas pr',
'where v.COD_EMPRESA=cl.COD_EMPRESA',
'and   v.COD_CLIENTE=cl.cod_cliente',
'and   v.COD_EMPRESA = :P_COD_EMPRESA',
'and   cl.COD_EMPRESA = :P_COD_EMPRESA',
'and   cl.cod_persona=pr.cod_persona',
'and   nvl(cl.estado,'''')<>''I''',
'and  v.cod_cliente not in (''00000'')',
'AND   ( :P729_PROVEEDOR is null OR :P729_PROVEEDOR=v.COD_PROVEEDOR)',
'and   ( :P729_PARAM_CLIENTE is null or :P729_PARAM_CLIENTE=v.COD_CLIENTE)',
'union all',
'',
'select ''TODOS'',''T'', null',
'FROM DUAL',
'order by 2'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_lov_null_value=>'T'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
,p_attribute_08=>'1200'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279216967134359970)
,p_name=>'P729_ESTADO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(593229742650874916)
,p_item_default=>'T'
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct estado, estado_presu',
'from  VW_ORDENES_TRABAJO_APX t',
'where T.COD_EMPRESA = :P_COD_EMPRESA',
'union all',
'select ''TODOS'', ''T''',
'FROM DUAL',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'T'
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
 p_id=>wwv_flow_imp.id(279217358737359970)
,p_name=>'P729_ORIGEN'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(593229742650874916)
,p_prompt=>'Origen'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select o.descripcion ||'' - ''||o.cod_origen d, o.cod_origen',
'from vt_origenes o,',
'     cm_proveedores p,',
'     usuarios u',
'where o.cod_empresa = :P_COD_EMPRESA',
'and o.activo=''S''',
'and o.cod_empresa=p.cod_empresa',
'and o.origen=p.ind_servicio_tecnico',
'and p.cod_persona=u.cod_persona',
'and (v(''APP_USER'')not in (''FABIOARV'',''RICHARDISA'',''NORBERTORO'',''JOSEALF'',''EVERAQUI'',''ALEMCE'',''GASTROST'') ',
'        or (v(''APP_USER'') in (''FABIOARV'',''RICHARDISA'',''NORBERTORO'',''JOSEALF'',''EVERAQUI'',''ALEMCE'',''GASTROST'')  and o.cod_origen in(''38'',''15'')))',
'and u.cod_usuario=v(''APP_USER'')',
'union all ',
'select o.descripcion||'' - ''||o.cod_origen , o.cod_origen',
'from vt_origenes o  ',
'where o.cod_empresa = :P_COD_EMPRESA',
'and o.activo=''S''',
'and not exists (',
'      Select distinct ''1''',
'      from  cm_proveedores p,',
'            usuarios u',
'      where p.cod_empresa = :P_COD_EMPRESA',
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
 p_id=>wwv_flow_imp.id(279217721566359970)
,p_name=>'P729_FECHA_INI'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(593229742650874916)
,p_item_default=>'trunc(sysdate-to_char(sysdate,''DD''))+1'
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
 p_id=>wwv_flow_imp.id(279218193650359970)
,p_name=>'P729_FECHA_FIN'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(593229742650874916)
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
 p_id=>wwv_flow_imp.id(279218529890359970)
,p_name=>'P729_NRO_OT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(593229742650874916)
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
 p_id=>wwv_flow_imp.id(279218972113359970)
,p_name=>'P729_USER'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(593229742650874916)
,p_source=>'&APP_USER.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279219324734359970)
,p_name=>'P729_SER_OT'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(593229742650874916)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279219702553359971)
,p_name=>'P729_PARAM_NRO_OT'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(593229742650874916)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279220178288359971)
,p_name=>'P729_PARAM_SER_OT'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(593229742650874916)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279220578667359971)
,p_name=>'P729_COD_CLIENTE'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(593229742650874916)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279220952010359971)
,p_name=>'P729_PAGINA'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(593229742650874916)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(285812572320143318)
,p_name=>'P729_CI'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(593229742650874916)
,p_prompt=>'CI'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select   v.nombre ||'' ''||v.ruc d, v.ruc c',
'from  V_CLIENTE_APEX  v '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_lov_null_value=>'T'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(285812613815143319)
,p_name=>'P729_RUC'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(593229742650874916)
,p_prompt=>'RUC'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'select nombre||'' ''|| PR.numero D, pr.numero R',
'from cc_clientes c, ',
'     personas p, ',
'     ',
'     ident_personas pR ',
'where c.cod_empresa = :P_COD_EMPRESA',
'and c.cod_persona = p.cod_persona ',
'and p.cod_persona = pR.cod_persona',
'and pR.cod_ident=''RUC'' '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_lov_null_value=>'T'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(285813229933143325)
,p_name=>'P729_VCIUDAD'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(593229742650874916)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288155517650004242)
,p_name=>'P729_NOM_CLIENTE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(593229742650874916)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre'
,p_source=>'NOM_CLIENTE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288156798351004243)
,p_name=>'P729_PREFIJO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(593229742650874916)
,p_prompt=>'Prefijo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select token1,replace(token1,''09'',''+5959'') val',
' from (',
'SELECT TRIM(regexp_substr(''0961,0962,0963,0964,0965,0966,0971,0972,0973,0974,0975,0976,0981,0982,0983,0984,0985,0986,0991,0992,0993,0994,0995,0996''',
', ''[^,]+'', 1, LEVEL)) AS token1',
'FROM DUAL',
'CONNECT BY regexp_substr(''0961,0962,0963,0964,0965,0966,0971,0972,0973,0974,0975,0976,0981,0982,0983,0984,0985,0986,0991,0992,0993,0994,0995,0996'', ''[^,]+'', 1, LEVEL) IS NOT NULL',
')'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-phone'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288157177976004243)
,p_name=>'P729_TEL_CLIENTE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(593229742650874916)
,p_prompt=>'Telefono'
,p_placeholder=>'XXXXXX'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>6
,p_cMaxlength=>6
,p_tag_attributes=>'onkeydown="return isNumber(event);" style="background-color: #f0ffef; border-color: #4dff00"'
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
 p_id=>wwv_flow_imp.id(288157591574004243)
,p_name=>'P729_PREFIJO_ALT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(593229742650874916)
,p_prompt=>'Prefijo Alt'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select token1,replace(token1,''09'',''+5959'') val',
' from (',
'SELECT TRIM(regexp_substr(''0961,0962,0963,0964,0965,0966,0971,0972,0973,0974,0975,0976,0981,0982,0983,0984,0985,0986,0991,0992,0993,0994,0995,0996''',
', ''[^,]+'', 1, LEVEL)) AS token1',
'FROM DUAL',
'CONNECT BY regexp_substr(''0961,0962,0963,0964,0965,0966,0971,0972,0973,0974,0975,0976,0981,0982,0983,0984,0985,0986,0991,0992,0993,0994,0995,0996'', ''[^,]+'', 1, LEVEL) IS NOT NULL',
')'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-phone'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288157938837004244)
,p_name=>'P729_TEL_CLIENTE_1'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(593229742650874916)
,p_prompt=>'Telefono Alternativo'
,p_placeholder=>'XXXXXX'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>6
,p_cMaxlength=>6
,p_tag_attributes=>'onkeydown="return isNumber(event);" style="background-color: #f0ffef; border-color: #4dff00"'
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
 p_id=>wwv_flow_imp.id(288158382505004244)
,p_name=>'P729_DIR_CLIENTE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(593229742650874916)
,p_prompt=>'Dir Cliente'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="background-color: #f0ffef; border-color: #4dff00"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-map-o'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288159186481004244)
,p_name=>'P729_EMAIL'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(593229742650874916)
,p_prompt=>'Email'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="background-color: #f0ffef; border-color: #4dff00"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288159525966004244)
,p_name=>'P729_DEPARTAMENTO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(593229742650874916)
,p_prompt=>'Departamento'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PR.DESCRIPCION, PR.COD_PROVINCIA',
'from provincias pr',
'where pr.cod_pais=''PAR'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Todos'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288159963992004244)
,p_name=>'P729_CIUDAD'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(593229742650874916)
,p_prompt=>'Ciudad'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CT.DESCRIPCION, CT.COD_CIUDAD',
'from CIUDADES CT',
'where ct.cod_pais=''PAR''',
'AND (:P729_DEPARTAMENTO is null or :P729_DEPARTAMENTO= CT.COD_PROVINCIA )',
'AND (:P729_VCIUDAD is null or :P729_VCIUDAD= CT.COD_ciudad )'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Todos'
,p_lov_cascade_parent_items=>'P729_DEPARTAMENTO'
,p_ajax_items_to_submit=>'P729_DEPARTAMENTO'
,p_ajax_optimize_refresh=>'N'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(289537674432011076)
,p_name=>'P729_CERRADO'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(751547035395995184)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(432285690623518215)
,p_name=>'P729_NRO_GARANTIA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(593229742650874916)
,p_prompt=>'Nro. Garantia'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279223582498359973)
,p_name=>'CLIC_CL'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P729_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285812730815143320)
,p_event_id=>wwv_flow_imp.id(279223582498359973)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'        ',
'          declare',
'            vtipcliente varchar2(60);',
'          begin ',
'                    select  distinct t.codigo_area , REGEXP_REPLACE(t.num_telefono, ''[^0-9]'', ''''), c.tip_cliente',
'                    into :P729_PREFIJO, :P729_TEL_CLIENTE, vtipcliente',
'                    from cc_clientes c, telef_personas t',
'                    where c.cod_empresa = :P_COD_EMPRESA',
'                    and c.cod_cliente = :P729_cliente',
'                    and c.cod_persona = t.cod_persona',
'                    and por_defecto =''S''',
'                    and rownum = ''1''',
'                    ;',
'                ',
'             ',
'           exception',
'            when others then',
'                     :P729_PREFIJO:=null;',
'                     :P729_TEL_CLIENTE:=null;',
'           end;',
'        ',
'',
'exception ',
'    when others then',
'          :P729_TEL_CLIENTE:=  null;',
'end;',
' '))
,p_attribute_02=>'P729_CLIENTE'
,p_attribute_03=>'P729_TEL_CLIENTE,P729_PREFIJO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285812893391143321)
,p_event_id=>wwv_flow_imp.id(279223582498359973)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'',
' ',
':P729_DIR_CLIENTE := null;',
'',
':P729_EMAIL := null;',
'',
':P729_RUC := null;',
'                    declare ',
'                        vciudad varchar2(30);',
'                        vdepartamento varchar2(30);',
'                    begin ',
'                            select	     ',
'                                      ',
'                                        d.detalle||''-''||ci.descripcion dir_cliente,  ',
'                                    ',
'                                        CI.COD_PROVINCIA,',
'                                        cI.COD_CIUDAD,',
'                                        p.direc_electronica,',
'                                         P.NOMBRE',
'                                       INTO ',
'                                                        :P729_DIR_CLIENTE, ',
'                                                    ',
'                                                        vdepartamento,',
'                                                        vciudad,',
'                                                        :P729_EMAIL,',
'                                                          :P729_NOM_CLIENTE',
'',
'                                    from cc_clientes c, personas p, cc_causales b,',
'                                        direc_personas d, ',
'                                        telef_personas t, ',
'                                        ident_personas i, ',
'                                        ident_personas NC, ',
'                                        CIUDADES CI',
'                                where c.cod_empresa = :P_COD_EMPRESA',
'                                and c.cod_cliente = :P729_cliente',
'                                and c.cod_persona = p.cod_persona',
'                                and c.cod_causal  = b.cod_causal(+)',
'                                and c.cod_persona = d.cod_persona(+)',
'                                and nvl(d.por_defecto(+),''N'') = ''S''',
'                                and c.cod_persona             = t.cod_persona(+)',
'                                and nvl(t.por_defecto(+),''N'') = ''S''',
'                                and c.cod_persona           = i.cod_persona(+)',
'                                and nvl(i.cod_ident(+),''X'') = ''RUC''',
'                                AND CI.COD_PAIS (+)     = D.COD_PAIS',
'                                AND CI.COD_PROVINCIA (+)= D.COD_PROVINCIA',
'                                AND CI.COD_CIUDAD (+)   = D.COD_CIUDAD',
'                                and c.cod_persona           = NC.cod_persona(+)',
'                                and nvl(NC.cod_ident(+),''X'') = ''CI''',
'                                and rownum = 1;',
'',
'                            if :P729_PARAM_NRO_OT is null then',
'                                :P729_DEPARTAMENTO:=vdepartamento;',
'                                :P729_VCIUDAD:=vciudad;',
'                             :P730_CIUDAD:=vciudad;',
'                            end if;',
'                            ',
'                    EXCEPTION',
'                        WHEN OTHERS THEN',
'                              ',
'                                :P729_DIR_CLIENTE:=null; ',
'                               ',
'                                :P729_DEPARTAMENTO:=null;',
'                                :P729_VCIUDAD:=null;',
'                                :P729_EMAIL:=null;',
'                                :P729_NOM_CLIENTE:=NULL;',
'                                                               ',
'                              ',
'                    END;',
'                end;',
''))
,p_attribute_02=>'P729_CLIENTE'
,p_attribute_03=>'P729_DIR_CLIENTE, P729_EMAIL, P729_NOM_CLIENTE,P729_DEPARTAMENTO,P729_CIUDAD,P729_VCIUDAD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285813196863143324)
,p_event_id=>wwv_flow_imp.id(279223582498359973)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'',
' ',
'',
':P729_RUC := null;',
'',
':P729_CI := null;',
'',
'                    declare ',
'                        vciudad varchar2(30);',
'                        vdepartamento varchar2(30);',
'                    begin ',
'                            select	     ',
'                                      ',
'                                     ',
'                                        i.numero,',
'                                     ',
'                                         NC.numero ',
'                                       INTO  ',
'                                                        :P729_RUC,',
'                                                      ',
'                                                        :P729_CI ',
'',
'                                    from cc_clientes c, personas p, cc_causales b,',
'                                        direc_personas d, ',
'                                        telef_personas t, ',
'                                        ident_personas i, ',
'                                        ident_personas NC, ',
'                                        CIUDADES CI',
'                                where c.cod_empresa = :P_COD_EMPRESA',
'                                and c.cod_cliente = :P729_cliente',
'                                and c.cod_persona = p.cod_persona',
'                                and c.cod_causal  = b.cod_causal(+)',
'                                and c.cod_persona = d.cod_persona(+)',
'                                and nvl(d.por_defecto(+),''N'') = ''S''',
'                                and c.cod_persona             = t.cod_persona(+)',
'                                and nvl(t.por_defecto(+),''N'') = ''S''',
'                                and c.cod_persona           = i.cod_persona(+)',
'                                and nvl(i.cod_ident(+),''X'') = ''RUC''',
'                                AND CI.COD_PAIS (+)     = D.COD_PAIS',
'                                AND CI.COD_PROVINCIA (+)= D.COD_PROVINCIA',
'                                AND CI.COD_CIUDAD (+)   = D.COD_CIUDAD',
'                                and c.cod_persona           = NC.cod_persona(+)',
'                                and nvl(NC.cod_ident(+),''X'') = ''CI''',
'                                and rownum = 1;',
'',
'                           ',
'                            ',
'                    EXCEPTION',
'                        WHEN OTHERS THEN',
'                              ',
'                             ',
'                                :P729_RUC:=null;',
'                              ',
'                                :P729_CI :=  null;',
'                    END;',
'                end;',
''))
,p_attribute_02=>'P729_CLIENTE'
,p_attribute_03=>'P729_RUC,  P729_CI'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P729_CI'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279224087371359973)
,p_event_id=>wwv_flow_imp.id(279223582498359973)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.caordtra_370.pr_carga_ot(p_estado        => :P729_ESTADO,',
'                        p_param_cliente   => :P729_PARAM_CLIENTE,',
'                        p_fecha_fin     => :P729_FECHA_FIN,',
'                        p_fecha_ini     => :P729_FECHA_INI,',
'                        p_origen        => :P729_ORIGEN,',
'                        p_ser_ot        => :P729_SER_OT,',
'                        p_nro_ot        => :P729_NRO_OT,',
'                        p_proveedor     => :P729_PROVEEDOR,',
'                        p_cliente       => :P729_CLIENTE,',
'                        p_usuario       =>  :APP_USER);'))
,p_attribute_02=>'P729_ESTADO,P729_PARAM_CLIENTE,P729_FECHA_FIN,P729_FECHA_INI,P729_ORIGEN,P729_SER_OT,P729_NRO_OT,P729_PROVEEDOR,P729_CLIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279224549186359974)
,p_event_id=>wwv_flow_imp.id(279223582498359973)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(407751298168402298)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279224910955359974)
,p_name=>'CHNG_FEC_INI'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(279214914077359968)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(178179327554823638)
,p_event_id=>wwv_flow_imp.id(279224910955359974)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P729_FECHA_INI is null then',
'    RAISE_APPLICATION_ERROR(-20001, ''No se puede consultar con la fecha inicial nula'');',
'end if;'))
,p_attribute_02=>'P729_ESTADO,P729_PARAM_CLIENTE,P729_FECHA_FIN,P729_FECHA_INI,P729_ORIGEN,P729_SER_OT,P729_NRO_OT,P729_PROVEEDOR,P729_CLIENTE,P729_TECNICO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279225489135359974)
,p_event_id=>wwv_flow_imp.id(279224910955359974)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'var spinner = apex.util.showSpinner();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279225949476359974)
,p_event_id=>wwv_flow_imp.id(279224910955359974)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN /*inv.caordtra_370.pr_carga_ot(p_estado        => :P729_ESTADO,',
'                        p_param_cliente   => :P729_PARAM_CLIENTE,',
'                        p_fecha_fin     => :P729_FECHA_FIN,',
'                        p_fecha_ini     => :P729_FECHA_INI,',
'                        p_origen        => :P729_ORIGEN,',
'                        p_ser_ot        => :P729_SER_OT,',
'                        p_nro_ot        => :P729_NRO_OT,',
'                        p_proveedor     => :P729_TECNICO,',
'                        p_cliente       => :P729_CLIENTE,',
'                        p_usuario       =>  :APP_USER);*/',
'                        NULL;',
'                        END;'))
,p_attribute_02=>'P729_ESTADO,P729_PARAM_CLIENTE,P729_FECHA_FIN,P729_FECHA_INI,P729_ORIGEN,P729_SER_OT,P729_NRO_OT,P729_PROVEEDOR,P729_CLIENTE,P729_TECNICO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279226495533359974)
,p_event_id=>wwv_flow_imp.id(279224910955359974)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279226946664359974)
,p_event_id=>wwv_flow_imp.id(279224910955359974)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(407751298168402298)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279232392226359977)
,p_name=>'Limpia datos'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(279215398106359968)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279232860441359977)
,p_event_id=>wwv_flow_imp.id(279232392226359977)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P729_CLIENTE, P729_ESTADO, P729_ORIGEN, P729_FECHA_INI, P729_FECHA_FIN, P729_NRO_OT,P729_CI,P729_RUC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(330125649362269439)
,p_event_id=>wwv_flow_imp.id(279232392226359977)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   apex_collection.create_or_truncate_collection(p_collection_name => ''VT_ORDEN_TRABAJO'');',
'   :P729_FECHA_INI:=trunc(sysdate-to_char(sysdate,''DD''))+1;'))
,p_attribute_03=>'P729_FECHA_INI'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(330125753032269440)
,p_event_id=>wwv_flow_imp.id(279232392226359977)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(407751298168402298)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(285812984341143322)
,p_name=>'DA_CEDULA'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P729_CI'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285813057087143323)
,p_event_id=>wwv_flow_imp.id(285812984341143322)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P729_CLIENTE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_CLIENTE',
'from cc_clientes c, personas p, ident_personas pi ',
'where c.cod_empresa = :P_COD_EMPRESA',
'and c.cod_persona = p.cod_persona ',
'and p.cod_persona = pi.cod_persona',
'and pi.numero=:P729_CI',
'AND ROWNUM=1'))
,p_attribute_07=>'P729_CI'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(337528108668921304)
,p_name=>'DA_ruc'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P729_RUC'
,p_condition_element=>'P729_RUC'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(337528273936921305)
,p_event_id=>wwv_flow_imp.id(337528108668921304)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P729_CLIENTE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_CLIENTE',
'from cc_clientes c, personas p, ident_personas pi ',
'where c.cod_empresa = :P_COD_EMPRESA',
'and c.cod_persona = p.cod_persona ',
'and p.cod_persona = pi.cod_persona',
'and pi.numero=:P729_ruc',
'AND ROWNUM=1'))
,p_attribute_07=>'P729_RUC'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P729_RUC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(285813413352143327)
,p_name=>'da_cliente_inexistente'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P729_CLIENTE'
,p_condition_element=>'P729_CLIENTE'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
,p_display_when_type=>'NOT_EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_CLIENTE',
'from cc_clientes c, personas p ',
'where c.cod_empresa = :P_COD_EMPRESA',
'and c.cod_persona = p.cod_persona ',
'and C.COD_CLIENTE=:P729_CLIENTE',
'AND ROWNUM=1'))
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
 p_id=>wwv_flow_imp.id(285813593777143328)
,p_event_id=>wwv_flow_imp.id(285813413352143327)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Cliente no existe. Desea crear uno?'
,p_attribute_02=>'Cliente no existe'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285813617308143329)
,p_event_id=>wwv_flow_imp.id(285813413352143327)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(document).ready(function(){ $(''#CREA_CLIENTE'').trigger(''click''); }); '
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(285813874335143331)
,p_name=>'CLIENTE_SESION'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P729_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285813930565143332)
,p_event_id=>wwv_flow_imp.id(285813874335143331)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P729_CLIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(279221323650359972)
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(279221779688359972)
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
'             where cod_empresa = :P_COD_EMPRESA',
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
wwv_flow_imp.component_end;
end;
/
