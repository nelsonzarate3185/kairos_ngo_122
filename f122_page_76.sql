prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_220100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2715162693355865
,p_default_application_id=>122
,p_default_id_offset=>0
,p_default_owner=>'INV'
);
end;
/
 
prompt APPLICATION 122 - Kairos
--
-- Application Export:
--   Application:     122
--   Name:            Kairos
--   Date and Time:   17:31 Thursday March 27, 2025
--   Exported By:     NZARATE
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 76
--   Manifest End
--   Version:         22.1.0
--   Instance ID:     203712190362964
--

begin
null;
end;
/
prompt --application/pages/delete_00076
begin
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>76);
end;
/
prompt --application/pages/page_00076
begin
wwv_flow_imp_page.create_page(
 p_id=>76
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Cobertura de Clientes'
,p_alias=>'COBERTURA-DE-CLIENTES'
,p_step_title=>'Cobertura de Clientes'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#util_generico#MIN#.js'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.btn{',
'    margin-top: 15px;',
'}',
'',
'.u-checkbox {',
'    margin-top: 25px !important;',
'}',
'',
'#btn_cobro {',
'    display: none !important;',
'}',
'',
'#P99_MENSAJE_PAGARE {',
'    background-color: white;',
'    color: red;',
'    font-weight: bold;',
'}',
'',
' .t-Body-contentInner{    background: #c0d0e6!important;}',
' ',
'',
'.t-Form-label, .t-Form-itemText--pre{',
'    color:  #003A85 !important;     ',
'    font-weight: bold;',
'    } ',
'',
'',
'',
'    .a-IRR-toolbar, .a-IRR-content',
'    {    background: #d0e0f783!important;}',
'',
'',
'.t-Report-colHead, .a-IRR-headerLink {',
'      background: #003a85!important;',
'       color: yellow; ',
' }'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20250327172641'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(95540064869455546)
,p_plug_name=>'Visitas Calendario'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'select EVENT_ID,	CSS_CLASS||case when nvl(visita_marcada,0)=2 then ''green'' when',
' nvl(visita_marcada,0)=1 then ''yellow'' else ''red'' end  css_class	,EVENT_NAME,	EVENT_DATE_TIME,',
'	DISP_TIME	,END_TIME,	DISP_COL, cod_cliente',
'',
'from (',
'    select ',
'1 EVENT_ID ,',
'''apex-cal-'' CSS_CLASS ,',
'',
' ''(''||CC.COD_CLIENTE||'')-''||P.NOMBRE EVENT_NAME ,',
'TO_DATE(TO_CHAR(H.FECHA)||'' ''||''08:00:00'',''DD/MM/YYYY HH24:MI:SS'') EVENT_DATE_TIME  ,',
'NULL DISP_TIME ,',
'TO_DATE(TO_CHAR(H.FECHA)||'' ''||''08:00:00'',''DD/MM/YYYY HH24:MI:SS'') END_TIME ,',
' ''(''||CC.COD_CLIENTE||'')-''||P.NOMBRE  DISP_COL,',
'',
'nvl((select case when cas.fecha_fin_visita is not null then 2 ',
'            else 1 end',
'from cc_visit_cast cas ',
'where cas.cod_empresa=''1''',
'and cas.codigo_cliente=h.cod_cliente',
'and cas.fecha_visita  BETWEEN H.FECHA-1 AND H.FECHA +3',
'and cas.nombre_usuario=U.Usrn',
'and rownum=1),0)VISITA_MARCADA, cc.cod_cliente',
'',
'',
'',
' from fv_hoja_ruta_vendedor h, fv_vendedores fv, inv.asp$usua0100 u, personas p, ',
' cc_clientes cc',
'where fv.cod_empresa=''1''',
'and fv.cod_empresa=h.cod_empresa',
'and fv.cod_vendedor=h.cod_vendedor',
'',
'AND h.FECHA  BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL',
'and h.cod_vendedor = :P76_COD_VENDEDOR ',
'--and u.cod_empresa=FV.cod_empresa',
'and u.cod_persona=FV.cod_persona',
'and h.cod_empresa=cc.cod_empresa',
'and h.cod_cliente=cc.cod_cliente',
'and cc.cod_persona=p.cod_persona',
'    /*select ',
'1 EVENT_ID ,',
'''apex-cal-'' CSS_CLASS ,',
'',
' ''(''||CC.COD_CLIENTE||'')-''||P.NOMBRE EVENT_NAME ,',
'TO_DATE(TO_CHAR(H.FECHA)||'' ''||''08:00:00'',''DD/MM/YYYY HH24:MI:SS'') EVENT_DATE_TIME  ,',
'NULL DISP_TIME ,',
'TO_DATE(TO_CHAR(H.FECHA)||'' ''||''08:00:00'',''DD/MM/YYYY HH24:MI:SS'') END_TIME ,',
' ''(''||CC.COD_CLIENTE||'')-''||P.NOMBRE  DISP_COL,',
'',
'nvl((select case when cas.fecha_fin_visita is not null then 2 ',
'            else 1 end',
'from cc_visit_cast cas ',
'where cas.cod_empresa=''1''',
'and cas.codigo_cliente=h.cod_cliente',
'and cas.fecha_visita  BETWEEN H.FECHA-1 AND H.FECHA +3',
'and cas.nombre_usuario=U.COD_USUARIO',
'and rownum=1),0)VISITA_MARCADA, cc.cod_cliente',
'',
'',
'',
' from fv_hoja_ruta_vendedor h, fv_vendedores fv, usuarios u, personas p, ',
' cc_clientes cc',
'where fv.cod_empresa=''1''',
'and fv.cod_empresa=h.cod_empresa',
'and fv.cod_vendedor=h.cod_vendedor',
'',
'AND h.FECHA  BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL',
'and h.cod_vendedor = :P76_COD_VENDEDOR ',
'and u.cod_empresa=FV.cod_empresa',
'and u.cod_persona=FV.cod_persona',
'and h.cod_empresa=cc.cod_empresa',
'and h.cod_cliente=cc.cod_cliente',
'and cc.cod_persona=p.cod_persona*/',
')',
'ORDER BY 3',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_translate_title=>'N'
,p_ajax_items_to_submit=>'P76_COD_VENDEDOR,P76_FECHA_INICIAL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'EVENT_DATE_TIME'
,p_attribute_02=>'END_TIME'
,p_attribute_03=>'DISP_COL'
,p_attribute_04=>'EVENT_ID'
,p_attribute_05=>'f?p=&APP_ID.:77:&SESSION.::&DEBUG.::P77_COD_CLIENTE:&COD_CLIENTE.'
,p_attribute_07=>'N'
,p_attribute_09=>'list:navigation'
,p_attribute_10=>'CSV:ICAL'
,p_attribute_13=>'N'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_17=>'N'
,p_attribute_19=>'Y'
,p_attribute_21=>'10'
,p_attribute_22=>'N'
,p_attribute_23=>'3'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(95541223820455558)
,p_plug_name=>'Cobertura'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(13225712554880289)
,p_region_id=>wwv_flow_imp.id(95541223820455558)
,p_chart_type=>'dial'
,p_width=>'250'
,p_height=>'250'
,p_animation_on_display=>'zoom'
,p_animation_on_data_change=>'slideToRight'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_text_type=>'percent'
,p_value_position=>'auto'
,p_value_format_type=>'percent'
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
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>90
,p_gauge_angle_extent=>360
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(13226206419880291)
,p_chart_id=>wwv_flow_imp.id(13225712554880289)
,p_seq=>10
,p_name=>'Cobertura'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'',
'sum(cantidad_agendado)cantidad_agendado,sum(visita_mes)visita_mes,',
' round(sum(cantidad_agendado) *100 /sum(visita_mes) ,2)  cobertura ',
'FROM ',
'(select COD_CLIENTE,',
'NOMBRE,',
'DIRECCION,',
'CODIGO_CIUDAD,',
'DESCRIPCION_CIUDAD,',
'CODIGO_DEPARTAMENTO,',
'DESCRIPCION_DEPARTAMENTO,',
'TELEFONO,',
'RUC,',
'ESTADO,',
'MOTIVO,',
'AGENTE_CREDITO,',
'AGENTE_COBRO,',
'COD_LISTA_PRECIO,',
'COD_CONDICION_VENTA,',
'LINEA_DE_CREDITO,',
'MONEDA,',
'COD_TIP_CLIENTE,',
'TIPO_CLIENTE,',
'FEC_ULTIMA_COMPRA,',
'FECHA_ULTIMA_VISITA,',
'LINEA_EJECUTADA,',
'DEUDA_VENCIDA,',
'DEUDA_TOTAL,',
'TIPO_IMPUESTO,',
'CREDITO_DISPONIBLE,',
'PEDIDOS_PENDIENTES,',
'',
'',
'NVL(',
'           (select sum(nvl(vd.monto_total,0)+NVL(VD.TOTAL_IVA,0)*',
'           CASE WHEN VC.TIP_COMPROBANTE=''NCR'' THEN -1 ELSE 1 END',
'           )',
'           from VT_COMPROBANTES_CABECERA vc, VT_COMPROBANTES_DETALLE vd',
'           where vc.cod_empresa=''1''',
'           and vc.cod_cliente=CAR.COD_CLIENTE',
'           and vc.cod_empresa=vd.cod_empresa',
'           AND VC.FEC_COMPROBANTE BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL',
'           and vc.tip_comprobante=vd.tip_comprobante',
'           and vc.ser_comprobante=vd.ser_comprobante',
'           and vc.nro_comprobante=vd.nro_comprobante',
'',
'           and vc.estado not in (''A'',''C'')),0)VENTAS_FECHA_PERIODO,',
'           NVL(',
'           (select sum(',
'           nvl(vd.monto_total,0)+NVL(VD.TOTAL_IVA,0)*CASE WHEN VC.TIP_COMPROBANTE=''NCR'' THEN -1 ELSE 1 END',
'',
'           )',
'           from VT_COMPROBANTES_CABECERA vc, VT_COMPROBANTES_DETALLE vd',
'           where vc.cod_empresa=''1''',
'           and vc.cod_cliente=CAR.cod_cliente',
'           and vc.cod_empresa=vd.cod_empresa',
'           AND VC.FEC_COMPROBANTE BETWEEN ADD_MONTHS(:P76_FECHA_INICIAL,-12) AND ADD_MONTHS(:P76_FECHA_FINAL,-12)',
'           and vc.tip_comprobante=vd.tip_comprobante',
'           and vc.ser_comprobante=vd.ser_comprobante',
'           and vc.nro_comprobante=vd.nro_comprobante',
'',
'           and NVL(vc.estado,''P'') not in (''A'')),0)VENTAS_FECHA_PERIODO_ANT,',
'           ',
'CODIGO_VENDEDOR, NOMBRE_VENDEDOR,',
'sucursales, cod_persona,',
'SIN_VENTA_60_DIAS,',
'SIN_VENTA_30_DIAS,',
'(select count(*)',
'from fv_hoja_ruta_vendedor hr',
'where hr.cod_empresa=''1''',
'and hr.cod_cliente=car.COD_CLIENTE',
'AND HR.FECHA  BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL',
'and hr.cod_vendedor=car.CODIGO_VENDEDOR)',
'',
'',
'||''/''||',
'  (select s.cant_visita_mes',
'   ',
'     from  cc_segmentacion_cliente s,',
'           cc_clientes cc',
'     where s.cod_empresa= ''1''',
'     and   s.cod_tip_cliente=cc.tip_cliente ',
'     and   s.cod_empresa=cc.cod_empresa',
'     and   cc.cod_cliente= car.cod_cliente',
'     and   nvl(s.vta_anual_min,0)<=venta_anio',
'     and    nvl(s.vta_anual_max,0)>=venta_anio)',
'',
'',
'',
'HOJA_RUTA_inventiva,',
'case when nvl((select count(*)',
'from fv_hoja_ruta_vendedor hr',
'where hr.cod_empresa=''1''',
'and hr.cod_cliente=car.COD_CLIENTE',
'AND HR.FECHA  BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL',
'and hr.cod_vendedor=car.CODIGO_VENDEDOR),0)> (select s.cant_visita_mes',
'   ',
'     from  cc_segmentacion_cliente s,',
'           cc_clientes cc',
'     where s.cod_empresa= ''1''',
'     and   s.cod_tip_cliente=cc.tip_cliente ',
'     and   s.cod_empresa=cc.cod_empresa',
'     and   cc.cod_cliente= car.cod_cliente',
'     and   nvl(s.vta_anual_min,0)<=venta_anio',
'     and    nvl(s.vta_anual_max,0)>=venta_anio)  then ',
'      (select s.cant_visita_mes',
'   ',
'     from  cc_segmentacion_cliente s,',
'           cc_clientes cc',
'     where s.cod_empresa= ''1''',
'     and   s.cod_tip_cliente=cc.tip_cliente ',
'     and   s.cod_empresa=cc.cod_empresa',
'     and   cc.cod_cliente= car.cod_cliente',
'     and   nvl(s.vta_anual_min,0)<=venta_anio',
'     and    nvl(s.vta_anual_max,0)>=venta_anio)  else ',
'nvl(     (select count(*)',
'from fv_hoja_ruta_vendedor hr',
'where hr.cod_empresa=''1''',
'and hr.cod_cliente=car.COD_CLIENTE',
'AND HR.FECHA  BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL',
'and hr.cod_vendedor=car.CODIGO_VENDEDOR),0) end',
'',
'cantidad_agendado,',
' ',
'  (select s.cant_visita_mes',
'   ',
'     from  cc_segmentacion_cliente s,',
'           cc_clientes cc',
'     where s.cod_empresa= ''1''',
'     and   s.cod_tip_cliente=cc.tip_cliente ',
'     and   s.cod_empresa=cc.cod_empresa',
'     and   cc.cod_cliente= car.cod_cliente',
'     and   nvl(s.vta_anual_min,0)<=venta_anio',
'     and    nvl(s.vta_anual_max,0)>=venta_anio) visita_mes,',
'',
'',
'',
' ',
'nvl((select sum(tot_gravadas)',
'from vt_comprobantes_cabecera vv',
'where vv.cod_empresa  = ''1''',
'and nvl(vv.estado,''P'')<>''A''',
'and vv.cod_cliente = car.COD_CLIENTE',
'and vv.cod_vendedor = :P76_COD_VENDEDOR ',
'',
' ',
'and vv.fec_comprobante between (select',
'(min(R.FECHA) -2 )',
'from  fv_hoja_ruta_vendedor r',
'where   r.cod_cliente=car.COD_CLIENTE',
'AND r.FECHA  BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL',
'and r.cod_vendedor=:P76_COD_VENDEDOR) ',
'',
'',
' and  ',
' (select',
'(max(R.FECHA) +3)',
'from  fv_hoja_ruta_vendedor r',
'where   r.cod_cliente=car.COD_CLIENTE',
'AND r.FECHA  BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL',
'and r.cod_vendedor=:P76_COD_VENDEDOR) ',
'),0) efectividad,(select count(*)',
'from cc_visit_cast cas ',
'where cas.cod_empresa=''1''',
'and cas.codigo_cliente=car.cod_cliente',
'and cas.fecha_visita  BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL',
'and cas.nombre_usuario=car.codigo_usuario_vendedor',
')visitas_marcadas',
'',
' from v_clienteS_CARTERA CAR',
' where /*(CODIGO_VENDEDOR = :P76_COD_VENDEDOR OR :P76_COD_VENDEDOR IS NULL)*/',
' (',
' (select v.cod_vendedor',
' from cc_vendedores_clientes v where v.cod_empresa=''1''',
' and v.cod_cliente=car.cod_cliente',
' and v.cod_vendedor=:P76_COD_VENDEDOR',
' and v.cod_vendedor<>car.CODIGO_VENDEDOR',
' union all ',
' select car.codigo_vendedor from dual',
' where car.codigo_vendedor=:P76_COD_VENDEDOR ) = :P76_COD_VENDEDOR OR :P76_COD_VENDEDOR IS NULL)',
'',
' /*AND (ESTADO = :P76_ESTADO OR :P76_ESTADO IS NULL)*/',
'and REGEXP_LIKE ( :P76_ESTADO,ESTADO)',
' /*AND (COD_TIP_CLIENTE = :P76_TIPO_CLIENTE OR :P76_TIPO_CLIENTE IS NULL)*/',
' and REGEXP_LIKE (:P76_TIPO_CLIENTE,TIPo_CLIENTE)',
' and (COD_SUPERVISOR = :P76_COD_SUPERVISOR OR :P76_COD_SUPERVISOR IS NULL)',
' AND :P76_FECHA_INICIAL  ',
' IS NOT NULL',
' and (:P76_COD_VENDEDOR IS NOT NULL OR :P76_COD_SUPERVISOR IS NOT NULL or :P76_TIPO_CLIENTE IS NOT NULL)',
' )',
' order by 2'))
,p_ajax_items_to_submit=>'P76_FECHA_INICIAL,P76_FECHA_FINAL,P76_COD_VENDEDOR,P76_ESTADO,P76_TIPO_CLIENTE,P76_COD_SUPERVISOR'
,p_items_value_column_name=>'CANTIDAD_AGENDADO'
,p_items_max_value=>'VISITA_MES'
,p_color=>'#0DD642'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_gauge_plot_area_color=>'#F00C6B'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(95541841962455564)
,p_plug_name=>'Visitas'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(13227138870880293)
,p_region_id=>wwv_flow_imp.id(95541841962455564)
,p_chart_type=>'dial'
,p_width=>'250'
,p_height=>'250'
,p_animation_on_display=>'zoom'
,p_animation_on_data_change=>'slideToRight'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_text_type=>'percent'
,p_value_position=>'auto'
,p_value_format_type=>'percent'
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
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>90
,p_gauge_angle_extent=>360
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(13227672870880293)
,p_chart_id=>wwv_flow_imp.id(13227138870880293)
,p_seq=>10
,p_name=>'Agendados'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'',
'sum(visitas_marcadas)cantidad_agendado,count(*)cantidad_clientes  ',
'FROM ',
'(select COD_CLIENTE,',
'NOMBRE,',
'DIRECCION,',
'CODIGO_CIUDAD,',
'DESCRIPCION_CIUDAD,',
'CODIGO_DEPARTAMENTO,',
'DESCRIPCION_DEPARTAMENTO,',
'TELEFONO,',
'RUC,',
'ESTADO,',
'MOTIVO,',
'AGENTE_CREDITO,',
'AGENTE_COBRO,',
'COD_LISTA_PRECIO,',
'COD_CONDICION_VENTA,',
'LINEA_DE_CREDITO,',
'MONEDA,',
'COD_TIP_CLIENTE,',
'TIPO_CLIENTE,',
'FEC_ULTIMA_COMPRA,',
'FECHA_ULTIMA_VISITA,',
'LINEA_EJECUTADA,',
'DEUDA_VENCIDA,',
'DEUDA_TOTAL,',
'TIPO_IMPUESTO,',
'CREDITO_DISPONIBLE,',
'PEDIDOS_PENDIENTES,',
'',
'',
'NVL(',
'           (select sum(nvl(vd.monto_total,0)+NVL(VD.TOTAL_IVA,0)*',
'           CASE WHEN VC.TIP_COMPROBANTE=''NCR'' THEN -1 ELSE 1 END',
'           )',
'           from VT_COMPROBANTES_CABECERA vc, VT_COMPROBANTES_DETALLE vd',
'           where vc.cod_empresa=''1''',
'           and vc.cod_cliente=CAR.COD_CLIENTE',
'           and vc.cod_empresa=vd.cod_empresa',
'           AND VC.FEC_COMPROBANTE BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL',
'           and vc.tip_comprobante=vd.tip_comprobante',
'           and vc.ser_comprobante=vd.ser_comprobante',
'           and vc.nro_comprobante=vd.nro_comprobante',
'',
'           and vc.estado not in (''A'',''C'')),0)VENTAS_FECHA_PERIODO,',
'           NVL(',
'           (select sum(',
'           nvl(vd.monto_total,0)+NVL(VD.TOTAL_IVA,0)*CASE WHEN VC.TIP_COMPROBANTE=''NCR'' THEN -1 ELSE 1 END',
'',
'           )',
'           from VT_COMPROBANTES_CABECERA vc, VT_COMPROBANTES_DETALLE vd',
'           where vc.cod_empresa=''1''',
'           and vc.cod_cliente=CAR.cod_cliente',
'           and vc.cod_empresa=vd.cod_empresa',
'           AND VC.FEC_COMPROBANTE BETWEEN ADD_MONTHS(:P76_FECHA_INICIAL,-12) AND ADD_MONTHS(:P76_FECHA_FINAL,-12)',
'           and vc.tip_comprobante=vd.tip_comprobante',
'           and vc.ser_comprobante=vd.ser_comprobante',
'           and vc.nro_comprobante=vd.nro_comprobante',
'',
'           and NVL(vc.estado,''P'') not in (''A'')),0)VENTAS_FECHA_PERIODO_ANT,',
'           ',
'CODIGO_VENDEDOR, NOMBRE_VENDEDOR,',
'sucursales, cod_persona,',
'SIN_VENTA_60_DIAS,',
'SIN_VENTA_30_DIAS,',
'(select count(*)',
'from fv_hoja_ruta_vendedor hr',
'where hr.cod_empresa=''1''',
'and hr.cod_cliente=car.COD_CLIENTE',
'AND HR.FECHA  BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL',
'and hr.cod_vendedor=:P76_COD_VENDEDOR)',
'',
'',
'||''/''||',
'  (select s.cant_visita_mes',
'   ',
'     from  cc_segmentacion_cliente s,',
'           cc_clientes cc',
'     where s.cod_empresa= ''1''',
'     and   s.cod_tip_cliente=cc.tip_cliente ',
'     and   s.cod_empresa=cc.cod_empresa',
'     and   cc.cod_cliente= car.cod_cliente',
'     and   nvl(s.vta_anual_min,0)<=venta_anio',
'     and    nvl(s.vta_anual_max,0)>=venta_anio)',
'',
'',
'',
'HOJA_RUTA_inventiva,',
'(select count(*)',
'from fv_hoja_ruta_vendedor hr',
'where hr.cod_empresa=''1''',
'and hr.cod_cliente=car.COD_CLIENTE',
'AND HR.FECHA  BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL',
'and hr.cod_vendedor=:P76_COD_VENDEDOR)cantidad_agendado,',
'(select count(distinct(cod_cliente))',
'from fv_hoja_ruta_vendedor hr',
'where hr.cod_empresa=''1''',
'and hr.cod_cliente=car.COD_CLIENTE',
'AND HR.FECHA  BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL',
'and hr.cod_vendedor=:P76_COD_VENDEDOR)CLIENTES_AGENDADOS,',
' ',
'  (select s.cant_visita_mes',
'   ',
'     from  cc_segmentacion_cliente s,',
'           cc_clientes cc',
'     where s.cod_empresa= ''1''',
'     and   s.cod_tip_cliente=cc.tip_cliente ',
'     and   s.cod_empresa=cc.cod_empresa',
'     and   cc.cod_cliente= car.cod_cliente',
'     and   nvl(s.vta_anual_min,0)<=venta_anio',
'     and    nvl(s.vta_anual_max,0)>=venta_anio) visita_mes,',
'',
'',
'',
' ',
'nvl((select sum(tot_gravadas)',
'from vt_comprobantes_cabecera vv',
'where vv.cod_empresa  = ''1''',
'and nvl(vv.estado,''P'')<>''A''',
'and vv.cod_cliente = car.COD_CLIENTE',
'and vv.cod_vendedor = :P76_COD_VENDEDOR',
'',
' ',
'and vv.fec_comprobante between (select',
'(min(R.FECHA) -2 )',
'from  fv_hoja_ruta_vendedor r',
'where   r.cod_cliente=car.COD_CLIENTE',
'AND r.FECHA  BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL',
'and r.cod_vendedor=:P76_COD_VENDEDOR) ',
'',
'',
' and  ',
' (select',
'(max(R.FECHA) +3)',
'from  fv_hoja_ruta_vendedor r',
'where   r.cod_cliente=car.COD_CLIENTE',
'AND r.FECHA  BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL',
'and r.cod_vendedor=:P76_COD_VENDEDOR) ',
'),0) efectividad,(select count(*)',
'from cc_visit_cast cas ',
'where cas.cod_empresa=''1''',
'and cas.codigo_cliente=car.cod_cliente',
'and cas.fecha_visita  BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL',
'and cas.nombre_usuario=car.codigo_usuario_vendedor',
')visitas_marcadas',
'',
' from v_clienteS_CARTERA CAR',
' where /*(CODIGO_VENDEDOR = :P76_COD_VENDEDOR OR :P76_COD_VENDEDOR IS NULL)*/',
' (',
' (select v.cod_vendedor',
' from cc_vendedores_clientes v where v.cod_empresa=''1''',
' and v.cod_cliente=car.cod_cliente',
' and v.cod_vendedor=:P76_COD_VENDEDOR',
' and v.cod_vendedor<>car.CODIGO_VENDEDOR',
' union all ',
' select car.codigo_vendedor from dual',
' where car.codigo_vendedor=:P76_COD_VENDEDOR ) = :P76_COD_VENDEDOR OR :P76_COD_VENDEDOR IS NULL)',
'',
' /*AND (ESTADO = :P76_ESTADO OR :P76_ESTADO IS NULL)*/',
'and REGEXP_LIKE ( :P76_ESTADO,ESTADO)',
' /*AND (COD_TIP_CLIENTE = :P76_TIPO_CLIENTE OR :P76_TIPO_CLIENTE IS NULL)*/',
' and REGEXP_LIKE (:P76_TIPO_CLIENTE,TIPo_CLIENTE)',
' and (COD_SUPERVISOR = :P76_COD_SUPERVISOR OR :P76_COD_SUPERVISOR IS NULL)',
' AND :P76_FECHA_INICIAL  ',
' IS NOT NULL',
' and (:P76_COD_VENDEDOR IS NOT NULL OR :P76_COD_SUPERVISOR IS NOT NULL or :P76_TIPO_CLIENTE IS NOT NULL)',
' )',
' order by 2'))
,p_ajax_items_to_submit=>'P76_FECHA_INICIAL,P76_FECHA_FINAL,P76_COD_VENDEDOR,P76_ESTADO,P76_TIPO_CLIENTE,P76_COD_SUPERVISOR'
,p_items_value_column_name=>'CANTIDAD_AGENDADO'
,p_items_max_value=>'CANTIDAD_CLIENTES'
,p_color=>'#0DD642'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_gauge_plot_area_color=>'#1010DE'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(103255820296290618)
,p_plug_name=>'Efectividad'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(13228535275880294)
,p_region_id=>wwv_flow_imp.id(103255820296290618)
,p_chart_type=>'dial'
,p_width=>'250'
,p_height=>'250'
,p_animation_on_display=>'zoom'
,p_animation_on_data_change=>'slideToRight'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_text_type=>'percent'
,p_value_position=>'auto'
,p_value_format_type=>'percent'
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
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>90
,p_gauge_angle_extent=>360
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(13229069959880294)
,p_chart_id=>wwv_flow_imp.id(13228535275880294)
,p_seq=>10
,p_name=>'Evectividad'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'',
'sum(efectividad)cantidad_agendado,count(*)cantidad_clientes  ',
'FROM ',
'(select COD_CLIENTE,',
'NOMBRE,',
'DIRECCION,',
'CODIGO_CIUDAD,',
'DESCRIPCION_CIUDAD,',
'CODIGO_DEPARTAMENTO,',
'DESCRIPCION_DEPARTAMENTO,',
'TELEFONO,',
'RUC,',
'ESTADO,',
'MOTIVO,',
'AGENTE_CREDITO,',
'AGENTE_COBRO,',
'COD_LISTA_PRECIO,',
'COD_CONDICION_VENTA,',
'LINEA_DE_CREDITO,',
'MONEDA,',
'COD_TIP_CLIENTE,',
'TIPO_CLIENTE,',
'FEC_ULTIMA_COMPRA,',
'FECHA_ULTIMA_VISITA,',
'LINEA_EJECUTADA,',
'DEUDA_VENCIDA,',
'DEUDA_TOTAL,',
'TIPO_IMPUESTO,',
'CREDITO_DISPONIBLE,',
'PEDIDOS_PENDIENTES,',
'',
'',
'NVL(',
'           (select sum(nvl(vd.monto_total,0)+NVL(VD.TOTAL_IVA,0)*',
'           CASE WHEN VC.TIP_COMPROBANTE=''NCR'' THEN -1 ELSE 1 END',
'           )',
'           from VT_COMPROBANTES_CABECERA vc, VT_COMPROBANTES_DETALLE vd',
'           where vc.cod_empresa=''1''',
'           and vc.cod_cliente=CAR.COD_CLIENTE',
'           and vc.cod_empresa=vd.cod_empresa',
'           AND VC.FEC_COMPROBANTE BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL',
'           and vc.tip_comprobante=vd.tip_comprobante',
'           and vc.ser_comprobante=vd.ser_comprobante',
'           and vc.nro_comprobante=vd.nro_comprobante',
'',
'           and vc.estado not in (''A'',''C'')),0)VENTAS_FECHA_PERIODO,',
'           NVL(',
'           (select sum(',
'           nvl(vd.monto_total,0)+NVL(VD.TOTAL_IVA,0)*CASE WHEN VC.TIP_COMPROBANTE=''NCR'' THEN -1 ELSE 1 END',
'',
'           )',
'           from VT_COMPROBANTES_CABECERA vc, VT_COMPROBANTES_DETALLE vd',
'           where vc.cod_empresa=''1''',
'           and vc.cod_cliente=CAR.cod_cliente',
'           and vc.cod_empresa=vd.cod_empresa',
'           AND VC.FEC_COMPROBANTE BETWEEN ADD_MONTHS(:P76_FECHA_INICIAL,-12) AND ADD_MONTHS(:P76_FECHA_FINAL,-12)',
'           and vc.tip_comprobante=vd.tip_comprobante',
'           and vc.ser_comprobante=vd.ser_comprobante',
'           and vc.nro_comprobante=vd.nro_comprobante',
'',
'           and NVL(vc.estado,''P'') not in (''A'')),0)VENTAS_FECHA_PERIODO_ANT,',
'           ',
'CODIGO_VENDEDOR, NOMBRE_VENDEDOR,',
'sucursales, cod_persona,',
'SIN_VENTA_60_DIAS,',
'SIN_VENTA_30_DIAS,',
'(select count(*)',
'from fv_hoja_ruta_vendedor hr',
'where hr.cod_empresa=''1''',
'and hr.cod_cliente=car.COD_CLIENTE',
'AND HR.FECHA  BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL',
'and hr.cod_vendedor=:P76_COD_VENDEDOR)',
'',
'',
'||''/''||',
'  (select s.cant_visita_mes',
'   ',
'     from  cc_segmentacion_cliente s,',
'           cc_clientes cc',
'     where s.cod_empresa= ''1''',
'     and   s.cod_tip_cliente=cc.tip_cliente ',
'     and   s.cod_empresa=cc.cod_empresa',
'     and   cc.cod_cliente= car.cod_cliente',
'     and   nvl(s.vta_anual_min,0)<=venta_anio',
'     and    nvl(s.vta_anual_max,0)>=venta_anio)',
'',
'',
'',
'HOJA_RUTA_inventiva,',
'(select count(*)',
'from fv_hoja_ruta_vendedor hr',
'where hr.cod_empresa=''1''',
'and hr.cod_cliente=car.COD_CLIENTE',
'AND HR.FECHA  BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL',
'and hr.cod_vendedor=:P76_COD_VENDEDOR)cantidad_agendado,',
'(select count(distinct(cod_cliente))',
'from fv_hoja_ruta_vendedor hr',
'where hr.cod_empresa=''1''',
'and hr.cod_cliente=car.COD_CLIENTE',
'AND HR.FECHA  BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL',
'and hr.cod_vendedor=:P76_COD_VENDEDOR)CLIENTES_AGENDADOS,',
' ',
'  (select s.cant_visita_mes',
'   ',
'     from  cc_segmentacion_cliente s,',
'           cc_clientes cc',
'     where s.cod_empresa= ''1''',
'     and   s.cod_tip_cliente=cc.tip_cliente ',
'     and   s.cod_empresa=cc.cod_empresa',
'     and   cc.cod_cliente= car.cod_cliente',
'     and   nvl(s.vta_anual_min,0)<=venta_anio',
'     and    nvl(s.vta_anual_max,0)>=venta_anio) visita_mes,',
'',
'',
'',
' ',
'nvl((select 1',
'from vt_comprobantes_cabecera vv',
'where vv.cod_empresa  = ''1''',
'and nvl(vv.estado,''P'')<>''A''',
'and vv.cod_cliente = car.COD_CLIENTE',
'and vv.cod_vendedor = :P76_COD_VENDEDOR',
'AND VV.TIP_COMPROBANTE IN (''FCR'',''FCO'')',
' ',
'and vv.fec_comprobante between (select',
'(min(R.FECHA) -2 )',
'from  fv_hoja_ruta_vendedor r',
'where   r.cod_cliente=car.COD_CLIENTE',
'AND r.FECHA  BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL',
'and r.cod_vendedor=:P76_COD_VENDEDOR) ',
'',
'',
' and  ',
' (select',
'(max(R.FECHA) +3)',
'from  fv_hoja_ruta_vendedor r',
'where   r.cod_cliente=car.COD_CLIENTE',
'AND r.FECHA  BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL',
'and r.cod_vendedor=:P76_COD_VENDEDOR) ',
'AND ROWNUM=1',
'),0) efectividad,(select count(*)',
'from cc_visit_cast cas ',
'where cas.cod_empresa=''1''',
'and cas.codigo_cliente=car.cod_cliente',
'and cas.fecha_visita  BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL',
'and cas.nombre_usuario=car.codigo_usuario_vendedor',
')visitas_marcadas',
'',
'from v_clienteS_CARTERA CAR',
' ',
' where /*(CODIGO_VENDEDOR = :P76_COD_VENDEDOR OR :P76_COD_VENDEDOR IS NULL)*/',
' (',
' (select v.cod_vendedor',
' from cc_vendedores_clientes v where v.cod_empresa=''1''',
' and v.cod_cliente=car.cod_cliente',
' and v.cod_vendedor=:P76_COD_VENDEDOR',
' and v.cod_vendedor<>car.CODIGO_VENDEDOR',
' union all ',
' select car.codigo_vendedor from dual',
' where car.codigo_vendedor=:P76_COD_VENDEDOR ) = :P76_COD_VENDEDOR OR :P76_COD_VENDEDOR IS NULL)',
'',
' /*AND (ESTADO = :P76_ESTADO OR :P76_ESTADO IS NULL)*/',
'and REGEXP_LIKE ( :P76_ESTADO,ESTADO)',
' /*AND (COD_TIP_CLIENTE = :P76_TIPO_CLIENTE OR :P76_TIPO_CLIENTE IS NULL)*/',
' and REGEXP_LIKE (:P76_TIPO_CLIENTE,TIPo_CLIENTE)',
' and (COD_SUPERVISOR = :P76_COD_SUPERVISOR OR :P76_COD_SUPERVISOR IS NULL)',
' AND :P76_FECHA_INICIAL  ',
' IS NOT NULL',
' and (:P76_COD_VENDEDOR IS NOT NULL OR :P76_COD_SUPERVISOR IS NOT NULL or :P76_TIPO_CLIENTE IS NOT NULL)',
' )',
' order by 2'))
,p_ajax_items_to_submit=>'P76_FECHA_INICIAL,P76_FECHA_FINAL,P76_COD_VENDEDOR,P76_ESTADO,P76_TIPO_CLIENTE,P76_COD_SUPERVISOR'
,p_items_value_column_name=>'CANTIDAD_AGENDADO'
,p_items_max_value=>'CANTIDAD_CLIENTES'
,p_color=>'#0DD642'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_gauge_plot_area_color=>'#E5ED09'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(103256249594290622)
,p_plug_name=>'Llamadas'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(13229915498880295)
,p_region_id=>wwv_flow_imp.id(103256249594290622)
,p_chart_type=>'dial'
,p_width=>'250'
,p_height=>'250'
,p_animation_on_display=>'zoom'
,p_animation_on_data_change=>'slideToRight'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_text_type=>'percent'
,p_value_position=>'auto'
,p_value_format_type=>'percent'
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
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>90
,p_gauge_angle_extent=>360
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(13230418398880295)
,p_chart_id=>wwv_flow_imp.id(13229915498880295)
,p_seq=>10
,p_name=>'Llamadas'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'',
'sum(cantidaD_llamada)cantidad_agendado,count(*)cantidad_clientes  ',
'FROM ',
'(select COD_CLIENTE,',
'NOMBRE,',
'DIRECCION,',
'CODIGO_CIUDAD,',
'DESCRIPCION_CIUDAD,',
'CODIGO_DEPARTAMENTO,',
'DESCRIPCION_DEPARTAMENTO,',
'TELEFONO,',
'RUC,',
'ESTADO,',
'MOTIVO,',
'AGENTE_CREDITO,',
'AGENTE_COBRO,',
'COD_LISTA_PRECIO,',
'COD_CONDICION_VENTA,',
'LINEA_DE_CREDITO,',
'MONEDA,',
'COD_TIP_CLIENTE,',
'TIPO_CLIENTE,',
'FEC_ULTIMA_COMPRA,',
'FECHA_ULTIMA_VISITA,',
'LINEA_EJECUTADA,',
'DEUDA_VENCIDA,',
'DEUDA_TOTAL,',
'TIPO_IMPUESTO,',
'CREDITO_DISPONIBLE,',
'PEDIDOS_PENDIENTES,',
'',
'',
'  ',
'           ',
'CODIGO_VENDEDOR, NOMBRE_VENDEDOR,',
'sucursales, cod_persona,',
'SIN_VENTA_60_DIAS,',
'SIN_VENTA_30_DIAS,',
'(select count(*)',
'from ca_llamadas_salientes lla',
'where lla.cod_empresa=''1''',
'and lla.cod_cliente=car.COD_CLIENTE',
'AND lla.fec_movimiento  BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL',
'and lla.cod_vendedor=car.codigo_vendedor)cantidad_llamada,',
'nvl((select count(*)',
'from ca_llamadas_salientes lla',
'where lla.cod_empresa=''1''',
'and lla.cod_cliente=car.COD_CLIENTE',
'AND lla.fec_movimiento  BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL',
'and lla.cod_vendedor=car.codigo_vendedor),0) +5 CLIENTES_AGENDADOS,',
' ',
' 0 visita_mes,',
'',
'',
' 0  efectividad,(select count(*)',
'from CA_LLAMADAS_SALIENTES cas ',
'where cas.cod_empresa=''1''',
'and cas.Cod_Cliente=car.cod_cliente',
'and cas.Fec_Movimiento  BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL',
'and cas.Cod_Vendedor=car.Codigo_Vendedor',
')visitas_marcadas',
' from v_clienteS_CARTERA CAR',
' where  ',
' (',
' (select v.cod_vendedor',
' from cc_vendedores_clientes v where v.cod_empresa=''1''',
' and v.cod_cliente=car.cod_cliente',
' and v.cod_vendedor=:P76_COD_VENDEDOR',
' and v.cod_vendedor<>car.CODIGO_VENDEDOR',
' union all ',
' select car.codigo_vendedor from dual',
' where car.codigo_vendedor=:P76_COD_VENDEDOR ) = :P76_COD_VENDEDOR OR :P76_COD_VENDEDOR IS NULL)  ',
'and REGEXP_LIKE ( :P76_ESTADO,ESTADO)',
' and REGEXP_LIKE (:P76_TIPO_CLIENTE,TIPo_CLIENTE)',
' and (COD_SUPERVISOR = :P76_COD_SUPERVISOR OR :P76_COD_SUPERVISOR IS NULL)',
' AND :P76_FECHA_INICIAL  ',
' IS NOT NULL',
' and (:P76_COD_VENDEDOR IS NOT NULL OR :P76_COD_SUPERVISOR IS NOT NULL or :P76_TIPO_CLIENTE IS NOT NULL)',
' ) ',
' order by 2'))
,p_ajax_items_to_submit=>'P76_FECHA_INICIAL,P76_FECHA_FINAL,P76_COD_VENDEDOR,P76_ESTADO,P76_TIPO_CLIENTE,P76_COD_SUPERVISOR'
,p_items_value_column_name=>'CANTIDAD_AGENDADO'
,p_items_max_value=>'CANTIDAD_CLIENTES'
,p_color=>'#0DD642'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_gauge_plot_area_color=>'#E5ED09'
,p_threshold_display=>'onIndicator'
);
end;
/
begin
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(139761699970072496)
,p_plug_name=>'Filtro'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(141828382432898994)
,p_plug_name=>'Cartera de Clientes'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>70
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'',
'COD_CLIENTE,',
'NOMBRE,',
'VENTAS_FECHA_PERIODO,VENTAS_FECHA_PERIODO_ANT,',
'case when VENTAS_FECHA_PERIODO_ANT>0 then',
'VENTAS_FECHA_PERIODO *100/ VENTAS_FECHA_PERIODO_ANT',
'when VENTAS_FECHA_PERIODO_ANT=0 and VENTAS_FECHA_PERIODO=0 then',
'0',
'else 100 end venta_variacion,',
'DIRECCION,',
'CODIGO_CIUDAD,',
'DESCRIPCION_CIUDAD,',
'CODIGO_DEPARTAMENTO,',
'DESCRIPCION_DEPARTAMENTO,',
'TELEFONO,',
'RUC,',
'ESTADO,',
'MOTIVO,',
'AGENTE_CREDITO,',
'AGENTE_COBRO,',
'COD_LISTA_PRECIO,',
'COD_CONDICION_VENTA,',
'LINEA_DE_CREDITO,',
'MONEDA,',
'COD_TIP_CLIENTE,',
'TIPO_CLIENTE,',
'FEC_ULTIMA_COMPRA,',
'FECHA_ULTIMA_VISITA,',
'LINEA_EJECUTADA,',
'DEUDA_VENCIDA,',
'DEUDA_TOTAL,',
'TIPO_IMPUESTO,',
'CREDITO_DISPONIBLE,',
'PEDIDOS_PENDIENTES,',
'SIN_VENTA_60_DIAS,',
'SIN_VENTA_30_DIAS,',
'HOJA_RUTA_inventiva,efectividad,NOMBRE_VENDEDOR, round(cantidad_agendado *100 /visita_mes ,2)  cobertura,',
'visitas_marcadas, VISITA_MES OBJETIVO_VISITA, CANTIDAD_AGENDADO VISITA_AGENDADA,CODIGO_VENDEDOR, segmentacion,llamadas_realizadas,',
'null agendar_visita,',
'        null llamar ',
'FROM ',
'(select COD_CLIENTE,',
'NOMBRE,',
'DIRECCION,',
'CODIGO_CIUDAD,',
'DESCRIPCION_CIUDAD,',
'CODIGO_DEPARTAMENTO,',
'DESCRIPCION_DEPARTAMENTO,',
'TELEFONO,',
'segmentacion,',
'RUC,',
'ESTADO,',
'MOTIVO,',
'AGENTE_CREDITO,',
'AGENTE_COBRO,',
'COD_LISTA_PRECIO,',
'COD_CONDICION_VENTA,',
'LINEA_DE_CREDITO,',
'MONEDA,',
'COD_TIP_CLIENTE,',
'TIPO_CLIENTE,',
'FEC_ULTIMA_COMPRA,',
'FECHA_ULTIMA_VISITA,',
'LINEA_EJECUTADA,',
'DEUDA_VENCIDA,',
'DEUDA_TOTAL,',
'TIPO_IMPUESTO,',
'CREDITO_DISPONIBLE,',
'PEDIDOS_PENDIENTES,',
'',
'',
'NVL(',
'           (select sum(nvl(vd.monto_total,0)+NVL(VD.TOTAL_IVA,0)*',
'           CASE WHEN VC.TIP_COMPROBANTE=''NCR'' THEN -1 ELSE 1 END',
'           )',
'           from VT_COMPROBANTES_CABECERA vc, VT_COMPROBANTES_DETALLE vd',
'           where vc.cod_empresa=''1''',
'           and vc.cod_cliente=CAR.COD_CLIENTE',
'           and vc.cod_empresa=vd.cod_empresa',
'           AND VC.FEC_COMPROBANTE BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL',
'           and vc.tip_comprobante=vd.tip_comprobante',
'           and vc.ser_comprobante=vd.ser_comprobante',
'           and vc.nro_comprobante=vd.nro_comprobante',
'',
'           and vc.estado not in (''A'',''C'')),0)VENTAS_FECHA_PERIODO,',
'           NVL(',
'           (select sum(',
'           nvl(vd.monto_total,0)+NVL(VD.TOTAL_IVA,0)*CASE WHEN VC.TIP_COMPROBANTE=''NCR'' THEN -1 ELSE 1 END',
'',
'           )',
'           from VT_COMPROBANTES_CABECERA vc, VT_COMPROBANTES_DETALLE vd',
'           where vc.cod_empresa=''1''',
'           and vc.cod_cliente=CAR.cod_cliente',
'           and vc.cod_empresa=vd.cod_empresa',
'           AND VC.FEC_COMPROBANTE BETWEEN ADD_MONTHS(:P76_FECHA_INICIAL,-12) AND ADD_MONTHS(:P76_FECHA_FINAL,-12)',
'           and vc.tip_comprobante=vd.tip_comprobante',
'           and vc.ser_comprobante=vd.ser_comprobante',
'           and vc.nro_comprobante=vd.nro_comprobante',
'',
'           and NVL(vc.estado,''P'') not in (''A'')),0)VENTAS_FECHA_PERIODO_ANT,',
'           ',
'CODIGO_VENDEDOR, NOMBRE_VENDEDOR,',
'sucursales, cod_persona,',
'SIN_VENTA_60_DIAS,',
'SIN_VENTA_30_DIAS,',
'(select count(*)',
'from fv_hoja_ruta_vendedor hr',
'where hr.cod_empresa=''1''',
'and hr.cod_cliente=car.COD_CLIENTE',
'AND HR.FECHA  BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL',
'and hr.cod_vendedor=car.CODIGO_VENDEDOR)',
'',
'',
'||''/''||',
'  (select s.cant_visita_mes',
'   ',
'     from  cc_segmentacion_cliente s,',
'           cc_clientes cc',
'     where s.cod_empresa= ''1''',
'     and   s.cod_tip_cliente=cc.tip_cliente ',
'     and   s.cod_empresa=cc.cod_empresa',
'     and   cc.cod_cliente= car.cod_cliente',
'     and   nvl(s.vta_anual_min,0)<=venta_anio',
'     and    nvl(s.vta_anual_max,0)>=venta_anio)',
'',
'',
'',
'HOJA_RUTA_inventiva,',
'(select count(*)',
'from fv_hoja_ruta_vendedor hr',
'where hr.cod_empresa=''1''',
'and hr.cod_cliente=car.COD_CLIENTE',
'AND HR.FECHA  BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL',
'and hr.cod_vendedor=nvl(:P76_COD_VENDEDOR,car.CODIGO_VENDEDOR))cantidad_agendado,',
' ',
'  (select s.cant_visita_mes',
'   ',
'     from  cc_segmentacion_cliente s,',
'           cc_clientes cc',
'     where s.cod_empresa= ''1''',
'     and   s.cod_tip_cliente=cc.tip_cliente ',
'     and   s.cod_empresa=cc.cod_empresa',
'     and   cc.cod_cliente= car.cod_cliente',
'     and   nvl(s.vta_anual_min,0)<=venta_anio',
'     and    nvl(s.vta_anual_max,0)>=venta_anio) visita_mes,',
'',
'',
'',
' ',
'nvl((select sum(tot_gravadas)',
'from vt_comprobantes_cabecera vv',
'where vv.cod_empresa  = ''1''',
'and nvl(vv.estado,''P'')<>''A''',
'and vv.cod_cliente = car.COD_CLIENTE',
'and vv.cod_vendedor =nvl(:P76_COD_VENDEDOR,car.CODIGO_VENDEDOR)',
'',
' ',
'and vv.fec_comprobante between (select',
'(min(R.FECHA) -2 )',
'from  fv_hoja_ruta_vendedor r',
'where   r.cod_cliente=car.COD_CLIENTE',
'AND r.FECHA  BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL',
'and r.cod_vendedor=nvl(:P76_COD_VENDEDOR,car.CODIGO_VENDEDOR)) ',
'',
'',
' and  ',
' (select',
'(max(R.FECHA) +3)',
'from  fv_hoja_ruta_vendedor r',
'where   r.cod_cliente=car.COD_CLIENTE',
'AND r.FECHA  BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL',
'and r.cod_vendedor=nvl(:P76_COD_VENDEDOR,car.CODIGO_VENDEDOR)) ',
'),0) efectividad,(select count(*)',
'from cc_visit_cast cas ',
'where cas.cod_empresa=''1''',
'and cas.codigo_cliente=car.cod_cliente',
'and cas.fecha_visita  BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL',
'and cas.nombre_usuario=car.codigo_usuario_vendedor',
')visitas_marcadas,',
'(select count(*)',
'from CA_LLAMADAS_SALIENTES cas ',
'where cas.cod_empresa=''1''',
'and cas.Cod_Cliente=car.cod_cliente',
'and cas.Fec_Movimiento  BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL',
'and cas.Cod_Vendedor=car.Codigo_Vendedor',
')llamadas_realizadas',
'',
' from v_clienteS_CARTERA CAR',
' where (',
' (select v.cod_vendedor',
' from cc_vendedores_clientes v where v.cod_empresa=:P_COD_EMPRESA',
' and v.cod_cliente=car.cod_cliente',
' and v.cod_vendedor=:P76_COD_VENDEDOR',
' and v.cod_vendedor<>car.CODIGO_VENDEDOR',
' union all ',
' select car.codigo_vendedor from dual',
' where car.codigo_vendedor=:P76_COD_VENDEDOR ) = :P76_COD_VENDEDOR OR :P76_COD_VENDEDOR IS NULL)',
' AND CAR.COD_EMPRESA=:P_COD_EMPRESA',
' /*AND (ESTADO = :P76_ESTADO OR :P76_ESTADO IS NULL)*/',
'and REGEXP_LIKE ( :P76_ESTADO,ESTADO)',
' /*AND (COD_TIP_CLIENTE = :P76_TIPO_CLIENTE OR :P76_TIPO_CLIENTE IS NULL)*/',
' and REGEXP_LIKE (:P76_TIPO_CLIENTE,TIPo_CLIENTE)',
' and (COD_SUPERVISOR = :P76_COD_SUPERVISOR OR :P76_COD_SUPERVISOR IS NULL)',
' AND :P76_FECHA_INICIAL  ',
' IS NOT NULL',
' and (:P76_COD_VENDEDOR IS NOT NULL OR :P76_COD_SUPERVISOR IS NOT NULL or :P76_TIPO_CLIENTE IS NOT NULL)',
' )',
' order by 2'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P76_COD_VENDEDOR,P76_COD_SUPERVISOR,P76_FECHA_INICIAL,P76_FECHA_FINAL,P76_ESTADO,P76_TIPO_CLIENTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Cartera de Clientes'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(141828546229898994)
,p_name=>'Cartera de Clientes'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'INV'
,p_internal_uid=>141828546229898994
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13236880104880300)
,p_db_column_name=>'COD_CLIENTE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Cod Cliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13237232956880300)
,p_db_column_name=>'NOMBRE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13247669123880308)
,p_db_column_name=>'VENTAS_FECHA_PERIODO'
,p_display_order=>3
,p_column_identifier=>'AB'
,p_column_label=>'Ventas Periodo'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13248052463880308)
,p_db_column_name=>'VENTAS_FECHA_PERIODO_ANT'
,p_display_order=>4
,p_column_identifier=>'AC'
,p_column_label=>unistr('Ventas A\00F1o Anterior')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13238078110880301)
,p_db_column_name=>'CODIGO_CIUDAD'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Codigo Ciudad'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13238425460880301)
,p_db_column_name=>'DESCRIPCION_CIUDAD'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Ciudad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13238815933880302)
,p_db_column_name=>'CODIGO_DEPARTAMENTO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Codigo Departamento'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13239246104880302)
,p_db_column_name=>'DESCRIPCION_DEPARTAMENTO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Descripcion Departamento'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13239606453880302)
,p_db_column_name=>'TELEFONO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Telefono'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13240071756880303)
,p_db_column_name=>'RUC'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Ruc'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13241266409880303)
,p_db_column_name=>'AGENTE_CREDITO'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Agente Credito'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13241630873880304)
,p_db_column_name=>'AGENTE_COBRO'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Agente Cobro'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13242049257880304)
,p_db_column_name=>'COD_LISTA_PRECIO'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Cod Lista Precio'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13242431169880304)
,p_db_column_name=>'COD_CONDICION_VENTA'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Cod Condicion Venta'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13242812209880305)
,p_db_column_name=>'LINEA_DE_CREDITO'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Linea De Credito'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13243236834880305)
,p_db_column_name=>'MONEDA'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13243622182880305)
,p_db_column_name=>'COD_TIP_CLIENTE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Cod Tip Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13244036585880305)
,p_db_column_name=>'TIPO_CLIENTE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Tipo Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13244450418880306)
,p_db_column_name=>'FEC_ULTIMA_COMPRA'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Fec Ultima Compra'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MM-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13244886626880306)
,p_db_column_name=>'FECHA_ULTIMA_VISITA'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Fecha Ultima Visita'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13245678396880307)
,p_db_column_name=>'DEUDA_VENCIDA'
,p_display_order=>31
,p_column_identifier=>'W'
,p_column_label=>'Deuda Vencida'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13237650062880301)
,p_db_column_name=>'DIRECCION'
,p_display_order=>39
,p_column_identifier=>'C'
,p_column_label=>'Direccion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13245292337880306)
,p_db_column_name=>'LINEA_EJECUTADA'
,p_display_order=>41
,p_column_identifier=>'V'
,p_column_label=>'Linea Ejecutada'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13246084034880307)
,p_db_column_name=>'DEUDA_TOTAL'
,p_display_order=>51
,p_column_identifier=>'X'
,p_column_label=>'Deuda Total'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13246445554880307)
,p_db_column_name=>'TIPO_IMPUESTO'
,p_display_order=>61
,p_column_identifier=>'Y'
,p_column_label=>'Tipo Impuesto'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13246888388880308)
,p_db_column_name=>'CREDITO_DISPONIBLE'
,p_display_order=>71
,p_column_identifier=>'Z'
,p_column_label=>'Credito Disponible'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13247205981880308)
,p_db_column_name=>'PEDIDOS_PENDIENTES'
,p_display_order=>81
,p_column_identifier=>'AA'
,p_column_label=>'Pedidos Pendientes'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13240408188880303)
,p_db_column_name=>'ESTADO'
,p_display_order=>81
,p_column_identifier=>'J'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13240858295880303)
,p_db_column_name=>'MOTIVO'
,p_display_order=>82
,p_column_identifier=>'K'
,p_column_label=>'Motivo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13248449006880309)
,p_db_column_name=>'SIN_VENTA_60_DIAS'
,p_display_order=>91
,p_column_identifier=>'AD'
,p_column_label=>'Sin Venta 60 Dias'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13248854704880309)
,p_db_column_name=>'EFECTIVIDAD'
,p_display_order=>111
,p_column_identifier=>'AF'
,p_column_label=>'Efectividad'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13249253257880309)
,p_db_column_name=>'VENTA_VARIACION'
,p_display_order=>121
,p_column_identifier=>'AG'
,p_column_label=>'Crec/Decre(%)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13249626299880310)
,p_db_column_name=>'NOMBRE_VENDEDOR'
,p_display_order=>131
,p_column_identifier=>'AH'
,p_column_label=>'Nombre Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13250043442880310)
,p_db_column_name=>'HOJA_RUTA_INVENTIVA'
,p_display_order=>141
,p_column_identifier=>'AI'
,p_column_label=>'Hoja Ruta Inventiva'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13250434412880310)
,p_db_column_name=>'SIN_VENTA_30_DIAS'
,p_display_order=>151
,p_column_identifier=>'AJ'
,p_column_label=>'Sin Venta 30 Dias'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13234822635880299)
,p_db_column_name=>'COBERTURA'
,p_display_order=>161
,p_column_identifier=>'AK'
,p_column_label=>'Cobertura'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13235265100880299)
,p_db_column_name=>'VISITAS_MARCADAS'
,p_display_order=>171
,p_column_identifier=>'AL'
,p_column_label=>'Visitas Marcadas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13235650482880299)
,p_db_column_name=>'OBJETIVO_VISITA'
,p_display_order=>181
,p_column_identifier=>'AM'
,p_column_label=>'Objetivo Visita'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13236006112880300)
,p_db_column_name=>'VISITA_AGENDADA'
,p_display_order=>191
,p_column_identifier=>'AN'
,p_column_label=>'Visita Agendada'
,p_column_link=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.:CR,48:P48_COD_CLIENTE,P48_COD_VENDEDOR:#COD_CLIENTE#,#CODIGO_VENDEDOR#'
,p_column_linktext=>'#VISITA_AGENDADA#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13236451937880300)
,p_db_column_name=>'CODIGO_VENDEDOR'
,p_display_order=>201
,p_column_identifier=>'AO'
,p_column_label=>'Codigo Vendedor'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(138649594202528730)
,p_db_column_name=>'SEGMENTACION'
,p_display_order=>211
,p_column_identifier=>'AP'
,p_column_label=>'Segmentacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(175479537340656533)
,p_db_column_name=>'AGENDAR_VISITA'
,p_display_order=>221
,p_column_identifier=>'AQ'
,p_column_label=>'Agendar Visita'
,p_column_link=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.:48:P48_COD_CLIENTE,P48_COD_VENDEDOR:#COD_CLIENTE#,&P76_COD_VENDEDOR.'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-calendar-o"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(175479606289656534)
,p_db_column_name=>'LLAMAR'
,p_display_order=>231
,p_column_identifier=>'AR'
,p_column_label=>'Llamar'
,p_column_link=>'f?p=&APP_ID.:554:&SESSION.::&DEBUG.:554:P554_COD_CLIENTE,P554_COD_VENDEDOR:#COD_CLIENTE#,#CODIGO_VENDEDOR#'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-phone"></span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(175480489507656542)
,p_db_column_name=>'LLAMADAS_REALIZADAS'
,p_display_order=>241
,p_column_identifier=>'AS'
,p_column_label=>'Llamadas Realizadas'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(142085474834584151)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'784973'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_CLIENTE:NOMBRE:DESCRIPCION_CIUDAD:OBJETIVO_VISITA:VISITA_AGENDADA:VISITAS_MARCADAS:FEC_ULTIMA_COMPRA:VENTA_VARIACION:CODIGO_VENDEDOR:SEGMENTACION:LLAMAR:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(1012235288903010728)
,p_report_id=>wwv_flow_imp.id(142085474834584151)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'VENTA_VARIACION'
,p_operator=>'>='
,p_expr=>'1'
,p_condition_sql=>' (case when ("VENTA_VARIACION" >= to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# >= #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#0CE80F'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(142075915412573573)
,p_plug_name=>'Resumen Vendedor'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(175479788485656535)
,p_plug_name=>'Clientes'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(95540255533455548)
,p_plug_name=>'Ubicacion de Clientes'
,p_parent_plug_id=>wwv_flow_imp.id(175479788485656535)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.JK64.REPORT_GOOGLE_MAP_R1'
,p_ajax_items_to_submit=>'P76_COD_VENDEDOR,P76_COD_SUPERVISOR,P76_FECHA_INICIAL,P76_FECHA_FINAL,P76_ESTADO,P76_TIPO_CLIENTE,P76_FECHA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'400'
,p_attribute_02=>'PINS'
,p_attribute_03=>'13'
,p_attribute_04=>'PAN_ON_CLICK:DRAGGABLE:PAN_ALLOWED:ZOOM_ALLOWED'
,p_attribute_12=>'N'
,p_attribute_21=>'Y'
,p_attribute_22=>'ROADMAP'
,p_attribute_24=>'Y'
,p_attribute_25=>'auto'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(95540352172455549)
,p_name=>'Visitas Por Fecha'
,p_parent_plug_id=>wwv_flow_imp.id(175479788485656535)
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
' select  ',
'  ',
'r.fecha, count(*) cantidad',
'from  fv_hoja_ruta_vendedor r, CC_CLIENTES C, PERSONAS P, FV_VENDEDORES FV, USUARIOS USU, v_sucursal_cliente_apex vsuc',
'where   R.cod_empresa=''1''',
'AND r.FECHA  BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL',
'and r.cod_vendedor = :P76_COD_VENDEDOR ',
'AND C.COD_EMPRESA=R.COD_EMPRESA',
'AND C.COD_CLIENTE=R.COD_CLIENTE',
'AND C.COD_PERSONA=P.COD_PERSONA',
'AND FV.COD_EMPRESA=R.COD_EMPRESA',
'AND FV.COD_VENDEDOR=R.COD_VENDEDOR',
'AND USU.COD_EMPRESA=FV.COD_EMPRESA',
'AND USU.COD_PERSONA=FV.COD_PERSONA',
'and vsuc.cod_cliente=r.cod_cliente',
'and vsuc.cod_SUCURSAL=nvl(r.COD_SUCURSAL_DISTRIBUIDOR,''1'')',
'group by r.fecha',
'order by fecha',
' '))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P76_COD_VENDEDOR,P76_COD_SUPERVISOR,P76_FECHA_INICIAL,P76_FECHA_FINAL,P76_ESTADO,P76_TIPO_CLIENTE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>60
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13222372072880287)
,p_query_column_id=>1
,p_column_alias=>'FECHA'
,p_column_display_sequence=>10
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13222742041880287)
,p_query_column_id=>2
,p_column_alias=>'CANTIDAD'
,p_column_display_sequence=>20
,p_column_heading=>'Cantidad'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.::P48_FECHA:#FECHA#'
,p_column_linktext=>'#CANTIDAD#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(95540612167455552)
,p_name=>'Clientes'
,p_parent_plug_id=>wwv_flow_imp.id(175479788485656535)
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
' select  ',
'  ',
'r.fecha, r.cod_cliente, r.nom_cliente, vsuc.direccion',
'from  fv_hoja_ruta_vendedor r, CC_CLIENTES C, PERSONAS P, FV_VENDEDORES FV, USUARIOS USU, v_sucursal_cliente_apex vsuc',
'where   R.cod_empresa=''1''',
'AND r.FECHA  BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL',
'and r.cod_vendedor = :P76_COD_VENDEDOR ',
'and r.fecha= :P76_FECHA',
'AND C.COD_EMPRESA=R.COD_EMPRESA',
'AND C.COD_CLIENTE=R.COD_CLIENTE',
'AND C.COD_PERSONA=P.COD_PERSONA',
'AND FV.COD_EMPRESA=R.COD_EMPRESA',
'AND FV.COD_VENDEDOR=R.COD_VENDEDOR',
'AND USU.COD_EMPRESA=FV.COD_EMPRESA',
'AND USU.COD_PERSONA=FV.COD_PERSONA',
'and vsuc.cod_cliente=r.cod_cliente',
'and vsuc.cod_SUCURSAL=nvl(r.COD_SUCURSAL_DISTRIBUIDOR,''1'')',
'group by r.fecha, r.cod_cliente, r.nom_cliente, vsuc.direccion',
'order by fecha',
' '))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P76_FECHA,P76_FECHA_INICIAL,P76_FECHA_FINAL,P76_COD_VENDEDOR'
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
 p_id=>wwv_flow_imp.id(13224240412880288)
,p_query_column_id=>1
,p_column_alias=>'FECHA'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13224632687880288)
,p_query_column_id=>2
,p_column_alias=>'COD_CLIENTE'
,p_column_display_sequence=>20
,p_column_heading=>'Cod Cliente'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13225023149880289)
,p_query_column_id=>3
,p_column_alias=>'NOM_CLIENTE'
,p_column_display_sequence=>30
,p_column_heading=>'Nom Cliente'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(13223809370880288)
,p_query_column_id=>4
,p_column_alias=>'DIRECCION'
,p_column_display_sequence=>40
,p_column_heading=>'Direccion'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13231398020880296)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(139761699970072496)
,p_button_name=>'Ejecutar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Actualizar'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-13-text'
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13220164662880283)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(95540064869455546)
,p_button_name=>'Finalizar_visita'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Fin Visita Pendiente'
,p_button_position=>'COPY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13220591385880284)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(95540064869455546)
,p_button_name=>'Editar_Visitas'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Editar Visitas'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(13264042288880318)
,p_branch_name=>'if_78'
,p_branch_action=>'f?p=&APP_ID.:78:&SESSION.::&DEBUG.:78:P78_ID_VISITA,P78_NRO_MOVIMIENTO:&P76_ID_VISITA.,&P76_ID_VISITA.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(13220164662880283)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(13264456809880318)
,p_branch_name=>'if_79'
,p_branch_action=>'f?p=&APP_ID.:79:&SESSION.::&DEBUG.:CR,79:P79_COD_VENDEDOR,P79_FECHA,P79_FECHA_HASTA:&P86_COD_VENDEDOR.,&P86_FECHA_INICIAL.,&P86_FECHA_FINAL.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(13220591385880284)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13220979081880284)
,p_name=>'P76_OBSERVACION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(95540064869455546)
,p_prompt=>'Observacion'
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
end;
/
begin
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13221367206880285)
,p_name=>'P76_ID_VISITA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(95540064869455546)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13223124819880287)
,p_name=>'P76_FECHA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(95540352172455549)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13231746182880296)
,p_name=>'P76_COD_VENDEDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(139761699970072496)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  P.NOMBRE||''(''||COD_VENDEDOR||'')'' NOMBRE,F.COD_VENDEDOR FROM FV_VENDEDORES F, PERSONAS P',
'WHERE F.COD_EMPRESA=:P_COD_EMPRESA',
'AND F.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I'''))
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
 p_id=>wwv_flow_imp.id(13232155358880297)
,p_name=>'P76_COD_SUPERVISOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(139761699970072496)
,p_prompt=>'Cod Supervisor'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_SUPERVISORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  P.NOMBRE,Fc.COD_VENDEDOR FROM FV_VENDEDORES F, PERSONAS P, fv_vendedores fc',
'WHERE F.COD_EMPRESA=:p_cod_empresa',
'and f.cod_empresa=fc.cod_empresa',
'and f.cod_supervisor=fc.cod_vendedor',
'AND Fc.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I''',
'group by  P.NOMBRE,Fc.COD_VENDEDOR'))
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
 p_id=>wwv_flow_imp.id(13232553599880297)
,p_name=>'P76_TIPO_CLIENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(139761699970072496)
,p_item_default=>'MAYORISTA A- MAYORISTA B'
,p_prompt=>'Tipo Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion d, descripcion c',
'from cc_tipo_cliente',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'Y'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_11=>'-'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13232942912880297)
,p_name=>'P76_ESTADO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(139761699970072496)
,p_item_default=>'ACTIVO'
,p_prompt=>'Estado Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''ACTIVO'' d, ''ACTIVO'' C FROM DUAL UNION ALL',
'select ''BLOQUEADO'' d, ''BLOQUEADO'' C FROM DUAL UNION ALL',
'select ''CREDITO BLOQUEADO'' d, ''CREDITO BLOQUEADO'' C FROM DUAL',
'union all',
'select ''INACTIVO'' d, ''INACTIVO'' C FROM DUAL',
'',
''))
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
,p_attribute_11=>'-'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13233383784880297)
,p_name=>'P76_FECHA_INICIAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(139761699970072496)
,p_prompt=>'Fecha Inicial'
,p_placeholder=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'onfocusout="this.value= isValidDate(this.value);" onkeyup = "setDateFormat(this);"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13233737380880297)
,p_name=>'P76_FECHA_FINAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(139761699970072496)
,p_prompt=>'Fecha Final'
,p_placeholder=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'onfocusout="this.value= isValidDate(this.value);" onkeyup = "setDateFormat(this);"'
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
 p_id=>wwv_flow_imp.id(13234182198880298)
,p_name=>'P76_PERIODO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(139761699970072496)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13251859124880312)
,p_name=>'P76_META'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(142075915412573573)
,p_prompt=>'Objetivo Periodo Comision'
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
 p_id=>wwv_flow_imp.id(13252275928880312)
,p_name=>'P76_MONTO_VENTA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(142075915412573573)
,p_prompt=>'Monto Venta'
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
 p_id=>wwv_flow_imp.id(13252641069880312)
,p_name=>'P76_META_PORCENTAJE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(142075915412573573)
,p_prompt=>'% Logrado'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13253026584880312)
,p_name=>'P76_META_MES'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(142075915412573573)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13253423117880313)
,p_name=>'P76_MONTO_VENTA_MES'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(142075915412573573)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13253839080880313)
,p_name=>'P76_META_PORCENTAJE_MES'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(142075915412573573)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13254277216880313)
,p_name=>'actualiza_reporte'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13231398020880296)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13254769296880314)
,p_event_id=>wwv_flow_imp.id(13254277216880313)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141828382432898994)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13255228247880314)
,p_event_id=>wwv_flow_imp.id(13254277216880313)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(95541223820455558)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13255778249880314)
,p_event_id=>wwv_flow_imp.id(13254277216880313)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(95541841962455564)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13256291563880314)
,p_event_id=>wwv_flow_imp.id(13254277216880313)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(95540064869455546)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13256741058880314)
,p_event_id=>wwv_flow_imp.id(13254277216880313)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(103255820296290618)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(175480387263656541)
,p_event_id=>wwv_flow_imp.id(13254277216880313)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(103256249594290622)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13257221838880315)
,p_event_id=>wwv_flow_imp.id(13254277216880313)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(95540352172455549)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13257705433880315)
,p_event_id=>wwv_flow_imp.id(13254277216880313)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  select  MAX(NUM_PERIODO)',
'   INTO  :P76_PERIODO',
'   from FV_PERIODOS_COMISION a',
'where a.cod_empresa=''1''',
'AND FEC_INICIAL>=:P76_FECHA_INICIAL',
'AND FEC_FINAL<=:P76_FECHA_FINAL;',
' ',
'EXCEPTION',
'WHEN OTHERS THEN',
'    NULL;',
'  END;',
'declare ',
'v_meta number;',
'v_meta_mes number;',
'v_MONTO_VENTA number;',
'v_monto_venta_mes number;',
'begin',
'BEGIN ',
'select to_char(SUM(mt.monto),''999G999G999G999G999G999G990'')monto, sum(mt.monto)',
'INTO :P76_META, v_meta',
'from fv_metas_vend mt, FV_VENDEDORES FV',
'where mt.cod_empresa=''1''',
'AND MT.COD_EMPRESA=FV.COD_EMPRESA',
'AND MT.COD_VENDEDOR=FV.COD_VENDEDOR',
'and (mt.cod_vendedor =  :P76_COD_VENDEDOR OR :P76_COD_VENDEDOR IS NULL)',
'AND (FV.COD_SUPERVISOR= :P76_COD_SUPERVISOR OR :P76_COD_SUPERVISOR IS NULL)',
'and mt.fec_inicio =:P76_FECHA_INICIAL',
'AND MT.FEC_FIN = :P76_FECHA_FINAL;',
'EXCEPTION',
'WHEN OTHERS THEN ',
':P76_META:=0;',
'END;',
'',
'',
'--------------------meta mes---------',
'BEGIN ',
'select to_char(SUM(mt.proyeccion),''999G999G999G999G999G999G990'')monto, sum(mt.proyeccion)',
'INTO :P76_META_MES, v_meta_mes',
'from FV_PROYECCIONES_UN mt, FV_VENDEDORES FV',
'where mt.cod_empresa=''1''',
'AND MT.COD_EMPRESA=FV.COD_EMPRESA',
'AND MT.COD_VENDEDOR=FV.COD_VENDEDOR',
'and (mt.cod_vendedor =  :P76_COD_VENDEDOR OR :P76_COD_VENDEDOR IS NULL)',
'AND (FV.COD_SUPERVISOR= :P76_COD_SUPERVISOR OR :P76_COD_SUPERVISOR IS NULL)',
'/*and mt.mes =to_char(:P76_FECHA_FINAL,''MM'')',
'AND MT.ANIO = TO_CHAR(:P76_FECHA_FINAL,''RRRR'')*/',
'AND LAST_DAY(TO_DATE(''01/''||MT.MES||''/''||MT.ANhO,''DD/MM/YYYY''))=LAST_DAY(:P76_FECHA_FINAL);',
'EXCEPTION',
'WHEN OTHERS THEN ',
':P76_META_MES:=0;',
'END;',
'',
'',
'BEGIN',
' select  to_char(sum(monto),''999G999G999G999G990'')monto, sum(monto)',
'INTO :P76_MONTO_VENTA, v_MONTO_VENTA',
'',
'from V_VENTAS',
'WHERE (COD_VENDEDOR= :P76_COD_VENDEDOR OR :P76_COD_VENDEDOR IS NULL)',
'AND (FEC_FACTURA BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL)',
'      AND (COD_SUPERVISOR= :P76_COD_SUPERVISOR OR :P76_COD_SUPERVISOR IS NULL);',
' ',
'',
'EXCEPTION',
'WHEN OTHERS THEN',
':P76_MONTO_VENTA:=0;',
'v_MONTO_VENTA:=0;',
'END;',
'',
'',
'BEGIN',
' select  to_char(sum(monto),''999G999G999G999G990'')monto, sum(monto)',
'INTO :P76_MONTO_VENTA_MES, v_MONTO_VENTA_mes',
'',
'from V_VENTAS',
'WHERE (COD_VENDEDOR= :P76_COD_VENDEDOR OR :P76_COD_VENDEDOR IS NULL)',
'AND (FEC_FACTURA BETWEEN last_day(add_months(:P76_FECHA_FINAL,-1))+1 AND last_day(:P76_FECHA_FINAL))',
'      AND (COD_SUPERVISOR= :P76_COD_SUPERVISOR OR :P76_COD_SUPERVISOR IS NULL);',
' ',
'',
'EXCEPTION',
'WHEN OTHERS THEN',
':P76_MONTO_VENTA_MES:=0;',
'v_MONTO_VENTA_mes:=0;',
'END;',
'',
'if v_meta>0 then',
':P76_META_PORCENTAJE:=round(v_MONTO_VENTA/v_META*100,2);',
'end if;',
'if v_meta_mes>0 then',
':P76_META_PORCENTAJE_mes:=round(v_MONTO_VENTA_mes/v_META_mes*100,2);',
'end if;',
'end;'))
,p_attribute_02=>'P76_COD_SUPERVISOR,P76_COD_VENDEDOR,P76_FECHA_INICIAL,P76_FECHA_FINAL'
,p_attribute_03=>'P76_META,P76_PERIODO,P76_MONTO_VENTA,P76_META_PORCENTAJE,P76_MONTO_VENTA_MES,P76_META_MES,P76_META_PORCENTAJE_MES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13258138995880315)
,p_name=>'da_global'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13258627434880315)
,p_event_id=>wwv_flow_imp.id(13258138995880315)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'BEGIN',
'  select MAX(FEC_INICIAL), MAX(FEC_FINAL) , MAX(NUM_PERIODO)',
'   INTO :P76_FECHA_INICIAL ,:P76_FECHA_FINAL, :P76_PERIODO',
'   from FV_PERIODOS_COMISION a',
'where a.cod_empresa=''1'';',
' ',
'EXCEPTION',
'WHEN OTHERS THEN',
'    :P76_FECHA_INICIAL:=LAST_DAY(ADD_MONTHS(SYSDATE,-1))+1;',
'    :P76_FECHA_FINAL:=TRUNC(SYSDATE);',
'  END;',
'  if :P_COD_VENDEDOR IS NOT NULL THEN',
'    :P76_COD_VENDEDOR := NVL(:P_COD_VENDEDOR,''26''); ',
'',
'    END IF;',
'    ',
'  :P76_ESTADO:=''ACTIVO- BLOQUEADO- CREDITO BLOQUEADO'';',
' ',
'   ',
'  ',
'  END;'))
,p_attribute_02=>'P_COD_VENDEDOR'
,p_attribute_03=>'P76_COD_VENDEDOR,P76_FECHA_INICIAL,P76_FECHA_FINAL,P76_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13259125109880316)
,p_event_id=>wwv_flow_imp.id(13258138995880315)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  select  MAX(NUM_PERIODO)',
'   INTO  :P76_PERIODO',
'   from FV_PERIODOS_COMISION a',
'where a.cod_empresa=''1''',
'AND FEC_INICIAL>=:P76_FECHA_INICIAL',
'AND FEC_FINAL<=:P76_FECHA_FINAL;',
' ',
'EXCEPTION',
'WHEN OTHERS THEN',
'    NULL;',
'  END;',
'declare ',
'v_meta number;',
'v_meta_mes number;',
'v_MONTO_VENTA number;',
'v_monto_venta_mes number;',
'begin',
'BEGIN ',
'select to_char(SUM(mt.monto),''999G999G999G999G999G999G990'')monto, sum(mt.monto)',
'INTO :P76_META, v_meta',
'from fv_metas_vend mt, FV_VENDEDORES FV',
'where mt.cod_empresa=''1''',
'AND MT.COD_EMPRESA=FV.COD_EMPRESA',
'AND MT.COD_VENDEDOR=FV.COD_VENDEDOR',
'and (mt.cod_vendedor =  :P76_COD_VENDEDOR OR :P76_COD_VENDEDOR IS NULL)',
'AND (FV.COD_SUPERVISOR= :P76_COD_SUPERVISOR OR :P76_COD_SUPERVISOR IS NULL)',
'and mt.fec_inicio =:P76_FECHA_INICIAL',
'AND MT.FEC_FIN = :P76_FECHA_FINAL;',
'EXCEPTION',
'WHEN OTHERS THEN ',
':P76_META:=0;',
'END;',
'',
'',
'--------------------meta mes---------',
'BEGIN ',
'select to_char(SUM(mt.proyeccion),''999G999G999G999G999G999G990'')monto, sum(mt.proyeccion)',
'INTO :P76_META_MES, v_meta_mes',
'from FV_PROYECCIONES_UN mt, FV_VENDEDORES FV',
'where mt.cod_empresa=''1''',
'AND MT.COD_EMPRESA=FV.COD_EMPRESA',
'AND MT.COD_VENDEDOR=FV.COD_VENDEDOR',
'and (mt.cod_vendedor =  :P76_COD_VENDEDOR OR :P76_COD_VENDEDOR IS NULL)',
'AND (FV.COD_SUPERVISOR= :P76_COD_SUPERVISOR OR :P76_COD_SUPERVISOR IS NULL)',
'/*and mt.mes =to_char(:P76_FECHA_FINAL,''MM'')',
'AND MT.ANIO = TO_CHAR(:P76_FECHA_FINAL,''RRRR'')*/',
'AND LAST_DAY(TO_DATE(''01/''||MT.MES||''/''||MT.ANhO,''DD/MM/YYYY''))=LAST_DAY(:P76_FECHA_FINAL);',
'EXCEPTION',
'WHEN OTHERS THEN ',
':P76_META_MES:=0;',
'END;',
'',
'',
'BEGIN',
' select  to_char(sum(monto),''999G999G999G999G990'')monto, sum(monto)',
'INTO :P76_MONTO_VENTA, v_MONTO_VENTA',
'',
'from V_VENTAS',
'WHERE (COD_VENDEDOR= :P76_COD_VENDEDOR OR :P76_COD_VENDEDOR IS NULL)',
'AND (FEC_FACTURA BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL)',
'      AND (COD_SUPERVISOR= :P76_COD_SUPERVISOR OR :P76_COD_SUPERVISOR IS NULL);',
' ',
'',
'EXCEPTION',
'WHEN OTHERS THEN',
':P76_MONTO_VENTA:=0;',
'v_MONTO_VENTA:=0;',
'END;',
'',
'',
'BEGIN',
' select  to_char(sum(monto),''999G999G999G999G990'')monto, sum(monto)',
'INTO :P76_MONTO_VENTA_MES, v_MONTO_VENTA_mes',
'',
'from V_VENTAS',
'WHERE (COD_VENDEDOR= :P76_COD_VENDEDOR OR :P76_COD_VENDEDOR IS NULL)',
'AND (FEC_FACTURA BETWEEN last_day(add_months(:P76_FECHA_FINAL,-1))+1 AND last_day(:P76_FECHA_FINAL))',
'      AND (COD_SUPERVISOR= :P76_COD_SUPERVISOR OR :P76_COD_SUPERVISOR IS NULL);',
' ',
'',
'EXCEPTION',
'WHEN OTHERS THEN',
':P76_MONTO_VENTA_MES:=0;',
'v_MONTO_VENTA_mes:=0;',
'END;',
'',
'if v_meta>0 then',
':P76_META_PORCENTAJE:=round(v_MONTO_VENTA/v_META*100,2);',
'end if;',
'if v_meta_mes>0 then',
':P76_META_PORCENTAJE_mes:=round(v_MONTO_VENTA_mes/v_META_mes*100,2);',
'end if;',
'end;'))
,p_attribute_02=>'P76_COD_SUPERVISOR,P76_COD_VENDEDOR,P76_FECHA_INICIAL,P76_FECHA_FINAL'
,p_attribute_03=>'P76_META,P76_PERIODO,P76_MONTO_VENTA,P76_META_PORCENTAJE,P76_MONTO_VENTA_MES,P76_META_MES,P76_META_PORCENTAJE_MES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13259613736880316)
,p_event_id=>wwv_flow_imp.id(13258138995880315)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'begin',
'  select id, ''Visita Abierta NGO: ''||cc.cod_cliente||''-''||p.nombre||'' (ID VISITA:''||ID||'')''',
'    into :P76_ID_VISITA, :P76_OBSERVACION',
'  from cc_visit_cast v, cc_clientes cc, personas  p',
'  where v.cod_empresa=''1''',
'  and fecha_fin_visita is null',
'  and codigo_usuario = :P_COD_CUSTODIO',
'  and cc.cod_empresa=v.cod_empresa',
'  and cc.cod_cliente=v.codigo_cliente',
'  and cc.cod_persona=p.cod_persona;',
'  exception',
'  when others then',
'    :P76_ID_VISITA:= null;',
'    :p76_observacion:=null;',
'  end;',
'if  :P76_ID_VISITA is null then ',
'begin',
'  select id, ''Visita Abierta NGO: ''||cc.cod_cliente||''-''||p.nombre||'' (ID VISITA:''||ID||'')''',
'    into :P76_ID_VISITA, :P76_OBSERVACION',
'  from cc_visit_cast v , cc_clientes cc, personas  p',
'  where v.cod_empresa=''1''',
'  and fecha_fin_visita is null',
'  and nombre_usuario = :P_COD_USUARIO ',
'   and cc.cod_empresa=v.cod_empresa',
'  and cc.cod_cliente=v.codigo_cliente',
'  and cc.cod_persona=p.cod_persona;',
'  exception',
'  when others then',
'    :P76_ID_VISITA:= null;',
'    :p76_observacion:=null;',
'  end;',
'end if;',
'  end;'))
,p_attribute_02=>'P_COD_CUSTODIO,P_COD_USUARIO'
,p_attribute_03=>'P76_OBSERVACION,P76_ID_VISITA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1006898118551870311)
,p_name=>'da_vendedor'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_COD_VENDEDOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1006898324343870313)
,p_event_id=>wwv_flow_imp.id(1006898118551870311)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  select  MAX(NUM_PERIODO)',
'   INTO  :P76_PERIODO',
'   from FV_PERIODOS_COMISION a',
'where a.cod_empresa=''1''',
'AND FEC_INICIAL>=:P76_FECHA_INICIAL',
'AND FEC_FINAL<=:P76_FECHA_FINAL;',
' ',
'EXCEPTION',
'WHEN OTHERS THEN',
'    NULL;',
'  END;',
'declare ',
'v_meta number;',
'v_meta_mes number;',
'v_MONTO_VENTA number;',
'v_monto_venta_mes number;',
'begin',
'BEGIN ',
'select to_char(SUM(mt.monto),''999G999G999G999G999G999G990'')monto, sum(mt.monto)',
'INTO :P76_META, v_meta',
'from fv_metas_vend mt, FV_VENDEDORES FV',
'where mt.cod_empresa=''1''',
'AND MT.COD_EMPRESA=FV.COD_EMPRESA',
'AND MT.COD_VENDEDOR=FV.COD_VENDEDOR',
'and (mt.cod_vendedor =  :P76_COD_VENDEDOR OR :P76_COD_VENDEDOR IS NULL)',
'AND (FV.COD_SUPERVISOR= :P76_COD_SUPERVISOR OR :P76_COD_SUPERVISOR IS NULL)',
'and mt.fec_inicio =:P76_FECHA_INICIAL',
'AND MT.FEC_FIN = :P76_FECHA_FINAL;',
'EXCEPTION',
'WHEN OTHERS THEN ',
':P76_META:=0;',
'END;',
'',
'',
'--------------------meta mes---------',
'BEGIN ',
'select to_char(SUM(mt.proyeccion),''999G999G999G999G999G999G990'')monto, sum(mt.proyeccion)',
'INTO :P76_META_MES, v_meta_mes',
'from FV_PROYECCIONES_UN mt, FV_VENDEDORES FV',
'where mt.cod_empresa=''1''',
'AND MT.COD_EMPRESA=FV.COD_EMPRESA',
'AND MT.COD_VENDEDOR=FV.COD_VENDEDOR',
'and (mt.cod_vendedor =  :P76_COD_VENDEDOR OR :P76_COD_VENDEDOR IS NULL)',
'AND (FV.COD_SUPERVISOR= :P76_COD_SUPERVISOR OR :P76_COD_SUPERVISOR IS NULL)',
'/*and mt.mes =to_char(:P76_FECHA_FINAL,''MM'')',
'AND MT.ANIO = TO_CHAR(:P76_FECHA_FINAL,''RRRR'')*/',
'AND LAST_DAY(TO_DATE(''01/''||MT.MES||''/''||MT.ANhO,''DD/MM/YYYY''))=LAST_DAY(:P76_FECHA_FINAL);',
'EXCEPTION',
'WHEN OTHERS THEN ',
':P76_META_MES:=0;',
'END;',
'',
'',
'BEGIN',
' select  to_char(sum(monto),''999G999G999G999G990'')monto, sum(monto)',
'INTO :P76_MONTO_VENTA, v_MONTO_VENTA',
'',
'from V_VENTAS',
'WHERE (COD_VENDEDOR= :P76_COD_VENDEDOR OR :P76_COD_VENDEDOR IS NULL)',
'AND (FEC_FACTURA BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL)',
'      AND (COD_SUPERVISOR= :P76_COD_SUPERVISOR OR :P76_COD_SUPERVISOR IS NULL);',
' ',
'',
'EXCEPTION',
'WHEN OTHERS THEN',
':P76_MONTO_VENTA:=0;',
'v_MONTO_VENTA:=0;',
'END;',
'',
'',
'BEGIN',
' select  to_char(sum(monto),''999G999G999G999G990'')monto, sum(monto)',
'INTO :P76_MONTO_VENTA_MES, v_MONTO_VENTA_mes',
'',
'from V_VENTAS',
'WHERE (COD_VENDEDOR= :P76_COD_VENDEDOR OR :P76_COD_VENDEDOR IS NULL)',
'AND (FEC_FACTURA BETWEEN last_day(add_months(:P76_FECHA_FINAL,-1))+1 AND last_day(:P76_FECHA_FINAL))',
'      AND (COD_SUPERVISOR= :P76_COD_SUPERVISOR OR :P76_COD_SUPERVISOR IS NULL);',
' ',
'',
'EXCEPTION',
'WHEN OTHERS THEN',
':P76_MONTO_VENTA_MES:=0;',
'v_MONTO_VENTA_mes:=0;',
'END;',
'',
'if v_meta>0 then',
':P76_META_PORCENTAJE:=round(v_MONTO_VENTA/v_META*100,2);',
'end if;',
'if v_meta_mes>0 then',
':P76_META_PORCENTAJE_mes:=round(v_MONTO_VENTA_mes/v_META_mes*100,2);',
'end if;',
'end;'))
,p_attribute_02=>'P76_COD_SUPERVISOR,P76_COD_VENDEDOR,P76_FECHA_INICIAL,P76_FECHA_FINAL'
,p_attribute_03=>'P76_META,P76_PERIODO,P76_MONTO_VENTA,P76_META_PORCENTAJE,P76_MONTO_VENTA_MES,P76_META_MES,P76_META_PORCENTAJE_MES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1006898471949870314)
,p_event_id=>wwv_flow_imp.id(1006898118551870311)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  select id, ''Visita Abierta NGO: ''||cc.cod_cliente||''-''||p.nombre||'' (ID VISITA:''||ID||'')''',
'    into :P76_ID_VISITA, :P76_OBSERVACION',
'  from cc_visit_cast v, cc_clientes cc, personas  p',
'  where v.cod_empresa=''1''',
'  and fecha_fin_visita is null',
'  and codigo_usuario = :P_COD_CUSTODIO',
'  and cc.cod_empresa=v.cod_empresa',
'  and cc.cod_cliente=v.codigo_cliente',
'  and cc.cod_persona=p.cod_persona;',
'  exception',
'  when others then',
'    :P76_ID_VISITA:= null;',
'    :p76_observacion:=null;',
'  end;'))
,p_attribute_02=>'P_COD_CUSTODIO,P_COD_USUARIO'
,p_attribute_03=>'P76_OBSERVACION,P76_ID_VISITA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13260075103880316)
,p_name=>'REFRESCA_PAGINA'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13260574953880316)
,p_event_id=>wwv_flow_imp.id(13260075103880316)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(95541841962455564)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13261053804880317)
,p_event_id=>wwv_flow_imp.id(13260075103880316)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(95540064869455546)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13261515522880317)
,p_event_id=>wwv_flow_imp.id(13260075103880316)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(141828382432898994)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13262022154880317)
,p_event_id=>wwv_flow_imp.id(13260075103880316)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  select  MAX(NUM_PERIODO)',
'   INTO  :P76_PERIODO',
'   from FV_PERIODOS_COMISION a',
'where a.cod_empresa=''1''',
'AND FEC_INICIAL>=:P76_FECHA_INICIAL',
'AND FEC_FINAL<=:P76_FECHA_FINAL;',
' ',
'EXCEPTION',
'WHEN OTHERS THEN',
'    NULL;',
'  END;',
'declare ',
'v_meta number;',
'v_meta_mes number;',
'v_MONTO_VENTA number;',
'v_monto_venta_mes number;',
'begin',
'BEGIN ',
'select to_char(SUM(mt.monto),''999G999G999G999G999G999G990'')monto, sum(mt.monto)',
'INTO :P76_META, v_meta',
'from fv_metas_vend mt, FV_VENDEDORES FV',
'where mt.cod_empresa=''1''',
'AND MT.COD_EMPRESA=FV.COD_EMPRESA',
'AND MT.COD_VENDEDOR=FV.COD_VENDEDOR',
'and (mt.cod_vendedor =  :P76_COD_VENDEDOR OR :P76_COD_VENDEDOR IS NULL)',
'AND (FV.COD_SUPERVISOR= :P76_COD_SUPERVISOR OR :P76_COD_SUPERVISOR IS NULL)',
'and mt.fec_inicio =:P76_FECHA_INICIAL',
'AND MT.FEC_FIN = :P76_FECHA_FINAL;',
'EXCEPTION',
'WHEN OTHERS THEN ',
':P76_META:=0;',
'END;',
'',
'',
'--------------------meta mes---------',
'BEGIN ',
'select to_char(SUM(mt.proyeccion),''999G999G999G999G999G999G990'')monto, sum(mt.proyeccion)',
'INTO :P76_META_MES, v_meta_mes',
'from FV_PROYECCIONES_UN mt, FV_VENDEDORES FV',
'where mt.cod_empresa=''1''',
'AND MT.COD_EMPRESA=FV.COD_EMPRESA',
'AND MT.COD_VENDEDOR=FV.COD_VENDEDOR',
'and (mt.cod_vendedor =  :P76_COD_VENDEDOR OR :P76_COD_VENDEDOR IS NULL)',
'AND (FV.COD_SUPERVISOR= :P76_COD_SUPERVISOR OR :P76_COD_SUPERVISOR IS NULL)',
'/*and mt.mes =to_char(:P76_FECHA_FINAL,''MM'')',
'AND MT.ANIO = TO_CHAR(:P76_FECHA_FINAL,''RRRR'')*/',
'AND LAST_DAY(TO_DATE(''01/''||MT.MES||''/''||MT.ANhO,''DD/MM/YYYY''))=LAST_DAY(:P76_FECHA_FINAL);',
'EXCEPTION',
'WHEN OTHERS THEN ',
':P76_META_MES:=0;',
'END;',
'',
'',
'BEGIN',
' select  to_char(sum(monto),''999G999G999G999G990'')monto, sum(monto)',
'INTO :P76_MONTO_VENTA, v_MONTO_VENTA',
'',
'from V_VENTAS',
'WHERE (COD_VENDEDOR= :P76_COD_VENDEDOR OR :P76_COD_VENDEDOR IS NULL)',
'AND (FEC_FACTURA BETWEEN :P76_FECHA_INICIAL AND :P76_FECHA_FINAL)',
'      AND (COD_SUPERVISOR= :P76_COD_SUPERVISOR OR :P76_COD_SUPERVISOR IS NULL);',
' ',
'',
'EXCEPTION',
'WHEN OTHERS THEN',
':P76_MONTO_VENTA:=0;',
'v_MONTO_VENTA:=0;',
'END;',
'',
'',
'BEGIN',
' select  to_char(sum(monto),''999G999G999G999G990'')monto, sum(monto)',
'INTO :P76_MONTO_VENTA_MES, v_MONTO_VENTA_mes',
'',
'from V_VENTAS',
'WHERE (COD_VENDEDOR= :P76_COD_VENDEDOR OR :P76_COD_VENDEDOR IS NULL)',
'AND (FEC_FACTURA BETWEEN last_day(add_months(:P76_FECHA_FINAL,-1))+1 AND last_day(:P76_FECHA_FINAL))',
'      AND (COD_SUPERVISOR= :P76_COD_SUPERVISOR OR :P76_COD_SUPERVISOR IS NULL);',
' ',
'',
'EXCEPTION',
'WHEN OTHERS THEN',
':P76_MONTO_VENTA_MES:=0;',
'v_MONTO_VENTA_mes:=0;',
'END;',
'',
'if v_meta>0 then',
':P76_META_PORCENTAJE:=round(v_MONTO_VENTA/v_META*100,2);',
'end if;',
'if v_meta_mes>0 then',
':P76_META_PORCENTAJE_mes:=round(v_MONTO_VENTA_mes/v_META_mes*100,2);',
'end if;',
'end;'))
,p_attribute_02=>'P76_COD_SUPERVISOR,P76_COD_VENDEDOR,P76_FECHA_INICIAL,P76_FECHA_FINAL'
,p_attribute_03=>'P76_META,P76_PERIODO,P76_MONTO_VENTA,P76_META_PORCENTAJE,P76_MONTO_VENTA_MES,P76_META_MES,P76_META_PORCENTAJE_MES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13262560816880317)
,p_event_id=>wwv_flow_imp.id(13260075103880316)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(95540352172455549)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13263035473880317)
,p_event_id=>wwv_flow_imp.id(13260075103880316)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(103255820296290618)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13263543973880318)
,p_event_id=>wwv_flow_imp.id(13260075103880316)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(95541223820455558)
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
