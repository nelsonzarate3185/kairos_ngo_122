prompt --application/pages/page_00203
begin
--   Manifest
--     PAGE: 00203
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
 p_id=>203
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Seguimiento de Presupuesto'
,p_alias=>'SEGUIMIENTO-DE-PRESUPUESTO'
,p_step_title=>'Seguimiento de Presupuesto'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// standard, cacheable elements',
'var timeout = 0; // used for debounce on search',
'var CONTAINER_SEL = ''.t-Form-fieldContainer'';',
'var pagePrefix = ''P'' + $(''#pFlowStepId'').val();',
'var displayAsId = pagePrefix + ''_DISPLAY_AS'';',
'var $displayAs = $(''#'' + displayAsId);',
'var $body = $(''.t-PageBody'');',
'var $search = $(''#'' + pagePrefix + ''_SEARCH'');',
'var $sort = $(''#'' + pagePrefix + ''_SORT'');',
'var $reset = $(''#reset_button'');',
'var $cardsReg = $(''#cards_region'');',
'var $reportReg = $(''#report_region'');',
'var $gridReg = $(''#grid_region'');',
'',
'// custom items (will vary by page)',
'var $territory = $(''#'' + pagePrefix + ''_TERRITORY_ID'');',
'var $account = $(''#'' + pagePrefix + ''_ACCOUNT_ID'');',
'',
'function showLeftColumn() {',
'  $body',
'    .removeClass(''t-PageBody--hideLeft'')',
'    .addClass(''t-PageBody--showLeft'');',
'    ',
'  // Takes 200ms to hide column',
'  setTimeout(function() {',
'    // Ensure column headers align correctly',
'    $(window).trigger(''apexwindowresized'');',
'  }, 250);',
'}',
'',
'function hideLeftColumn() {',
'  $body',
'    .removeClass(''t-PageBody--showLeft'')',
'    .addClass(''t-PageBody--hideLeft'');',
'    ',
'  // Takes 200ms to hide column',
'  setTimeout(function() {',
'    // Ensure column headers align correctly',
'    $(window).trigger(''apexwindowresized'');',
'  }, 250);',
'}',
'  ',
'// applyFilters triggers the refresh event on the correct region',
'function applyFilters() {',
'  var display = $v(displayAsId);',
'  ',
'  if (display === ''CARDS'') {',
'    $cardsReg.trigger(''apexrefresh'');',
'  } else if (display === ''REPORT'') {',
'    $reportReg.trigger(''apexrefresh'');',
'  } else if (display === ''GRID'') {',
'    $gridReg.trigger(''apexrefresh'');',
'  }',
'}',
'',
'// toggleRegionDisplay is similar to applyFilters except that it also',
'// takes into account what regions or items need to be displayed or hidden',
'function toggleRegionDisplay(refresh) {',
'  var display = $v(displayAsId);',
'  ',
'  refresh = (refresh === false) ? false : true;',
'  ',
'  if (display === ''CARDS'') {',
'    $reportReg.hide();',
'    $gridReg.hide();',
'',
'    showLeftColumn();',
'',
'    $sort.closest(CONTAINER_SEL).show();',
'',
'    if (refresh) {',
'      $cardsReg.trigger(''apexrefresh'');',
'    }',
'    ',
'    $cardsReg.show();',
'  } else if (display === ''REPORT'') {',
'    $sort.closest(CONTAINER_SEL).hide();',
'    $cardsReg.hide();',
'    $gridReg.hide();',
'',
'    showLeftColumn();',
'',
'    if (refresh) {',
'      $reportReg.trigger(''apexrefresh'');',
'    }',
'',
'    $reportReg.show();',
'  } else if (display === ''GRID'') {',
'    $sort.closest(CONTAINER_SEL).hide();',
'    $cardsReg.hide();',
'    $reportReg.hide();',
'',
'    hideLeftColumn();',
'',
'    if (refresh) {',
'      $gridReg.trigger(''apexrefresh'');',
'    }',
'',
'    $gridReg.show();',
'  }',
'}',
'  ',
'function debounceSearch() {',
'  clearTimeout(timeout);',
'  ',
'  timeout = setTimeout(applyFilters, 250);',
'}',
'  ',
'function preventSubmitOnEnter(e) {',
'  if (e.which === 13) {',
'    return false;',
'  }',
'}',
'',
'function resetFilters() {',
'  $search.val(null);',
'  $territory.val(null);',
'  $account.val(null);',
'  ',
'  $sort.val(''NAME'');',
'',
'  applyFilters();',
'}',
'',
'// standard search event bindings',
'$search.keydown(preventSubmitOnEnter);',
'$search.keyup(debounceSearch);',
'',
'// dynamic event bindings (will vary by filter page)',
'$territory.change(applyFilters);',
'$account.change(applyFilters);',
'',
'// standard display, sort, reset event bindings',
'$displayAs.change(toggleRegionDisplay);',
'$sort.change(applyFilters);',
'$reset.click(resetFilters);',
'  ',
'toggleRegionDisplay(false);'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Card-initials {',
'  font-size: 14px;',
'}'))
,p_step_template=>wwv_flow_imp.id(40071096862263645)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'Use the filters on the left to show different results in the region on the right. The right region can be displayed in one of three ways (Cards View, Report View, and Customizable Grid) by using the display-mode buttons located just to the left of th'
||'e <strong>Create Contact</strong> button. Filters are not displayed in the Customizable Grid view.',
''))
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240917151043'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(134145883332014621)
,p_name=>'Detalle Tarjeta'
,p_region_name=>'cards_region'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--basic:t-Cards--displayIcons:t-Cards--4cols:t-Cards--animColorFill'
,p_region_attributes=>'style="display:none"'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''PRE-''||T.SER_COMPROBANTE||''-''||T.nro_comprobante card_title,',
'    T.COD_vendedor card_icon,',
'    T.cod_cliente card_initials,',
'    null card_text,',
'    ''Cliente: '' || t.nom_cliente card_text_p1,',
'    ''Email: '' || t.CORREO_CLIENTE card_text_p2,',
'    ''Telefono: '' || t.TEL_CLIENTE card_text_p3,',
'    ''Total: '' || TO_CHAR(t.tot_comprobante,''999G999G990'') card_text_p4,',
'    apex_util.prepare_url(',
'      ''f?p='' ||',
'      :APP_ID ||',
'      '':39:'' ||',
'      :APP_SESSION ||',
'      '':::39,RP:P39_NRO_COMPROBANTE,P39_SER_COMPROBANTE:'' ||',
'      t.nro_comprobante||'',''||t.ser_comprobante',
'    ) card_link,',
'    t.nro_comprobante ID,',
'    null card_subtext,',
'    ''Estado: ''||estado estado,',
'    ''Creado: ''||t.fec_comprobante fecha ,',
'    t.nom_cliente contact_name,',
'    t.nro_comprobante account_name,',
'    T.NRO_COMPROBANTE, T.SER_COMPROBANTE, t.fec_comprobante',
'  from v_presupuesto_ventas  T',
'  where COD_EMPRESA=:P_COD_EMPRESA AND :P203_DISPLAY_AS = ''CARDS''',
'    and (:P203_COD_VENDEDOR is null or t.COD_VENDEDOR = :P203_COD_VENDEDOR)',
'    and (:P203_COD_CLIENTE is null or T.cod_cliente = :P203_COD_CLIENTE)',
'    and (:P203_ESTADO is null or T.ESTADO = :P203_ESTADO)',
'    and (:P203_FECHA_INICIO is null or T.FEC_COMPROBANTE >= :P203_FECHA_INICIO)',
'    and (:P203_FECHA_FIN is null or T.FEC_COMPROBANTE <= :P203_FECHA_FIN)',
'    ',
'order by fec_comprobante',
'    '))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P203_COD_CLIENTE,P203_ESTADO,P203_COD_VENDEDOR,P203_DISPLAY_AS'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40141194770263665)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45659266954622845)
,p_query_column_id=>1
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>2
,p_column_heading=>'Card Title'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45659662756622845)
,p_query_column_id=>2
,p_column_alias=>'CARD_ICON'
,p_column_display_sequence=>3
,p_column_heading=>'Card Icon'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45660032462622845)
,p_query_column_id=>3
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>4
,p_column_heading=>'Card Initials'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45660464259622846)
,p_query_column_id=>4
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>5
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#CARD_TEXT_P1#<br >',
'<small>',
'#CARD_TEXT_P2#<br />',
'#CARD_TEXT_P3#<br />',
'#CARD_TEXT_P4#<br />',
'</small>',
''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45660887845622846)
,p_query_column_id=>5
,p_column_alias=>'CARD_TEXT_P1'
,p_column_display_sequence=>6
,p_column_heading=>'Card Text P1'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45661200620622846)
,p_query_column_id=>6
,p_column_alias=>'CARD_TEXT_P2'
,p_column_display_sequence=>7
,p_column_heading=>'Card Text P2'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45661662304622846)
,p_query_column_id=>7
,p_column_alias=>'CARD_TEXT_P3'
,p_column_display_sequence=>8
,p_column_heading=>'Card Text P3'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45662032356622846)
,p_query_column_id=>8
,p_column_alias=>'CARD_TEXT_P4'
,p_column_display_sequence=>9
,p_column_heading=>'Card Text P4'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45662442822622847)
,p_query_column_id=>9
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>10
,p_column_heading=>'Card Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45662895138622847)
,p_query_column_id=>10
,p_column_alias=>'ID'
,p_column_display_sequence=>11
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45663234868622847)
,p_query_column_id=>11
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>12
,p_column_heading=>'Card Subtext'
,p_use_as_row_header=>'N'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FECHA#<br >',
'<small>',
'#ESTADO#<br />',
'</small>'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45663610003622847)
,p_query_column_id=>12
,p_column_alias=>'ESTADO'
,p_column_display_sequence=>16
,p_column_heading=>'Estado'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45664091514622847)
,p_query_column_id=>13
,p_column_alias=>'FECHA'
,p_column_display_sequence=>17
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45664413461622847)
,p_query_column_id=>14
,p_column_alias=>'CONTACT_NAME'
,p_column_display_sequence=>13
,p_column_heading=>'Contact Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45664886125622848)
,p_query_column_id=>15
,p_column_alias=>'ACCOUNT_NAME'
,p_column_display_sequence=>14
,p_column_heading=>'Account Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45665261053622848)
,p_query_column_id=>16
,p_column_alias=>'NRO_COMPROBANTE'
,p_column_display_sequence=>15
,p_column_heading=>'Nro Comprobante'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45665698617622848)
,p_query_column_id=>17
,p_column_alias=>'SER_COMPROBANTE'
,p_column_display_sequence=>1
,p_column_heading=>'Ser Comprobante'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45666027269622848)
,p_query_column_id=>18
,p_column_alias=>'FEC_COMPROBANTE'
,p_column_display_sequence=>18
,p_column_heading=>'Fec Comprobante'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(134149038330014652)
,p_name=>'Reporte Presupuesto'
,p_region_name=>'report_region'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_region_attributes=>'style="display:none"'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select T.tip_comprobante,',
'       T.ser_comprobante,',
'       T.nro_comprobante,',
'       T.cod_cliente,',
'       T.nom_cliente,',
'       T.fec_comprobante,',
'       T.ESTADO,',
'       T.CORREO_CLIENTE,',
'       T.DIR_CLIENTE,',
'       T.TEL_CLIENTE,',
'       T.tot_comprobante, t.pedido',
'  from v_presupuesto_ventas  T',
'where :P203_DISPLAY_AS = ''REPORT''',
'    and (:P203_COD_VENDEDOR is null or t.COD_VENDEDOR = :P203_COD_VENDEDOR)',
'    and (:P203_COD_CLIENTE is null or T.cod_cliente = :P203_COD_CLIENTE)',
'    and (:P203_ESTADO is null or T.ESTADO = :P203_ESTADO)',
'    and (:P203_FECHA_INICIO is null or T.FEC_COMPROBANTE >= :P203_FECHA_INICIO)',
'    and (:P203_FECHA_FIN is null or T.FEC_COMPROBANTE <= :P203_FECHA_FIN)',
'    AND  COD_EMPRESA=:P_COD_EMPRESA '))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P203_COD_CLIENTE,P203_COD_VENDEDOR,P203_FECHA_INICIO,P203_FECHA_FIN,P203_ESTADO,P203_DISPLAY_AS'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Descargar'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_exp_separator=>';'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45666725043622849)
,p_query_column_id=>1
,p_column_alias=>'TIP_COMPROBANTE'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45667110182622849)
,p_query_column_id=>2
,p_column_alias=>'SER_COMPROBANTE'
,p_column_display_sequence=>2
,p_column_heading=>'Ser Comprobante'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45667563463622849)
,p_query_column_id=>3
,p_column_alias=>'NRO_COMPROBANTE'
,p_column_display_sequence=>3
,p_column_heading=>'Nro Comprobante'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.:RP,39:P39_SER_COMPROBANTE,P39_NRO_COMPROBANTE:#SER_COMPROBANTE#,#NRO_COMPROBANTE#'
,p_column_linktext=>'#NRO_COMPROBANTE#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45667954315622850)
,p_query_column_id=>4
,p_column_alias=>'COD_CLIENTE'
,p_column_display_sequence=>4
,p_column_heading=>'Cod Cliente'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45668353091622850)
,p_query_column_id=>5
,p_column_alias=>'NOM_CLIENTE'
,p_column_display_sequence=>5
,p_column_heading=>'Nom Cliente'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45668782057622850)
,p_query_column_id=>6
,p_column_alias=>'FEC_COMPROBANTE'
,p_column_display_sequence=>6
,p_column_heading=>'Fec Comprobante'
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45669157965622850)
,p_query_column_id=>7
,p_column_alias=>'ESTADO'
,p_column_display_sequence=>7
,p_column_heading=>'Estado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45669502296622850)
,p_query_column_id=>8
,p_column_alias=>'CORREO_CLIENTE'
,p_column_display_sequence=>8
,p_column_heading=>'Correo Cliente'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45669976234622850)
,p_query_column_id=>9
,p_column_alias=>'DIR_CLIENTE'
,p_column_display_sequence=>9
,p_column_heading=>'Dir Cliente'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45670387993622851)
,p_query_column_id=>10
,p_column_alias=>'TEL_CLIENTE'
,p_column_display_sequence=>10
,p_column_heading=>'Tel Cliente'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45670789722622851)
,p_query_column_id=>11
,p_column_alias=>'TOT_COMPROBANTE'
,p_column_display_sequence=>11
,p_column_heading=>'Total'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45671194922622851)
,p_query_column_id=>12
,p_column_alias=>'PEDIDO'
,p_column_display_sequence=>12
,p_column_heading=>'Pedido'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(134363993248720421)
,p_plug_name=>'Reporte Interactivo'
,p_region_name=>'grid_region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select T.tip_comprobante,',
'       T.ser_comprobante,',
'       T.nro_comprobante,',
'       T.cod_cliente,',
'       T.nom_cliente,',
'       T.fec_comprobante,',
'       T.ESTADO,',
'       T.CORREO_CLIENTE,',
'       T.DIR_CLIENTE,',
'       T.TEL_CLIENTE,',
'       T.tot_comprobante, t.pedido',
'  from v_presupuesto_ventas  T',
'where :P203_DISPLAY_AS = ''GRID''',
'    and (:P203_COD_VENDEDOR is null or t.COD_VENDEDOR = :P203_COD_VENDEDOR)',
'    and (:P203_COD_CLIENTE is null or T.cod_cliente = :P203_COD_CLIENTE)',
'    and (:P203_ESTADO is null or T.ESTADO = :P203_ESTADO)',
'    and (:P203_FECHA_INICIO is null or T.FEC_COMPROBANTE >= :P203_FECHA_INICIO)',
'    and (:P203_FECHA_FIN is null or T.FEC_COMPROBANTE <= :P203_FECHA_FIN)',
'AND  COD_EMPRESA=:P_COD_EMPRESA '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P203_DISPLAY_AS,P203_COD_CLIENTE,P203_ESTADO,P203_FECHA_INICIO,P203_COD_VENDEDOR,P203_FECHA_FIN'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>210
,p_prn_height=>297
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(134364197987720423)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'INV'
,p_internal_uid=>134364197987720423
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45671822487622852)
,p_db_column_name=>'TIP_COMPROBANTE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Tip Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45672291302622853)
,p_db_column_name=>'SER_COMPROBANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ser Comprobante'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45672691113622853)
,p_db_column_name=>'NRO_COMPROBANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nro Comprobante'
,p_column_link=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.:RP,39:P39_SER_COMPROBANTE,P39_NRO_COMPROBANTE:#SER_COMPROBANTE#,#NRO_COMPROBANTE#'
,p_column_linktext=>'#NRO_COMPROBANTE#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45673025445622854)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45673454926622854)
,p_db_column_name=>'NOM_CLIENTE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nom Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45673876425622854)
,p_db_column_name=>'FEC_COMPROBANTE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fec Comprobante'
,p_column_type=>'DATE'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45674291362622854)
,p_db_column_name=>'ESTADO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45674690205622854)
,p_db_column_name=>'CORREO_CLIENTE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Correo Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45675044342622854)
,p_db_column_name=>'DIR_CLIENTE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Dir Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45675464568622855)
,p_db_column_name=>'TEL_CLIENTE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Tel Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45675859968622855)
,p_db_column_name=>'TOT_COMPROBANTE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Tot Comprobante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45676202535622855)
,p_db_column_name=>'PEDIDO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Pedido'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(134378679146639812)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'CHART'
,p_report_alias=>'617960'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIP_COMPROBANTE:SER_COMPROBANTE:NRO_COMPROBANTE:COD_CLIENTE:NOM_CLIENTE:FEC_COMPROBANTE:ESTADO:CORREO_CLIENTE:DIR_CLIENTE:TEL_CLIENTE:TOT_COMPROBANTE:PEDIDO'
,p_chart_type=>'pie'
,p_chart_label_column=>'ESTADO'
,p_chart_label_title=>'Estado'
,p_chart_value_column=>'TOT_COMPROBANTE'
,p_chart_aggregate=>'SUM'
,p_chart_value_title=>'Total'
,p_chart_sorting=>'VALUE_ASC'
,p_chart_orientation=>'vertical'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6767581229888988607)
,p_plug_name=>'Filters'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10689331359265495310)
,p_plug_name=>'Presupuestos'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--hideIcon'
,p_plug_template=>wwv_flow_imp.id(40115692756263658)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6786143170933939286)
,p_plug_name=>'Page Settings'
,p_parent_plug_id=>wwv_flow_imp.id(10689331359265495310)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45677203023622857)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6767581229888988607)
,p_button_name=>'RESET'
,p_button_static_id=>'reset_button'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Reset'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45677661989622858)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6767581229888988607)
,p_button_name=>'Buscar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45680337286622861)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10689331359265495310)
,p_button_name=>'Crear_presupuesto'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear Presupuesto'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.:RP,44::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45678056054622858)
,p_name=>'P203_COD_CLIENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6767581229888988607)
,p_prompt=>'Cod Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NOM_CLIENTE, COD_CLIENTE',
'FROM v_presupuesto_ventas ',
'WHERE COD_EMPRESA=:P_COD_EMPRESA',
'GROUP BY NOM_CLIENTE, COD_Cliente',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>80
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45678477781622859)
,p_name=>'P203_ESTADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6767581229888988607)
,p_item_default=>'''PENDIENTE'''
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''PENDIENTE'' D, ''PENDIENTE'' C FROM DUAL UNION ALL',
'SELECT ''PROCESADO'' D, ''PROCESADO'' C FROM DUAL UNION ALL',
'SELECT ''ANULADO'' D, ''ANULADO'' C FROM DUAL '))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45678814022622860)
,p_name=>'P203_COD_VENDEDOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(6767581229888988607)
,p_item_default=>'NAME'
,p_prompt=>'Cod Vendedor'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_VENDEDORES4'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  P.NOMBRE,F.COD_VENDEDOR FROM FV_VENDEDORES F, PERSONAS P',
'WHERE F.COD_EMPRESA=:P_COD_EMPRESA',
'AND F.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'U'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45679219824622860)
,p_name=>'P203_FECHA_INICIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(6767581229888988607)
,p_item_default=>'SYSDATE-90;'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Inicio'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45679636129622860)
,p_name=>'P203_FECHA_FIN'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(6767581229888988607)
,p_item_default=>'sysdate+1'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Fin'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45681035153622863)
,p_name=>'P203_DISPLAY_AS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6786143170933939286)
,p_item_default=>'CARDS'
,p_prompt=>'Display'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'PILL_DISPLAY_AS1'
,p_lov=>'.'||wwv_flow_imp.id(45685243586622878)||'.'
,p_field_template=>wwv_flow_imp.id(40186365556263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:t-Form-fieldContainer--radioButtonGroup'
,p_is_persistent=>'U'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'4'
,p_attribute_02=>'NONE'
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
 p_id=>wwv_flow_imp.id(45681454216622864)
,p_name=>'Create Contact dialog closed'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45680337286622861)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45681953037622864)
,p_event_id=>wwv_flow_imp.id(45681454216622864)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var display = $v(''P203_DISPLAY_AS'');',
'',
'if (display === ''CARDS'') {',
'  $(''#cards_region'').trigger(''apexrefresh'');',
'} else if (display === ''REPORT'') {',
'  $(''#report_region'').trigger(''apexrefresh'');',
'} else if (display === ''GRID'') {',
'  $(''#grid_region'').trigger(''apexrefresh'');',
'}',
'',
'apex.message.showPageSuccess(''Action Processed.'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45682349629622865)
,p_name=>'refrescar_region'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45677661989622858)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45682842925622868)
,p_event_id=>wwv_flow_imp.id(45682349629622865)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(134145883332014621)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45683393935622868)
,p_event_id=>wwv_flow_imp.id(45682349629622865)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10689331359265495310)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45683850995622869)
,p_event_id=>wwv_flow_imp.id(45682349629622865)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(134363993248720421)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45684381868622869)
,p_event_id=>wwv_flow_imp.id(45682349629622865)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var display = $v(''P203_DISPLAY_AS'');',
'',
'if (display === ''CARDS'') {',
'  $(''#cards_region'').trigger(''apexrefresh'');',
'} else if (display === ''REPORT'') {',
'  $(''#report_region'').trigger(''apexrefresh'');',
'} else if (display === ''GRID'') {',
'  $(''#grid_region'').trigger(''apexrefresh'');',
'}',
''))
);
wwv_flow_imp.component_end;
end;
/
