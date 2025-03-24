prompt --application/pages/page_00373
begin
--   Manifest
--     PAGE: 00373
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
 p_id=>373
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'FVMRGPRO - reporte'
,p_alias=>'FVMRGPRO-REPORTE'
,p_step_title=>'FVMRGPRO - reporte'
,p_autocomplete_on_off=>'OFF'
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
'        color:  yellow;         ',
'        justify-content: center;',
'        align-items: center; ',
'        box-shadow: #79beca 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color: rgb(97, 91, 0); ',
'        ',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20250219081153'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(103967538109984619)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(107248829278898161)
,p_plug_name=>'FVMRGPRO - reporte'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NRO_PROMO,',
'       FECHA,',
'       case when nvl(IND_ESTADO_RECHAZADO,''N'') = ''S'' then ''Rechazado''',
'       when estado =''CREADO'' THEN ''Creado''',
'        when estado =''VERIFICADO'' THEN ''Analisis MKT'' ',
'         when estado =''AUTORIZADOMKT'' THEN ''Validacion Comercial'' ',
'          when estado =''AUTORIZADOCOM'' THEN ''Aprobacion de Precios'' ',
'           when estado =''AUTORIZADOCOM'' THEN ''Aprobacion de Precios'' ',
'            when estado =''CONFIRMADODEP'' THEN ''Disponibilidad Deposito'' ',
'             when estado =''CONFIRMADO_COMERCIAL'' THEN ''Comunicado'' ',
'              when estado =''AUTORIZADOADM'' THEN ''Autorizado GG'' ',
'               when estado =''RECHAZADO'' THEN ''Rechazado'' ',
'               else ''x'' end  ESTADO,',
'       NRO_DESPACHO,',
'       NRO_EMBARQUE,',
'       COD_USUARIO creado_por,',
'       USUARIO_VERIFICACION verificado_por,',
'       USUARIO_AUT_COMERCIAL,',
'       USUARIO_CONFIRMADO_DEPOSITO,',
'       USUARIO_CONFIRMADO_COMERCIAL,',
'       (select m.descripcion',
'          from fv_margen_det d, st_articulos s, st_marcas m',
'         where d.cod_empresa = c.cod_empresa',
'           and d.nro_promo = c.nro_promo',
'           and c.cod_empresa = s.cod_empresa',
'           and d.cod_articulo = s.cod_articulo',
'           and s.cod_marca = m.cod_marca',
'           and rownum = 1) marca,',
'             (select m.descripcion',
'          from fv_margen_det d, st_articulos s, st_rubro m',
'         where d.cod_empresa = c.cod_empresa',
'           and d.nro_promo = c.nro_promo',
'           and c.cod_empresa = s.cod_empresa',
'           and d.cod_articulo = s.cod_articulo',
'           and s.cod_rubro = m.cod_rubro',
'           and rownum = 1) rubro,',
'',
'           CASE ',
'           WHEN nvl(IND_ESTADO_VERIFICACION,''x'') = ''S'' THEN ''fa-check-circle'' ',
'            WHEN nvl(IND_ESTADO_VERIFICACION,''x'') = ''N'' THEN''fa-remove''',
'            ELSE NULL',
'       END AS IND_ESTADO_VERIFICACION,',
'            CASE ',
'           WHEN nvl(IND_ESTADO_VALIDACION_COM,''N'') = ''S'' THEN ''fa-check-circle'' ',
'            WHEN nvl(IND_ESTADO_VALIDACION_COM,''X'') = ''N'' THEN ''fa-remove''',
'            ELSE NULL',
'       END AS IND_ESTADO_VALIDACION_COM,',
'            CASE ',
'           WHEN nvl(IND_ESTADO_APROBACION_PRECIOS,''N'') = ''S'' THEN ''fa-check-circle'' ',
'            WHEN nvl(IND_ESTADO_APROBACION_PRECIOS,''X'') = ''N'' THEN  ''fa-remove''',
'            ELSE NULL',
'       END AS IND_ESTADO_APROBACION_PRECIOS,',
'            CASE ',
'           WHEN nvl(IND_ESTADO_DISPO_DEPOSITO,''N'') = ''S'' THEN ''fa-check-circle'' ',
'',
'             WHEN nvl(IND_ESTADO_DISPO_DEPOSITO,''X'') = ''N'' THEN  ''fa-remove''',
'             ELSE NULL',
'       END AS IND_ESTADO_DISPO_DEPOSITO,',
'            CASE ',
'           WHEN nvl(IND_ESTADO_COMUNICADO,''N'') = ''S'' THEN ''fa-check-circle'' ',
'            WHEN nvl(IND_ESTADO_COMUNICADO,''X'') = ''N'' THEN  ''fa-remove'' ELSE NULL',
'       END AS IND_ESTADO_COMUNICADO,',
'            CASE ',
'           WHEN nvl(IND_ESTADO_APROBADO_GG,''N'') = ''S'' THEN ''fa-check-circle'' ',
'              WHEN nvl(IND_ESTADO_APROBADO_GG,''X'') = ''N'' THEN ''fa-remove''',
'              ELSE NULL',
'       END AS IND_ESTADO_APROBADO_GG,',
'          CASE ',
'           WHEN nvl(IND_ESTADO_RECHAZADO,''N'') = ''S'' THEN ''fa-check-circle'' ',
'           WHEN nvl(IND_ESTADO_RECHAZADO,''X'') = ''N'' THEN null',
'           ELSE NULL',
'       END AS IND_ESTADO_RECHAZADO',
'',
'',
'  from  Fv_Margen_CAB c',
' where cod_empresa =     :p_cod_empresa',
'',
' order by NRO_PROMO'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P_COD_EMPRESA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'FVMRGPRO - reporte'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(107248920916898161)
,p_name=>'FVMRGPRO - reporte'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.:59:P59_PARAM_NRO_PROMO:#NRO_PROMO#'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'JUANASIS'
,p_internal_uid=>107248920916898161
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107249305364898163)
,p_db_column_name=>'NRO_PROMO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Nro Fijacion'
,p_column_link=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.:59:P59_P_NRO_PROMO:#NRO_PROMO#'
,p_column_linktext=>'#NRO_PROMO#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(225086736124086239)
,p_db_column_name=>'FECHA'
,p_display_order=>11
,p_column_identifier=>'B'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(225086849963086240)
,p_db_column_name=>'ESTADO'
,p_display_order=>21
,p_column_identifier=>'C'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(225086923629086241)
,p_db_column_name=>'NRO_DESPACHO'
,p_display_order=>31
,p_column_identifier=>'D'
,p_column_label=>'Nro Despacho'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(225087082953086242)
,p_db_column_name=>'NRO_EMBARQUE'
,p_display_order=>41
,p_column_identifier=>'E'
,p_column_label=>'Nro Embarque'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(225087193790086243)
,p_db_column_name=>'CREADO_POR'
,p_display_order=>51
,p_column_identifier=>'F'
,p_column_label=>'Creado Por'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(225087275687086244)
,p_db_column_name=>'VERIFICADO_POR'
,p_display_order=>61
,p_column_identifier=>'G'
,p_column_label=>'Verificado Por'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(225087394157086245)
,p_db_column_name=>'USUARIO_AUT_COMERCIAL'
,p_display_order=>71
,p_column_identifier=>'H'
,p_column_label=>'Usuario Aut Comercial'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(225087494932086246)
,p_db_column_name=>'USUARIO_CONFIRMADO_DEPOSITO'
,p_display_order=>81
,p_column_identifier=>'I'
,p_column_label=>'Usuario Confirmado Deposito'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(225087500221086247)
,p_db_column_name=>'USUARIO_CONFIRMADO_COMERCIAL'
,p_display_order=>91
,p_column_identifier=>'J'
,p_column_label=>'Usuario Confirmado Comercial'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(225087655253086248)
,p_db_column_name=>'MARCA'
,p_display_order=>101
,p_column_identifier=>'K'
,p_column_label=>'Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(225087701564086249)
,p_db_column_name=>'RUBRO'
,p_display_order=>111
,p_column_identifier=>'L'
,p_column_label=>'Rubro'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(419454169869055818)
,p_db_column_name=>'IND_ESTADO_VERIFICACION'
,p_display_order=>121
,p_column_identifier=>'M'
,p_column_label=>'Analisis de MKT'
,p_column_html_expression=>'<span class="fa #IND_ESTADO_VERIFICACION#"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(419454271555055819)
,p_db_column_name=>'IND_ESTADO_VALIDACION_COM'
,p_display_order=>131
,p_column_identifier=>'N'
,p_column_label=>'Validacion Comercial'
,p_column_html_expression=>'<span class="fa #IND_ESTADO_VALIDACION_COM#"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(419454350556055820)
,p_db_column_name=>'IND_ESTADO_APROBACION_PRECIOS'
,p_display_order=>141
,p_column_identifier=>'O'
,p_column_label=>'Aprobacion de Precios'
,p_column_html_expression=>'<span class="fa #IND_ESTADO_APROBACION_PRECIOS#"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(419454422951055821)
,p_db_column_name=>'IND_ESTADO_DISPO_DEPOSITO'
,p_display_order=>151
,p_column_identifier=>'P'
,p_column_label=>'Disponibilidad Deposito'
,p_column_html_expression=>'<span class="fa #IND_ESTADO_DISPO_DEPOSITO#"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(419454592956055822)
,p_db_column_name=>'IND_ESTADO_COMUNICADO'
,p_display_order=>161
,p_column_identifier=>'Q'
,p_column_label=>'Comunicado'
,p_column_html_expression=>'<span class="fa #IND_ESTADO_COMUNICADO#"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(419454684542055823)
,p_db_column_name=>'IND_ESTADO_APROBADO_GG'
,p_display_order=>171
,p_column_identifier=>'R'
,p_column_label=>'Aprobado GG'
,p_column_html_expression=>'<span class="fa #IND_ESTADO_APROBADO_GG#"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(419454786265055824)
,p_db_column_name=>'IND_ESTADO_RECHAZADO'
,p_display_order=>181
,p_column_identifier=>'S'
,p_column_label=>'Rechazado'
,p_column_html_expression=>'<span class="fa #IND_ESTADO_RECHAZADO#"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(107251302491899133)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1072514'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>20
,p_report_columns=>'FECHA:NRO_PROMO:ESTADO:RUBRO:MARCA:NRO_DESPACHO:NRO_EMBARQUE:IND_ESTADO_VERIFICACION:IND_ESTADO_VALIDACION_COM:IND_ESTADO_APROBACION_PRECIOS:IND_ESTADO_DISPO_DEPOSITO:IND_ESTADO_COMUNICADO:IND_ESTADO_APROBADO_GG:IND_ESTADO_RECHAZADO:'
,p_sort_column_1=>'NRO_PROMO'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(667210238124188047)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'PRODUCTOS'
,p_report_seq=>10
,p_report_alias=>'6672103'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>20
,p_report_columns=>'NRO_PROMO:FECHA:ESTADO:RUBRO:MARCA:NRO_DESPACHO:NRO_EMBARQUE:CREADO_POR:IND_ESTADO_VERIFICACION:IND_ESTADO_VALIDACION_COM:IND_ESTADO_APROBACION_PRECIOS:IND_ESTADO_DISPO_DEPOSITO:IND_ESTADO_COMUNICADO:IND_ESTADO_APROBADO_GG:IND_ESTADO_RECHAZADO:'
,p_sort_column_1=>'NRO_PROMO'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(1017480981238908400)
,p_report_id=>wwv_flow_imp.id(667210238124188047)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'RUBRO'
,p_operator=>'='
,p_expr=>'PRODUCTOS'
,p_condition_sql=>'"RUBRO" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''PRODUCTOS''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(667211704804193131)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'REPUESTOS'
,p_report_seq=>10
,p_report_alias=>'6672118'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>20
,p_report_columns=>'NRO_PROMO:FECHA:ESTADO:RUBRO:MARCA:NRO_DESPACHO:NRO_EMBARQUE:CREADO_POR:VERIFICADO_POR:USUARIO_AUT_COMERCIAL:USUARIO_CONFIRMADO_COMERCIAL:'
,p_sort_column_1=>'NRO_PROMO'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(413629345327086953)
,p_report_id=>wwv_flow_imp.id(667211704804193131)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'RUBRO'
,p_operator=>'='
,p_expr=>'REPUESTOS'
,p_condition_sql=>'"RUBRO" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''REPUESTOS''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(103967295400984616)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(107248829278898161)
,p_button_name=>'bt_agregar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103967601901984620)
,p_name=>'P373_URL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(103967538109984619)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103967734487984621)
,p_name=>'P373_NRO_PROMO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(103967538109984619)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(103967385263984617)
,p_name=>'DA_IR_PAG_59'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(103967295400984616)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103967455550984618)
,p_event_id=>wwv_flow_imp.id(103967385263984617)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APEX_PAGE.GET_URL (  p_page   => 59,',
'                            p_items  => ''P59_PARAM_NRO_PROMO'',',
'                            p_values => (NULL)) f_url_1',
'INTO :P373_URL',
'FROM DUAL;'))
,p_attribute_03=>'P373_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103967851221984622)
,p_event_id=>wwv_flow_imp.id(103967385263984617)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = apex.item("P373_URL").getValue();',
'',
'apex.navigation.redirect (url);'))
);
wwv_flow_imp.component_end;
end;
/
