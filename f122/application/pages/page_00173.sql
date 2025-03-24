prompt --application/pages/page_00173
begin
--   Manifest
--     PAGE: 00173
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
 p_id=>173
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VTRVTMCL1'
,p_alias=>'VTRVTMCL1'
,p_page_mode=>'MODAL'
,p_step_title=>'Comparativo de ventas mensuales por clientes'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'700'
,p_dialog_width=>'1360'
,p_protection_level=>'C'
,p_page_component_map=>'10'
,p_last_updated_by=>'DFINO'
,p_last_upd_yyyymmddhh24miss=>'20230515074512'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104532425665693801)
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
 p_id=>wwv_flow_imp.id(207141528651198496)
,p_plug_name=>'REPORTE 2'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    htp.p(''<table style="border-style: solid;border-width: 2px;width: 100%;">'');',
'       htp.p(''<tr>'');',
'			htp.p(''<td style=width: 100px;><b>SUCURSAL:</b> ''||:P173_SUCURSAL||''</td>'');',
'			htp.p(''<td style=width: 100px;><b>RUBRO: </b>''||:P173_RUBRO||''</td>'');',
'		htp.p(''</tr>'');',
'		htp.p(''<br>'');',
'		htp.p(''<tr>'');',
'			htp.p(''<td style=width: 100px;><b>TIPO COMPROBANTE: </b>''||:P173_TIP_COMPROBANTE||''</td>'');',
'			htp.p(''<td style=width: 100px;><b>FAMILIA: </b>''||:P173_FAMILIA||''</td>'');',
'		htp.p(''</tr>'');',
'		htp.p(''<br>''); ',
'		htp.p(''<tr>'');',
'			htp.p(''<td style=width: 100px;><b>VENDEDOR: </b>''||:P173_VENDEDOR||''</td>'');',
'			htp.p(''<td style=width: 100px;><b>LINEA: </b>''||:P173_LINEA||''</td>'');',
'		htp.p(''</tr>'');',
'		htp.p(''<br>'');',
'		htp.p(''<tr>'');',
'			htp.p(''<td style=width: 100px;><b>ZONA: </b>''||:P173_ZONA||''</td>'');',
unistr('			htp.p(''<td style=width: 100px;><b>GRUPO DE ART\00CDCULOS: </b>''||:P173_GRUPO_ARTICULOS||''</td>'');'),
'		htp.p(''</tr>'');',
'		htp.p(''<br>'');            ',
'		htp.p(''<tr>'');',
unistr('			htp.p(''<td style=width: 100px;><b>A\00D1OS A COMPARAR: </b>''||:P173_ANIO_1||'' y ''||:P173_ANIO_2||''</td>'');'),
'			htp.p(''<td style=width: 100px;><b>GRUPO DE PRECIO: </b>''||:P_COD_EMPLEADO||''</td>'');',
'		htp.p(''</tr>'');',
'		htp.p(''<tr>'');',
'			htp.p(''<td style=width: 100px;><b>MARCA: </b>''||:P173_MARCA||''</td>'');',
'		htp.p(''</tr>'');',
'		htp.p(''<br>'');',
'',
'       ',
'',
'       htp.p(''<tr>'');',
'         htp.p(''<td style="text-align:center;background:#97bbc473;">Cliente</td>'');',
'         htp.p(''<td style="text-align:center;background:#97bbc473;">ENERO<br>''||:P173_ANIO_1||'' - ''||:P173_ANIO_2||''</td>'');',
'         htp.p(''<td style="text-align:center;background:#97bbc473;">FEBRERO<br>''||:P173_ANIO_1||'' - ''||:P173_ANIO_2||''</td>'');',
'         htp.p(''<td style="text-align:center;background:#97bbc473;">MARZO<br>''||:P173_ANIO_1||'' - ''||:P173_ANIO_2||''</td>'');',
'         htp.p(''<td style="text-align:center;background:#97bbc473;">ABRIL<br>''||:P173_ANIO_1||'' - ''||:P173_ANIO_2||''</td>'');',
'         htp.p(''<td style="text-align:center;background:#97bbc473;">MAYO<br>''||:P173_ANIO_1||'' - ''||:P173_ANIO_2||''</td>'');',
'         htp.p(''<td style="text-align:center;background:#97bbc473;">JUNIO<br>''||:P173_ANIO_1||'' - ''||:P173_ANIO_2||''</td>'');',
'         htp.p(''<td style="text-align:center;background:#97bbc473;">JULIO<br>''||:P173_ANIO_1||'' - ''||:P173_ANIO_2||''</td>'');',
'         htp.p(''<td style="text-align:center;background:#97bbc473;">AGOSTO<br>''||:P173_ANIO_1||'' - ''||:P173_ANIO_2||''</td>'');',
'         htp.p(''<td style="text-align:center;background:#97bbc473;">SEPTIEMBRE<br>''||:P173_ANIO_1||'' - ''||:P173_ANIO_2||''</td>'');',
'         htp.p(''<td style="text-align:center;background:#97bbc473;">OCTUBRE<br>''||:P173_ANIO_1||'' - ''||:P173_ANIO_2||''</td>'');',
'         htp.p(''<td style="text-align:center;background:#97bbc473;">NOVIEMBRE<br>''||:P173_ANIO_1||'' - ''||:P173_ANIO_2||''</td>'');',
'         htp.p(''<td style="text-align:center;background:#97bbc473;">DICIEMBRE<br>''||:P173_ANIO_1||'' - ''||:P173_ANIO_2||''</td>'');',
'       htp.p(''</tr>'');',
'',
'    htp.p(''</table>'');',
'',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104532507449693802)
,p_name=>'P173_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(104532425665693801)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104532631614693803)
,p_name=>'P173_TIP_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(104532425665693801)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104532728990693804)
,p_name=>'P173_VENDEDOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(104532425665693801)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104532863021693805)
,p_name=>'P173_ZONA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(104532425665693801)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104532967734693806)
,p_name=>'P173_ANIO_1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(104532425665693801)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104533092272693807)
,p_name=>'P173_ANIO_2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(104532425665693801)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104533362280693810)
,p_name=>'P173_RUBRO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(104532425665693801)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104533413806693811)
,p_name=>'P173_FAMILIA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(104532425665693801)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104533554967693812)
,p_name=>'P173_LINEA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(104532425665693801)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104533631376693813)
,p_name=>'P173_GRUPO_ARTICULOS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(104532425665693801)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104533759836693814)
,p_name=>'P173_PRECIO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(104532425665693801)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(104533814517693815)
,p_name=>'P173_MARCA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(104532425665693801)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
