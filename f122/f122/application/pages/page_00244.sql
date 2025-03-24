prompt --application/pages/page_00244
begin
--   Manifest
--     PAGE: 00244
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
 p_id=>244
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CAORDTRA - Orden de Trabajo'
,p_alias=>'CAORDTRA-ORDEN-DE-TRABAJO'
,p_step_title=>'CAORDTRA - Orden de Trabajo'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_IMAGES#inputmask.js',
'#APP_IMAGES#imask.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"''; ',
'',
'',
'',
''))
,p_javascript_code_onload=>'  '
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color: #ffed00 !important;',
'   border-color: red !important;',
'}',
'',
'  .tabla_color   td.t-Report-cell , .t-Form-label{',
' /* background-color:  #003a85;*/',
'  color: darkblue  !important;',
'  border-color: #003a85;',
'}',
'',
' .tabla_color  th.t-Report-colHead{',
'  background-color: #003a85; ',
'  color: yellow  !important;',
'  border-color: cadetblue;',
'}',
'td[headers="SER_REP_SOL"], #SER_REP_SOL , td[headers="NRO_REP_SOL"], #NRO_REP_SOL, #SEQ_ID , td[headers="SEQ_ID"]{',
'        display: none;',
'    }',
' ',
'',
'.apex-item-select , .apex-item-text , .apex-item-textarea , .apex-item-display-only{',
'   background-color: white !important;',
'   border-width: 0.5px;',
'   border-color: darkblue !important;   ',
'   color: darkblue!important;   ',
'}',
'#P63_GARANTIA_LABEL, #P63_IND_RECLAMO_LABEL, .u-radio{ color: darkblue  !important;',
'}',
'#REG_OT{',
'   background-color: #487ab8 !important;}',
'   ',
'   '))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'EMILIANOP'
,p_last_upd_yyyymmddhh24miss=>'20230109125442'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(221314811256164690)
,p_name=>'Problemas'
,p_region_name=>'GRILLA_PS'
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>30
,p_region_css_classes=>'refreshme tabla_color'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select ',
'seq_id,',
'    c001 AS COD_PC,',
'    NVL(c002,((select descripcion from ca_problemas p where cod_empresa=''1'' and COD_PROBLEMA = c001))) AS PROBLEMA_CLIENTE ,',
'    c003 AS COD_PR,',
'    NVL(c004,((select descripcion from ca_problemas p where cod_empresa=''1'' and COD_PROBLEMA = c003))) AS PROBLEMA ,',
'    c005 AS COD_SOL  ,',
'    NVL(c006,((select descripcion from CA_SOLUCIONES p where cod_empresa=''1'' and COD_SOLUCION = c005))) AS SOLUCION, ',
'    apex_item.checkbox2 ( 2, c007, DECODE(c007, ''S'' , ''CHECKED'' , '''') || '' DISABLED'' ) AS REPARADO',
'',
', null as remove',
'  from apex_collections',
' where collection_name = ''VT_ORDENES_PROBLEMA''',
' order by 1 asc',
'',
' /*',
'         apex_collection.add_member(',
'                                            p_collection_name => ''VT_ORDENES_PROBLEMA'',',
'                                            p_c001 => R.COD_PROBLEMA_CLIENTE,',
'                                            p_c002 => R.PROBL_CLI ,',
'                                            p_c003 => R.COD_PROBLEMA ,',
'                                            p_c004 => R.PROBLEMA ,',
'                                            p_c005 => R.COD_SOLUCION ,',
'                                            p_c006 => R.SOLUCION,',
'                                            p_c007 => R.REPARADO',
'                                            );*/',
'                                            '))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Totales'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59212341945631447)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59212744495631447)
,p_query_column_id=>2
,p_column_alias=>'COD_PC'
,p_column_display_sequence=>11
,p_column_heading=>'Cod'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59213102938631448)
,p_query_column_id=>3
,p_column_alias=>'PROBLEMA_CLIENTE'
,p_column_display_sequence=>21
,p_column_heading=>'Problema Cliente'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59213514054631448)
,p_query_column_id=>4
,p_column_alias=>'COD_PR'
,p_column_display_sequence=>31
,p_column_heading=>'Cod'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59213955293631448)
,p_query_column_id=>5
,p_column_alias=>'PROBLEMA'
,p_column_display_sequence=>41
,p_column_heading=>'Problema'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59214378994631448)
,p_query_column_id=>6
,p_column_alias=>'COD_SOL'
,p_column_display_sequence=>51
,p_column_heading=>'Cod'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59214738897631449)
,p_query_column_id=>7
,p_column_alias=>'SOLUCION'
,p_column_display_sequence=>61
,p_column_heading=>'Solucion'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59215190430631449)
,p_query_column_id=>8
,p_column_alias=>'REPARADO'
,p_column_display_sequence=>71
,p_column_heading=>'Reparado'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59215529346631449)
,p_query_column_id=>9
,p_column_alias=>'REMOVE'
,p_column_display_sequence=>81
,p_column_heading=>'Remove'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-ps" aria-hidden="true"></span>'
,p_column_link_attr=>'data-id=#SEQ_ID#'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(221696664668607467)
,p_name=>'Mano de Obra'
,p_region_name=>'GRILLA_MO'
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>40
,p_region_css_classes=>'refreshme tabla_color'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'seq_id,',
'    c001 AS COD_ARTICULO, ',
'    NVL(c002 , (select descripcion from st_articulos p where cod_empresa=''1'' and cod_articulo = c001)) as product_name,',
'        to_number(c003) as MONTO,',
'        to_number(c004) as MONTO_VENTA,',
'        (c005) as COD_TECNICO,',
'       apex_item.checkbox2 ( 2, c006, DECODE(c006, ''S'' , ''CHECKED'' , '''') || '' DISABLED'' )  as GARANTIA,',
'       apex_item.checkbox2 ( 2, c007, DECODE(c007, ''S'' , ''CHECKED'' , '''') || '' DISABLED'' )  as RECLAMO, ',
'       null as remove',
'  from apex_collections',
' where collection_name = ''VT_MANO_OBRA''',
' order by 1 asc',
'',
'',
' /*',
'                       apex_collection.add_member(',
'                                            p_collection_name => ''VT_MANO_OBRA'',',
'                                            p_c001 => R.COD_ARTICULO,',
'                                            p_c002 => R.descripcion ,',
'                                            p_c003 => R.MONTO  ,',
'                                            p_c004 => R.MONTO_VENTA ,',
'                                            p_c005 => R.COD_TECNICO ,',
'                                            p_c006 => R.GARANTIA,',
'                                            p_c007 => R.RECLAMO',
'                                            );',
' */'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P244_NRO_COMPROBANTE,P244_SER_COMPROBANTE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Totales'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59217890972631457)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59218210458631457)
,p_query_column_id=>2
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>11
,p_column_heading=>'Codigo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59218686285631457)
,p_query_column_id=>3
,p_column_alias=>'PRODUCT_NAME'
,p_column_display_sequence=>21
,p_column_heading=>'Descripcion de la Mano de Obra'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59219024401631458)
,p_query_column_id=>4
,p_column_alias=>'MONTO'
,p_column_display_sequence=>31
,p_column_heading=>'Monto Base'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59219493922631458)
,p_query_column_id=>5
,p_column_alias=>'MONTO_VENTA'
,p_column_display_sequence=>41
,p_column_heading=>'Monto Venta'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59219836384631458)
,p_query_column_id=>6
,p_column_alias=>'COD_TECNICO'
,p_column_display_sequence=>51
,p_column_heading=>'Tecnico'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59220264610631458)
,p_query_column_id=>7
,p_column_alias=>'GARANTIA'
,p_column_display_sequence=>61
,p_column_heading=>'Garantia'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59220684913631458)
,p_query_column_id=>8
,p_column_alias=>'RECLAMO'
,p_column_display_sequence=>71
,p_column_heading=>'Reclamo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59221022588631459)
,p_query_column_id=>9
,p_column_alias=>'REMOVE'
,p_column_display_sequence=>81
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-mo" aria-hidden="true"></span>'
,p_column_link_attr=>'data-id=#SEQ_ID#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(221699884645607499)
,p_name=>'Repuestos Solicitados'
,p_region_name=>'GRILLA_RS'
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>50
,p_region_css_classes=>'refreshme tabla_color'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'seq_id,',
'        c001 as cod_articulo,',
'        nvl(c002,(select descripcion from st_articulos p where cod_empresa=''1'' and cod_articulo = c001)) as Descripcion,',
'        (c003) as cantidad,',
'        (c004) as cantidad_pedida,     ',
'        (c005) as cantidad_ot,',
'         apex_item.checkbox2 ( 1, c009, DECODE(c009, ''S'' , ''CHECKED'' , ''UNCHECKED'') || DECODE(c006, ''I'' , '' DISABLED'' , DECODE(c009, ''S'' , '' DISABLED'' , c010, ''S'' , '' DISABLED'' ,'''') ) )  as RECEPCIONADO,',
'         apex_item.checkbox2 ( 2, c010, DECODE(c010, ''S'' , ''CHECKED'' , ''UNCHECKED'') || DECODE(c006, ''I'' , '' DISABLED'' , DECODE(c009, ''S'' , '' DISABLED'' , c010, ''S'' , '' DISABLED'' ,'''') ) )  as RECHAZADO, ',
'         null as remove, ',
'        /* ''<span class="ser_rep_sol">''||(c007)||''</span> ''ser,  */',
'        (c007) as ser_rep_sol,    ',
'        (c008) as nro_rep_sol',
'  from apex_collections',
' where collection_name = ''VT_ORDENES_REPUESTOS_PEDIDOS''',
' order by 1 asc',
'',
'/*'' DISABLED''*/',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Totales'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59222922102631460)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Seq'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59223360104631460)
,p_query_column_id=>2
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>20
,p_column_heading=>'Cod Articulo'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP,11:P11_COD_ARTICULO:#COD_ARTICULO#'
,p_column_linktext=>'#COD_ARTICULO#'
,p_column_link_attr=>'class="COD_ARTICULO"'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59223749721631461)
,p_query_column_id=>3
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>30
,p_column_heading=>'Descripcion'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59224145138631461)
,p_query_column_id=>4
,p_column_alias=>'CANTIDAD'
,p_column_display_sequence=>40
,p_column_heading=>'Cant.Conf'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59224541363631461)
,p_query_column_id=>5
,p_column_alias=>'CANTIDAD_PEDIDA'
,p_column_display_sequence=>50
,p_column_heading=>'Cant.Pedida'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59224948571631461)
,p_query_column_id=>6
,p_column_alias=>'CANTIDAD_OT'
,p_column_display_sequence=>60
,p_column_heading=>'Cant.Recep'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59225366700631462)
,p_query_column_id=>7
,p_column_alias=>'RECEPCIONADO'
,p_column_display_sequence=>70
,p_column_heading=>'Recepcionado'
,p_use_as_row_header=>'N'
,p_column_css_class=>'chk_recep'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59225719978631462)
,p_query_column_id=>8
,p_column_alias=>'RECHAZADO'
,p_column_display_sequence=>80
,p_column_heading=>'Rechazado'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59226166073631462)
,p_query_column_id=>9
,p_column_alias=>'REMOVE'
,p_column_display_sequence=>90
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-rs" aria-hidden="true"></span>'
,p_column_link_attr=>'data-id=#SEQ_ID#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59226565871631462)
,p_query_column_id=>10
,p_column_alias=>'SER_REP_SOL'
,p_column_display_sequence=>100
,p_column_heading=>'Ser Rep Sol'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59226920731631462)
,p_query_column_id=>11
,p_column_alias=>'NRO_REP_SOL'
,p_column_display_sequence=>110
,p_column_heading=>'Nro Rep Sol'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(221762562570912472)
,p_name=>'Repuestos Utilizados'
,p_region_name=>'GRILLA_RU'
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>70
,p_region_css_classes=>'refreshme  tabla_color'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'seq_id, ',
'(select cod_art_corto from st_articulos p where cod_empresa=''1'' and cod_articulo = c001) as codigo_corto,',
'c001 as cod_articulo,',
'NVL(c002,(select descripcion from st_articulos p where cod_empresa=''1'' and cod_articulo = c001)) as product_name,',
'        to_number(c003) as CANTIDAD,',
'        to_number(c004) as PRECIO, ',
'        to_number(c005) as total',
'       , null as remove',
'  from apex_collections',
' where collection_name = ''VT_ORDENES_REPUESTOS_UTILIZADOS''',
' order by 1 asc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P244_NRO_COMPROBANTE,P244_SER_COMPROBANTE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'----------- Total'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59228837097631464)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59229293213631464)
,p_query_column_id=>2
,p_column_alias=>'CODIGO_CORTO'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59229646384631465)
,p_query_column_id=>3
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>4
,p_column_heading=>'Cod Articulo'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP,11:P11_COD_ARTICULO:#COD_ARTICULO#'
,p_column_linktext=>'#COD_ARTICULO#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59230084653631465)
,p_query_column_id=>4
,p_column_alias=>'PRODUCT_NAME'
,p_column_display_sequence=>8
,p_column_heading=>'Descripcion'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59230439781631465)
,p_query_column_id=>5
,p_column_alias=>'CANTIDAD'
,p_column_display_sequence=>24
,p_column_heading=>'Cantidad'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59230813520631465)
,p_query_column_id=>6
,p_column_alias=>'PRECIO'
,p_column_display_sequence=>34
,p_column_heading=>'Precio'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G990'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59231282023631466)
,p_query_column_id=>7
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>64
,p_column_heading=>'Total'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59231608394631466)
,p_query_column_id=>8
,p_column_alias=>'REMOVE'
,p_column_display_sequence=>74
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-ru" aria-hidden="true"></span>'
,p_column_link_attr=>'data-id=#SEQ_ID#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(270740804834808898)
,p_plug_name=>'Parametros'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(40134615190263663)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(273065202519402266)
,p_plug_name=>'Orden de Trabajo'
,p_region_name=>'REG_OT'
,p_region_css_classes=>'CSS_CLASS'
,p_region_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>20
,p_plug_grid_column_css_classes=>'CSS_CLASS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(273117092018402106)
,p_name=>'Presupuesto'
,p_region_name=>'GRILLA_PRE'
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>60
,p_region_css_classes=>'refreshme tabla_color'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'seq_id,',
'        c001 as cod_articulo,  ',
'        nvl(c002,(select descripcion from st_articulos p where cod_empresa=''1'' and cod_articulo = c001)) as desc_articulo, ',
'        c003 as cantidad, ',
'        to_number(c004) as monto_total,  ',
'        apex_item.checkbox2 ( 2, c005, DECODE(c005, ''S'' , ''CHECKED'' , '''') || '' DISABLED'' ) AS EN_STOCK,',
'       null as remove',
'  from apex_collections',
' where collection_name = ''VT_ORDENES_PRESUPUESTO''',
' order by 1 asc',
'',
'',
' /*',
'           apex_collection.add_member(',
'                                            p_collection_name => ''VT_ORDENES_PRESUPUESTO'',',
'                                            p_c001 => R.cod_articulo,',
'                                            p_c002 => R.desc_articulo ,',
'                                            p_c003 => R.cantidad ,',
'                                            p_c004 => R.MONTO_TOTAL,',
'                                            p_c005 => R.EN_STOCK  ',
'                                            );',
' */'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Totales'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59257228954631482)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59257642093631482)
,p_query_column_id=>2
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>5
,p_column_heading=>'Cod Articulo'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP,11:P11_COD_ARTICULO:#COD_ARTICULO#'
,p_column_linktext=>'#COD_ARTICULO#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59258055268631482)
,p_query_column_id=>3
,p_column_alias=>'DESC_ARTICULO'
,p_column_display_sequence=>15
,p_column_heading=>'Descripcion del Articulo'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59258461451631482)
,p_query_column_id=>4
,p_column_alias=>'CANTIDAD'
,p_column_display_sequence=>25
,p_column_heading=>'Cantidad'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59258890738631483)
,p_query_column_id=>5
,p_column_alias=>'MONTO_TOTAL'
,p_column_display_sequence=>35
,p_column_heading=>'Monto Total'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59259260462631483)
,p_query_column_id=>6
,p_column_alias=>'EN_STOCK'
,p_column_display_sequence=>45
,p_column_heading=>'En Stock'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(59259633990631483)
,p_query_column_id=>7
,p_column_alias=>'REMOVE'
,p_column_display_sequence=>55
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-pre" aria-hidden="true"></span>'
,p_column_link_attr=>'data-id=#SEQ_ID#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(59240285911631471)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_button_name=>'crea_clientes'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_image_alt=>'Crea Clientes'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(59215991262631450)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(221314811256164690)
,p_button_name=>'btn_add_ps'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Problemas'
,p_button_position=>'EDIT'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(59221488888631459)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(221696664668607467)
,p_button_name=>'btn_add_mo'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Mano de Obra'
,p_button_position=>'EDIT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct ''1''',
'from dual;'))
,p_button_condition_type=>'NOT_EXISTS'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(59227367435631463)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(221699884645607499)
,p_button_name=>'btn_add_sr'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Solicitar Repuestos'
,p_button_position=>'EDIT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct ''1''',
'from dual;'))
,p_button_condition_type=>'NOT_EXISTS'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(59232022375631466)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(221762562570912472)
,p_button_name=>'btn_add_ru'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Articulo'
,p_button_position=>'EDIT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct ''1''',
'from dual;'))
,p_button_condition_type=>'NOT_EXISTS'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(59260084625631483)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(273117092018402106)
,p_button_name=>'btn_add_pre'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cargar Presupuesto'
,p_button_position=>'EDIT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT ''1''',
'FROM vt_ordenes_trabajo',
'WHERE  COD_EMPRESA=''1''',
'AND    SER_COMPROBANTE = :P244_SER_COMPROBANTE',
'AND    NRO_COMPROBANTE = :P244_NRO_COMPROBANTE',
'AND    TIP_COMPROBANTE =''ORT''',
'AND    ((estado_presu in( ''AG'',''AP'',''V'',''AP'') AND NVL(CERRADO,''N'') = ''N'')   ',
'	or  NVL(  busca_permiso(''1'', ''CAORDTRA'', V(''APP_USER'') ,''AGREGA_REP_PRE'' ),''N'')=''S'')',
'and nvl(IND_RECLAMO,''N'')<>''S'''))
,p_button_condition_type=>'NOT_EXISTS'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(59240681766631472)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_button_name=>'Volver'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight:t-Button--padLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.:60::'
,p_button_condition=>'P244_INDICADOR_VOLVER'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'u-color-19-bg'
,p_icon_css_classes=>'fa-reply'
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(75546208348544150)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_button_name=>'Volver_PAG_298'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight:t-Button--padLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:298:&SESSION.::&DEBUG.:60::'
,p_button_condition=>'P244_INDICADOR_VOLVER'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'u-color-19-bg'
,p_icon_css_classes=>'fa-reply'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(59241037814631472)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight:t-Button--padLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.:60::'
,p_button_condition=>'P244_INDICADOR_VOLVER'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'u-color-19-bg'
,p_icon_css_classes=>'fa-reply'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(59241319793631472)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_button_name=>'Imprimir'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight:t-Button--padLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_button_css_classes=>'u-color-31'
,p_icon_css_classes=>'fa fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(59241770411631473)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_button_name=>'NUEVO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight:t-Button--padLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo'
,p_button_position=>'EDIT'
,p_button_css_classes=>'u-color-2-bg'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(59242147482631473)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight:t-Button--padLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Orden'
,p_button_position=>'EDIT'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(59302003101631510)
,p_branch_name=>'IR_PAGINA_250'
,p_branch_action=>'f?p=&APP_ID.:250:&SESSION.::&DEBUG.:RP,250:P250_COD_ARTICULO:&P244_COD_ARTICULO_OT.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(59215991262631450)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(59303246553631511)
,p_branch_name=>'IR_PAGINA_67'
,p_branch_action=>'f?p=&APP_ID.:67:&SESSION.::&DEBUG.:RP,67:P67_COD_ARTICULO_OT,P67_MARCA_PRO,P67_COD_ORIGEN,P67_GARANTIA_OT,P67_COD_LISTA_PRECIO:&P63_COD_ARTICULO_OT.,&P63_COD_MARCA.,&P63_COD_ORIGEN.,&P63_GARANTIA.,&P63_COD_LISTA_PRECIO.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(59260084625631483)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(59302861164631511)
,p_branch_name=>'IR_PAGINA_65'
,p_branch_action=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.:RP,65:P65_COD_ARTICULO_OT,P65_COD_LISTA_PRECIO:&P63_COD_ARTICULO_OT.,&P63_COD_LISTA_PRECIO.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(59227367435631463)
,p_branch_sequence=>30
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(59302431454631511)
,p_branch_name=>'IR_PAGINA_47'
,p_branch_action=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.:RP:P47_COD_CLIENTE:&P63_COD_CLIENTE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(59232022375631466)
,p_branch_sequence=>40
,p_branch_condition_type=>'ITEM_IS_NOT_NULL'
,p_branch_condition=>'P244_COD_CLIENTE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(59303615049631511)
,p_branch_name=>'IR_PAGINA_76'
,p_branch_action=>'f?p=&APP_ID.:76:&SESSION.::&DEBUG.:RP,76:P76_COD_CLIENTE,P76_COD_ARTICULO_OT,P76_GARANTIA,P76_SER_COMPROBANTE,P76_NRO_COMPROBANTE,P76_COD_TECNICO,P76_ORIGEN,P76_IND_ADICIONAL,P76_MARCA:&P63_COD_CLIENTE.,&P63_COD_ARTICULO_OT.,&P63_GARANTIA.,&P63_SER_COMPROBANTE.,&P63_NRO_COMPROBANTE.,&P63_COD_PROVEEDOR.,&P63_COD_ORIGEN.,N,&P63_COD_MARCA.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(59221488888631459)
,p_branch_sequence=>50
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(59304010471631511)
,p_branch_name=>'imprimir_ot'
,p_branch_action=>'https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CAORDTRA.html?p_ser_comprobante=&P63_SER_COMPROBANTE.&p_nro_comprobante=&P63_NRO_COMPROBANTE.&j_username=jasperadmin&j_password=jasperadmin'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(59241319793631472)
,p_branch_sequence=>60
,p_branch_condition_type=>'ITEM_IS_NOT_NULL'
,p_branch_condition=>'P244_NRO_COMPROBANTE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59216340986631453)
,p_name=>'P244_DEL_PS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(221314811256164690)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59216770344631455)
,p_name=>'P244_DEL_ID_PS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(221314811256164690)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59217139467631455)
,p_name=>'P244_CANTIDAD_PROBLEMA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(221314811256164690)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59221897727631459)
,p_name=>'P244_DELETE_PROMO_1_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(221696664668607467)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59222275465631460)
,p_name=>'P244_DEL_ID_MO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(221696664668607467)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59227784150631463)
,p_name=>'P244_DEL_ID_RS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(221699884645607499)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59228168464631464)
,p_name=>'P244_CANT_RS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(221699884645607499)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59232493165631467)
,p_name=>'P244_DELETE_PROMO_2_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(221762562570912472)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59232866745631467)
,p_name=>'P244_DEL_ID_RU'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(221762562570912472)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59233259180631467)
,p_name=>'P244_CANTIDAD_DETALLE_2_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(221762562570912472)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59233954709631468)
,p_name=>'P244_COLL_BPS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(270740804834808898)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59234315150631468)
,p_name=>'P244_COLL_BMO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(270740804834808898)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59234710985631468)
,p_name=>'P244_COLL_BRS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(270740804834808898)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59235139109631468)
,p_name=>'P244_COLL_BPRE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(270740804834808898)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59235527043631469)
,p_name=>'P244_COLL_BRU'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(270740804834808898)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59235907693631469)
,p_name=>'P244_PARAM_SER_OT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(270740804834808898)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59236344267631469)
,p_name=>'P244_PARAM_NRO_OT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(270740804834808898)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59236708662631469)
,p_name=>'P244_ID_PEDIDO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(270740804834808898)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
':P244_USUARIO||TO_CHAR(SYSDATE,''DDMMYYYYHHMMSS'') ID',
'FROM DUAL'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59237139620631470)
,p_name=>'P244_USUARIO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(270740804834808898)
,p_source=>'&APP_USER.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59237577759631470)
,p_name=>'P244_VCIUDAD'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(270740804834808898)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59237975153631470)
,p_name=>'P244_DESCARGA_DATOS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(270740804834808898)
,p_item_default=>'''N'''
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59238340219631470)
,p_name=>'P244_PARAM_ID_TKT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(270740804834808898)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59238754105631470)
,p_name=>'P244_LATITUDE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(270740804834808898)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59239126605631471)
,p_name=>'P244_LONGITUDE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(270740804834808898)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59239508148631471)
,p_name=>'P244_COD_PROV'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(270740804834808898)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59242545092631473)
,p_name=>'P244_SER_COMPROBANTE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="background-color: #f0ffef; border-color: #4dff00"'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59242936748631474)
,p_name=>'P244_NRO_COMPROBANTE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_prompt=>'Numero de Orden'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="background-color: #f0ffef; border-color: #4dff00"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59243393198631474)
,p_name=>'P244_FEC_COMPROBANTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="background-color: #f0ffef; border-color: #4dff00"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59243790189631474)
,p_name=>'P244_COD_CLIENTE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre||  '' ''||PR.numero||'' ''||PI.numero||'' ''||cod_cliente nombre, cod_cliente',
'from cc_clientes c, ',
'     personas p, ',
'     --telef_personas pt, ',
'     ident_personas pi ,',
'     ident_personas pR ',
'where c.cod_empresa = ''1''',
'and c.cod_persona = p.cod_persona',
'---and p.cod_persona = pt.cod_persona(+) ',
'and p.cod_persona = pi.cod_persona(+) ',
'and NVL(pi.cod_ident(+),''CI'')=''CI''',
'and p.cod_persona = pR.cod_persona(+) ',
'and NVL(pR.cod_ident(+),''RUC'')=''RUC''',
'and nvl(c.estado,''X'') = ''A'' ',
'order by nombre'))
,p_cSize=>10
,p_cMaxlength=>15
,p_tag_attributes=>'style="background-color:   #f0ffef   ; width:60px"'
,p_colspan=>3
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59244111533631474)
,p_name=>'P244_NOM_CLIENTE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre'
,p_source=>'NOM_CLIENTE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="background-color: #f0ffef; border-color: #4dff00"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-user-check'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59244598345631474)
,p_name=>'P244_DIR_CLIENTE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_prompt=>'Dir Cliente'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="background-color: #f0ffef; border-color: #4dff00"'
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
 p_id=>wwv_flow_imp.id(59244972003631475)
,p_name=>'P244_NCI'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59245361341631475)
,p_name=>'P244_RUC'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_prompt=>'RUC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="background-color: #f0ffef; border-color: #4dff00"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-address-card-o'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59245782691631475)
,p_name=>'P244_TEL_CLIENTE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_prompt=>'Telefono'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="background-color: #f0ffef; border-color: #4dff00"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-phone'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59246191443631475)
,p_name=>'P244_EMAIL'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_prompt=>'Email'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="background-color: #f0ffef; border-color: #4dff00"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59246559060631475)
,p_name=>'P244_COD_DIRECCION'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59246927378631476)
,p_name=>'P244_DEPARTAMENTO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_prompt=>'Departamento'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PR.DESCRIPCION, PR.COD_PROVINCIA',
'from provincias pr',
'where pr.cod_pais=''PAR'''))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59247395934631476)
,p_name=>'P244_CIUDAD'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_prompt=>'Ciudad'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CT.DESCRIPCION, CT.COD_CIUDAD',
'from CIUDADES CT',
'where ct.cod_pais=''PAR''',
'AND (:P244_DEPARTAMENTO is null or :P244_DEPARTAMENTO= CT.COD_PROVINCIA )',
'AND (:P244_VCIUDAD is null or :P244_VCIUDAD= CT.COD_ciudad )'))
,p_lov_cascade_parent_items=>'P244_DEPARTAMENTO'
,p_ajax_items_to_submit=>'P244_DEPARTAMENTO'
,p_ajax_optimize_refresh=>'N'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_css_classes=>'refreshme'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59247781597631476)
,p_name=>'P244_NRO_GARANTIA'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_prompt=>'Nro Garantia'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>200
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59248157826631476)
,p_name=>'P244_GARANTIA'
,p_is_required=>true
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_prompt=>'Garantia'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''SI'' DESCRIPCION , ''S'' C FROM DUAL UNION ALL',
'SELECT ''NO'' DESCRIPCION , ''N'' C FROM DUAL '))
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59248545074631477)
,p_name=>'P244_IND_RECLAMO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_prompt=>'Reclamo'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'t-Form-fieldContainer--xlarge:margin-top-sm'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59248927775631477)
,p_name=>'P244_COD_ORIGEN'
,p_is_required=>true
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_prompt=>'Origen'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select o.descripcion, o.cod_origen',
'from vt_origenes o,',
'     cm_proveedores p,',
'     usuarios u',
'where o.cod_empresa=''1''',
'and o.activo=''S''',
'and o.cod_empresa=p.cod_empresa',
'and o.origen=p.ind_servicio_tecnico',
'and p.cod_persona=u.cod_persona',
'and (v(''APP_USER'') not in (''FABIOARV'',''RICHARDISA'',''NORBERTORO'',''ALEMCE'',''JOSEALF'',''EVERAQUI'') or (v(''APP_USER'') in (''FABIOARV'',''RICHARDISA'',''NORBERTORO'',''ALEMCE'',''JOSEALF'',''EVERAQUI'') and o.cod_origen in(''38'',''15'')))',
'and u.cod_usuario=v(''APP_USER'')',
'union all ',
'select o.descripcion, o.cod_origen',
'from vt_origenes o  ',
'where o.cod_empresa=''1''',
'and o.activo=''S''',
'and not exists (',
'      Select distinct ''1''',
'      from  cm_proveedores p,',
'            usuarios u',
'      where p.cod_empresa=''1'' ',
'      and p.ind_servicio_tecnico is not null',
'      and p.cod_persona=u.cod_persona',
'      and u.cod_usuario=v(''APP_USER'')',
'     )'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-user-headset'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59249350776631477)
,p_name=>'P244_SERIE_PRODUCTO'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_prompt=>'Serie Producto'
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
 p_id=>wwv_flow_imp.id(59249704139631477)
,p_name=>'P244_COD_DISTRIBUIDOR'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_prompt=>'Distribuidor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  nombre ||'' -'' ||cod_cliente, cod_cliente',
'from cc_clientes c, personas p',
'where c.cod_empresa = ''1''',
'and c.cod_persona = p.cod_persona ',
'and nvl(c.estado,''X'') in (''A'',''C'',''B'') ',
'',
'order by nombre'))
,p_cSize=>30
,p_tag_attributes=>'style="background-color: #f0ffef; border-color: #aaeb8e"'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59250152776631477)
,p_name=>'P244_NOMBRE_DISTRIBUIDOR'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_prompt=>'Nombre Distribuidor'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="background-color: #f0ffef; border-color: #4dff00"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59250509292631478)
,p_name=>'P244_NRO_FACTURA'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_prompt=>'Nro Factura'
,p_format_mask=>'"''999-999-9999"'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59250944534631478)
,p_name=>'P244_FECHA_FACTURA'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_prompt=>'Fecha Factura'
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
 p_id=>wwv_flow_imp.id(59251375120631478)
,p_name=>'P244_COD_ARTICULO_OT'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_prompt=>'Codigo Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION,',
'      COD_ARTICULO',
'FROM (',
'select descripcion, cod_articulo,1 ORDEN',
'from st_articulos a where cod_empresa =  ''1''',
'and a.precio_base>0',
'and a.costo_prom>0',
'and a.descripcion is not null',
'and a.cod_rubro in (''PR'')',
'AND A.COD_ART_CORTO IS NOT NULL',
'UNION ALL',
'select descripcion, cod_articulo,2  ORDEN',
'from st_articulos a',
'where cod_empresa =  ''1''',
'and a.precio_base>0',
'and a.costo_prom>0',
'and a.descripcion is not null',
'and a.cod_rubro in (''RE'',''MU'')',
'UNION ALL',
'select descripcion, cod_articulo,3 ORDEN',
'from st_articulos a where cod_empresa =  ''1''',
'and cod_marca in (''CPH'')',
') ORDER BY ORDEN,1',
'',
'',
'/*SELECT DESCRIPCION||'' ''||COD_ARTICULO||'' ''||COD_ART_CORTO DESCRIPCION , COD_ARTICULO FROM ST_ARTICULOS',
'WHERE COD_EMPRESA=''1''',
'AND COD_RUBRO=''PR''',
'AND DESCRIPCION IS NOT NULL',
'order by 1',
'*/'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'style="background-color: #f0ffef; border-color: #aaeb8e"'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-calendar-pointer'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59251715367631478)
,p_name=>'P244_DESCRIPCION_ARTICULO'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_prompt=>unistr('Descripci\00F3n Articulo')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="background-color: #f0ffef; border-color: #4dff00"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59252111757631479)
,p_name=>'P244_COD_PROVEEDOR'
,p_is_required=>true
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_prompt=>'Proveedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) )nombre,  c.cod_proveedor cod',
'	          from cm_proveedores c, personas p',
'	          where c.cod_empresa   = nvl(:P_cod_empresa,''1'') ',
'	            and c.cod_persona   = p.cod_persona',
'	            AND NVL(C.ESTADO,''A'')NOT IN (''I'')',
'	                     and nvl(c.estado   ,''S'') NOT IN (''I'',''N'') ',
'	                     and ind_servicio_tecnico is not null;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-N/A-'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59252507577631479)
,p_name=>'P244_NRO_BOLETA_AM'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_prompt=>unistr('N\00BA Comprobante (Boleta Amarilla)')
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59252992107631479)
,p_name=>'P244_COD_SUCURSAL_DIST'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59253398734631479)
,p_name=>'P244_LUGAR_ENTREGA'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59253746719631480)
,p_name=>'P244_TELEFONO_DIST'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_imp.id(59254196220631480)
,p_name=>'P244_COMENTARIO'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_prompt=>'Condicion del Producto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>150
,p_cMaxlength=>150
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa fa-thumb-tack'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59254590191631480)
,p_name=>'P244_OBERVACION'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_prompt=>unistr('Diagnostico seg\00FAn T\00E9cnico')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>150
,p_cMaxlength=>150
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa fa-microchip'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59254939987631480)
,p_name=>'P244_CONCLUSION'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_prompt=>unistr('Conclusi\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>150
,p_cMaxlength=>150
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fas fa-tools'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59255344752631480)
,p_name=>'P244_COD_ARTICULO'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59255767962631481)
,p_name=>'P244_COD_MARCA'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59256198043631481)
,p_name=>'P244_COD_LISTA_PRECIO'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59256568700631481)
,p_name=>'P244_ESTADO_PRESU'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(273065202519402266)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59260444457631484)
,p_name=>'P244_DELETE_PROMO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(273117092018402106)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59260864444631484)
,p_name=>'P244_DEL_ID_PRE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(273117092018402106)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59261290446631484)
,p_name=>'P244_CANTIDAD_DETALLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(273117092018402106)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75546109557544149)
,p_name=>'P244_INDICADOR_VOLVER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(270740804834808898)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(78485779984266142)
,p_name=>'P244_TIP_COMPROBANTE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(270740804834808898)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(59261791523631488)
,p_validation_name=>'validar_codigo_cliente'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''S''',
'from cc_clientes a',
'where a.cod_empresa=''1''',
'and a.cod_cliente=:P244_COD_CLIENTE'))
,p_validation_type=>'EXISTS'
,p_error_message=>'No se encuentra el codigo de cliente'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(59243790189631474)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59264483531631491)
,p_name=>'nombre'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P244_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59264959402631492)
,p_event_id=>wwv_flow_imp.id(59264483531631491)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P244_NOM_CLIENTE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre',
'from cc_clientes c, personas p, telef_personas pt, ident_personas pi ',
'where c.cod_empresa = ''1''',
'and c.cod_persona = p.cod_persona',
'and p.cod_persona = pt.cod_persona(+) ',
'and p.cod_persona = pi.cod_persona(+) ',
'and nvl(c.estado,''X'') not in ''I'' ',
'and c.cod_cliente=:P244_COD_CLIENTE',
'AND ROWNUM=1',
'order by nombre',
';'))
,p_attribute_07=>'P244_COD_CLIENTE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59265391811631492)
,p_name=>'CARGA_VALORES'
,p_event_sequence=>20
,p_bind_type=>'live'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59265882733631492)
,p_event_id=>wwv_flow_imp.id(59265391811631492)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' IF :P244_PARAM_NRO_OT IS NULL AND :P244_PARAM_SER_OT IS NULL  THEN',
'    declare',
'    vusuario varchar2(600):= user;',
'    begin',
'    :P244_SER_COMPROBANTE:=''P'';',
'    :P244_FEC_COMPROBANTE:=TO_CHAR(SYSDATE,''DD/MM/YYYY'');',
'    :P244_GARANTIA:=''S'';',
'    :P244_DEPARTAMENTO:=null;',
'    :P244_CIUDAD:=null;      ',
'     ',
'    end;',
'    ',
'else',
'    declare',
'                        vproveedor varchar2(30);',
'    begin',
'         select   OT.FEC_COMPROBANTE,',
'                    OT.NRO_COMPROBANTE,',
'                    OT.SER_COMPROBANTE ,',
'                    NVL(OT.IND_GARANTIA,''N''),',
'                    OT.SERIE,',
'                    OT.COD_ORIGEN,',
'                    OT.COD_ARTICULO,',
'                   -- AR.DESCRIPCION ,',
'                     OT.NRO_COMPROBANTE_DISTR ,',
'                    OT.FECHA_CO_DISTRIBUIDOR,',
'                    ot.cod_distribuidor,',
'                    ot.cod_proveedor, ',
'                    ot.CONDICION   ,',
'                    OT.COD_CLIENTE, ',
'                    OT.GARANTIA_OT,',
'                  OT.COD_SUCURSAL_DIST ,',
'                  OT.COD_DEPARTAMENTO,',
'                  OT.COD_CIUDAD,',
'                  OT.estado_presu',
'                  ,ot.observ',
'                  ,ot.comentario',
'                --- , ''S''',
'            INTO :P244_FEC_COMPROBANTE,',
'                 :P244_NRO_COMPROBANTE,',
'                 :P244_SER_COMPROBANTE,',
'                 :P244_GARANTIA,',
'                 :P244_SERIE_PRODUCTO,',
'                 :P244_COD_ORIGEN,',
'                 :P244_COD_ARTICULO_OT,',
'               --  :P244_DESCRIPCION_ARTICULO,',
'                 :P244_NRO_FACTURA,',
'                 :P244_FECHA_FACTURA,',
'                 :P244_COD_DISTRIBUIDOR,',
'                 vproveedor,',
'                 :P244_COMENTARIO,',
'                 :P244_COD_CLIENTE,',
'                 ---:P244_NOM_CLIENTE,',
'                 :P244_NRO_GARANTIA,',
'                 :P244_COD_SUCURSAL_DIST,',
'                 :P244_DEPARTAMENTO,',
'                 :P244_vCIUDAD,',
'                 :P244_ESTADO_PRESU ',
'                 ,:P244_OBERVACION',
'                 ,:P244_CONCLUSION',
'                ---, :P244_DESCARGA_DATOS',
'            from vt_ordenes_trabajo ot',
'            where OT.COD_EMPRESA=''1''',
'            AND   OT.TIP_COMPROBANTE=''ORT''',
'            AND   OT.SER_COMPROBANTE = :P244_PARAM_SER_OT ',
'            and   ot.NRO_comprobante= :P244_PARAM_NRO_OT',
'            ;',
'                             ',
'    exception',
'         when others then     ',
'            apex_application.g_print_success_message := ''<span class="notification">Error: No se pudieron recuperar los datos de la OT</span>'';',
'',
'        END;',
'END IF;'))
,p_attribute_02=>'P244_PARAM_SER_OT,P244_PARAM_NRO_OT'
,p_attribute_03=>'P244_FEC_COMPROBANTE, P244_NRO_COMPROBANTE,P244_SER_COMPROBANTE,P244_GARANTIA,P244_SERIE_PRODUCTO,P244_COD_ORIGEN,P244_COD_ARTICULO_OT,P244_NRO_FACTURA,P244_FECHA_FACTURA,P244_COD_DISTRIBUIDOR,P244_COMENTARIO,P244_COD_CLIENTE,P244_NOM_CLIENTE,P244_NR'
||'O_GARANTIA,P244_COD_SUCURSAL_DIST,P244_DEPARTAMENTO,P244_VCIUDAD,P244_ESTADO_PRESU,P244_DESCARGA_DATOS,P244_CONCLUSION,P244_OBERVACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59266352601631492)
,p_event_id=>wwv_flow_imp.id(59265391811631492)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'------------------------- PROBLEMA SOLUCION',
'             DECLARE',
'                    CURSOR REG IS',
'                     SELECT nvl(OT.COD_PROBLEMA,'''')COD_PROBLEMA,',
'                            nvl(P1.DESCRIPCION,'''') PROBLEMA,',
'                            nvl(OT.COD_SOLUCION,'''')COD_SOLUCION,',
'                            nvl(SL.DESCRIPCION,'''') SOLUCION,',
'                            nvl(OT.COD_PROBLEMA_CLIENTE,'''')COD_PROBLEMA_CLIENTE,',
'                            nvl(P2.DESCRIPCION,'''') PROBL_CLI,',
'                            nvl(OT.REPARADO,'''')REPARADO',
'                        FROM VT_ORDENES_TRABAJO_PROB_GEN OT,',
'                            ca_problemas P1,',
'                            ca_problemas P2,',
'                            CA_SOLUCIONES SL',
'                        WHERE OT.COD_EMPRESA=''1''',
'                        AND   OT.TIP_COMPROBANTE=''ORT''',
'                        AND   OT.SER_COMPROBANTE=:P244_PARAM_SER_OT ',
'                        AND   OT.NRO_COMPROBANTE=:P244_PARAM_NRO_OT ',
'                        AND   OT.cod_empresa = P1.cod_empresa(+)',
'                        AND   OT.cod_problema = P1.cod_problema(+)',
'                        AND   OT.cod_empresa = P2.cod_empresa(+)',
'                        AND   OT.COD_PROBLEMA_CLIENTE = P2.cod_problema(+)',
'                        AND   OT.cod_empresa = SL.cod_empresa(+)',
'                        AND   OT.COD_SOLUCION = SL.COD_SOLUCION(+);',
'                BEGIN',
'                        if not apex_collection.collection_exists(''VT_ORDENES_PROBLEMA'') then ',
'                            apex_collection.create_collection(''VT_ORDENES_PROBLEMA'');',
'                            ',
'                         else',
'                            apex_collection.truncate_collection(''VT_ORDENES_PROBLEMA''); ',
'                                                     ',
'                        end if; ',
'',
'                    FOR R IN REG LOOP ',
'                        apex_collection.add_member(',
'                                            p_collection_name => ''VT_ORDENES_PROBLEMA'',',
'                                            p_c001 => R.COD_PROBLEMA_CLIENTE,',
'                                            p_c002 => R.PROBL_CLI ,',
'                                            p_c003 => R.COD_PROBLEMA ,',
'                                            p_c004 => R.PROBLEMA ,',
'                                            p_c005 => R.COD_SOLUCION ,',
'                                            p_c006 => R.SOLUCION,',
'                                            p_c007 => R.REPARADO,',
'                                            P_c008 => ''S''',
'                                            );',
'                 ',
'                    END LOOP;',
'',
'                    ',
'                EXCEPTION',
'                    WHEN OTHERS THEN',
'                        NULL;',
'                END;',
'',
''))
,p_attribute_02=>'P244_PARAM_SER_OT,P244_PARAM_NRO_OT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59266846555631493)
,p_event_id=>wwv_flow_imp.id(59265391811631492)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'------------------------- CARGA MANO DE OBRA',
'',
'',
'             DECLARE',
'                    CURSOR REG IS',
'                       SELECT OT.COD_ARTICULO,',
'                             AR.descripcion,',
'                             OT.MONTO,',
'                             OT.MONTO_VENTA,',
'                             OT.COD_TECNICO,',
'                             NVL(OT.GARANTIA,''N'') GARANTIA,',
'                             NVL(OT.IND_RECLAMO,''N'') RECLAMO',
'                        FROM VT_ORDENES_TRABAJO_MO OT,',
'                             st_articulos AR ',
'                        WHERE OT.COD_EMPRESA=''1''',
'                        AND   OT.TIP_COMPROBANTE=''ORT''',
'                        AND   OT.SER_COMPROBANTE=:P244_PARAM_SER_OT ',
'                        AND   OT.NRO_COMPROBANTE=:P244_PARAM_NRO_OT ',
'                        AND   OT.cod_empresa = AR.cod_empresa',
'                        AND   OT.COD_ARTICULO = AR.COD_ARTICULO  ;',
'                BEGIN',
'                        if not apex_collection.collection_exists(''VT_MANO_OBRA'') then ',
'                            apex_collection.create_collection(''VT_MANO_OBRA'');',
'                        else',
'                            apex_collection.truncate_collection(''VT_MANO_OBRA'');',
'                        end if;',
'',
'                    FOR R IN REG LOOP ',
'                        apex_collection.add_member(',
'                                            p_collection_name => ''VT_MANO_OBRA'',',
'                                            p_c001 => R.COD_ARTICULO,',
'                                            p_c002 => R.descripcion ,',
'                                            p_c003 => R.MONTO  ,',
'                                            p_c004 => R.MONTO_VENTA ,',
'                                            p_c005 => R.COD_TECNICO ,',
'                                            p_c006 => R.GARANTIA,',
'                                            p_c007 => R.RECLAMO,',
'                                            p_c014 => ''S''',
'                                            );',
'                 ',
'                    END LOOP;',
'                EXCEPTION',
'                    WHEN OTHERS THEN',
'                        NULL;',
'                END;',
'',
' '))
,p_attribute_02=>'P244_PARAM_SER_OT,P244_PARAM_NRO_OT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59267388511631493)
,p_event_id=>wwv_flow_imp.id(59265391811631492)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'---------- PROBLEMA SOLUCION',
'',
'IF :P244_COLL_BPS IS NULL THEN',
'    :P244_COLL_BPS :=1;',
'    apex_collection.create_OR_TRUNCATE_collection(''VT_ORDENES_PROBLEMA1'');',
'ELSE',
' ',
'                                    declare',
'                                            cursor reg is  ',
'                                                    select  c001 as COD_PROBLEMA_cli, ',
'                                                            c003 as COD_PROBLEMA, ',
'                                                            c005 as COD_SOLUCION ,',
'                                                            c008 as operacion',
'                                                    from apex_collections ',
'                                                    where collection_name = ''VT_ORDENES_PROBLEMA1''   ;',
'',
'                                            /*',
'                                                    select  c001 as COD_PROBLEMA, ',
'                                                            c002 as COD_SOLUCION , ',
'                                                            p1.descripcion PROBLEMA, ',
'                                                            sl.descripcion SOLUCION',
'                                                    from apex_collections,',
'                                                        ca_problemas P1, ',
'                                                        CA_SOLUCIONES SL',
'                                                    where collection_name = ''VT_ORDENES_PROBLEMA1''   ',
'                                                        and   p1.cod_empresa = ''1''',
'                                                        AND   p1.cod_empresa = SL.cod_empresa',
'                                                        AND   P1.cod_problema= c001',
'                                                        AND   SL.COD_SOLUCION= c002 ',
'                                                    ;',
'',
'                                            */        ',
'                                    begin',
'',
'                                FOR R IN REG LOOP ',
'                                apex_collection.add_member(',
'                                                    p_collection_name => ''VT_ORDENES_PROBLEMA'',',
'                                                    p_c001 => R.COD_PROBLEMA_cli,',
'                                                    p_c002 => '''' ,',
'                                                    p_c003 => R.COD_PROBLEMA ,',
'                                                    p_c004 => '''',---R.PROBLEMA ,',
'                                                    p_c005 => R.COD_SOLUCION ,',
'                                                    p_c006 => '''',--- R.SOLUCION,',
'                                                    p_c007 => '''' ,',
'                                                    p_c008 => R.operacion ',
'                                                    );',
'                        ',
'                                END LOOP;',
'',
'                end;',
'        ',
'    --    else',
'       --- apex_collection.create_collection(''VT_ORDENES_PROBLEMA1'');',
'      --  end if;',
'END IF;'))
,p_attribute_02=>'P244_COLL_BPS'
,p_attribute_03=>'P244_COLL_BPS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59267833191631493)
,p_event_id=>wwv_flow_imp.id(59265391811631492)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'------------- MANO DE OBRA',
'',
' IF :P244_COLL_BMO IS NULL THEN',
'    :P244_COLL_BMO :=1;',
'    apex_collection.create_OR_TRUNCATE_collection(''VT_MANO_OBRA1'');',
'ELSE ',
' ',
'                                    declare',
'                                            cursor reg is  ',
'                                                    select  c001 as COD_ARTICULO, ',
'                                                            NVL(c002 , (select descripcion from st_articulos p where cod_empresa=''1'' and cod_articulo = c001)) as product_name,',
'                                                            c003 as MONTO, ',
'                                                            c004 as MONTO_VENTA ,',
'                                                            c005 as COD_TECNICO, ',
'                                                            c006 as GARANTIA ,',
'                                                            c007 as RECLAMO ,',
'                                                            c008 as PORC_CLIENTE , ',
'                                                            c009  as TIPO_CAMBIO,',
'                                                            c010 as COM_TEC, ',
'                                                            c011 as COM_JEF , ',
'                                                            c012 as MON_GAR,',
'                                                            c013 as MON_ADICIONAL ,',
'                                                            c014 as operacion ',
'                                                    from apex_collections ',
'                                                    where collection_name = ''VT_MANO_OBRA1''   ;',
'    ',
'                                    begin',
'',
'                                FOR R IN REG LOOP ',
'                                apex_collection.add_member(',
'                                                    p_collection_name => ''VT_MANO_OBRA'',',
'                                                    p_c001 => R.COD_ARTICULO,',
'                                                    p_c002 => r.product_name ,',
'                                                    p_c003 => R.MONTO ,',
'                                                    p_c004 => R.MONTO_VENTA ,',
'                                                    p_c005 => R.COD_TECNICO ,',
'                                                    p_c006 => R.GARANTIA,',
'                                                    p_c007 => R.RECLAMO  ,',
'                                                    p_c008 => R.PORC_CLIENTE , ',
'                                                    p_c009 => R.TIPO_CAMBIO,',
'                                                    p_c010 => R.COM_TEC, ',
'                                                    p_c011 => R.COM_JEF , ',
'                                                    p_c012 => R.MON_GAR,',
'                                                    p_c013 => R.MON_ADICIONAL ,',
'                                                    p_c014 => r.operacion',
'                                                    );',
'                        ',
'                                END LOOP;',
'',
'                end;',
'         ',
' END IF;'))
,p_attribute_02=>'P244_COLL_BMO'
,p_attribute_03=>'P244_COLL_BMO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59268340376631494)
,p_event_id=>wwv_flow_imp.id(59265391811631492)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-------------------- Repuestos solicitados',
'',
' declare ',
'        cursor reg is',
'                 select d.cod_articulo, ',
'                  a.descripcion desc_articulo,',
'                  sum(  nvl( d.cantidad_confirmada, 0)  ) cantidad,',
'                  sum(  nvl( d.cantidad_ot, 0)  ) cantidad_ot,  ',
'                  sum(  nvl( d.cantidad, 0)  ) cantidad_pedida,  ',
'                  NVL(MAX(D.verificado),''N'') VERIFICADO ,',
'                  c.NRO_comprobante NRO, ',
'                  c.ser_comprobante SER ,',
'                  c.cod_sucursal_env SUC',
'             from CA_PEDIDO_REPUESTO_CAB c, ',
'                  CA_PEDIDO_REPUESTO_det d, ',
'                  st_articulos a',
'            where c.cod_empresa = ''1''',
'              and c.tip_comprobante_ref = ''ORT''',
'              and c.ser_comprobante_ref = :P244_PARAM_SER_OT ',
'              and c.nro_comprobante_ref = :P244_PARAM_NRO_OT ',
'              and c.cod_empresa = d.cod_empresa',
'              and nvl( c.tip_comprobante, ''DFL'' ) = d.TIP_comprobante',
'              and nvl( c.ser_comprobante, ''D'' ) = d.SER_comprobante',
'              and c.nro_comprobante = d.NRO_comprobante',
'              and a.cod_empresa = d.cod_empresa',
'              and a.cod_articulo = d.cod_articulo',
'              and NVL(:P244_COD_ORIGEN,''1'') NOT IN (''2'',''13'')           ',
'              group by d.cod_articulo, ',
'                       a.descripcion ,',
'                       c.NRO_comprobante, ',
'                       c.ser_comprobante,',
'                       c.cod_sucursal_env',
'              order by a.descripcion;',
'    VIND_RECEP CHAR(1);',
'    VIND_RECH CHAR(1);',
' BEGIN',
'',
'                        if not apex_collection.collection_exists(''VT_ORDENES_REPUESTOS_PEDIDOS'') then ',
'                            apex_collection.create_collection(''VT_ORDENES_REPUESTOS_PEDIDOS'');',
'                        else',
'                            apex_collection.truncate_collection(''VT_ORDENES_REPUESTOS_PEDIDOS'');',
'                        end if;',
'',
'                    FOR R IN REG LOOP ',
'                        if nvl(R.cantidad_ot,0)>0 then',
'                            VIND_RECEP := ''S'';',
'                            VIND_RECH := ''N'';',
'                        else',
'                            VIND_RECEP := ''N'';',
'                            VIND_RECH:= ''N'';',
'                        end if;',
'                            ',
'                        IF R.cantidad = 0 AND R.verificado = ''S'' AND R.CANTIDAD_OT = 0 THEN       				',
'                                VIND_RECH := ''S'';',
'                        END IF;',
'',
'',
'                        apex_collection.add_member(',
'                                            p_collection_name => ''VT_ORDENES_REPUESTOS_PEDIDOS'',',
'                                            p_c001 => R.cod_articulo,',
'                                            p_c002 => R.desc_articulo ,',
'                                            p_c003 => R.cantidad ,',
'                                            p_c004 => R.cantidad_pedida,',
'                                            p_c005 => R.cantidad_ot ,',
'                                            P_C006  => ''S'',',
'                                            p_c007 => R.ser,',
'                                            p_c008 => R.NrO ,',
'                                            p_c009 => VIND_RECEP,',
'                                            p_c010 => VIND_RECH,',
'                                            p_c011 => R.SUC',
'                                            );',
'             ',
'                    END LOOP;',
'                EXCEPTION',
'                    WHEN OTHERS THEN',
'                        NULL;',
' END;'))
,p_attribute_02=>'P244_COD_ORIGEN, P244_PARAM_SER_OT,P244_PARAM_NRO_OT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59268812043631494)
,p_event_id=>wwv_flow_imp.id(59265391811631492)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'------------- REOUESTOS SOLICITADOS',
'',
' IF :P244_COLL_BRS IS NULL THEN',
'    :P244_COLL_BRS:=1;',
'    apex_collection.create_OR_TRUNCATE_collection(''VT_ORDENES_REPUESTOS_PEDIDOS1'');',
'ELSE ',
' ',
'                                    declare',
'                                            cursor reg is  ',
'                                                    select  c001 as COD_ARTICULO, ',
'                                                            NVL(c002 , (select descripcion from st_articulos p where cod_empresa=''1'' and cod_articulo = c001)) as product_name,',
'                                                            c003 as cantidad, ',
'                                                            NVL(c004,0) as conf ,',
'                                                            NVL(c005,0) as recep, ',
'                                                            c006 as operacion ',
'                                                    from apex_collections ',
'                                                    where collection_name = ''VT_ORDENES_REPUESTOS_PEDIDOS1''   ;',
'    ',
'                                    begin',
'',
'                                FOR R IN REG LOOP ',
'                                apex_collection.add_member(',
'                                                    p_collection_name => ''VT_ORDENES_REPUESTOS_PEDIDOS'',',
'                                                    p_c001 => R.COD_ARTICULO,',
'                                                    p_c002 => r.product_name ,',
'                                                    p_c003 => R.conf,',
'                                                    p_c004 => R.cantidad ,',
'                                                    p_c005 => R.recep ,',
'                                                    p_c006 => r.operacion',
'                                                    );',
'                        ',
'                                END LOOP;',
'',
'                end;',
'         ',
' END IF;'))
,p_attribute_02=>'P244_COLL_BRS'
,p_attribute_03=>'P244_COLL_BRS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59269349687631494)
,p_event_id=>wwv_flow_imp.id(59265391811631492)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-------------------- Repuestos UTILIZADOS',
' declare ',
'        cursor reg is',
'                select cod_articulo,',
'                       desc_articulo,  ',
'                       cantidad, ',
'                       PRECIO_LISTA,',
'                       total',
'              from VW_OT_REP_UTILIZADOS_APEX',
'             where  ser_comprobante = NVL(:P244_SER_COMPROBANTE,:P244_PARAM_SER_OT)',
'               and  nro_comprobante = NVL(:P244_nro_COMPROBANTE,:P244_PARAM_nro_OT)  ; ',
'',
' BEGIN',
'                        if not apex_collection.collection_exists(''VT_ORDENES_REPUESTOS_UTILIZADOS'') then ',
'                            apex_collection.create_collection(''VT_ORDENES_REPUESTOS_UTILIZADOS'');',
'                        else',
'                            apex_collection.truncate_collection(''VT_ORDENES_REPUESTOS_UTILIZADOS'');',
'                        end if;',
'',
'                    FOR R IN REG LOOP ',
'                        apex_collection.add_member(',
'                                            p_collection_name => ''VT_ORDENES_REPUESTOS_UTILIZADOS'',',
'                                            p_c001 => R.cod_articulo,',
'                                            p_c002 => R.desc_articulo ,',
'                                            p_c003 => R.cantidad ,',
'                                            p_c004 => R.precio_lista,',
'                                            p_c005 => R.total  ',
'                                            );',
'                  ',
'                    END LOOP;',
'                EXCEPTION',
'                    WHEN OTHERS THEN',
'                        NULL;',
' END;'))
,p_attribute_02=>'P244_COD_ORIGEN, P244_PARAM_SER_OT,P244_PARAM_NRO_OT'
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59269889311631494)
,p_event_id=>wwv_flow_imp.id(59265391811631492)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'------- PRESUPUESTO ',
'',
'DECLARE',
'CURSOR REG IS ',
'SELECT COD_ARTICULO,  DESC_ARTICULO,  CANTIDAD,  MONTO_TOTAL , COD_RUBRO  ,CANTIDAD_CONFIRMADA,	OBSERVACION,',
'              DECODE(NVL(AAA.IND_MANEJA_STOCK,''N''),''N'',''S'',NVL((SELECT DISTINCT ''S'' ',
'                                                            FROM    st_existencia_art  EE',
'                                                            WHERE   AAA.COD_ARTICULO=EE.COD_ARTICULO',
'                                                            AND     EE.COD_EMPRESA=''1'' ',
'                                                            AND     EE.COD_SUCURSAL IN (''101'',''1015'',''76'',''102'',''260'',''190'',''05'',''248'') ',
'                                                            group by EE.COD_ARTICULO',
'                                                            HAVING 		SUM(eE.cant_dispon)>=AAA.cantidad ),''N'')) EN_STOCK',
'FROM ',
'(',
'        select d.cod_articulo, a.descripcion desc_articulo, ',
'             sum( decode( nvl( ind_ent_sal, ''N'' ), ''S'', nvl( d.cantidad, 0 ), nvl( d.cantidad, 0 ) * -1 ) ) cantidad,',
'             sum( decode( nvl( ind_ent_sal, ''N'' ), ''S'', nvl( d.cantidad, 0 ), nvl( d.cantidad, 0 ) * -1 ) * nvl( d.precio_venta, 0 ) ) monto_total, ',
'              A.COD_RUBRO,A.IND_MANEJA_STOCK,',
'             sum( decode( nvl( ind_ent_sal, ''N'' ), ''S'', nvl( d.cantidad_CONFIRMADA, 0 ), nvl( d.cantidad_CONFIRMADA, 0 ) * -1 ) )CANTIDAD_CONFIRMADA,',
'              NVL(D.OBSERVACION, C.OBSERVACION)OBSERVACION             ',
'             from ca_entsal_cab c, ca_entsal_det d, st_articulos a, st_motivo_ent_sal mo',
'            where c.cod_empresa = ''1''',
'              and c.tip_comprobante_ref = ''ORT''',
'              and c.ser_comprobante_ref = :P244_PARAM_SER_OT',
'              and c.nro_comprobante_ref = :P244_PARAM_NRO_OT',
'              and c.cod_empresa = d.cod_empresa',
'              and nvl( c.tip_ent_sal, ''DFL'' ) = d.tip_ent_sal',
'              and nvl( c.ser_ent_sal, ''D'' ) = d.ser_ent_sal',
'              and c.num_ent_sal = d.num_ent_sal',
'              and a.cod_empresa = d.cod_empresa',
'              and a.cod_articulo = d.cod_articulo',
'              and nvl(D.anulado,''N'')<>''S''',
'              and c.cod_motivo_ent_sal = mo.cod_motivo_ent_sal(+)',
'            group by d.cod_articulo, a.descripcion, a.cod_grupo_art,d.garantia,A.IND_MANEJA_STOCK,',
'             A.COD_RUBRO,',
'              NVL(D.OBSERVACION, C.OBSERVACION)',
'            having sum( decode( nvl( ind_ent_sal, ''N'' ), ''S'', nvl( d.cantidad, 0 ), nvl( d.cantidad, 0 ) * -1 ) ) > 0',
'            )AAA',
'            order by AAa.desc_articulo',
'            ;',
'',
'',
' BEGIN',
'',
'                        if not apex_collection.collection_exists(''VT_ORDENES_PRESUPUESTO'') then ',
'                            apex_collection.create_collection(''VT_ORDENES_PRESUPUESTO'');',
'                        else',
'                            apex_collection.truncate_collection(''VT_ORDENES_PRESUPUESTO'');',
'                        end if;',
'',
'                    FOR R IN REG LOOP ',
'                        apex_collection.add_member(',
'                                            p_collection_name => ''VT_ORDENES_PRESUPUESTO'',',
'                                            p_c001 => R.cod_articulo,',
'                                            p_c002 => R.desc_articulo ,',
'                                            p_c003 => R.cantidad ,',
'                                            p_c004 => R.MONTO_TOTAL,',
'                                            p_c005 => R.EN_STOCK  ',
'                                            );',
'                  ',
'                    END LOOP;',
'                EXCEPTION',
'                    WHEN OTHERS THEN',
'                        NULL;',
' END;'))
,p_attribute_02=>'P244_PARAM_SER_OT,P244_PARAM_NRO_OT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59270340570631495)
,p_event_id=>wwv_flow_imp.id(59265391811631492)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'------------- PRESUPUESTO',
'',
' IF :P244_COLL_BPRE IS NULL THEN',
'    :P244_COLL_BPRE:=1;',
'    apex_collection.create_OR_TRUNCATE_collection(''VT_ORDENES_PRESUPUESTO1'');',
'ELSE ',
' ',
'                                    declare',
'                                            cursor reg is  ',
'                                                    select  c001 as COD_ARTICULO, ',
'                                                            NVL(c002 , (select descripcion from st_articulos p where cod_empresa=''1'' and cod_articulo = c001)) as product_name,',
'                                                            c003 as cantidad, ',
'                                                            c004 as precio ,',
'                                                            c005 as total, ',
'                                                            c006 as operacion ',
'                                                    from apex_collections ',
'                                                    where collection_name = ''VT_ORDENES_PRESUPUESTO1''   ;',
'    ',
'                                    begin',
'',
'                                FOR R IN REG LOOP ',
'                                apex_collection.add_member(',
'                                                    p_collection_name => ''VT_ORDENES_PRESUPUESTO'',',
'                                                    p_c001 => R.COD_ARTICULO,',
'                                                    p_c002 => r.product_name ,',
'                                                    p_c003 => R.cantidad ,',
'                                                    p_c004 => R.total ,',
'                                                    --p_c005 => R.total ,',
'                                                    p_c006 => r.operacion',
'                                                    );',
'                        ',
'                                END LOOP;',
'',
'                end;',
'         ',
' END IF;',
''))
,p_attribute_02=>'P244_COLL_BPRE'
,p_attribute_03=>'P244_COLL_BPRE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59270802717631495)
,p_event_id=>wwv_flow_imp.id(59265391811631492)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P244_COD_PROVEEDOR'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nvl(:P244_COD_PROV, NVL((select   ot.cod_proveedor  ',
'            from vt_ordenes_trabajo ot',
'            where OT.COD_EMPRESA=''1''',
'            AND   OT.TIP_COMPROBANTE=''ORT''',
'            AND   OT.SER_COMPROBANTE = NVL(:P244_PARAM_SER_OT,:P244_SER_COMPROBANTE)',
'            and   ot.NRO_comprobante= NVL(:P244_PARAM_NRO_OT,:P244_NRO_COMPROBANTE))   , (select distinct p.cod_proveedor ',
'                            from usuarios u,',
'                                cm_proveedores p',
'                            where u.cod_usuario= v(''app_user'')',
'                            AND   u.cod_persona=p.cod_persona',
'                            AND   p.cod_empresa=''1''',
'                            AND   NVL(p.ESTADO,''A'')NOT IN (''I'') ',
'                            AND   p.ind_servicio_tecnico =''STNGO'' ))',
')DD',
'FROM',
'DUAL;'))
,p_attribute_07=>'P244_PARAM_NRO_OT,P244_PARAM_SER_OT,P244_SER_COMPROBANTE,P244_NRO_COMPROBANTE,P244_COD_PROV'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59271361161631495)
,p_event_id=>wwv_flow_imp.id(59265391811631492)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P244_VCIUDAD,P244_DEL_ID_RS'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59271872462631495)
,p_event_id=>wwv_flow_imp.id(59265391811631492)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'JAVASCRIPT_EXPRESSION'
,p_affected_elements=>'$(''.refreshme'').trigger(''apexrefresh''); '
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59272284610631495)
,p_name=>'datos_cliente'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P244_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59272773627631496)
,p_event_id=>wwv_flow_imp.id(59272284610631495)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'                    declare ',
'                        vciudad varchar2(30);',
'                        vdepartamento varchar2(30);',
'                    begin ',
'                            select	     ',
'                                        d.cod_direccion cod_dir, ',
'                                        d.detalle||''-''||ci.descripcion dir_cliente,  ',
'                                        i.numero,',
'                                        CI.COD_PROVINCIA,',
'                                        cI.COD_CIUDAD,',
'                                        p.direc_electronica',
'                                        ,NC.numero',
'                                        ,C.COD_LISTA_PRECIO',
'                                       INTO',
'                                                        :P244_COD_DIRECCION,',
'                                                        :P244_DIR_CLIENTE, ',
'                                                        :P244_RUC,',
'                                                        vdepartamento,',
'                                                        vciudad,',
'                                                        :P244_EMAIL,',
'                                                        :P244_NCI,',
'                                                        :P244_COD_LISTA_PRECIO',
'',
'                                    from cc_clientes c, personas p, cc_causales b,',
'                                        direc_personas d, ',
'                                        telef_personas t, ',
'                                        ident_personas i, ',
'                                        ident_personas NC, ',
'                                        CIUDADES CI',
'                                where c.cod_empresa = ''1''',
'                                and c.cod_cliente = :P244_cod_cliente',
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
'                            if :P244_PARAM_NRO_OT is null then',
'                                :P244_DEPARTAMENTO:=vdepartamento;',
'                                :P244_vCIUDAD:=vciudad;',
'                                :P244_CIUDAD:=vciudad;',
'                            end if;',
'                            ',
'                    EXCEPTION',
'                        WHEN OTHERS THEN',
'                                :P244_COD_DIRECCION:=null;',
'                                :P244_DIR_CLIENTE:=null; ',
'                                :P244_RUC:=null;',
'                                :P244_DEPARTAMENTO:=null;',
'                                :P244_CIUDAD:=null;',
'                                :P244_EMAIL:=null;',
'                                :P244_NCI:=null;',
'                                :P244_COD_LISTA_PRECIO:=NULL;',
'                    END;',
'                end;'))
,p_attribute_02=>'P244_COD_CLIENTE'
,p_attribute_03=>'P244_COD_DIRECCION,P244_DIR_CLIENTE,P244_TEL_CLIENTE,P244_RUC,P244_DEPARTAMENTO,P244_CIUDAD,P244_EMAIL,P244_NCI,P244_VCIUDAD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59273217483631496)
,p_event_id=>wwv_flow_imp.id(59272284610631495)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'        if :P244_PARAM_NRO_OT is null and :P244_PARAM_SER_OT is null then',
'                select  distinct t.codigo_area || '' '' || t.num_telefono',
'                into :P244_TEL_CLIENTE',
'                    from cc_clientes c, telef_personas t',
'                    where c.cod_empresa = ''1''',
'                    and c.cod_cliente = :P244_cod_cliente',
'                    and c.cod_persona = t.cod_persona',
'                    and por_defecto =''S''',
'                    and rownum = ''1''',
'                    ;',
'                else',
'                select ot.TELEFONO',
'                into :P244_TEL_CLIENTE',
'                    from vt_ordenes_trabajo ot',
'                    where OT.COD_EMPRESA = ''1''',
'                    AND OT.TIP_COMPROBANTE = ''ORT''',
'                    AND OT.SER_COMPROBANTE = :P244_PARAM_SER_OT',
'                    and ot.NRO_comprobante = :P244_PARAM_NRO_OT; ',
'',
'        end if;',
'',
'exception ',
'    when others then',
'          :P244_TEL_CLIENTE:=  null;',
'end;'))
,p_attribute_02=>'P244_COD_CLIENTE,P244_PARAM_SER_OT,P244_PARAM_NRO_OT'
,p_attribute_03=>'P244_TEL_CLIENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59273611284631496)
,p_name=>'datos_sucursales'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P244_COD_SUCURSAL_DIST'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59274113496631496)
,p_event_id=>wwv_flow_imp.id(59273611284631496)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'	select  p.direccion, p.telefono',
'	 into  :P244_lugar_entrega, :P244_telefono_dist',
'	from cc_clientes c, BS_SUCURSAL_CLIENTE p',
'	where c.cod_empresa=''1''',
'	and c.cod_cliente=:P244_cod_cliente',
'	and c.cod_persona=p.cod_persona',
'	and p.cod_sucursal=:P244_cod_sucursal_dist',
'	;',
'exception',
'	when others then 	',
'	 :P244_lugar_entrega:=:P244_cod_sucursal_dist||''-''||:P244_cod_cliente;',
'     ---, :P244_telefono_dist',
'end;'))
,p_attribute_02=>'P244_COD_SUCURSAL_DIST,P244_COD_CLIENTE'
,p_attribute_03=>'P244_LUGAR_ENTREGA,P244_TELEFONO_DIST'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59274567209631497)
,p_name=>'OBTIENE_DESCRIPCION_ARTICULO'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P244_COD_ARTICULO_OT'
,p_condition_element=>'P244_COD_ARTICULO_OT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59275042995631497)
,p_event_id=>wwv_flow_imp.id(59274567209631497)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P244_DESCRIPCION_ARTICULO,P244_COD_MARCA'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DESCRIPCION ,cod_marca ',
'FROM ST_ARTICULOS ',
'WHERE COD_EMPRESA=''1''',
'--AND COD_RUBRO=''PR''',
'AND DESCRIPCION IS NOT NULL',
'AND COD_ARTICULO = :P244_COD_ARTICULO_OT'))
,p_attribute_07=>'P244_COD_ARTICULO_OT'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59275525625631497)
,p_event_id=>wwv_flow_imp.id(59274567209631497)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P244_DESCRIPCION_ARTICULO,P244_COD_MARCA,P244_COD_PROVEEDOR'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59276052188631497)
,p_event_id=>wwv_flow_imp.id(59274567209631497)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P244_cod_origen is not null and :P244_cod_origen  is not null then',
'',
'    if :P244_cod_origen  in  (''1'',''20'',''3'',''9'',''32'',''36'')  then     ',
'        :P244_COD_PROVEEDOR:=f_asigna_tecnico(:P244_COD_ARTICULO_OT , null);  ',
'',
'    elsif :P244_cod_origen  in  (''38'',''15'')  then  ',
'            begin',
'                    select cod_proveedor',
'                    into  :P244_COD_PROVEEDOR',
'                    from usuarios u,',
'                        cm_proveedores p',
'                    where u.cod_usuario=v(''APP_USER'')',
'                    and u.cod_persona = p.cod_persona',
'                    and p.cod_empresa=''1''',
'                    and rownum=1',
'                    ;',
'',
'            exception',
'                when others then',
'                         :P244_COD_PROVEEDOR:=null;',
'            end;',
'',
'    else',
'        :P244_COD_PROVEEDOR:='''';',
'    end if;',
'',
'',
'else',
'        :P244_COD_PROVEEDOR:='''';',
'end if;'))
,p_attribute_02=>'P244_COD_ORIGEN,P244_COD_ARTICULO_OT'
,p_attribute_03=>'P244_COD_PROVEEDOR'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59276436851631498)
,p_name=>'DELETE_DETALLE'
,p_event_sequence=>80
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-ps'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59276914858631498)
,p_event_id=>wwv_flow_imp.id(59276436851631498)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro de borrar la linea'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59277410026631498)
,p_event_id=>wwv_flow_imp.id(59276436851631498)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P244_DEL_ID_PS'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'');'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59277901874631498)
,p_event_id=>wwv_flow_imp.id(59276436851631498)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    vabm char(1);',
'    vcodprcl varchar2(30);',
'    vcodprbl varchar2(30);',
'    vcodsol  varchar2(30);',
'    vid number; ',
'    vmensaje varchar2(3200);',
'    error exception;',
'begin ',
'        IF TO_NUMBER(:P244_DEL_ID_ps)<>0 THEN',
'                select c001 as COD_PROB_CLI,',
'                       c003 as COD_PROBLEMA,',
'                       c005 as COD_SOLUCION,',
'                       c008 as op',
'                into vcodprcl,',
'                     vcodprbl,',
'                     vcodsol,',
'                     vabm',
'                FROM APEX_collections',
'                WHERE collection_name = ''VT_ORDENES_PROBLEMA''',
'                and SEQ_ID = TO_NUMBER(:P244_DEL_ID_ps);',
'',
'            if vabm =''I'' then --- si es I entonces es un nuevo item para insertar, solo requiere borrar del temporal  VT_ORDENES_PROBLEMA1',
'                    BEGIN',
'                                select SEQ_ID ',
'                                into vid',
'                                FROM APEX_collections',
'                                WHERE collection_name = ''VT_ORDENES_PROBLEMA1''',
'                                and  c001 = vcodprcl',
'                                and  c003 = vcodprbl',
'                                and  c005 = vcodsol;',
'',
'                                        APEX_COLLECTION.DELETE_MEMBER(',
'                                        p_collection_name => ''VT_ORDENES_PROBLEMA1'',',
'                                        p_seq => vid);',
'                    exception',
'                        when others then',
'                                vmensaje:=sqlerrm;',
'                                 raise error ;',
'                    END;',
'            else',
'                begin',
'                    delete',
'                    from  inv.vt_ordenes_trabajo_prob_gen',
'                    where cod_empresa=''1''',
'                     AND  tip_comprobante=''ORT''',
'                     AND  ser_comprobante=:P244_SER_COMPROBANTE',
'                     AND  nro_comprobante=:P244_NRO_COMPROBANTE  ',
'                     AND  cod_problema = vcodprbl',
'                     AND  cod_solucion = vcodsol',
'                     AND  cod_problema_cliente=vcodprcl',
'                    ;',
'                   --- COMMIT;',
'                    ',
'                exception',
'                    when others then',
'                                vmensaje:=sqlerrm;',
'                                 raise error ;',
'                end;',
'            end if;',
'',
'        END IF; ',
'exception',
'    when error then',
'            apex_error.add_error(p_message               => ''Error: ''||vmensaje,',
'	                   p_display_location      => apex_error.c_inline_in_notification',
'                   ); ',
'    when others then            ',
'       apex_error.add_error(p_message               => ''Error: ''||sqlerrm,',
'	                   p_display_location      => apex_error.c_inline_in_notification',
'                   ); ',
'',
'end;',
'           '))
,p_attribute_02=>'P244_DEL_ID_PS,P244_NRO_COMPROBANTE,P244_SER_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59278464404631499)
,p_event_id=>wwv_flow_imp.id(59276436851631498)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59278860179631499)
,p_name=>'DELETE_REP_SOL'
,p_event_sequence=>90
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-rs'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59279313336631499)
,p_event_id=>wwv_flow_imp.id(59278860179631499)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro de borrar el repuesto?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59279899740631499)
,p_event_id=>wwv_flow_imp.id(59278860179631499)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P244_DEL_ID_RS'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'');'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59280334385631499)
,p_event_id=>wwv_flow_imp.id(59278860179631499)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    vabm char(1);',
'    vcod  varchar2(30); ',
'    vid number;',
'    vrecep CHAR(1);',
'    vrecH  CHAR(1);',
'    error exception;',
'    vmensaje varchar2(3200); ',
'    VSER_PER varchar2(30); ',
'    VNRO_PER number;',
'begin  ',
'        IF TO_NUMBER(:P244_DEL_ID_RS)<>0 THEN',
'                select c001 as COD_PROB_CLI,',
'                       c006 as op,',
'                       C007 AS SER_PER,',
'                       C008 AS NRO_PER, ',
'                       c009 as recep, ',
'                       c010 as recH',
'                into vcod  ,',
'                     vabm,',
'                     VSER_PER,',
'                     VNRO_PER,',
'                     vrecep,',
'                     vrecH',
'                FROM APEX_collections',
'                WHERE collection_name = ''VT_ORDENES_REPUESTOS_PEDIDOS''',
'                and SEQ_ID = TO_NUMBER(:P244_DEL_ID_RS);',
'',
'            if vabm =''I'' then --- si es I entonces es un nuevo item para insertar, solo requiere borrar del temporal  VT_ORDENES_PROBLEMA1',
'                    BEGIN',
'                                select SEQ_ID ',
'                                into vid',
'                                FROM APEX_collections',
'                                WHERE collection_name = ''VT_ORDENES_REPUESTOS_PEDIDOS1''',
'                                and  c001 = vcod ;',
'',
'                                        APEX_COLLECTION.DELETE_MEMBER(',
'                                        p_collection_name => ''VT_ORDENES_REPUESTOS_PEDIDOS1'',',
'                                        p_seq => vid);',
'                    exception',
'                        when others then',
'                                vmensaje:=sqlerrm;',
'                                raise error;',
'                    END; ',
'            else',
'                    if vrecep=''S'' OR vrecH=''S'' then',
'                                    vmensaje:=''No se puede desconfirmar el repuesto'';',
'                                    raise error;',
'                    else ',
'                            begin',
'                                    saca_repuestos_ot(''1'',''PER'',VSER_PER,VNRO_PER,vcod, ''05'',''ANULADO - APEX'');                        ',
'                                ',
'                            exception',
'                                when others then',
'                                    vmensaje:=sqlerrm;',
'                                    raise error;',
'                            end; ',
'                    end if;',
'            end if;',
'        ELSE',
'            vmensaje:=:P244_DEL_ID_RS;',
'            RAISE ERROR;',
'        END IF; ',
'exception',
'    when error then ',
'        apex_error.add_error(p_message               => ''Error: ''||vmensaje,',
'	                   p_display_location      => apex_error.c_inline_in_notification',
'                   );',
'',
'end;',
'           '))
,p_attribute_02=>'P244_DEL_ID_RS,P244_NRO_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59280845746631500)
,p_event_id=>wwv_flow_imp.id(59278860179631499)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59281229163631500)
,p_name=>'DELETE_PRESUP'
,p_event_sequence=>100
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-pre'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59281788801631500)
,p_event_id=>wwv_flow_imp.id(59281229163631500)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro de borrar la linea'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59282216867631500)
,p_event_id=>wwv_flow_imp.id(59281229163631500)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P244_DEL_ID_PRE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'');'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59282799553631501)
,p_event_id=>wwv_flow_imp.id(59281229163631500)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    vabm char(1);',
'    vcod varchar2(30);',
'    vid number;',
'begin ',
'        IF TO_NUMBER(:P244_DEL_ID_PRE)<>0 THEN',
'                select c001 ,',
'                       nvl(c006,''S'')  ',
'                into vcod,',
'                     vabm',
'                FROM APEX_collections',
'                WHERE collection_name = ''VT_ORDENES_PRESUPUESTO''',
'                and SEQ_ID = TO_NUMBER(:P244_DEL_ID_PRE);',
'',
'            if vabm =''I'' then --- si es I entonces es un nuevo item para insertar, solo requiere borrar del temporal  VT_ORDENES_PROBLEMA1',
'                    BEGIN',
'                                select SEQ_ID ',
'                                into vid',
'                                FROM APEX_collections',
'                                WHERE collection_name = ''VT_ORDENES_PRESUPUESTO1''',
'                                and  c001 = vcod ;',
'',
'                                        APEX_COLLECTION.DELETE_MEMBER(',
'                                        p_collection_name => ''VT_ORDENES_PRESUPUESTO1'',',
'                                        p_seq => vid);',
'                    exception',
'                        when others then',
'                                null;',
'                    END;',
'            else',
'                begin',
'                    borra_repuesto_presupuesto(''ORT'' ,',
'                                            :P244_SER_COMPROBANTE ,',
'                                            :P244_nro_comprobante ,',
'                                            vcod',
'',
'                                );',
'                    COMMIT;',
'                    ',
'                exception',
'                    when others then',
'                            null;',
'                end;',
'            end if;',
'',
'        END IF; ',
'exception',
'    when others then',
'             apex_application.g_print_success_message := ''<span class="notification"> Error. No se ha podido eliminar el item $(vcod) del presupuesto.</span>'';',
'end;',
'           '))
,p_attribute_02=>'P244_DEL_ID_PRE,P244_NRO_COMPROBANTE,P244_SER_COMPROBANTE'
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59283282360631501)
,p_event_id=>wwv_flow_imp.id(59281229163631500)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59283683030631501)
,p_name=>'DELETE_MANO_OBRA'
,p_event_sequence=>110
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-mo'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59284164463631501)
,p_event_id=>wwv_flow_imp.id(59283683030631501)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro de borrar la linea'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59284677525631501)
,p_event_id=>wwv_flow_imp.id(59283683030631501)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P244_DEL_ID_MO'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'');'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59285102911631502)
,p_event_id=>wwv_flow_imp.id(59283683030631501)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    vabm char(1);',
'    vcodART varchar2(30); ',
'    vcodTEC  varchar2(30);',
'    vid number;',
'    error exception;',
'    verror   varchar2(3200);',
'',
'begin ',
'        IF TO_NUMBER(:P244_DEL_ID_MO)<>0 THEN ',
'                select c001 as COD_ARTICULO,',
'                       c005 as COD_TECNICO,',
'                       c014 as op',
'                into vcodART,',
'                     vcodTEC, ',
'                     vabm',
'                FROM APEX_collections',
'                WHERE collection_name = ''VT_MANO_OBRA''',
'                and SEQ_ID = TO_NUMBER(:P244_DEL_ID_MO);',
'',
'            if vabm =''I'' then --- si es I entonces es un nuevo item para insertar, solo requiere borrar del temporal  VT_ORDENES_PROBLEMA1',
'                    BEGIN',
'                                select SEQ_ID ',
'                                into vid',
'                                FROM APEX_collections',
'                                WHERE collection_name = ''VT_MANO_OBRA1''',
'                                and  c001 = vcodART ',
'                                and  c005 = vcodTEC;',
'',
'                                        APEX_COLLECTION.DELETE_MEMBER(',
'                                        p_collection_name => ''VT_MANO_OBRA1'',',
'                                        p_seq => vid);',
'                    exception',
'                        when others then',
'                                verror:=sqlerrm;',
'                                raise error;',
'                    END;',
'            else',
'                begin',
'                    delete',
'                    from  inv.VT_ORDENES_TRABAJO_MO',
'                    where cod_empresa=''1''',
'                     AND  tip_comprobante=''ORT''',
'                     AND  ser_comprobante=:P244_SER_COMPROBANTE',
'                     AND  nro_comprobante=:P244_NRO_COMPROBANTE  ',
'                     AND  cod_ARTICULO = vcodART ',
'                     AND  cod_TECNICO =vcodTEC',
'                    ;',
'                    COMMIT;',
'                    ',
'                exception',
'                    when others then',
'                                verror:=sqlerrm;',
'                                raise error;',
'                end;',
'            end if;',
'',
'        END IF; ',
'exception',
'    when error then ',
'    apex_error.add_error(p_message               => ''Error: ''||verror,',
'	                   p_display_location      => apex_error.c_inline_in_notification',
'                   );',
'',
'end;',
'           '))
,p_attribute_02=>'P244_DEL_ID_MO,P244_NRO_COMPROBANTE,P244_SER_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59285656339631502)
,p_event_id=>wwv_flow_imp.id(59283683030631501)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59286023373631502)
,p_name=>'DELETE_REP_UTIL'
,p_event_sequence=>120
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-ru'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59286536689631502)
,p_event_id=>wwv_flow_imp.id(59286023373631502)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro de borrar la linea'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59287019798631503)
,p_event_id=>wwv_flow_imp.id(59286023373631502)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P244_DEL_ID_RU'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'');'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59287519505631503)
,p_event_id=>wwv_flow_imp.id(59286023373631502)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    vabm char(1);',
'    vcod  varchar2(30);',
'    vcant NUMBER; ',
'    vid number;  ',
'begin ',
'        IF TO_NUMBER(:P244_DEL_ID_RU)<>0 THEN',
'                select c001 as COD ,',
'                       c003 as CANT ,',
'                       c008 as op',
'                into vcod ,',
'                     vcant, ',
'                     vabm',
'                FROM APEX_collections',
'                WHERE collection_name = ''VT_ORDENES_REPUESTOS_UTILIZADOS''',
'                and SEQ_ID = TO_NUMBER(:P244_DEL_ID_RU);',
'',
'            if vabm =''I'' then --- si es I entonces es un nuevo item para insertar, solo requiere borrar del temporal  VT_ORDENES_PROBLEMA1',
'                    BEGIN',
'                                select SEQ_ID ',
'                                into vid',
'                                FROM APEX_collections',
'                                WHERE collection_name = ''VT_ORDENES_REPUESTOS_UTILIZADOS1''',
'                                and  c001 = vcod;',
'',
'                                        APEX_COLLECTION.DELETE_MEMBER(',
'                                        p_collection_name => ''VT_ORDENES_REPUESTOS_UTILIZADOS1'',',
'                                        p_seq => vid);',
'                    exception',
'                        when others then',
'                                null;',
'                    END;',
'            else',
'                if :P244_COD_ORIGEN in(''2'',''13'',''12'',''27'',''40'') THEN',
'                    borra_repuesto_ot_web(''ORT'' ,:P244_ser_comprobante ,:P244_nro_comprobante ,vcod );',
'',
'                elsIF  :P244_COD_ORIGEN in(''1'',''15'',''20'',''3'',''24'',''9'',''11'',''32'',''33'',''42'')	and nvl(:P244_cerrado,''N'')<>''S'' THEN',
'',
'                    sp_devolucion_repuesto_ot(:P244_COD_PROVEEDOR,''ORT'' ,:P244_ser_comprobante ,',
'                                :P244_nro_comprobante ,vcod ,vcant ,''05'');',
'                end if;',
'               ',
'            end if;',
'',
'        END IF; ',
'exception',
'    when others then',
'              apex_error.add_error(p_message  => ''Error: Al intenetar dar de baja el codigo '',',
'	                                p_display_location      => apex_error.c_inline_in_notification',
'                                );',
'',
'end;',
'           '))
,p_attribute_02=>'P244_DEL_ID_RU,P244_NRO_COMPROBANTE,P244_COD_ORIGEN'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59288018113631503)
,p_event_id=>wwv_flow_imp.id(59286023373631502)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59288488752631503)
,p_name=>'expandir_region'
,p_event_sequence=>130
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59288948995631504)
,p_event_id=>wwv_flow_imp.id(59288488752631503)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P244_CANTIDAD_PROBLEMA'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sum(cant)',
'from (',
'        select count(*) cant',
'        from apex_collections',
'        where collection_name = ''VT_ORDENES_PROBLEMA''',
'        union all ',
'        select count(*) cant',
'        from apex_collections',
'        where collection_name = ''VT_ORDENES_REPUESTOS_PEDIDOS''',
'        union all select count(*) cant',
'        from apex_collections',
'        where collection_name = ''VT_ORDENES_PRESUPUESTO''',
'        union all select count(*) cant',
'        from apex_collections',
'        where collection_name = ''VT_PEDIDOS_DETALLE''',
'        union all select count(*) cant',
'        from apex_collections',
'        where collection_name = ''VT_MANO_OBRA'' ',
'    ',
')',
'',
'',
' /*',
'',
' apex_collection.truncate_collection (''VT_ORDENES_PROBLEMA'');',
'apex_collection.truncate_collection (''VT_ORDENES_PROBLEMA1'');',
'apex_collection.truncate_collection (''VT_ORDENES_REPUESTOS_PEDIDOS'');',
'apex_collection.truncate_collection (''VT_ORDENES_PRESUPUESTO'');',
'apex_collection.truncate_collection (''VT_MANO_OBRA'');',
'---apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_PEDIDOS_DETALLE'');',
'apex_collection.truncate_collection (''VT_ORDENES_REPUESTOS_PEDIDOS1'');',
'apex_collection.truncate_collection (''VT_ORDENES_PRESUPUESTO1'');',
'apex_collection.truncate_collection (''VT_MANO_OBRA1'');',
'',
'*/'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59289405095631504)
,p_event_id=>wwv_flow_imp.id(59288488752631503)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P244_CANT_RS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*SELECT distinct ''1''',
'FROM VT_ORDENES_TRABAJO_PROB_GEN OT ',
'WHERE OT.COD_EMPRESA=''1''',
'AND   OT.TIP_COMPROBANTE=''ORT''',
'AND   OT.SER_COMPROBANTE= NVL(:P244_SER_COMPROBANTE,:P244_PARAM_SER_OT)',
'AND   OT.NRO_COMPROBANTE= NVL(:P244_nro_comprobante,:P244_PARAM_NRO_OT)',
'*/',
'',
'select nvl(count (*),0)',
'       from ca_pedido_repuesto_cab',
'      where cod_empresa = ''1''',
'        and tip_comprobante_ref = ''ORT''',
'        and ser_comprobante_ref = NVL(:P244_SER_COMPROBANTE,:P244_PARAM_SER_OT)',
'        and nro_comprobante_ref = NVL(:P244_nro_comprobante,:P244_PARAM_NRO_OT)',
''))
,p_attribute_07=>'P244_PARAM_SER_OT,P244_PARAM_NRO_OT,P244_SER_COMPROBANTE,P244_NRO_COMPROBANTE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59289919424631504)
,p_event_id=>wwv_flow_imp.id(59288488752631503)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(273065202519402266)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var numEntries = $v("P244_CANTIDAD_PROBLEMA"),',
'    npedido = $v("P244_NRO_COMPROBANTE"),',
'     VCANSR = $v("P244_CANT_RS"),',
'    $region = $(this.affectedElements[0])',
'   ',
'   ;',
'  ',
' if (numEntries >0 && $region.hasClass(''is-expanded'') && npedido !== ''undefined'' ) {',
'      $region.find("button.t-Button--hideShow").eq(0).click();',
'  }',
'  ',
' if (numEntries <1  && $region.hasClass(''is-collapsed'') ) {',
'      $region.find("button.t-Button--hideShow").eq(0).click();',
'  }',
'   ',
' if (VCANSR >0 ) ',
' {',
'      $(''#P244_COD_ARTICULO_OT'').attr(''disabled'',''false'');',
'      $(''#P244_GARANTIA'').attr(''disabled'',''false'');',
'      $(''#P244_NRO_GARANTIA'').attr(''disabled'',''false''); ',
'     /// $(''#P244_COD_ARTICULO_OT a.a-Button--popupLOV'').show();',
'  }',
' ',
'',
'',
'  '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59290362058631504)
,p_name=>'crea_cliente'
,p_event_sequence=>140
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59290826373631505)
,p_event_id=>wwv_flow_imp.id(59290362058631504)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_MODAL PAGE LOOKUP BUTTON'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(59240285911631471)
,p_attribute_01=>'P244_COD_CLIENTE'
,p_attribute_02=>'64'
,p_attribute_03=>'P244_COD_CLIENTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59291268365631505)
,p_name=>'OBTIENE_DATOS_GARANTIAS'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P244_NRO_GARANTIA'
,p_condition_element=>'P244_NRO_GARANTIA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59291764845631505)
,p_event_id=>wwv_flow_imp.id(59291268365631505)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P244_NRO_COMPROBANTE is null then',
'    if :P244_NRO_GARANTIA is not null then',
'        declare ',
'                vcod varchar(30);',
'        begin',
'                select S.COD_ARTICULO,C.COD_CLIENTE',
'                into vcod, :P244_COD_DISTRIBUIDOR',
'                from st_garantia_productos_det a,',
'                    st_articulos              s',
'                    , VT_COMPROBANTES_CABECERA C            ',
'            where a.cod_empresa = ''1''',
'                and a.nro_garantia =:P244_NRO_GARANTIA',
'                and a.cod_empresa = s.cod_empresa',
'                and a.cod_articulo = s.cod_articulo',
'                AND A.COD_EMPRESA=C.COD_EMPRESA',
'                AND A.TIP_COMPROBANTE=C.TIP_COMPROBANTE',
'                AND A.SER_COMPROBANTE=C.SER_COMPROBANTE',
'                AND A.NRO_COMPROBANTE=C.NRO_COMPROBANTE',
'                AND ROWNUM=1;',
'',
'                if vcod<>NVL(:P244_COD_ARTICULO_OT,''NNN'') then',
'                        :P244_COD_ARTICULO_OT:=vcod;',
'                        apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_ORDENES_PROBLEMA1'');',
'                        apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_ORDENES_PRESUPUESTO1'');',
'                        apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_MANO_OBRA1'');  ',
'                end IF;',
'',
'            EXCEPTION',
'                WHEN no_data_found THEN ',
'                    :P244_COD_ARTICULO_OT:=null; ',
'                    :P244_COD_DISTRIBUIDOR:=null;',
'                WHEN OTHERS THEN ',
'                    null;',
'            end;',
'    end if;',
'else',
'    declare',
'        dummy char(1);',
'    begin ',
'            select  distinct ''1'' ',
'            INTO DUMMY',
'            from vt_ordenes_trabajo ot',
'            where OT.COD_EMPRESA=''1''',
'            AND   OT.TIP_COMPROBANTE=''ORT''',
'            AND   OT.SER_COMPROBANTE = :P244_SER_COMPROBANTE',
'            and   OT.NRO_comprobante= :P244_NRO_COMPROBANTE',
'            and   OT.GARANTIA_OT = :P244_NRO_GARANTIA',
'            ',
'            ;',
'',
'    exception',
'            WHEN no_data_found THEN ',
'                        begin',
'                            select S.COD_ARTICULO,C.COD_CLIENTE',
'                                into :P244_COD_ARTICULO_OT, :P244_COD_DISTRIBUIDOR',
'                                from st_garantia_productos_det a,',
'                                    st_articulos              s',
'                                    , VT_COMPROBANTES_CABECERA C                                ',
'                            where a.cod_empresa = ''1''',
'                                and a.nro_garantia =:P244_NRO_GARANTIA',
'                                and a.cod_empresa = s.cod_empresa',
'                                and a.cod_articulo = s.cod_articulo',
'                                AND A.COD_EMPRESA=C.COD_EMPRESA',
'                                AND A.TIP_COMPROBANTE=C.TIP_COMPROBANTE',
'                                AND A.SER_COMPROBANTE=C.SER_COMPROBANTE',
'                                AND A.NRO_COMPROBANTE=C.NRO_COMPROBANTE',
'                                AND ROWNUM=1;       ',
'                        exception          ',
'                        WHEN OTHERS THEN ',
'                                :P244_COD_ARTICULO_OT:=null; ',
'                                :P244_COD_DISTRIBUIDOR:=null;',
'                        end;    ',
'            WHEN OTHERS THEN ',
'                :P244_COD_ARTICULO_OT:=null; ',
'                :P244_COD_DISTRIBUIDOR:=null;',
'    end;',
'end if;',
''))
,p_attribute_02=>'P244_NRO_GARANTIA,P244_SER_COMPROBANTE,P244_NRO_COMPROBANTE'
,p_attribute_03=>'P244_COD_ARTICULO_OT,P244_COD_DISTRIBUIDOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59292157152631505)
,p_name=>'carga_dist'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P244_COD_DISTRIBUIDOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59292694737631505)
,p_event_id=>wwv_flow_imp.id(59292157152631505)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P244_NOMBRE_DISTRIBUIDOR'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  nombre',
'from cc_clientes c, personas p',
'where c.cod_empresa = ''1''',
'and c.cod_persona = p.cod_persona ',
'and nvl(c.estado,''X'') in (''A'',''C'',''B'') ',
'AND COD_CLIENTE=:P244_COD_DISTRIBUIDOR;',
''))
,p_attribute_07=>'P244_COD_DISTRIBUIDOR'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59293025963631506)
,p_name=>'List_ciudad'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P244_DEPARTAMENTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59293505840631506)
,p_event_id=>wwv_flow_imp.id(59293025963631506)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P244_CIUDAD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59293905869631506)
,p_name=>'chec_garantia'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P244_GARANTIA'
,p_condition_element=>'P244_GARANTIA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59294449895631506)
,p_event_id=>wwv_flow_imp.id(59293905869631506)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(59260084625631483)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59294993641631507)
,p_event_id=>wwv_flow_imp.id(59293905869631506)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(59260084625631483)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59295323326631507)
,p_name=>'btn_volver'
,p_event_sequence=>190
,p_condition_element=>'P244_PARAM_ID_TKT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59295887742631507)
,p_event_id=>wwv_flow_imp.id(59295323326631507)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(59240681766631472)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59296322795631507)
,p_event_id=>wwv_flow_imp.id(59295323326631507)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(59241037814631472)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59296803312631507)
,p_event_id=>wwv_flow_imp.id(59295323326631507)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(59240681766631472)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59297348558631508)
,p_event_id=>wwv_flow_imp.id(59295323326631507)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(59241037814631472)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59297720096631508)
,p_name=>'RS_CONF_RECEP'
,p_event_sequence=>200
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.chk_recep'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59298272462631508)
,p_event_id=>wwv_flow_imp.id(59297720096631508)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'    Desea Confirmar la recepcion del producto?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59298788580631508)
,p_event_id=>wwv_flow_imp.id(59297720096631508)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P244_DEL_ID_RS'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).closest(''tr'').find(''td[headers="SEQ_ID"]'').text();'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59299291092631509)
,p_event_id=>wwv_flow_imp.id(59297720096631508)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P244_DEL_ID_RS is not null then',
'    declare',
'        vretorno        varchar2(3500); ',
'        vser_comprobante varchar2(15);',
'        vnro_comprobante varchar2(35);',
'        vcod_suc_env    varchar2(5);',
'        vcod_articulo  varchar2(35);',
'    begin    ',
' select c001 as COD_ART, ',
'                                C007 AS SER_PER,',
'                                C008 AS NRO_PER, ',
'                                c011 as SUC   ',
'                            into vcod_articulo  , ',
'                                vser_comprobante,',
'                                vnro_comprobante,',
'                                vcod_suc_env ',
'                            FROM APEX_collections',
'                            WHERE collection_name = ''VT_ORDENES_REPUESTOS_PEDIDOS''',
'                            and SEQ_ID = TO_NUMBER(:P244_DEL_ID_RS);  ',
'                         ',
'                         sp_recepciona_ot_solicitada(''1'',',
'                                                        NVL(:P244_PARAM_NRO_OT,:P244_NRO_COMPROBANTE),',
'                                                        ''PER'',',
'                                                        vser_comprobante ,',
'                                                        vnro_comprobante ,',
'                                                        vcod_suc_env ,',
'                                                        vcod_articulo ,',
'                                                        vretorno);',
'            ',
'    end;',
'end if;',
' '))
,p_attribute_02=>'P244_DEL_ID_RS,P244_PARAM_NRO_OT,P244_NRO_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59299718929631509)
,p_event_id=>wwv_flow_imp.id(59297720096631508)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59300129700631509)
,p_name=>'RS_CONF_RECEP_1'
,p_event_sequence=>210
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.chk_recep'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59300694258631509)
,p_event_id=>wwv_flow_imp.id(59300129700631509)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(221699884645607499)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59301024040631509)
,p_name=>'New'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P244_COD_ORIGEN'
,p_condition_element=>'P244_COD_ORIGEN'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59301502203631510)
,p_event_id=>wwv_flow_imp.id(59301024040631509)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P244_cod_origen is not null and :P244_cod_origen  is not null then',
'',
'    if :P244_cod_origen  in  (''1'',''20'',''3'',''9'',''32'',''36'')  then     ',
'        :P244_COD_PROVEEDOR:=f_asigna_tecnico(:P244_COD_ARTICULO_OT , null);  ',
'',
'    elsif :P244_cod_origen  in  (''38'',''15'')  then  ',
'            begin',
'                    select cod_proveedor',
'                    into  :P244_COD_PROVEEDOR',
'                    from usuarios u,',
'                        cm_proveedores p',
'                    where u.cod_usuario=v(''APP_USER'')',
'                    and u.cod_persona = p.cod_persona',
'                    and p.cod_empresa=''1''',
'                    and rownum=1',
'                    ;',
'',
'            exception',
'                when others then',
'                         :P244_COD_PROVEEDOR:=null;',
'            end;',
'',
'    else',
'        :P244_COD_PROVEEDOR:='''';',
'    end if;',
'',
'',
'else',
'        :P244_COD_PROVEEDOR:='''';',
'end if;'))
,p_attribute_02=>'P244_COD_ORIGEN,P244_COD_ARTICULO_OT'
,p_attribute_03=>'P244_COD_PROVEEDOR'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(59262015471631488)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(59241037814631472)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(59262863026631489)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'clear_page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(59241770411631473)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(59264098676631490)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'clear_page_1'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(59240681766631472)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(59263292189631489)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Guarda_ot'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  DECLARE',
'    p_nro_ot NUMBER;',
'    p_cod_cliente  varchar2(50);',
'    p_retorno   varchar2(3500);',
'    vmensaje    varchar2(3500);',
'    error exception;',
'    vcantps number;',
'  BEGIN  ',
'        select count(*) ',
'        into vcantps',
'        from apex_collections',
'        where collection_name = ''VT_ORDENES_PROBLEMA'';',
'',
'         if vcantps>0 then',
'',
'                if :P244_NRO_COMPROBANTE is null then',
'                ---- Crea OT',
'                ---apex_application.g_print_success_message := ''<span class="notification">Process failed at this step</span>'';    ',
'                                    inv.crea_ot_apex(nvl(:P244_NCI,:P244_RUC),',
'                                                    :P244_NOM_CLIENTE,',
'                                                    :P244_DIR_CLIENTE,',
'                                                    :P244_TEL_CLIENTE,',
'                                                    :P244_COD_ARTICULO_OT,',
'                                                    :P244_NRO_GARANTIA,',
'                                                    :P244_SERIE_PRODUCTO,',
'                                                    to_char(sysdate,''dd/mm/yyyy''),',
'                                                    :P244_FECHA_FACTURA,-- p_fecha_dist => :p_fecha_dist,',
'                                                     :P244_NRO_FACTURA  ,--p_nro_comprobante_dist => :p_nro_comprobante_dist,',
'                                                    :P244_COD_DISTRIBUIDOR ,--p_cod_distribuidor => :p_cod_distribuidor,',
'                                                    :P244_COD_PROVEEDOR ,--p_cod_proveedor => :p_cod_proveedor,',
'                                                    NULL,---p_articulo_mo => :p_articulo_mo,',
'                                                    NULL,---p_tecnico => :p_tecnico,',
'                                                    NULL,-- p_cod_problema => :p_cod_problema,',
'                                                    NULL, --p_cod_solucion => :p_cod_solucion,',
'                                                    :P244_COMENTARIO ,--p_condicion => :p_condicion,',
'                                                    :P244_NRO_BOLETA_AM, --p_nro_ot_proveedor => :p_nro_ot_proveedor,',
'                                                    p_nro_ot ,',
'                                                    p_cod_cliente  ,',
'                                                    p_retorno,',
'                                                    NULL, --p_repcant => :p_repcant,',
'                                                    ''I'',--p_estado => :p_estado,',
'                                                    :P244_SER_COMPROBANTE,-- p_serie_ot => :p_serie_ot,',
'                                                    :P244_NRO_COMPROBANTE, --p_ot_ngo => :p_ot_ngo,',
'                                                    NULL,--p_km_flete => :p_km_flete,',
'                                                    NULL,--p_tipo_gas => :p_tipo_gas,',
'                                                    :P244_OBERVACION,--p_cantidad_gas => :p_cantidad_gas,',
'                                                    :P244_CONCLUSION,--p_informe => :p_informe,',
'                                                    :P244_DEPARTAMENTO,--p_departamento => :p_departamento,',
'                                                    :P244_CIUDAD,--p_ciudad => :p_ciudad,',
'                                                    :P244_EMAIL,--p_email => :p_email,',
'                                                    :P244_TEL_CLIENTE,--p_celular => :p_celular,',
'                                                    NULL,-- p_fecha_reparacion => :p_fecha_reparacion,',
'                                                    NULL,--p_reparado_por => :p_reparado_por,',
'                                                    NULL--p_fecha_retiro => :p_fecha_retiro',
'                                                    ,:P244_COD_ORIGEN',
'                                                    ,v(''app_user'')',
'                                                    ,:P244_GARANTIA);  ',
'                                if nvl(p_retorno,''nn'')<>''OK'' then',
'                                    raise error; ',
'                                end if;',
'',
'',
'                else',
'                ---- Actualiza OT  ',
'                                    inv.crea_ot_apex(nvl(:P244_NCI,:P244_RUC),',
'                                                    :P244_NOM_CLIENTE,',
'                                                    :P244_DIR_CLIENTE,',
'                                                    :P244_TEL_CLIENTE,',
'                                                    :P244_COD_ARTICULO_OT,',
'                                                    :P244_NRO_GARANTIA,',
'                                                    :P244_SERIE_PRODUCTO,',
'                                                    to_char(sysdate,''dd/mm/yyyy''),',
'                                                    :P244_FECHA_FACTURA,-- p_fecha_dist => :p_fecha_dist,',
'                                                     :P244_NRO_FACTURA  ,--p_nro_comprobante_dist => :p_nro_comprobante_dist,',
'                                                    :P244_COD_DISTRIBUIDOR ,--p_cod_distribuidor => :p_cod_distribuidor,',
'                                                    :P244_COD_PROVEEDOR ,--p_cod_proveedor => :p_cod_proveedor,',
'                                                    NULL,---p_articulo_mo => :p_articulo_mo,',
'                                                    NULL,---p_tecnico => :p_tecnico,',
'                                                    NULL,-- p_cod_problema => :p_cod_problema,',
'                                                    NULL, --p_cod_solucion => :p_cod_solucion,',
'                                                    :P244_COMENTARIO ,--p_condicion => :p_condicion,',
'                                                    :P244_NRO_BOLETA_AM, --p_nro_ot_proveedor => :p_nro_ot_proveedor,',
'                                                    p_nro_ot ,',
'                                                    p_cod_cliente  ,',
'                                                    p_retorno,',
'                                                    NULL, --p_repcant => :p_repcant,',
'                                                    ''U'',--p_estado => :p_estado,',
'                                                    :P244_SER_COMPROBANTE,-- p_serie_ot => :p_serie_ot,',
'                                                    :P244_NRO_COMPROBANTE, --p_ot_ngo => :p_ot_ngo,',
'                                                    NULL,--p_km_flete => :p_km_flete,',
'                                                    NULL,--p_tipo_gas => :p_tipo_gas,',
'                                                    :P244_OBERVACION,--p_cantidad_gas => :p_cantidad_gas,',
'                                                    :P244_CONCLUSION,--p_informe => :p_informe,',
'                                                    :P244_DEPARTAMENTO,--p_departamento => :p_departamento,',
'                                                    :P244_CIUDAD,--p_ciudad => :p_ciudad,',
'                                                    :P244_EMAIL,--p_email => :p_email,',
'                                                    :P244_TEL_CLIENTE,--p_celular => :p_celular,',
'                                                    NULL,-- p_fecha_reparacion => :p_fecha_reparacion,',
'                                                    NULL,--p_reparado_por => :p_reparado_por,',
'                                                    NULL--p_fecha_retiro => :p_fecha_retiro',
'                                                    ,:P244_COD_ORIGEN',
'                                                    ,v(''app_user'')',
'                                                    ,:P244_GARANTIA); ',
'                                     ',
'                                if nvl(p_retorno,''OK'')<>''OK'' then',
'                                    raise error; ',
'                                end if;',
'                ',
'                end if;',
'',
'               --------------------------- Inserta Problemas Solucion ',
'                declare ',
'                        cursor REG is',
'                        select seq_id,',
'                                c001 COD_PROB_CLI,',
'                                c003 COD_PROBLEMA,',
'                                c005 COD_SOLUCION',
'                            from apex_collections',
'                            where collection_name = ''VT_ORDENES_PROBLEMA1''',
'                            AND c008=''I''',
'                            order by 1 asc;',
'                begin',
'                        for x in REG loop',
'                            insert into inv.vt_ordenes_trabajo_prob_gen',
'                                    (cod_empresa,',
'                                    tip_comprobante,',
'                                    ser_comprobante,',
'                                    nro_comprobante,      ',
'                                    cod_problema,',
'                                    cod_solucion, ',
'                                    cod_problema_cliente)',
'                                    values',
'                                    (''1'',''ORT'',''P'',NVL(p_nro_ot,NVL(:P244_NRO_COMPROBANTE,:P244_PARAM_NRO_OT)),  ',
'                                    X.cod_problema,',
'                                    X.COD_SOLUCION,',
'                                    X.COD_PROB_CLI);',
'                        end loop;',
'                        COMMIT;',
'',
'                        apex_collection.create_OR_TRUNCATE_collection(''VT_ORDENES_PROBLEMA1'');',
'                exception',
'                    when others then',
'                            p_retorno:=''No se ha podido cargar el Problema/Solucion'';',
'                            raise error; ',
'                end;',
'',
'',
'                ------------------------ Inserta Mano de Obra',
'                declare ',
'                        cursor REG is',
'                        select seq_id,',
'                                c001 COD_ARTICULO,',
'                                c003 PRECIO_UNITARIO,',
'                                c004 MONTO_TOTAL,',
'                                c005 COD_TECNICO,',
'                                c008 PORC_CLIENTE , ',
'                                c009 TIPO_CAMBIO,',
'                                c010 COM_TEC, ',
'                                c011 COM_JEF , ',
'                                c012 MON_GAR,',
'                                c013 MON_ADICIONAL',
'                            from apex_collections',
'                            where collection_name = ''VT_MANO_OBRA1''',
'                            AND c014=''I''',
'                            order by 1 asc;',
'                begin',
'                        for x in REG loop',
'                            insert into inv.vt_ordenes_trabajo_mo',
'                                    (cod_empresa,tip_comprobante,ser_comprobante,nro_comprobante,  ',
'                                    cod_articulo,',
'                                    cantidad,',
'                                    cod_moneda,',
'                                    tip_cambio,',
'                                    monto,',
'                                    cod_tecnico,',
'                                    ind_reclamo, ',
'                                    garantia,',
'                                    monto_venta,',
'                                    monto_comision_tecnico,',
'                                    monto_comision_jefe_tecnico,',
'                                    monto_adicional, ',
'                                    porcentaje_cliente,',
'                                    monto_gar_jt)',
'                                    values',
'                                    (''1'',''ORT'',''P'',NVL(p_nro_ot,NVL(:P244_NRO_COMPROBANTE,:P244_PARAM_NRO_OT)),  ',
'                                    X.COD_ARTICULO,1,1,x.TIPO_CAMBIO,x.PRECIO_UNITARIO,x.cod_tecnico,''N'',',
'                                    nvl(:P244_GARANTIA,''N''),x.MONTO_TOTAL,x.COM_TEC ,x.COM_JEF, x.MON_ADICIONAL,',
'                                    X.PORC_CLIENTE,x.MON_GAR);',
'                        end loop;',
'                        COMMIT;',
'',
'                    apex_collection.create_OR_TRUNCATE_collection(''VT_MANO_OBRA1'');',
'                exception',
'                    when others then',
'                            p_retorno:=''No se ha podido cargar la Mano de Obra'';',
'                            raise error; ',
'                end;',
'',
'',
'        ------------------------ Inserta PRESUPUESTO',
'                declare ',
'                        cursor REG is',
'                        select seq_id,',
'                                c001 COD_ARTICULO,',
'                                c003 CANTIDAD,',
'                                c004 PRECIO_UNITARIO,',
'                                c005 MONTO_TOTAL,',
'                                (SELECT COSTO_PROM FROM ST_ARTICULOS  WHERE COD_EMPRESA=''1'' AND COD_ARTICULO=c001) AS COSTO',
'                            ',
'                            from apex_collections',
'                            where collection_name = ''VT_ORDENES_PRESUPUESTO1''',
'                            AND c006=''I''',
'                            order by 1 asc;',
'                    v_num_ent_sal NUMBER;',
'                begin',
'                       BEGIN    ',
'                        SELECT NVL(MAX(num_ent_sal),0)+1',
'                        INTO v_num_ent_sal',
'                        FROM inv.ca_entsal_cab',
'                        WHERE cod_empresa=''1''',
'                        AND   ser_ent_sal=''A''',
'                        AND   tip_ent_sal=''AJS'';',
'',
'                       EXCEPTION',
'                        WHEN OTHERS THEN',
'                                    V_num_ent_sal:=1;',
'                       END;',
'',
'',
'                        insert into inv.ca_entsal_cab',
'                                    (cod_empresa,cod_sucursal,num_ent_sal,fec_ent_sal,',
'                                        cod_motivo_ent_sal,cod_moneda,ser_ent_sal,tip_ent_sal,',
'                                        fec_alta,tip_comprobante_ref,ser_comprobante_ref,',
'                                        nro_comprobante_ref,hora_alta,cod_tecnico,cod_usuario )',
'                                    values',
'                                    (''1'',''01'',v_num_ent_sal,TRUNC(SYSDATE),''8'',''1'',''A'',''AJS'',',
'                                     TRUNC(SYSDATE),''ORT'',:P244_SER_COMPROBANTE,:P244_NRO_COMPROBANTE, ',
'                                    TO_CHAR(SYSDATE,''HH24:MI:SS''),:P244_COD_PROVEEDOR,v(''app_user'') );',
'',
'                        for x in REG loop',
'                            insert into inv.ca_entsal_det',
'                            (cod_empresa, tip_ent_sal, ser_ent_sal, num_ent_sal, cod_articulo, ',
'                            costo, cantidad, cod_sucursal, cod_unidad_medida, cantidad_ub, confirmado,',
'                            cod_iva, nro_lote, fec_vencimiento,  precio_venta, costo_gs, ',
'                            anulado,  cantidad_confirmada, precio_lista)',
'                            values',
'                            (''1'', ''AJS'', ''A'', v_num_ent_sal, X.cod_articulo, ',
'                            X.costo, X.cantidad, ''01'', ''UN'', X.Cantidad , ''S'', ',
'                            ''1'', ''1'', TRUNC(SYSDATE+15),   X.precio_UNITARIO, X.costo ,',
'                            ''N'',  0, X.precio_UNITARIO);',
'                        end loop;',
'                        COMMIT;',
'',
'                    apex_collection.create_OR_TRUNCATE_collection(''VT_ORDENES_PRESUPUESTO1'');',
'                exception',
'                    when others then',
'                            p_retorno:=''No se ha podido cargar el Presupuesto'';',
'                            raise error; ',
'                end;',
'',
'                if :P244_PARAM_ID_TKT  is not null then',
'                   begin',
'                        update CA_TICKET_ATENCION',
'                        set nro_ort = p_nro_ot,',
'                            ser_ort = :P244_SER_COMPROBANTE,',
'                            FECHA_CIERRE=SYSDATE,',
'                            USER_CIERRE = v(''app_user''),',
'                            LATITUDE_1 = decode(LATITUDE_1,null,:P244_LATITUDE,LATITUDE_1),			',
'                            LONGITUDE_1	= decode(LONGITUDE_1,null,:P244_LONGITUDE,LONGITUDE_1),',
'                            FEC_UBI_1	= decode(FEC_UBI_1,null,sysdate,FEC_UBI_1),',
'                            LATITUDE_2	= decode(LATITUDE_2,null,decode(LATITUDE_1,null,null,:P244_LATITUDE),LATITUDE_2),',
'                            LONGITUDE_2	= decode(LONGITUDE_2,null,decode(LONGITUDE_1,null,null,:P244_LONGITUDE) ,LONGITUDE_2),',
'                            FEC_UBI_2	= decode(FEC_UBI_2,null,decode(FEC_UBI_1,null,null,sysdate) ,FEC_UBI_2)',
'                        where cod_empresa= ''1''',
'                        and   ID_ticket = :P244_PARAM_ID_TKT ',
'                        ;',
'                   exception ',
'                        when others then',
'                                null;',
'                   end;',
'                end if;',
'',
'                    apex_application.g_print_success_message := ''<span class="notification">''||p_nro_ot||''  </span>'';',
'else',
'             apex_error.add_error',
'                            (p_message               => ''Debe cargar al menos un problema'',',
'                                p_display_location      => apex_error.c_inline_in_notification',
'                            );',
'end if;',
'exception     ',
'    when error then',
'    apex_error.add_error',
'                   (p_message               => p_retorno,',
'                    p_display_location      => apex_error.c_inline_in_notification',
'                   );',
'            ----apex_application.g_print_success_message := ''<span class="notification">---Error---</span>'';',
'    when others then',
'                apex_error.add_error',
'                            (p_message               => ''Debe cargar al intentar guardar la OT'',',
'                                p_display_location      => apex_error.c_inline_in_notification',
'                            );',
'  end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'No se pudo generar la OT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(59242147482631473)
,p_process_success_message=>'Ot Generada'
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
 p_id=>wwv_flow_imp.id(59262497679631489)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clear_collection_nuevo'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P244_PARAM_NRO_OT:=null;',
':P244_PARAM_SER_OT:=null;',
'apex_collection.truncate_collection (''VT_ORDENES_PROBLEMA'');',
'apex_collection.truncate_collection (''VT_ORDENES_PROBLEMA1'');',
'apex_collection.truncate_collection (''VT_ORDENES_REPUESTOS_PEDIDOS'');',
'apex_collection.truncate_collection (''VT_ORDENES_PRESUPUESTO'');',
'apex_collection.truncate_collection (''VT_MANO_OBRA'');',
'---apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_PEDIDOS_DETALLE'');',
'apex_collection.truncate_collection (''VT_ORDENES_REPUESTOS_PEDIDOS1'');',
'apex_collection.truncate_collection (''VT_ORDENES_PRESUPUESTO1'');',
'apex_collection.truncate_collection (''VT_MANO_OBRA1'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(59241770411631473)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(59263678931631490)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clear_collection_cancel'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P244_PARAM_NRO_OT:=null;',
':P244_PARAM_SER_OT:=null;',
'apex_collection.truncate_collection (''VT_ORDENES_PROBLEMA'');',
'apex_collection.truncate_collection (''VT_ORDENES_PROBLEMA1'');',
'apex_collection.truncate_collection (''VT_ORDENES_REPUESTOS_PEDIDOS'');',
'apex_collection.truncate_collection (''VT_ORDENES_PRESUPUESTO'');',
'apex_collection.truncate_collection (''VT_MANO_OBRA'');',
'',
'apex_collection.truncate_collection (''VT_ORDENES_REPUESTOS_PEDIDOS1'');',
'apex_collection.truncate_collection (''VT_ORDENES_PRESUPUESTO1'');',
'apex_collection.truncate_collection (''VT_MANO_OBRA1'');',
'---apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_PEDIDOS_DETALLE'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(59241037814631472)
);
wwv_flow_imp.component_end;
end;
/
