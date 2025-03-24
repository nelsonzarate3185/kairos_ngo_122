prompt --application/pages/page_00586
begin
--   Manifest
--     PAGE: 00586
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
 p_id=>586
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'COMISIONES GENERADAS'
,p_alias=>'COMISIONES-GENERADAS'
,p_step_title=>'COMISIONES GENERADAS'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Scroll Results Only in Side Column */',
'.t-Body-side {',
'    display: flex;',
'    flex-direction: column;',
'    overflow: hidden;',
'}',
'.search-results {',
'    flex: 1;',
'    overflow: auto;',
'}',
'/* Format Search Region */',
'.search-region {',
'    border-bottom: 1px solid rgba(0,0,0,.1);',
'    flex-shrink: 0;',
'}',
'',
'.t-Body-side{',
'    background-color: #6088b9cb ;',
'}',
'.t-Report-colHead{',
'    color: #003A85 ;',
'     background-color: #fff8b7ae;',
'    background-image: linear-gradient(180deg, #fff8b79e 0%, #fffb7da2 100%);',
'}'))
,p_step_template=>wwv_flow_imp.id(40071096862263645)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20240902142540'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(195142309252515805)
,p_plug_name=>'Search'
,p_region_css_classes=>'search-region padding-md'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_02'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(195143150701515802)
,p_name=>'Master Records'
,p_template=>wwv_flow_imp.id(40097087111263653)
,p_display_sequence=>20
,p_region_css_classes=>'search-results'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'t-MediaList--showDesc:t-MediaList--stack'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x.COD_EMPRESA,',
'    null LINK_CLASS,',
'    apex_page.get_url(p_items => ''P586_COD_EMPRESA,P586_VENDEDOR_SELECT,P586_PERIODO_SELECT,P586_NOM_VEND'', ',
'    p_values => x.COD_EMPRESA||'',''||x.cod_vendedor||'',''||x.periodo||'','' ||x.COD_VENDEDOR||''-''||p.nombre) LINK,',
'    NULL  ICON_CLASS,',
'    null LINK_ATTR,',
'    null ICON_COLOR_CLASS,',
'    case when coalesce(:P586_COD_EMPRESA,''0'') = x.COD_EMPRESA',
'      then ''is-active'' ',
'      else '' ''',
'    end LIST_CLASS,',
'    (substr(x.COD_VENDEDOR||''-''||p.nombre, 1, 50)||( case when length(x.COD_VENDEDOR) > 50 then ''...'' else '''' end )) LIST_TITLE,',
'    (''PERIODO ''||substr("PERIODO", 1, 50)||( case when length("PERIODO") > 50 then ''...'' else '''' end )) LIST_TEXT,',
'    null LIST_BADGE',
'from FV_COMISIONES_NP x,',
'      fv_vendedores  v,',
'      personas p',
'where (:P586_SEARCH is null',
'        or upper(x.COD_VENDEDOR) like ''%''||upper(:P586_SEARCH)||''%''',
'        or upper(x."PERIODO") like ''%''||upper(:P586_SEARCH)||''%''',
'        or  upper(p.nombre) like ''%''||upper(:P586_SEARCH)||''%''',
'    )',
' and x.cod_vendedor = v.COD_VENDEDOR',
' and x.cod_empresa = v.COD_empresa  ',
' and v.cod_persona=p.cod_persona',
' and (:P586_VENDEDOR is null or x.cod_vendedor=:P586_VENDEDOR)',
' and ( :P586_PERIODO is null or x.periodo = :P586_PERIODO)',
'order by x.COD_VENDEDOR, x.PERIODO'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P586_SEARCH'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40156149831263669)
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<div class="u-tC">No data found.</div>'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195143883141515795)
,p_query_column_id=>1
,p_column_alias=>'COD_EMPRESA'
,p_column_display_sequence=>1
,p_column_heading=>'Cod Empresa'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195144260088515794)
,p_query_column_id=>2
,p_column_alias=>'LINK_CLASS'
,p_column_display_sequence=>2
,p_column_heading=>'Link Class'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195144654666515794)
,p_query_column_id=>3
,p_column_alias=>'LINK'
,p_column_display_sequence=>3
,p_column_heading=>'Link'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195145090448515794)
,p_query_column_id=>4
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>4
,p_column_heading=>'Icon Class'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195145499391515794)
,p_query_column_id=>5
,p_column_alias=>'LINK_ATTR'
,p_column_display_sequence=>5
,p_column_heading=>'Link Attr'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195145819612515793)
,p_query_column_id=>6
,p_column_alias=>'ICON_COLOR_CLASS'
,p_column_display_sequence=>6
,p_column_heading=>'Icon Color Class'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195146225173515793)
,p_query_column_id=>7
,p_column_alias=>'LIST_CLASS'
,p_column_display_sequence=>7
,p_column_heading=>'List Class'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195146620102515793)
,p_query_column_id=>8
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>8
,p_column_heading=>'List Title'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195147078951515793)
,p_query_column_id=>9
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>9
,p_column_heading=>'List Text'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195147411429515792)
,p_query_column_id=>10
,p_column_alias=>'LIST_BADGE'
,p_column_display_sequence=>10
,p_column_heading=>'List Badge'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(195150795315515640)
,p_name=>unistr('Comisi\00F3n Vendedores')
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>10
,p_region_css_classes=>'js-master-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'       COD_USUARIO,',
'       FECHA_ALTA,',
'       PERIODO,',
'       MES,',
'       ANIO,',
'       COD_VENDEDOR,',
'       BASE_COMISION,',
'       PESO_FACT,',
'       PESO_CUMP,',
'       TOT_VENTA,',
'       TOT_COMISION,',
'       nvl((select p.nombre',
'        from fv_vendedores v,',
'             personas p',
'        where v.cod_empresa= cc.cod_empresa',
'        and   v.cod_vendedor= cc.cod_vendedor',
'        and   v.cod_persona=p.cod_persona',
'        ),''NN'')vendedor,',
'        null eliminar ',
'  from FV_COMISIONES_NP cc',
' where COD_EMPRESA = :P586_COD_EMPRESA',
' and ( cod_vendedor=:P586_VENDEDOR  or cod_vendedor=:P586_VENDEDOR_SELECT)',
' and ( periodo = :P586_PERIODO or periodo = :P586_PERIODO_SELECT) ',
'',
' ---'))
,p_display_when_condition=>'P586_COD_EMPRESA'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P586_PERIODO_SELECT,P586_VENDEDOR_SELECT,P586_VENDEDOR,P586_PERIODO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No se encuentran registros.'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195151471195515638)
,p_query_column_id=>1
,p_column_alias=>'COD_EMPRESA'
,p_column_display_sequence=>1
,p_column_heading=>'Cod Empresa'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "FV_COMISIONES_NP"',
'where "COD_EMPRESA" is not null',
'and "COD_EMPRESA" = :P586_COD_EMPRESA'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195151848454515638)
,p_query_column_id=>2
,p_column_alias=>'COD_USUARIO'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "FV_COMISIONES_NP"',
'where "COD_USUARIO" is not null',
'and "COD_EMPRESA" = :P586_COD_EMPRESA'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195152230765515638)
,p_query_column_id=>3
,p_column_alias=>'FECHA_ALTA'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "FV_COMISIONES_NP"',
'where "FECHA_ALTA" is not null',
'and "COD_EMPRESA" = :P586_COD_EMPRESA'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195152618988515638)
,p_query_column_id=>4
,p_column_alias=>'PERIODO'
,p_column_display_sequence=>4
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "FV_COMISIONES_NP"',
'where "PERIODO" is not null',
'and "COD_EMPRESA" = :P586_COD_EMPRESA'))
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195153062532515637)
,p_query_column_id=>5
,p_column_alias=>'MES'
,p_column_display_sequence=>16
,p_column_heading=>'MES'
,p_use_as_row_header=>'N'
,p_column_format=>'Month'
,p_column_alignment=>'CENTER'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "FV_COMISIONES_NP"',
'where "MES" is not null',
'and "COD_EMPRESA" = :P586_COD_EMPRESA'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195153480133515637)
,p_query_column_id=>6
,p_column_alias=>'ANIO'
,p_column_display_sequence=>6
,p_column_heading=>unistr('A\00D1O')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "FV_COMISIONES_NP"',
'where "ANIO" is not null',
'and "COD_EMPRESA" = :P586_COD_EMPRESA'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195153847700515637)
,p_query_column_id=>7
,p_column_alias=>'COD_VENDEDOR'
,p_column_display_sequence=>26
,p_column_heading=>'CODIGO'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "FV_COMISIONES_NP"',
'where "COD_VENDEDOR" is not null',
'and "COD_EMPRESA" = :P586_COD_EMPRESA'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195154290273515637)
,p_query_column_id=>8
,p_column_alias=>'BASE_COMISION'
,p_column_display_sequence=>46
,p_column_heading=>'BASE COMISION'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "FV_COMISIONES_NP"',
'where "BASE_COMISION" is not null',
'and "COD_EMPRESA" = :P586_COD_EMPRESA'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195154675223515637)
,p_query_column_id=>9
,p_column_alias=>'PESO_FACT'
,p_column_display_sequence=>56
,p_column_heading=>'PESO FACT.%'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "FV_COMISIONES_NP"',
'where "PESO_FACT" is not null',
'and "COD_EMPRESA" = :P586_COD_EMPRESA'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195155054508515637)
,p_query_column_id=>10
,p_column_alias=>'PESO_CUMP'
,p_column_display_sequence=>66
,p_column_heading=>'PESO CUMP.%'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "FV_COMISIONES_NP"',
'where "PESO_CUMP" is not null',
'and "COD_EMPRESA" = :P586_COD_EMPRESA'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195155470957515637)
,p_query_column_id=>11
,p_column_alias=>'TOT_VENTA'
,p_column_display_sequence=>76
,p_column_heading=>'TOTAL VENTA'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "FV_COMISIONES_NP"',
'where "TOT_VENTA" is not null',
'and "COD_EMPRESA" = :P586_COD_EMPRESA'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195155858934515636)
,p_query_column_id=>12
,p_column_alias=>'TOT_COMISION'
,p_column_display_sequence=>86
,p_column_heading=>'TOTAL COMISION'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "FV_COMISIONES_NP"',
'where "TOT_COMISION" is not null',
'and "COD_EMPRESA" = :P586_COD_EMPRESA'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(193663358230252027)
,p_query_column_id=>13
,p_column_alias=>'VENDEDOR'
,p_column_display_sequence=>36
,p_column_heading=>'VENDEDOR'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195727894512446406)
,p_query_column_id=>14
,p_column_alias=>'ELIMINAR'
,p_column_display_sequence=>96
,p_column_heading=>'Eliminar'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P586_DEL_PERIODO'',''#PERIODO#'');$s(''P586_DEL_COD_VEND'',''#COD_VENDEDOR#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(195164134449515629)
,p_plug_name=>'Region Display Selector'
,p_region_css_classes=>'js-detail-rds'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P586_COD_EMPRESA'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(195164535284515629)
,p_name=>'DETALLE DE COMISION'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-detail-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ---ROWID,',
'       COD_EMPRESA,',
'       COD_USUARIO,',
'       FECHA_ALTA,',
'       PERIODO,',
'       MES,',
'       ANIO,',
'       COD_VENDEDOR,',
'       COD_GRUPO,',
'       BASE_COMISION,',
'       PORC_PESO,',
'       OBJETIVO,',
'       LOGRADO,',
'       PORC_LOGRO,',
'       VALOR_RATIO,',
'       TOT_COMISION  ,',
'        case COD_GRUPO',
'            when ''0'' then ''OTRAS MARCAS''',
'            when ''1'' then ''VENTA EN GUARDA'' ',
unistr('            when ''2'' then  ''FINANCIACI\00D3N'''),
'            when ''3'' then ''MARGEN NETO''',
unistr('            WHEN ''4'' then ''DEVOLUCI\00D3N'''),
'         ELSE',
'               nvl((select descripcion from st_marcas where cod_marca = COD_GRUPO),''NN'')',
'         END GRUPO,',
'',
'         ',
'        case WHEN COD_GRUPO IN (''1'',''2'',''3'',''4'') THEN ''CUMPLIMIENTO DE POLITICAS''',
'         ELSE',
'                ''POLITICA FACTURACION''',
'         END POLITICA  ,',
'         1 ORDEN     ',
'  from FV_COMISIONES_NP_DET',
' where COD_EMPRESA = :P586_COD_EMPRESA ',
' and ( cod_vendedor=:P586_VENDEDOR  or cod_vendedor=:P586_VENDEDOR_SELECT)',
' and ( periodo = :P586_PERIODO or periodo = :P586_PERIODO_SELECT) ',
'UNION ALL',
'',
'select ---NULL,',
'       COD_EMPRESA,',
'       COD_USUARIO,',
'       FECHA_ALTA,',
'       PERIODO,',
'       MES,',
'       ANIO,',
'       COD_VENDEDOR,',
'        NULL COD_GRUPO,',
'       NULL BASE_COMISION,',
'       NULL PORC_PESO,',
'       NULL OBJETIVO,',
'       NULL LOGRADO,',
'       NULL PORC_LOGRO,',
'       NULL VALOR_RATIO,',
'       SUM(TOT_COMISION), ',
'       NULL GRUPO,',
'',
'       ''<strong><< TOTAL COMISION >></strong>'' POLITICA   ,',
'       2 ORDEN            ',
'  from FV_COMISIONES_NP_DET',
' where COD_EMPRESA = :P586_COD_EMPRESA ',
' and ( cod_vendedor=:P586_VENDEDOR  or cod_vendedor=:P586_VENDEDOR_SELECT)',
' and ( periodo = :P586_PERIODO or periodo = :P586_PERIODO_SELECT) ',
' GROUP BY  COD_EMPRESA,',
'       COD_USUARIO,',
'       FECHA_ALTA,',
'       PERIODO,',
'       MES,',
'       ANIO,',
'       COD_VENDEDOR ',
' order by 1 desc , ORDEN  ASC',
'',
' '))
,p_display_when_condition=>'P586_COD_EMPRESA'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P586_PERIODO_SELECT,P586_VENDEDOR_SELECT,P586_VENDEDOR,P586_PERIODO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No existen detalles'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>5000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'CSV'
,p_supplemental_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DETALLE DE COMISION',
'VENDEDOR: &P586_VENDEDOR. &P586_NOM_VEND.',
'PERIODO: &P586_PERIODO.  &P586_PERIODO_SELECT. '))
,p_prn_output=>'Y'
,p_prn_format=>'PDF'
,p_prn_output_link_text=>'PDF'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
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
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195165685410515592)
,p_query_column_id=>1
,p_column_alias=>'COD_EMPRESA'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195166092847515592)
,p_query_column_id=>2
,p_column_alias=>'COD_USUARIO'
,p_column_display_sequence=>3
,p_column_heading=>'Cod Usuario'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195166429122515591)
,p_query_column_id=>3
,p_column_alias=>'FECHA_ALTA'
,p_column_display_sequence=>4
,p_column_heading=>'Fecha Alta'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195166885887515591)
,p_query_column_id=>4
,p_column_alias=>'PERIODO'
,p_column_display_sequence=>5
,p_column_heading=>'Periodo'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195167234517515591)
,p_query_column_id=>5
,p_column_alias=>'MES'
,p_column_display_sequence=>6
,p_column_heading=>'Mes'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195167656514515591)
,p_query_column_id=>6
,p_column_alias=>'ANIO'
,p_column_display_sequence=>7
,p_column_heading=>'Anio'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195168023910515591)
,p_query_column_id=>7
,p_column_alias=>'COD_VENDEDOR'
,p_column_display_sequence=>8
,p_column_heading=>'Cod Vendedor'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195168478628515591)
,p_query_column_id=>8
,p_column_alias=>'COD_GRUPO'
,p_column_display_sequence=>9
,p_column_heading=>'Cod Grupo'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195168824564515591)
,p_query_column_id=>9
,p_column_alias=>'BASE_COMISION'
,p_column_display_sequence=>39
,p_column_heading=>'Base Comision'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195169273262515590)
,p_query_column_id=>10
,p_column_alias=>'PORC_PESO'
,p_column_display_sequence=>49
,p_column_heading=>'% Peso'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G990D90'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195169655295515590)
,p_query_column_id=>11
,p_column_alias=>'OBJETIVO'
,p_column_display_sequence=>59
,p_column_heading=>'Objetivo'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195170060096515590)
,p_query_column_id=>12
,p_column_alias=>'LOGRADO'
,p_column_display_sequence=>69
,p_column_heading=>'Logrado'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195170419535515590)
,p_query_column_id=>13
,p_column_alias=>'PORC_LOGRO'
,p_column_display_sequence=>79
,p_column_heading=>'% Logrado'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G990D90'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195170850872515590)
,p_query_column_id=>14
,p_column_alias=>'VALOR_RATIO'
,p_column_display_sequence=>89
,p_column_heading=>'Valor Ratio'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G990D90'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(832973978967065704)
,p_query_column_id=>15
,p_column_alias=>'TOT_COMISION'
,p_column_display_sequence=>119
,p_column_heading=>'Tot Comision'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(193663495135252028)
,p_query_column_id=>16
,p_column_alias=>'GRUPO'
,p_column_display_sequence=>29
,p_column_heading=>'Grupo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(193663539193252029)
,p_query_column_id=>17
,p_column_alias=>'POLITICA'
,p_column_display_sequence=>19
,p_column_heading=>'Politica'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(832973740822065702)
,p_query_column_id=>18
,p_column_alias=>'ORDEN'
,p_column_display_sequence=>109
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(195195306974515568)
,p_name=>'DETALLE DE VENTAS'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-detail-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--horizontalBorders'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'FV_COMISIONES_NP_VTA'
,p_query_where=>wwv_flow_string.join(wwv_flow_t_varchar2(
'COD_EMPRESA = :P586_COD_EMPRESA',
' and ( cod_vendedor=:P586_VENDEDOR  or cod_vendedor=:P586_VENDEDOR_SELECT)',
' and ( periodo = :P586_PERIODO or periodo = :P586_PERIODO_SELECT) '))
,p_include_rowid_column=>true
,p_display_when_condition=>'P586_COD_EMPRESA'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P586_PERIODO_SELECT,P586_VENDEDOR_SELECT,P586_VENDEDOR,P586_PERIODO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No se encuentran registros de Ventas'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>5000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'CSV'
,p_supplemental_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'VENDEDOR: &P586_VENDEDOR. &P586_NOM_VEND.',
'PERIODO: &P586_PERIODO.  &P586_PERIODO_SELECT. '))
,p_prn_output=>'Y'
,p_prn_format=>'PDF'
,p_prn_output_link_text=>'PDF'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DETALLE DE VENTAS',
'VENDEDOR: &P586_NOM_VEND.',
'PERIODO: &P586_PERIODO. '))
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
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195196166193515531)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:596:&APP_SESSION.::&DEBUG.:RP:P596_ROWID:#ROWID#'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'NEVER'
,p_report_column_width=>32
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195196582281515531)
,p_query_column_id=>2
,p_column_alias=>'COD_EMPRESA'
,p_column_display_sequence=>2
,p_column_heading=>'Cod Empresa'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195196911772515531)
,p_query_column_id=>3
,p_column_alias=>'COD_USUARIO'
,p_column_display_sequence=>3
,p_column_heading=>'Cod Usuario'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195197324020515531)
,p_query_column_id=>4
,p_column_alias=>'FECHA_ALTA'
,p_column_display_sequence=>4
,p_column_heading=>'Fecha Alta'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195197756158515531)
,p_query_column_id=>5
,p_column_alias=>'PERIODO'
,p_column_display_sequence=>5
,p_column_heading=>'Periodo'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195198113043515530)
,p_query_column_id=>6
,p_column_alias=>'MES'
,p_column_display_sequence=>6
,p_column_heading=>'Mes'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195198540467515530)
,p_query_column_id=>7
,p_column_alias=>'ANIO'
,p_column_display_sequence=>7
,p_column_heading=>'Anio'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
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
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195198933690515530)
,p_query_column_id=>8
,p_column_alias=>'COD_VENDEDOR'
,p_column_display_sequence=>8
,p_column_heading=>'Cod Vendedor'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195199315186515530)
,p_query_column_id=>9
,p_column_alias=>'FEC_COMPROBANTE'
,p_column_display_sequence=>9
,p_column_heading=>'Fec Comprobante'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195199715416515530)
,p_query_column_id=>10
,p_column_alias=>'TIP_COMPROBANTE'
,p_column_display_sequence=>10
,p_column_heading=>'Tip Comprobante'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195200162892515529)
,p_query_column_id=>11
,p_column_alias=>'SER_COMPROBANTE'
,p_column_display_sequence=>11
,p_column_heading=>'Ser Comprobante'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195200579816515529)
,p_query_column_id=>12
,p_column_alias=>'NRO_COMPROBANTE'
,p_column_display_sequence=>12
,p_column_heading=>'Nro Comprobante'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195200917281515529)
,p_query_column_id=>13
,p_column_alias=>'COD_CLIENTE'
,p_column_display_sequence=>13
,p_column_heading=>'Cod Cliente'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195201337677515528)
,p_query_column_id=>14
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>14
,p_column_heading=>'Cod Articulo'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195201774478515528)
,p_query_column_id=>15
,p_column_alias=>'COD_MARCA'
,p_column_display_sequence=>15
,p_column_heading=>'Cod Marca'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195202144407515528)
,p_query_column_id=>16
,p_column_alias=>'CANTIDAD'
,p_column_display_sequence=>16
,p_column_heading=>'Cantidad'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195202542167515528)
,p_query_column_id=>17
,p_column_alias=>'MONTO_TOTAL'
,p_column_display_sequence=>17
,p_column_heading=>'Monto Total'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(195202914660515528)
,p_query_column_id=>18
,p_column_alias=>'FLETE'
,p_column_display_sequence=>18
,p_column_heading=>'Flete'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(195229025183515514)
,p_plug_name=>'No Record Selected'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>70
,p_query_type=>'SQL'
,p_plug_source=>'No Record Selected'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P586_COD_EMPRESA'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193663673159252030)
,p_name=>'P586_PERIODO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(195142309252515805)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(193663713636252031)
,p_name=>'P586_VENDEDOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(195142309252515805)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195142763891515804)
,p_name=>'P586_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(195142309252515805)
,p_prompt=>'Search'
,p_placeholder=>'Search...'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186365556263678)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:t-Form-fieldContainer--postTextBlock'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_attribute_06=>'UPPER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195163729808515629)
,p_name=>'P586_COD_EMPRESA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(195150795315515640)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195727933253446407)
,p_name=>'P586_DEL_COD_VEND'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(195150795315515640)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(195728008158446408)
,p_name=>'P586_DEL_PERIODO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(195150795315515640)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(379342967593055032)
,p_name=>'P586_NOM_VEND'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(195142309252515805)
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(642179644960635215)
,p_name=>'P586_PERIODO_SELECT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(195142309252515805)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(642179711890635216)
,p_name=>'P586_VENDEDOR_SELECT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(195142309252515805)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(195229818676515513)
,p_name=>'Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(195150795315515640)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(195230449307515513)
,p_event_id=>wwv_flow_imp.id(195229818676515513)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(195150795315515640)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(195230920283515513)
,p_event_id=>wwv_flow_imp.id(195229818676515513)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Fv Comisiones Np row(s) updated.'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(195164639227515628)
,p_name=>'Dialog Closed'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(195164535284515629)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(195177808715515583)
,p_event_id=>wwv_flow_imp.id(195164639227515628)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(195164535284515629)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(195178387902515583)
,p_event_id=>wwv_flow_imp.id(195164639227515628)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Fv Comisiones Np Det row(s) updated.'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(195195427923515568)
,p_name=>'Dialog Closed'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(195195306974515568)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(195210121286515524)
,p_event_id=>wwv_flow_imp.id(195195427923515568)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(195195306974515568)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(195210620792515524)
,p_event_id=>wwv_flow_imp.id(195195427923515568)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Fv Comisiones Np Vta row(s) updated.'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(195229907477515513)
,p_name=>'Perform Search'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P586_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.which === apex.jQuery.ui.keyCode.ENTER'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(195231735288515513)
,p_event_id=>wwv_flow_imp.id(195229907477515513)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(195143150701515802)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(195232243944515512)
,p_event_id=>wwv_flow_imp.id(195229907477515513)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(195728146291446409)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P586_DEL_COD_VEND'
,p_condition_element=>'P586_DEL_COD_VEND'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(195728254039446410)
,p_event_id=>wwv_flow_imp.id(195728146291446409)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Desea eliminar el registro de comisiones del vendedor &P586_DEL_COD_VEND. para el periodo &P586_DEL_PERIODO. ?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(195728380890446411)
,p_event_id=>wwv_flow_imp.id(195728146291446409)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VMSJ VARCHAR2(3500);',
'    VERROR EXCEPTION;',
'begin',
'  inv.fvcomisionp.pr_elimina_comision(p_cod_vendedor => :P586_DEL_COD_VEND,',
'                                      p_periodo => :P586_DEL_PERIODO,',
'                                      p_mensaje => VMSJ);',
'',
'    IF VMSJ IS NOT NULL THEN',
'        RAISE VERROR;',
'    END IF;',
'EXCEPTION',
'    WHEN VERROR THEN',
'        raise_application_error(-20000, ''Error al intentar eliminar. '' || VMSJ );',
'',
'    WHEN OTHERS THEN',
'        raise_application_error(-20000, ''No se pudo eliminar el registro. '' || sqlerrm );',
'',
'end;'))
,p_attribute_02=>'P586_DEL_COD_VEND,P586_DEL_PERIODO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(195728418233446412)
,p_event_id=>wwv_flow_imp.id(195728146291446409)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(379343403790055037)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CARGA_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P586_VENDEDOR is not null then',
'    begin',
'        select cod_vendedor ||'' - ''|| descripcion',
'        INTO :P586_NOM_VEND',
'        from fv_vendedores v',
'        where cod_empresa= :P_COD_EMPRESA',
'        and   cod_vendedor=:P586_VENDEDOR;',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            NULL;',
'    end;',
'end if;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
