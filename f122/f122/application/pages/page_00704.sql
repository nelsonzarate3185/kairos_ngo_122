prompt --application/pages/page_00704
begin
--   Manifest
--     PAGE: 00704
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
 p_id=>704
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'REP - Reporte de Venta Perdida'
,p_alias=>'REP-REPORTE-DE-VENTA-PERDIDA'
,p_step_title=>'REP - Reporte de Venta Perdida'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'    var previousRow = null;',
'    var previousRuleClass = null;',
'',
unistr('    // Usar delegaci\00F3n de eventos para manejar los clics en las filas'),
'    $(document).on(''click'', ''.a-IRR-table tr'', function() {',
'        // Remover la clase highlight-row de todas las filas',
'        $(''.a-IRR-table tr'').removeClass(''highlight-row'');',
'        ',
'        // Agregar la clase highlight-row a la fila clicada',
'        $(this).addClass(''highlight-row'');',
'',
'        // Si hay una fila previamente clicada, devolverle su clase "rule_" anterior',
'        if (previousRow && previousRuleClass) {',
'            $(previousRow).addClass(previousRuleClass);',
'        }',
'',
'        // Obtener la lista de clases de la fila clicada',
'        var classList = $(this).attr(''class'').split(/\s+/);',
'        var currentRuleClass = null;',
'',
'        // Buscar una clase que empiece con "rule_"',
'        classList.forEach(function(className) {',
'            if (className.startsWith(''rule_'')) {',
'                currentRuleClass = className;',
'            }',
'        });',
'',
'        // Si hay una clase "rule_", alternarla en la fila clicada',
'        if (currentRuleClass) {',
'            if ($(this).hasClass(currentRuleClass)) {',
'                $(this).removeClass(currentRuleClass);',
'            } else {',
'                $(this).addClass(currentRuleClass);',
'            }',
'        }',
'',
'        // Guardar la fila clicada y su clase "rule_" actual para su uso posterior',
'        previousRow = this;',
'        previousRuleClass = currentRuleClass;',
'    });',
'});',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'img',
'{width: 40px;',
'height:40px',
'}',
'',
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color: #e9ffbf !important;',
'   border-color: #8f0000 !important;',
'}',
'',
'.apex-item-select,  .apex-item-text , .apex-item-textarea , .apex-item-group, .display_only {',
'  border-color: #b4c6dd !important;',
'  background-color: #f8f6ea !important;',
'}',
'',
'',
'#PARAM, #FILTROS{    ',
'  background-color: #487ab8  !important;',
'}',
'',
'',
'',
'',
'',
'.t-Body-content{',
'   background-color:  #d0e0f783!important;}',
'',
'',
'',
'  .tabla_color   td.t-Report-cell , .t-Form-label  {',
'  color: #003a85  !important;',
'  border-color: #003a85 !important;',
'}',
'',
'  th.t-Report-colHead,  th.t-Report-colHead a{',
'  background-color:  #fff6a4  !important;',
'  color: #003a85  !important;',
'  border-color: #487ab8;',
'}',
'',
' .a-IRR-header{',
'      background-color: #fff6a4  !important;',
'	  font-weight: bold !important;',
'      border:0.5px solid #16488a !important;',
'   }',
'',
'  .a-IRR-headerLink{',
'    background-color: #fff6a4  !important;',
'	  color: #003a85 !important;    }',
'   ',
'/*.a-IRR-table tr td { ',
'        color: black !important;		',
'   }*/',
' ',
'.a-IRR-table td {',
'    border: 1px solid #003a85b7 !important;',
'}',
'',
'',
'.highlight {',
'    border: 2px solid rgb(50, 16, 240);',
'    background-color: #fdfdfd;',
'}',
'',
'',
'',
'.highlight-row:hover,',
'.highlight-row:focus {',
'    background-color: #ffffbf;',
'}',
'',
'.highlight-row {',
'  background-color: #5992e3 !important; /* Color de fondo para resaltar la fila */',
'	font-style: italic;',
'    text-decoration: underline ;',
'    /*font-size: large;*/',
'	font-weight: bolder;',
'}',
'',
'',
'#res_reporte{',
'	max-height: 500px; ',
'  	overflow-y: scroll;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'VGAMARRA'
,p_last_upd_yyyymmddhh24miss=>'20240718155718'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(263331296192507414)
,p_plug_name=>'CABECERA'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(263330062602507402)
,p_plug_name=>'RESUMEN'
,p_region_name=>'res_reporte'
,p_parent_plug_id=>wwv_flow_imp.id(263331296192507414)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d.COD_REPUESTO,',
'       a.descripcion DESCRIPCION_REPUESTO,',
'       -------case si el ultimo estado es recibo resta la cantidad--------',
'       case ',
'        when nvl((select c.estado',
'        from st_repuestos_venta_perdida_seg c',
'        where c.cod_repuesto = d.cod_repuesto',
'        and (c.fecha_alta) = (select max(cc.fecha_alta)',
'                            from st_repuestos_venta_perdida_seg cc',
'                            where cc.cod_repuesto = c.cod_repuesto',
'                              and cc.estado is not null) ),''PENDIENTE'')  = ''RECIBIDO'' THEN',
'',
'          GREATEST(',
'            SUM(NVL(d.CANTIDAD, 0)) - NVL((SELECT SUM(c.cant_solicitada)',
'                                           FROM st_repuestos_venta_perdida_seg c',
'                                           WHERE c.cod_repuesto = d.cod_repuesto',
'                                             AND NVL(c.estado, ''PENDIENTE'') = ''RECIBIDO''), 0),',
'            0)',
'       else',
'            SUM(NVL(d.CANTIDAD ,0))',
'       end CANTIDAD,',
'       -------------------fin case----------------------------------------------',
'       null inf,',
'       nvl((select c.estado',
'        from st_repuestos_venta_perdida_seg c',
'        where c.cod_repuesto = d.cod_repuesto',
'        and (c.fecha_alta) = (select max(cc.fecha_alta)',
'                            from st_repuestos_venta_perdida_seg cc',
'                            where cc.cod_repuesto = c.cod_repuesto',
'                              and cc.estado is not null) ),''PENDIENTE'') estado_resumen,',
'        (select c.fecha_alta',
'        from st_repuestos_venta_perdida_seg c',
'        where c.cod_repuesto = d.cod_repuesto',
'        and (c.fecha_alta) = (select max(cc.fecha_alta)',
'                            from st_repuestos_venta_perdida_seg cc',
'                            where cc.cod_repuesto = c.cod_repuesto',
'                              and cc.estado is not null) )fecha_gestion,',
'         (select c.fec_recepcion ',
'        from st_repuestos_venta_perdida_seg c',
'        where c.cod_repuesto = d.cod_repuesto',
'        and (c.fecha_alta) = (select max(cc.fecha_alta)',
'                            from st_repuestos_venta_perdida_seg cc',
'                            where cc.cod_repuesto = c.cod_repuesto',
'                              and cc.estado is not null) )fecha_recepcion,',
'      (select c.comentario',
'        from st_repuestos_venta_perdida_seg c',
'        where c.cod_repuesto = d.cod_repuesto',
'        and (c.fecha_alta) = (select max(cc.fecha_alta)',
'                            from st_repuestos_venta_perdida_seg cc',
'                            where cc.cod_repuesto = c.cod_repuesto',
'                              and cc.estado is not null) )comentario,',
'      (select c.cant_solicitada',
'        from st_repuestos_venta_perdida_seg c',
'        where c.cod_repuesto = d.cod_repuesto',
'        and (c.fecha_alta) = (select max(cc.fecha_alta)',
'                            from st_repuestos_venta_perdida_seg cc',
'                            where cc.cod_repuesto = c.cod_repuesto',
'                              and cc.estado is not null) )SOLICITUD',
'  from ST_REPUESTOS_VENTA_PERDIDA d, st_articulos a',
'  WHERE d.COD_REPUESTO IS NOT NULL',
'  and a.cod_empresa = ''1''',
'  and d.cod_repuesto = a.cod_articulo',
'  GROUP BY d.COD_REPUESTO,',
'       a.descripcion',
'  ORDER BY 3 DESC, 4 DESC',
'       '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'RESUMEN'
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
 p_id=>wwv_flow_imp.id(343529514198995135)
,p_max_row_count=>'1000000'
,p_max_rows_per_page=>'1000000'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'VGAMARRA'
,p_internal_uid=>343529514198995135
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(343529698183995136)
,p_db_column_name=>'COD_REPUESTO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Repuesto'
,p_column_type=>'STRING'
,p_static_id=>'COD_REPUESTO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(343529740955995137)
,p_db_column_name=>'DESCRIPCION_REPUESTO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Descripcion Repuesto'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(343529801243995138)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(343530195006995141)
,p_db_column_name=>'ESTADO_RESUMEN'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Estado Seguimiento'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(343530036600995140)
,p_db_column_name=>'INF'
,p_display_order=>90
,p_column_identifier=>'E'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P704_CODIGO_OBS'',''#COD_REPUESTO#'');'
,p_column_linktext=>'<span aria-label="Comentario"><span class="fa fa-edit" aria-hidden="true" title="Comentario"></span></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(343530886056995148)
,p_db_column_name=>'FECHA_GESTION'
,p_display_order=>100
,p_column_identifier=>'G'
,p_column_label=>'Fecha Gestion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(343530928054995149)
,p_db_column_name=>'FECHA_RECEPCION'
,p_display_order=>110
,p_column_identifier=>'H'
,p_column_label=>'Fecha Recepcion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(343531014128995150)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>120
,p_column_identifier=>'I'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(345352094572477338)
,p_db_column_name=>'SOLICITUD'
,p_display_order=>130
,p_column_identifier=>'J'
,p_column_label=>'Solicitud'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(344209272271908465)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3442093'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>1000
,p_report_columns=>'COD_REPUESTO:DESCRIPCION_REPUESTO:CANTIDAD:SOLICITUD:INF:ESTADO_RESUMEN:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(351176060917006403)
,p_report_id=>wwv_flow_imp.id(344209272271908465)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO_RESUMEN'
,p_operator=>'='
,p_expr=>'RECHAZADO'
,p_condition_sql=>' (case when ("ESTADO_RESUMEN" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''RECHAZADO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#f70303'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(351176487606006404)
,p_report_id=>wwv_flow_imp.id(344209272271908465)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO_RESUMEN'
,p_operator=>'='
,p_expr=>'RECIBIDO'
,p_condition_sql=>' (case when ("ESTADO_RESUMEN" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''RECIBIDO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#08fd10'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(351176814536006404)
,p_report_id=>wwv_flow_imp.id(344209272271908465)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO_RESUMEN'
,p_operator=>'='
,p_expr=>'SOLICITADO'
,p_condition_sql=>' (case when ("ESTADO_RESUMEN" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''SOLICITADO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#fafa17'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(263331367903507415)
,p_name=>'Seguimiento Repuesto'
,p_parent_plug_id=>wwv_flow_imp.id(263331296192507414)
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COMENTARIO,  ',
'       FECHA_ALTA FECHA,',
'       cod_usuario usuario,',
'       estado,',
'       fec_recepcion,',
'       CANT_SOLICITADA CANT_RECIBIDO',
'  from ST_REPUESTOS_VENTA_PERDIDA_SEG',
'  WHERE COD_REPUESTO = :P704_CODIGO_FILTRO',
'  order by FECHA_ALTA desc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P704_CODIGO_FILTRO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>4
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(263331792432507419)
,p_query_column_id=>1
,p_column_alias=>'COMENTARIO'
,p_column_display_sequence=>20
,p_column_heading=>'Comentario'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(263332062734507422)
,p_query_column_id=>2
,p_column_alias=>'FECHA'
,p_column_display_sequence=>30
,p_column_heading=>unistr('Fecha Gesti\00F3n')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(263333319010507435)
,p_query_column_id=>3
,p_column_alias=>'USUARIO'
,p_column_display_sequence=>40
,p_column_heading=>'Usuario'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(301737460380802644)
,p_query_column_id=>4
,p_column_alias=>'ESTADO'
,p_column_display_sequence=>50
,p_column_heading=>'Estado Seguimiento'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(301737519098802645)
,p_query_column_id=>5
,p_column_alias=>'FEC_RECEPCION'
,p_column_display_sequence=>60
,p_column_heading=>unistr('Fec Recepci\00F3n')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(351160993484149914)
,p_query_column_id=>6
,p_column_alias=>'CANT_RECIBIDO'
,p_column_display_sequence=>70
,p_column_heading=>'Cantidad'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(263332246465507424)
,p_plug_name=>'Agregar seguimiento'
,p_parent_plug_id=>wwv_flow_imp.id(263331296192507414)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(272323256595069921)
,p_plug_name=>'Reporte de Venta Perdida'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'	a.ID_REGISTRO,',
'	a.COD_REPUESTO,',
'	NVL(a.DESCRIPCION_REPUESTO, b.DESCRIPCION) AS DESCRIPCION_REPUESTO,',
'	a.CODIGO_CLIENTE,',
'	c.COD_CLIENTE ,',
'	nvl(a.NOMBRE_CLIENTE, nvl(p.NOMBRE, p.NOMB_FANTASIA)) AS nombre_cliente,',
'	nvl(a.TELEFONO_CLIENTE, t.CODIGO_AREA || ''-'' || t.NUM_TELEFONO) AS telefono_cliente,',
'	nvl(a.DIRECCION_CLIENTE, d.DETALLE) AS direccion_cliente,	',
'	a.CODIGO_PRODUCTO,',
'	nvl(a.DESCRIPCION_PRODUCTO, e.DESCRIPCION) AS descripcion_producto,',
'	a.MODELO_PRODUCTO,',
'	a.COMENTARIO,',
'	a.COD_USUARIO,',
'	a.FECHA_REGISTRO,',
'	a.CANTIDAD,',
'	nvl(dbms_lob.getlength(IMAGEN), '''')IMAGEN',
'FROM',
'	ST_REPUESTOS_VENTA_PERDIDA a',
'LEFT JOIN st_articulos b ON',
'	(a.COD_REPUESTO = b.COD_ARTICULO',
'		AND b.cod_rubro = ''RE''',
'		AND b.cod_empresa = 1)',
'LEFT JOIN cc_clientes c ON',
'	(a.CODIGO_CLIENTE = c.COD_CLIENTE',
'		AND c.cod_empresa = 1)',
'LEFT JOIN personas p ON',
'	(c.COD_PERSONA = p.COD_PERSONA)',
'LEFT JOIN direc_personas d ON',
'	(c.COD_PERSONA = d.COD_PERSONA)',
'LEFT JOIN telef_personas t ON',
'	(c.cod_persona = t.COD_PERSONA',
'		AND t.POR_DEFECTO = ''S'')',
'LEFT JOIN st_articulos e ON',
'	(a.CODIGO_PRODUCTO = e.COD_ARTICULO',
'		AND e.cod_rubro = ''PR''',
'		AND e.cod_empresa = 1)',
'WHERE',
'	a.COD_REPUESTO = :P704_CODIGO_FILTRO',
'ORDER BY',
'	a.FECHA_REGISTRO DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P704_CODIGO_FILTRO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(272323311643069921)
,p_name=>'Reporte de Venta Perdida'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_max_rows_per_page=>'5'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'INV'
,p_internal_uid=>272323311643069921
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(248690355215551332)
,p_db_column_name=>'ID_REGISTRO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id Registro'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(248690790194551332)
,p_db_column_name=>'COD_REPUESTO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Cod Repuesto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(248691141528551333)
,p_db_column_name=>'DESCRIPCION_REPUESTO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Descripcion Repuesto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(248691574954551333)
,p_db_column_name=>'CODIGO_CLIENTE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Codigo Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(248691998965551333)
,p_db_column_name=>'NOMBRE_CLIENTE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Nombre Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(248692377642551333)
,p_db_column_name=>'TELEFONO_CLIENTE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Telefono Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(248692744588551333)
,p_db_column_name=>'DIRECCION_CLIENTE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Direccion Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(248693199143551333)
,p_db_column_name=>'CODIGO_PRODUCTO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Codigo Producto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(248693511270551334)
,p_db_column_name=>'DESCRIPCION_PRODUCTO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Descripcion Producto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(248693990558551334)
,p_db_column_name=>'MODELO_PRODUCTO'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Modelo Producto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(248694323674551334)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(248694783126551334)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(248695117148551334)
,p_db_column_name=>'FECHA_REGISTRO'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Fecha Registro'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(248689926971551331)
,p_db_column_name=>'IMAGEN'
,p_display_order=>23
,p_column_identifier=>'O'
,p_column_label=>'Imagen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'IMAGE:ST_REPUESTOS_VENTA_PERDIDA:IMAGEN:ID_REGISTRO::::::::'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(185087447827060742)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>33
,p_column_identifier=>'P'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(557944512221594312)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>43
,p_column_identifier=>'Q'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(272329170394064868)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'236398'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_view_mode=>'REPORT'
,p_report_columns=>'COD_REPUESTO:DESCRIPCION_REPUESTO:CODIGO_CLIENTE:NOMBRE_CLIENTE:TELEFONO_CLIENTE:DIRECCION_CLIENTE:CODIGO_PRODUCTO:DESCRIPCION_PRODUCTO:COMENTARIO:FECHA_REGISTRO:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(263332451120507426)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(263332246465507424)
,p_button_name=>'ACEPTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(263330564437507407)
,p_name=>'P704_CODIGO_FILTRO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(263330062602507402)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(263331522307507417)
,p_name=>'P704_CODIGO_OBS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(263332246465507424)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(263332360286507425)
,p_name=>'P704_OBSERVACION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(263332246465507424)
,p_prompt=>'Observacion'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(301737233736802642)
,p_name=>'P704_ESTADO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(263332246465507424)
,p_prompt=>'Estado Seguimiento'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_ESTADOS_SOLICITUD'
,p_lov=>'.'||wwv_flow_imp.id(323181344035684189)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(301737394336802643)
,p_name=>'P704_FECHA_RECEPCION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(263332246465507424)
,p_prompt=>unistr('Fecha Recepci\00F3n')
,p_format_mask=>'DD-MM-YYYY'
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
 p_id=>wwv_flow_imp.id(344724026847938101)
,p_name=>'P704_CANT_SOLICITADA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(263332246465507424)
,p_prompt=>'Cantidad'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(263330637247507408)
,p_name=>'DA_SELECT_REG'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#res_reporte .a-IRR-table tr td '
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(263330742837507409)
,p_event_id=>wwv_flow_imp.id(263330637247507408)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var codtar = $(this.triggeringElement).closest(''tr'').find(''[headers="COD_REPUESTO"]'').text(); ',
'    $s(''P704_CODIGO_FILTRO'',codtar);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(344724140485938102)
,p_name=>'DA_SELECT_REG_FOCO'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(263330062602507402)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(344724228429938103)
,p_event_id=>wwv_flow_imp.id(344724140485938102)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// Obtener el valor del elemento de p\00E1gina'),
'var nameValue = $v(''COD_REPUESTO'');',
'',
unistr('// Validar si el valor est\00E1 vac\00EDo'),
'        if (nameValue === '''') {',
unistr('            // Si el campo est\00E1 vac\00EDo, aplica una clase CSS para resaltar'),
'            $(''#COD_REPUESTO'').addClass(''highlight'');',
'        } else {',
'            // Quita la clase CSS si tiene valor',
'            $(''#COD_REPUESTO'').removeClass(''highlight'');',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(263330897392507410)
,p_name=>'DA_CHNG'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P704_CODIGO_FILTRO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(263330934040507411)
,p_event_id=>wwv_flow_imp.id(263330897392507410)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(263331367903507415)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(263332163539507423)
,p_event_id=>wwv_flow_imp.id(263330897392507410)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(272323256595069921)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(263332521655507427)
,p_name=>'DA_CHNG_OBS'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P704_CODIGO_OBS'
,p_condition_element=>'P704_CODIGO_OBS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(263333287838507434)
,p_event_id=>wwv_flow_imp.id(263332521655507427)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P704_OBSERVACION'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
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
 p_id=>wwv_flow_imp.id(351159636367149901)
,p_event_id=>wwv_flow_imp.id(263332521655507427)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(263332246465507424)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(263332611594507428)
,p_event_id=>wwv_flow_imp.id(263332521655507427)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(263332246465507424)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(263332789502507429)
,p_name=>'DA_OK'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(263332451120507426)
,p_condition_element=>'P704_OBSERVACION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(263332960261507431)
,p_event_id=>wwv_flow_imp.id(263332789502507429)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe cargar un comentario.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(263332869646507430)
,p_event_id=>wwv_flow_imp.id(263332789502507429)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P704_ESTADO = ''RECIBIDO'' THEN',
' IF :P704_FECHA_RECEPCION IS NULL OR :P704_CANT_SOLICITADA IS NULL THEN',
'      raise_application_error(-20000, ''Debe cargar la fecha de la recepcion y la cantidad'');',
'        :P704_CODIGO_OBS := null;',
'        :P704_OBSERVACION := null;',
'        :P704_ESTADO := null;',
'        :P704_FECHA_RECEPCION := null; ',
'        :P704_CANT_SOLICITADA := null;',
' end if;',
'end if;',
'',
'IF :P704_CODIGO_OBS IS NOT NULL AND :P704_OBSERVACION IS NOT NULL THEN ',
'        BEGIN',
'                 insert into inv.st_repuestos_venta_perdida_seg',
'                   (cod_repuesto, comentario, cod_usuario, fecha_alta, estado, fec_recepcion, cant_solicitada)',
'                 values',
'                   (:P704_CODIGO_OBS, :P704_OBSERVACION, :APP_USER, SYSDATE, :P704_ESTADO, :P704_FECHA_RECEPCION, :P704_CANT_SOLICITADA);                 ',
'',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                raise_application_error(-20000, sqlerrm );',
'        END;',
'',
'        :P704_CODIGO_OBS := null;',
'        :P704_OBSERVACION := null;',
'        :P704_ESTADO := null;',
'        :P704_FECHA_RECEPCION := null; ',
'        :P704_CANT_SOLICITADA := null;',
'END IF;'))
,p_attribute_02=>'P704_CODIGO_OBS,P704_OBSERVACION,P704_ESTADO,P704_FECHA_RECEPCION,P704_CANT_SOLICITADA'
,p_attribute_03=>'P704_CODIGO_OBS,P704_OBSERVACION,P704_ESTADO,P704_FECHA_RECEPCION,P704_CANT_SOLICITADA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(263333089554507432)
,p_event_id=>wwv_flow_imp.id(263332789502507429)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(263331367903507415)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(263333129982507433)
,p_event_id=>wwv_flow_imp.id(263332789502507429)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(263332246465507424)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(301737932897802649)
,p_name=>'Pintar_linea'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_bind_event_type=>'apexbeforepagesubmit'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(301738049059802650)
,p_event_id=>wwv_flow_imp.id(301737932897802649)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("td[headers=''ESTADO'']").each(function(){',
'    if ($(this).text() === ''SOLICITADO'') {',
'        $(this).closest(''tr'').css(''background-color'', ''#FFFF00'');',
'    }',
'    if ($(this).text() === ''RECHAZADO'') {',
'        $(this).closest(''tr'').css(''background-color'', ''#FF0000'');',
'    }',
'    if ($(this).text() === ''RECIBIDO'') {',
'        $(this).closest(''tr'').css(''background-color'', ''#00FF00'');',
'    }',
'});',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(326811862117330204)
,p_name=>'pintar_linea'
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(263331367903507415)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(326811984390330205)
,p_event_id=>wwv_flow_imp.id(326811862117330204)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("td[headers=''ESTADO'']").each(function(){',
'    if ($(this).text() === ''SOLICITADO'') {',
'        $(this).closest(''tr'').css(''background-color'', ''#FFFF00'');',
'    }',
'    if ($(this).text() === ''RECHAZADO'') {',
'        $(this).closest(''tr'').css(''background-color'', ''#FF0000'');',
'    }',
'    if ($(this).text() === ''RECIBIDO'') {',
'        $(this).closest(''tr'').css(''background-color'', ''#00FF00'');',
'    }',
'});',
'',
'',
'',
''))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(326812010466330206)
,p_name=>'Pintar_linea_resumen'
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(263330062602507402)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(326812142221330207)
,p_event_id=>wwv_flow_imp.id(326812010466330206)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'JAVASCRIPT_EXPRESSION'
,p_affected_elements=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("td[headers=''ESTADO_RESUMEN'']").each(function(){',
'    if ($(this).text() === ''SOLICITADO'') {',
'        $(this).closest(''tr'').css(''background-color'', ''#FFFF00'');',
'    }',
'    if ($(this).text() === ''RECHAZADO'') {',
'        $(this).closest(''tr'').css(''background-color'', ''#FF0000'');',
'    }',
'    if ($(this).text() === ''RECIBIDO'') {',
'        $(this).closest(''tr'').css(''background-color'', ''#00FF00'');',
'    }',
'});',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(326815364265330239)
,p_name=>'refrescar'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(263332451120507426)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(326815448707330240)
,p_event_id=>wwv_flow_imp.id(326815364265330239)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(263330062602507402)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(351160247837149907)
,p_event_id=>wwv_flow_imp.id(326815364265330239)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(263332246465507424)
);
wwv_flow_imp.component_end;
end;
/
