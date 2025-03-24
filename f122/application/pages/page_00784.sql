prompt --application/pages/page_00784
begin
--   Manifest
--     PAGE: 00784
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
 p_id=>784
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Retiro de Productos'
,p_alias=>'RETIRO-DE-PRODUCTOS1'
,p_step_title=>'Retiro de Productos'
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
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Body-mainContent  { ',
'                        background: #1334682f!important;',
'                    }  ',
'',
'/*.container { background: white !important;}*/',
'  ',
'  .t-Form-label{',
'                color:  darkblue !important;     ',
'                font-weight: bold;',
'                } ',
'            ',
' ',
'',
'  .t-Report-colHead, .a-IRR-headerLink, .u-Report-sort, .u-Report-sortHeading a {',
'      background: #003a85!important;',
'       color: yellow !important; ',
' }'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'PBOGADO'
,p_last_upd_yyyymmddhh24miss=>'20241209155009'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(563172239473703899)
,p_name=>'OTS'
,p_region_name=>'ot'
,p_template=>wwv_flow_imp.id(40123385688263660)
,p_display_sequence=>1000
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
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
'        C027 ESTADO_PRESU,',
'        case when C017   = ''S''  THEN ',
'            APEX_ITEM.CHECKBOX(1,SEQ_ID, decode(C017,''S'',''CHECKED disabled'',''UNCHECKED'' )||'' onclick="seleccionar(''||SEQ_ID||'',''''''||C015||'''''')"'','' disabled'')',
'        ELSE ',
'            APEX_ITEM.CHECKBOX(1,SEQ_ID, decode(C015,''S'',''CHECKED'',''UNCHECKED'' )||'' onclick="seleccionar(''||SEQ_ID||'',''''''||C015||'''''')"'','' disabled'')',
'        END  SELECCIONAR,',
'        C017 SE',
'        FROM apex_collections',
'       WHERE collection_name = ''VT_ORDEN'';'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P784_ID_CLIENTE'
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
 p_id=>wwv_flow_imp.id(405241409824372107)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(405241861979372108)
,p_query_column_id=>2
,p_column_alias=>'TIP_COMPROBANTE'
,p_column_display_sequence=>20
,p_column_heading=>'Tipo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(405242264703372108)
,p_query_column_id=>3
,p_column_alias=>'SER_COMPROBANTE'
,p_column_display_sequence=>30
,p_column_heading=>'Serie'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(405242680818372109)
,p_query_column_id=>4
,p_column_alias=>'NRO_OT'
,p_column_display_sequence=>40
,p_column_heading=>unistr('N\00BA Ord. Trabajo')
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:588:&SESSION.::&DEBUG.:RR,588:P588_SER_COMPROBANTE,P588_NRO_COMPROBANTE:#SER_COMPROBANTE#,#NRO_OT#'
,p_column_linktext=>'#NRO_OT#'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(405243051246372109)
,p_query_column_id=>5
,p_column_alias=>'FECHA'
,p_column_display_sequence=>50
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(405243462919372109)
,p_query_column_id=>6
,p_column_alias=>'COD_CLIENTE'
,p_column_display_sequence=>60
,p_column_heading=>'Codigo Cliente'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(405243835793372109)
,p_query_column_id=>7
,p_column_alias=>'COD_CLIENTES'
,p_column_display_sequence=>70
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(405244279811372110)
,p_query_column_id=>8
,p_column_alias=>'NOM_CLIENTE'
,p_column_display_sequence=>80
,p_column_heading=>'Nombre del Cliente'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(405244636598372110)
,p_query_column_id=>9
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>90
,p_column_heading=>'Codigo Articulo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(405245015767372110)
,p_query_column_id=>10
,p_column_alias=>'CERRADO'
,p_column_display_sequence=>100
,p_column_heading=>'Cerrado'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(405245447695372111)
,p_query_column_id=>11
,p_column_alias=>'GARANTIA'
,p_column_display_sequence=>110
,p_column_heading=>'Garantia'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(405245809468372111)
,p_query_column_id=>12
,p_column_alias=>'IND_ENTREGA'
,p_column_display_sequence=>120
,p_column_heading=>'Entregado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(405246234468372111)
,p_query_column_id=>13
,p_column_alias=>'ANULADO'
,p_column_display_sequence=>130
,p_column_heading=>'Anulado'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(405246651233372111)
,p_query_column_id=>14
,p_column_alias=>'IND_FACTURADO'
,p_column_display_sequence=>140
,p_column_heading=>'Ind Facturado'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(405247034976372112)
,p_query_column_id=>15
,p_column_alias=>'IND_RETIRADO'
,p_column_display_sequence=>150
,p_column_heading=>'Retirado'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(405247486258372112)
,p_query_column_id=>16
,p_column_alias=>'SELE'
,p_column_display_sequence=>160
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(405247841765372112)
,p_query_column_id=>17
,p_column_alias=>'ESTADO_PRESU'
,p_column_display_sequence=>180
,p_column_heading=>'Estado'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(405248260054372113)
,p_query_column_id=>18
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
 p_id=>wwv_flow_imp.id(405248693140372113)
,p_query_column_id=>19
,p_column_alias=>'SE'
,p_column_display_sequence=>170
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(566101296190890902)
,p_plug_name=>'BOTONERAS'
,p_parent_plug_id=>wwv_flow_imp.id(563172239473703899)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(564981948166555698)
,p_plug_name=>'Filtros'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(405249309649372125)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(566101296190890902)
,p_button_name=>'Cancelar'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_redirect_url=>'f?p=&APP_ID.:486:&SESSION.::&DEBUG.:784::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(405249732236372126)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(566101296190890902)
,p_button_name=>'Verificar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Verificar'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(405250190573372126)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(566101296190890902)
,p_button_name=>'Procesar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Solicitar'
,p_grid_new_row=>'N'
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(405250809243372127)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(564981948166555698)
,p_button_name=>'Buscar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(405258195150372145)
,p_branch_name=>unistr('Ir a P\00E1gina 535')
,p_branch_action=>'f?p=&APP_ID.:535:&SESSION.::&DEBUG.::P535_COD_CLIENTE:&P784_ID_CLIENTE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(405249732236372126)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(405251249382372127)
,p_name=>'P784_ID_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(564981948166555698)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_CLIENTES_ATCPV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_cliente||'' - ''||nombre nombre, PR.numero RUC, PI.numero CI, c.cod_cliente',
'from cc_clientes c, ',
'     personas p, ',
'     --telef_personas pt, ',
'     ident_personas pi ,',
'     ident_personas pR--,',
'    -- VW_ORDENES_TRABAJO_APX v',
'where c.cod_empresa = :P_COD_EMPRESA',
'and c.cod_persona = p.cod_persona',
'and p.cod_persona = pi.cod_persona(+) ',
'and NVL(pi.cod_ident(+),''CI'')=''CI''',
'and p.cod_persona = pR.cod_persona(+) ',
'and NVL(pR.cod_ident(+),''RUC'')=''RUC''',
'--AND (nvl(c.estado, ''X'') IN (''A'',''I'') OR c.estado IS null)',
'/*',
'AND ((:P532_TIPO_CLIENTE <> ''1'' AND c.tip_cliente <> ''1'' ) OR',
'                       c.tip_cliente = :P532_TIPO_CLIENTE)*/',
'union all',
'',
'select ''TODOS'',''T'',null,null',
'FROM DUAL',
'order by 2'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P784_TIPO_CLIENTE'
,p_ajax_items_to_submit=>'P784_TIPO_CLIENTE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>'Informaciones'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(405251662960372133)
,p_name=>'P784_NOMBRE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(564981948166555698)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(405252040940372134)
,p_name=>'P784_PROVEEDOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(564981948166555698)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(405252426581372134)
,p_name=>'P784_PARAM_CLIENTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(564981948166555698)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(405252855892372134)
,p_name=>'P784_TIPO_CLIENTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(564981948166555698)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(405253259957372135)
,p_name=>'P784_ID_TICKET'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(564981948166555698)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(420667226340328320)
,p_name=>'P784_NRO_OT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(564981948166555698)
,p_prompt=>unistr('N\00B0 Orden Trabajo')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(405255290385372142)
,p_name=>'Refrescar region'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(405250809243372127)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(405255735221372143)
,p_event_id=>wwv_flow_imp.id(405255290385372142)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'inv.catickets.pr_carga_ot( :P_COD_EMPRESA, :P784_ID_CLIENTE,:P784_NRO_OT);'
,p_attribute_02=>'P784_ID_CLIENTE,P784_NRO_OT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(405256205369372144)
,p_event_id=>wwv_flow_imp.id(405255290385372142)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(563172239473703899)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(405256656415372145)
,p_name=>'Refrescar region_1'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(405257159847372145)
,p_event_id=>wwv_flow_imp.id(405256656415372145)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'inv.catickets.pr_carga_ot( :P_COD_EMPRESA,  :P784_ID_CLIENTE, :P784_NRO_OT);'
,p_attribute_02=>'P784_ID_CLIENTE,P784_NRO_OT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(405257609295372145)
,p_event_id=>wwv_flow_imp.id(405256656415372145)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(563172239473703899)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(405254854921372141)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Validaciones de Proceso'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'    v_contador NUMBER:= 0;',
'BEGIN',
'    begin ',
'         SELECT count(*)',
'         INTO v_contador',
'        FROM apex_collections',
'        WHERE collection_name = ''VT_ORDEN''',
'        AND c017 = ''S'';',
'        EXCEPTION ',
'            WHEN OTHERS THEN ',
'                v_contador := 0;',
'    end;',
'    IF v_contador  = 0 THEN',
'        RAISE_APPLICATION_ERROR (-20001, ''Se debe procesar la orden de trabajo'');',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(405249732236372126)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(405254468879372141)
,p_process_sequence=>20
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
'        WHERE collection_name = ''VT_ORDEN''',
'        AND c015 = ''S'';',
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
,p_process_when_button_id=>wwv_flow_imp.id(405250190573372126)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(405254092744372141)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Procesa datos'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'   cursor cur_detalles IS ',
'        SELECT seq_id,',
'        C001 tip_comprobante,',
'        C002 ser_comprobante,',
'        C003 nro_ot,',
'        C004 fecha,',
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
'        C015 SELE',
'        FROM apex_collections',
'       WHERE collection_name = ''VT_ORDEN''',
'       AND C015 = ''S'';',
'        ',
'    v_mensaje VARCHAR2(5000);',
'BEGIN',
'    FOR a IN cur_detalles LOOP',
'        inv.sp_solicita_ot_kairos(:APP_USER,',
'                           a.tip_comprobante,',
'                           a.ser_comprobante,',
'                           a.nro_ot,',
'                           ''S'',',
'                           v_mensaje,',
'                           :P784_ID_TICKET,',
'                           :P_COD_EMPRESA',
'                           );',
'    END LOOP;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(405250190573372126)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(405253642890372140)
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
'      APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (p_collection_name => ''VT_ORDEN'',',
'                                                p_seq => v_seq_id,',
'                                                p_attr_number  => ''15'',',
'                                                p_attr_value  => ''N''); ',
' ELSE ',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (p_collection_name => ''VT_ORDEN'',',
'                                            p_seq => v_seq_id,',
'                                            p_attr_number => ''15'',',
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
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
