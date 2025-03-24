prompt --application/pages/page_00082
begin
--   Manifest
--     PAGE: 00082
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
 p_id=>82
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Gestionar Cobros'
,p_alias=>'GESTIONAR-COBROS'
,p_step_title=>'Gestionar Cobros'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_imp.id(40082235090263649)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2>',
'    Single Bug View',
'</h2>',
'<p>',
'    Detailed view of a single bug. This view shows the Description, Updates, Links, and Attachments associated with the bug.',
'</p>',
'<h3>',
'    Updates',
'</h3>',
'<p>',
'    Add brief notes or comments to the bug in this section.',
'</p>',
'<p>',
'    Click the <strong>Agregar Comentarios</strong> icon &lpar;+&rpar; to add a new update.',
'</p>',
'<h3>',
'    Links',
'</h3>',
'<p>',
'    Add relevant URLs that are related to the bug.',
'</p>',
'<p>',
'    Click the <strong>Add Link</strong> icon &lpar;+&rpar; to add a new link.',
'</p>',
'<h3>',
'    Attachments',
'</h3>',
'<p>',
'    Upload attachments &lpar;such as image files or documents&rpar; that are related to the bug.',
'</p>',
'<p>',
'    Click the <strong>Add Attachment</strong> icon &lpar;+&rpar; to add a new attachment.',
'</p>',
'<h3>',
'    Expandable Side Column',
'</h3>',
'<p>',
'    Click the <strong>Menu</strong> icon in the top-right to expand or collapse a side column. The side column contains further details and controls.',
'</p>'))
,p_page_component_map=>'03'
,p_last_updated_by=>'INV'
,p_last_upd_yyyymmddhh24miss=>'20220927103742'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(103422555728263111)
,p_name=>'Formas de Cobro'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--inline:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'NRO_MOVIMIENTO,',
'TIPO,',
'TIP_COMPROBANTE,',
'COD_BANCO,',
'FECHA_DEPOSITO,',
'NRO_COMPROBANTE,',
'',
'MONTO,',
'REG_ID',
', '' '' REMOVE',
'from CC_VISITAS_COMPROBANTES',
'where nro_movimiento = :P82_NRO_MOVIMIENTO',
'and tipo=''COBROS''',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P82_NRO_MOVIMIENTO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No links found.'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13668782725101246)
,p_query_column_id=>1
,p_column_alias=>'COD_EMPRESA'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13669177534101246)
,p_query_column_id=>2
,p_column_alias=>'NRO_MOVIMIENTO'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13669597578101247)
,p_query_column_id=>3
,p_column_alias=>'TIPO'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13669916898101247)
,p_query_column_id=>4
,p_column_alias=>'TIP_COMPROBANTE'
,p_column_display_sequence=>4
,p_column_heading=>'Tip Comprobante'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT T.DESCRIPCION D, T.DESCRIPCION C FROM SUBTIPOS_TRANS  T',
'WHERE T.COD_EMPRESA=''1''',
'AND T.COD_MODULO=''CC''',
'AND T.TIPO_TRANS=''2''',
'ORDER BY 2'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13670383355101247)
,p_query_column_id=>5
,p_column_alias=>'COD_BANCO'
,p_column_display_sequence=>5
,p_column_heading=>'Cod Banco'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT T.NOMBRE, T.COD_PERSONA FROM PERSONAS T',
'WHERE T.COD_SECTOR=''6''',
'ORDER BY 2'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13670741712101248)
,p_query_column_id=>6
,p_column_alias=>'FECHA_DEPOSITO'
,p_column_display_sequence=>6
,p_column_heading=>'Fecha Deposito'
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13671104423101248)
,p_query_column_id=>7
,p_column_alias=>'NRO_COMPROBANTE'
,p_column_display_sequence=>7
,p_column_heading=>'Nro Comprobante'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13671532781101248)
,p_query_column_id=>8
,p_column_alias=>'MONTO'
,p_column_display_sequence=>8
,p_column_heading=>'Monto'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13671960894101248)
,p_query_column_id=>9
,p_column_alias=>'REG_ID'
,p_column_display_sequence=>9
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13672393176101248)
,p_query_column_id=>10
,p_column_alias=>'REMOVE'
,p_column_display_sequence=>10
,p_column_heading=>'Remove'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-note" aria-hidden="true"></span>'
,p_column_link_attr=>'data-id=#REG_ID#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(103423773417263123)
,p_name=>'Comprobantes Entregados'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--inline:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'NRO_MOVIMIENTO,',
'TIPO,',
'TIP_COMPROBANTE,',
'SER_COMPROBANTE,',
'NRO_COMPROBANTE,',
'NRO_CUOTA,',
'FEC_VENCIMIENTO,',
'MONTO,',
'comentario,',
'REG_ID, '''' REMOVE',
'',
'from CC_VISITAS_COMPROBANTES',
'where nro_movimiento = :P82_NRO_MOVIMIENTO',
'and tipo=''ENTREGADOS''',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P82_NRO_MOVIMIENTO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No links found.'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13673870153101250)
,p_query_column_id=>1
,p_column_alias=>'COD_EMPRESA'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13674261816101250)
,p_query_column_id=>2
,p_column_alias=>'NRO_MOVIMIENTO'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13674691314101250)
,p_query_column_id=>3
,p_column_alias=>'TIPO'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13675061132101250)
,p_query_column_id=>4
,p_column_alias=>'TIP_COMPROBANTE'
,p_column_display_sequence=>4
,p_column_heading=>'Tip Comprobante'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13675413751101251)
,p_query_column_id=>5
,p_column_alias=>'SER_COMPROBANTE'
,p_column_display_sequence=>5
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13675828089101251)
,p_query_column_id=>6
,p_column_alias=>'NRO_COMPROBANTE'
,p_column_display_sequence=>6
,p_column_heading=>'Nro Comprobante'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13676269776101251)
,p_query_column_id=>7
,p_column_alias=>'NRO_CUOTA'
,p_column_display_sequence=>7
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13676667223101251)
,p_query_column_id=>8
,p_column_alias=>'FEC_VENCIMIENTO'
,p_column_display_sequence=>8
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13677022590101252)
,p_query_column_id=>9
,p_column_alias=>'MONTO'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13677408331101252)
,p_query_column_id=>10
,p_column_alias=>'COMENTARIO'
,p_column_display_sequence=>9
,p_column_heading=>'Comentario'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13677873280101252)
,p_query_column_id=>11
,p_column_alias=>'REG_ID'
,p_column_display_sequence=>11
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13678221724101252)
,p_query_column_id=>12
,p_column_alias=>'REMOVE'
,p_column_display_sequence=>12
,p_column_heading=>'Remove'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-note" aria-hidden="true"></span>'
,p_column_link_attr=>'data-id=#REG_ID#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(103591866889968485)
,p_name=>'Comprobantes Retirados'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--inline:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'NRO_MOVIMIENTO,',
'TIPO,',
'TIP_COMPROBANTE,',
'SER_COMPROBANTE,',
'NRO_COMPROBANTE,',
'NRO_CUOTA,',
'FEC_VENCIMIENTO,',
'MONTO,',
'comentario,',
'REG_ID, '' '' REMOVE',
'',
'from CC_VISITAS_COMPROBANTES',
'where nro_movimiento = :P82_NRO_MOVIMIENTO',
'and tipo=''RETIRADOS''',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P82_NRO_MOVIMIENTO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No links found.'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13679784954101253)
,p_query_column_id=>1
,p_column_alias=>'COD_EMPRESA'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13680108318101254)
,p_query_column_id=>2
,p_column_alias=>'NRO_MOVIMIENTO'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13680527939101254)
,p_query_column_id=>3
,p_column_alias=>'TIPO'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13680944114101254)
,p_query_column_id=>4
,p_column_alias=>'TIP_COMPROBANTE'
,p_column_display_sequence=>4
,p_column_heading=>'Tip Comprobante'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13681389507101254)
,p_query_column_id=>5
,p_column_alias=>'SER_COMPROBANTE'
,p_column_display_sequence=>5
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13681720459101255)
,p_query_column_id=>6
,p_column_alias=>'NRO_COMPROBANTE'
,p_column_display_sequence=>6
,p_column_heading=>'Numero'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13682123258101255)
,p_query_column_id=>7
,p_column_alias=>'NRO_CUOTA'
,p_column_display_sequence=>7
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13682592509101255)
,p_query_column_id=>8
,p_column_alias=>'FEC_VENCIMIENTO'
,p_column_display_sequence=>8
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13682997727101255)
,p_query_column_id=>9
,p_column_alias=>'MONTO'
,p_column_display_sequence=>9
,p_column_heading=>'Monto'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13683308664101256)
,p_query_column_id=>10
,p_column_alias=>'COMENTARIO'
,p_column_display_sequence=>10
,p_column_heading=>'Comentario'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13683729749101256)
,p_query_column_id=>11
,p_column_alias=>'REG_ID'
,p_column_display_sequence=>11
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13684178840101256)
,p_query_column_id=>12
,p_column_alias=>'REMOVE'
,p_column_display_sequence=>12
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-note" aria-hidden="true"></span>'
,p_column_link_attr=>'data-id=#REG_ID#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(103722061285443794)
,p_plug_name=>'Ver Cuenta Corriente'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>90
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(128061559666146612)
,p_name=>'Archivos Adjuntos'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_icon_css_classes=>'fa-paperclip'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nro_comprobante, comentario,cod_usuario, fecha,sys.dbms_lob.getlength(archivo_adjunto) archivo_adjuntO, MIMETYPE,CREATED_DATE, filename, '' '' REMOVE',
'from CC_ADJUNTO_PEDIDOS_IT',
'where cod_empresa=''1''',
'and nro_comprobante=:P82_NRO_MOVIMIENTO'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P82_NRO_MOVIMIENTO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13687960546101259)
,p_query_column_id=>1
,p_column_alias=>'NRO_COMPROBANTE'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13688381503101259)
,p_query_column_id=>2
,p_column_alias=>'COMENTARIO'
,p_column_display_sequence=>3
,p_column_heading=>'Comentario'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13688759147101259)
,p_query_column_id=>3
,p_column_alias=>'COD_USUARIO'
,p_column_display_sequence=>4
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13689192614101259)
,p_query_column_id=>4
,p_column_alias=>'FECHA'
,p_column_display_sequence=>1
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13689553005101260)
,p_query_column_id=>5
,p_column_alias=>'ARCHIVO_ADJUNTO'
,p_column_display_sequence=>5
,p_column_heading=>'Archivo Adjunto'
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:SM_ADJUNTO_PEDIDOS_IT:ARCHIVO_ADJUNTO:NRO_COMPROBANTE::MIMETYPE:FILENAME:FECHA::attachment:Download:'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13689995291101260)
,p_query_column_id=>6
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>6
,p_column_heading=>'Tipo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13690331873101260)
,p_query_column_id=>7
,p_column_alias=>'CREATED_DATE'
,p_column_display_sequence=>7
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13690794374101260)
,p_query_column_id=>8
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>8
,p_column_heading=>'Filename'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13691120071101260)
,p_query_column_id=>9
,p_column_alias=>'REMOVE'
,p_column_display_sequence=>9
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-note" aria-hidden="true"></span>'
,p_column_link_attr=>'data-id=#NRO_COMPROBANTE#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1274551523145650928)
,p_plug_name=>'Region Display Selector'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2893666446171850162)
,p_plug_name=>unistr('Visitado Ultimos 90 d\00EDas')
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    count(*) c,',
'    ''Agendadas'' l,',
'    1 disp',
'from',
'    CC_GESTIONES_VISITAS  c',
'where',
'    COD_EMPRESA = ''1''',
'    and cod_cliente IN (select cod_cliente',
'                       from CC_GESTIONES_VISITAS  d',
'                       where d.cod_empResa=c.cod_empresa',
'                       and d.nro_movimientO = :P82_NRO_MOVIMIENTO)    ',
'and    FEC_VISITA > sysdate - 90',
'UNION',
'select',
'    count(*)  c,',
'    ''Realizado'' l,',
'    2 disp',
'from    CC_GESTIONES_VISITAS  C',
'where  COD_EMPRESA = ''1''',
'     and cod_cliente IN (select cod_cliente',
'                       from CC_GESTIONES_VISITAS  d',
'                       where d.cod_empresa=c.cod_empresa',
'                       and d.nro_movimientO = :P82_NRO_MOVIMIENTO)',
'    ',
'    and realizado=''S''',
'    ',
'and',
'    FEC_VISITA > sysdate - 90',
'order by disp    '))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'L'
,p_attribute_02=>'C'
,p_attribute_05=>'2'
,p_attribute_06=>'L'
,p_attribute_07=>'DOT'
,p_attribute_08=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4347049624479981416)
,p_plug_name=>'Hidden Items'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4347050023178981419)
,p_plug_name=>'Right Side'
,p_component_template_options=>'#DEFAULT#:t-LinksList--showIcons:t-LinksList--actions'
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_list_id=>wwv_flow_imp.id(13723842098101281)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(40170594478263673)
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(4347050447762981420)
,p_name=>'Comentarios'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Comments--chat'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select '''' class, --use grayComment for gray look',
'        ''Note'' note_type,',
'        replace(apex_escape.html(dbms_lob.substr(comentario,1000,1)),chr(10),''<br />'') comment_text,',
'        '''' attribute_1,',
'        '''' attribute_2,',
'        '''' attribute_3,',
'        '''' attribute_4,',
'        lower(cod_usuario) user_name,',
'        substr(cod_usuario,0,2) user_icon,',
'        ''u-color-''||(ora_hash(cod_usuario,44) + 1) icon_modifier,',
'        apex_util.get_since(fecha) comment_date,',
'        '' '' actions,',
'        fecha created',
'from cc_seguimiento_cobranza',
'where   nro_movimiento = :P82_nro_movimiento',
'and cod_empresa=''1'' ',
'order by 11 desc'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40146521107263667)
,p_query_headings_type=>'QUERY_COLUMNS'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No updates found.'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13695808152101264)
,p_query_column_id=>1
,p_column_alias=>'CLASS'
,p_column_display_sequence=>1
,p_column_heading=>'Class'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13696278694101264)
,p_query_column_id=>2
,p_column_alias=>'NOTE_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Note Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13696664574101264)
,p_query_column_id=>3
,p_column_alias=>'COMMENT_TEXT'
,p_column_display_sequence=>8
,p_column_heading=>'Comment text'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13697016852101264)
,p_query_column_id=>4
,p_column_alias=>'ATTRIBUTE_1'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13697409549101265)
,p_query_column_id=>5
,p_column_alias=>'ATTRIBUTE_2'
,p_column_display_sequence=>4
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13697849113101265)
,p_query_column_id=>6
,p_column_alias=>'ATTRIBUTE_3'
,p_column_display_sequence=>5
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13698204480101265)
,p_query_column_id=>7
,p_column_alias=>'ATTRIBUTE_4'
,p_column_display_sequence=>6
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13698689152101265)
,p_query_column_id=>8
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>9
,p_column_heading=>'User name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13699038723101266)
,p_query_column_id=>9
,p_column_alias=>'USER_ICON'
,p_column_display_sequence=>11
,p_column_heading=>'User icon'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13699444727101266)
,p_query_column_id=>10
,p_column_alias=>'ICON_MODIFIER'
,p_column_display_sequence=>12
,p_column_heading=>'Icon modifier'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13699804539101266)
,p_query_column_id=>11
,p_column_alias=>'COMMENT_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'Comment date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13700219505101266)
,p_query_column_id=>12
,p_column_alias=>'ACTIONS'
,p_column_display_sequence=>13
,p_column_heading=>'Actions'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13700617442101266)
,p_query_column_id=>13
,p_column_alias=>'CREATED'
,p_column_display_sequence=>7
,p_column_heading=>'Created'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(4347054253055981426)
,p_name=>'Comprobantes Cobrados'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--inline:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_EMPRESA,',
'NRO_MOVIMIENTO,',
'TIPO,',
'TIP_COMPROBANTE,',
'SER_COMPROBANTE,',
'NRO_COMPROBANTE,',
'NRO_CUOTA,',
'FEC_VENCIMIENTO,',
'MONTO,',
'REG_ID, null as remove',
'',
'from CC_VISITAS_COMPROBANTES',
'where nro_movimiento = :P82_NRO_MOVIMIENTO',
'and tipo=''SALDOS''',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P82_NRO_MOVIMIENTO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No links found.'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13702131653101267)
,p_query_column_id=>1
,p_column_alias=>'COD_EMPRESA'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13702579902101268)
,p_query_column_id=>2
,p_column_alias=>'NRO_MOVIMIENTO'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13702912607101268)
,p_query_column_id=>3
,p_column_alias=>'TIPO'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13703361414101268)
,p_query_column_id=>4
,p_column_alias=>'TIP_COMPROBANTE'
,p_column_display_sequence=>4
,p_column_heading=>'Tip Comprobante'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13703779906101268)
,p_query_column_id=>5
,p_column_alias=>'SER_COMPROBANTE'
,p_column_display_sequence=>5
,p_column_heading=>'Ser Comprobante'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13704139042101268)
,p_query_column_id=>6
,p_column_alias=>'NRO_COMPROBANTE'
,p_column_display_sequence=>6
,p_column_heading=>'Nro Comprobante'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13704558907101269)
,p_query_column_id=>7
,p_column_alias=>'NRO_CUOTA'
,p_column_display_sequence=>7
,p_column_heading=>'Nro Cuota'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
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
 p_id=>wwv_flow_imp.id(13704962627101269)
,p_query_column_id=>8
,p_column_alias=>'FEC_VENCIMIENTO'
,p_column_display_sequence=>8
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13705361250101269)
,p_query_column_id=>9
,p_column_alias=>'MONTO'
,p_column_display_sequence=>9
,p_column_heading=>'Monto'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13705720771101269)
,p_query_column_id=>10
,p_column_alias=>'REG_ID'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13706119978101269)
,p_query_column_id=>11
,p_column_alias=>'REMOVE'
,p_column_display_sequence=>11
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-note" aria-hidden="true"></span>'
,p_column_link_attr=>'data-id=#REG_ID#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(4347059141944981429)
,p_name=>'Bug'
,p_template=>wwv_flow_imp.id(40096829222263653)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-AVPList--variableLabelMedium:t-AVPList--leftAligned'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'NRO_MOVIMIENTO, ',
'p.nombre,',
'FEC_AGENDADA,',
'HORA_AGENDADA,',
'm.descripcion ',
'CONTACTO,',
'observacion, c.cod_departamento, c.cod_ciudad,',
'c.direccion',
'',
'FROM CC_GESTIONES_VISITAS c, cc_clientes cc, personas p,',
'CA_MOTIVO_VISITA m',
'',
'WHERE c.COD_EMPRESA=''1''',
'and c.cod_empresa=cc.cod_empresa',
'and c.cod_cliente=cc.cod_cliente',
'and c.cod_motivo_visita=m.cod_motivo',
'and cc.cod_persona=p.cod_persona',
'and c.nro_movimiento=:P82_NRO_MOVIMIENTO'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P82_NRO_MOVIMIENTO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40159146993263670)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13707643759101270)
,p_query_column_id=>1
,p_column_alias=>'NRO_MOVIMIENTO'
,p_column_display_sequence=>1
,p_column_heading=>'Nro Movimiento'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13708078975101271)
,p_query_column_id=>2
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>2
,p_column_heading=>'Cliente'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13708472009101271)
,p_query_column_id=>3
,p_column_alias=>'FEC_AGENDADA'
,p_column_display_sequence=>3
,p_column_heading=>'Fec Agendada'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13708801055101271)
,p_query_column_id=>4
,p_column_alias=>'HORA_AGENDADA'
,p_column_display_sequence=>4
,p_column_heading=>'Hora Agendada'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13709225769101271)
,p_query_column_id=>5
,p_column_alias=>'CONTACTO'
,p_column_display_sequence=>5
,p_column_heading=>'Contacto'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13709626572101271)
,p_query_column_id=>6
,p_column_alias=>'OBSERVACION'
,p_column_display_sequence=>6
,p_column_heading=>'Observacion'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13710075299101272)
,p_query_column_id=>7
,p_column_alias=>'COD_DEPARTAMENTO'
,p_column_display_sequence=>7
,p_column_heading=>'Departamento'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(13723217938101280)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13710485535101272)
,p_query_column_id=>8
,p_column_alias=>'COD_CIUDAD'
,p_column_display_sequence=>8
,p_column_heading=>'Ciudad'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select descripcion, cod_ciudad',
'		     ',
'		      from ciudades ',
'		      where  COD_PAIS=''PAR''',
'		      AND	COD_PROVINCIA=NVL(:COD_DEPARTAMENTO,''11'')'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13710847096101272)
,p_query_column_id=>9
,p_column_alias=>'DIRECCION'
,p_column_display_sequence=>9
,p_column_heading=>'Direccion'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4695190530407576426)
,p_plug_name=>'Time Zone'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_05'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
' "TIMEZONE" ',
' '))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13685614853101257)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(103722061285443794)
,p_button_name=>'Ejecutar'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13672720791101249)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(103422555728263111)
,p_button_name=>'POP_LINK_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_image_alt=>'Agregar Comprobantes'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.:60:P60_NRO_MOVIMIENTO:&P82_NRO_MOVIMIENTO.'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13678677895101252)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(103423773417263123)
,p_button_name=>'POP_LINK_1_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_image_alt=>'Agregar Comprobantes'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.:61:P61_NRO_MOVIMIENTO:&P82_NRO_MOVIMIENTO.'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13684554113101256)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(103591866889968485)
,p_button_name=>'POP_LINK_1_1_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_image_alt=>'Agregar Comprobantes'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:62:&SESSION.::&DEBUG.:62:P62_NRO_MOVIMIENTO:&P82_NRO_MOVIMIENTO.'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13701097268101267)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(4347050447762981420)
,p_button_name=>'POPNOTE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_image_alt=>'Add Update'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.:RP,64:P48_NRO_MOVIMIENTO:&P82_NRO_MOVIMIENTO.'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13701418024101267)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(4347050447762981420)
,p_button_name=>'GONOTES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_image_alt=>'Notes'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.:RP,48:P48_NRO_MOVIMIENTO:&P82_NRO_MOVIMIENTO.'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13706587723101270)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(4347054253055981426)
,p_button_name=>'POP_LINK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_image_alt=>'Agregar Comprobantes'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:58:P58_NRO_MOVIMIENTO:&P82_NRO_MOVIMIENTO.'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13711234000101272)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4347059141944981429)
,p_button_name=>'back'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'volver'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:46:&SESSION.::&DEBUG.:RP,::'
,p_icon_css_classes=>'fa-reply'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13673144043101249)
,p_name=>'P82_DELETE_ID_FC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(103422555728263111)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13679088667101253)
,p_name=>'P82_DELETE_ID_CE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(103423773417263123)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13684941377101256)
,p_name=>'P82_DELETE_ID_CR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(103591866889968485)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13686038421101257)
,p_name=>'P82_DESDE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(103722061285443794)
,p_item_default=>'ADD_MONTHS(SYSDATE,-60)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Desde'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13686469957101258)
,p_name=>'P82_HASTA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(103722061285443794)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Hasta'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13686802887101258)
,p_name=>'P82_TIPO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(103722061285443794)
,p_item_default=>'V'
,p_prompt=>'Tipo Reporte'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Comprobantes'' D,''C'' C',
'from dual ',
'UNION ALL',
'select ''Vencimiento'' D,''V'' C',
'from dual ',
'UNION ALL',
'select ''Seccion y Comprobantes'' D,''S'' C',
'from dual '))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186463825263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13687251977101258)
,p_name=>'P82_VER_CHEQUE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(103722061285443794)
,p_item_default=>'N'
,p_prompt=>'Incluir Cheque'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Si''D, ''S''C',
'from dual union all select ''No'' d, ''N'' C',
'FROM DUAL'))
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13691553903101261)
,p_name=>'P82_DELETE_ID_AA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(128061559666146612)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13692811515101262)
,p_name=>'P82_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4347049624479981416)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13693295520101262)
,p_name=>'P82_NRO_MOVIMIENTO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(4347049624479981416)
,p_item_default=>'5496'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13693631632101262)
,p_name=>'P82_COD_CLIENTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(4347049624479981416)
,p_prompt=>'New'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13694042285101263)
,p_name=>'P82_COBRADOR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(4347049624479981416)
,p_prompt=>'New'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13694442822101263)
,p_name=>'P82_ID_VISITA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(4347049624479981416)
,p_prompt=>'Id Visita'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13694818287101263)
,p_name=>'P82_NOMBRE_VISITA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(4347049624479981416)
,p_prompt=>'Nombre Visita'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13706943560101270)
,p_name=>'P82_DELETE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4347054253055981426)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13711916719101274)
,p_name=>'DELETE_DETALLE'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-note'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13712454463101274)
,p_event_id=>wwv_flow_imp.id(13711916719101274)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P82_DELETE_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13712928392101275)
,p_event_id=>wwv_flow_imp.id(13711916719101274)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P82_DELETE_ID IS NOT NULL THEN ',
'Begin',
'DELETE CC_VISITAS_COMPROBANTES',
'WHERE COD_EMPRESA=''1''',
'AND REG_ID= :P82_DELETE_ID;',
'    ',
'End;',
'END IF;'))
,p_attribute_02=>'P82_DELETE_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13713470429101275)
,p_event_id=>wwv_flow_imp.id(13711916719101274)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13713872763101275)
,p_name=>'DELETE_DETALLE_fc'
,p_event_sequence=>50
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-note'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13714379310101275)
,p_event_id=>wwv_flow_imp.id(13713872763101275)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P82_DELETE_ID_FC IS NOT NULL THEN ',
'Begin',
'DELETE CC_VISITAS_COMPROBANTES',
'WHERE COD_EMPRESA=''1''',
'AND REG_ID= :P82_DELETE_ID_FC;',
'    ',
'End;',
'END IF;'))
,p_attribute_02=>'P82_DELETE_ID_FC'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13714813295101276)
,p_event_id=>wwv_flow_imp.id(13713872763101275)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P82_DELETE_ID_FC'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13715365633101276)
,p_event_id=>wwv_flow_imp.id(13713872763101275)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13715726146101276)
,p_name=>'DELETE_DETALLE_DE'
,p_event_sequence=>60
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-note'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13716231850101276)
,p_event_id=>wwv_flow_imp.id(13715726146101276)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P82_DELETE_ID_CE IS NOT NULL THEN ',
'Begin',
'DELETE CC_VISITAS_COMPROBANTES',
'WHERE COD_EMPRESA=''1''',
'AND REG_ID= :P82_DELETE_ID_CE;',
'    ',
'End;',
'END IF;'))
,p_attribute_02=>'P82_DELETE_ID_CE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13716769169101276)
,p_event_id=>wwv_flow_imp.id(13715726146101276)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P82_DELETE_ID_CE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13717214696101277)
,p_event_id=>wwv_flow_imp.id(13715726146101276)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13717677536101277)
,p_name=>'DELETE_DETALLE_DR'
,p_event_sequence=>70
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-note'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13718145117101277)
,p_event_id=>wwv_flow_imp.id(13717677536101277)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P82_DELETE_ID_CR IS NOT NULL THEN ',
'Begin',
'DELETE CC_VISITAS_COMPROBANTES',
'WHERE COD_EMPRESA=''1''',
'AND REG_ID= :P82_DELETE_ID_CR;',
'    ',
'End;',
'END IF;'))
,p_attribute_02=>'P82_DELETE_ID_CR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13718620961101277)
,p_event_id=>wwv_flow_imp.id(13717677536101277)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P82_DELETE_ID_CR'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13719101719101277)
,p_event_id=>wwv_flow_imp.id(13717677536101277)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13719545751101278)
,p_name=>'DELETE_DETALLE_aa'
,p_event_sequence=>80
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-note'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13720081482101278)
,p_event_id=>wwv_flow_imp.id(13719545751101278)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P82_DELETE_ID_AA IS NOT NULL THEN ',
'Begin',
'DELETE CC_ADJUNTO_PEDIDOS_IT',
'WHERE COD_EMPRESA=''1''',
'AND NRO_COMPROBANTE= :P82_DELETE_ID_AA;',
'    ',
'End;',
'END IF;'))
,p_attribute_02=>'P82_DELETE_ID_AA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13720582432101278)
,p_event_id=>wwv_flow_imp.id(13719545751101278)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P82_DELETE_ID_AA'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13721077092101278)
,p_event_id=>wwv_flow_imp.id(13719545751101278)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13721468332101278)
,p_name=>'COLLECTION_REPORTE'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P82_TIPO,P82_DESDE,P82_HASTA,P82_VER_CHEQUE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13721924055101279)
,p_event_id=>wwv_flow_imp.id(13721468332101278)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'vcliente varchar2(50);',
'BEGIN',
'',
'begin',
'SELECT cod_cliente',
'into vcliente',
'FROM CC_GESTIONES_VISITAS  c',
'WHERE c.COD_EMPRESA=''1''',
'and c.nro_movimiento=:P82_NRO_MOVIMIENTO;',
'end;',
'',
'apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''PARAMETERS'');',
'',
'APEX_COLLECTION.ADD_MEMBER(p_collection_name=>''PARAMETERS'',                             ',
'                                p_c001           =>''P_COD_CLIENTE'',',
'                                p_c002           => vcliente,',
'                                p_c003 => :P82_DESDE,',
'                                p_c004 => :P82_HASTA,',
'                                p_c005 => :P82_TIPO,',
'                          p_c006 => :P82_VER_CHEQUE);',
'COMMIT;',
'',
'',
'END;',
''))
,p_attribute_02=>'P82_DESDE,P82_HASTA,P82_TIPO,P82_NRO_MOVIMIENTO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13722320461101279)
,p_name=>'CARGA_INICIAL'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13722866053101279)
,p_event_id=>wwv_flow_imp.id(13722320461101279)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'vcliente varchar2(50);',
'BEGIN',
'',
'begin',
'SELECT',
'cod_cliente',
'into vcliente',
'FROM CC_GESTIONES_VISITAS  c',
'WHERE c.COD_EMPRESA=''1''',
'and c.nro_movimiento=:P82_NRO_MOVIMIENTO;',
'end;',
'',
'apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''PARAMETERS'');',
'',
'',
'',
'APEX_COLLECTION.ADD_MEMBER(p_collection_name=>''PARAMETERS'',',
'                             ',
'                                p_c001           =>''P_COD_CLIENTE'',',
'                                p_c002           =>vcliente,',
'      p_c003 => add_months(sysdate,-60),',
'          p_c004 => sysdate,',
'                           p_c005 => ''V''',
'                               );',
'COMMIT;',
'',
'',
'END;',
'',
'',
'',
'',
'',
'',
'  ',
'  ',
'  begin',
'  select id, ''Visita Abierta NGO: ''||cc.cod_cliente||''-''||p.nombre||'' (ID VISITA:''||ID||'')''',
'    into :P82_ID_VISITA, :P82_nombre_VISITA',
'  from cc_visit_cast v, cc_clientes cc, personas  p',
'  where v.cod_empresa=''1''',
'  and fecha_fin_visita is null',
'  and codigo_usuario = :P_COD_CUSTODIO',
'  and cc.cod_empresa=v.cod_empresa',
'  and cc.cod_cliente=v.codigo_cliente',
'  and cc.cod_persona=p.cod_persona;',
'  exception',
'  when others then',
'    :P82_ID_VISITA:= null;',
'    :P82_nombre_VISITA:=null;',
'  end;',
'  ',
'  if :P82_ID_VISITA is null then',
'  begin',
'  select id, ''Visita Abierta CPH: ''||cc.cod_cliente||''-''||p.nombre||'' (ID VISITA:''||ID||'')''',
'    into :P82_ID_VISITA, :P82_nombre_VISITA',
'  from cc_visit_cast@dblink_cph v, cc_clientes@dblink_cph cc, personas@dblink_cph  p',
'  where v.cod_empresa=''1''',
'  and fecha_fin_visita is null',
'  and codigo_usuario = :P0_COD_CUSTODIO',
'  and cc.cod_empresa=v.cod_empresa',
'  and cc.cod_cliente=v.codigo_cliente',
'  and cc.cod_persona=p.cod_persona;',
'  exception',
'  when others then',
'    :P82_ID_VISITA:= null;',
'    :p82_nombre_VISITA:=null;',
'  end;',
'  end if;'))
,p_attribute_02=>'P82_NRO_MOVIMIENTO,P82_ID_VISITA,P82_NOMBRE_VISITA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
