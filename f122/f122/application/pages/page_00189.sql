prompt --application/pages/page_00189
begin
--   Manifest
--     PAGE: 00189
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
 p_id=>189
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'VTRLISPR'
,p_alias=>'VTRLISPR'
,p_step_title=>'VTRLISPR'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function llamarReporteVTLISTAPRECIOSGASTRO(p_cod_categoria, p_cod_familia, p_cod_marca, p_cod_articulo_ini, p_cod_lista_precio, p_cod_division, ',
'                        p_ver_guion_n, p_cod_division_exc, p_div, p_div_in){',
'',
'   var consulta = apex.item(''P189_TIPO_CONSULTA'').getValue();',
'    var vURL;',
'',
'   if (consulta == ''U''){',
'        vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/VTLISTAPRECIOSGASTRO.pdf?''',
'',
'            +  ''&P_COD_LISTA_PRECIO=''+ p_cod_lista_precio + ''&P_DIV=''+ p_div + ''&P_COD_CATEGORIA=''+ p_cod_categoria +          ',
'            ''&P_COD_DIVISION_EXC=''+ p_cod_division_exc + ''&P_DIV_IN=&P_VER_GUION_N=''+ p_ver_guion_n ',
'            + ''&P_COD_MARCA=''+ p_cod_marca + ''&P_COD_DIVISION=''+ p_cod_division + ''&P_COD_FAMILIA=''+ p_cod_familia +',
'            ''&P_COD_ARTICULO_INI=''+ p_cod_articulo_ini + ''&j_username=jasperadmin&j_password=jasperadmin'';    ',
'   }else{',
'         vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/VTLISTAPRECIOSGASTRO.pdf?''',
'',
'            +  ''&P_COD_LISTA_PRECIO=''+ p_cod_lista_precio + ''&P_DIV=''+ p_div + ''&P_COD_CATEGORIA=''+ p_cod_categoria +          ',
'            ''&P_COD_DIVISION_EXC=''+ p_cod_division_exc + ''&P_DIV_IN='' + p_cod_division + ''&P_VER_GUION_N=''+ p_ver_guion_n ',
'            + ''&P_COD_MARCA=''+ p_cod_marca + ''&P_COD_DIVISION=&P_COD_FAMILIA=''+ p_cod_familia +',
'            ''&P_COD_ARTICULO_INI=''+ p_cod_articulo_ini + ''&j_username=jasperadmin&j_password=jasperadmin'';    ',
'   }',
'',
'',
'   console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'',
'',
'}',
'',
'',
'function llamarReporteVTLISTAPRECIOS(p_cod_categoria, p_cod_familia, p_cod_marca, p_cod_articulo_ini, p_cod_lista_precio, p_cod_division, ',
'                        p_ver_guion_n, p_cod_division_exc, p_div, p_div_in){',
'',
'    var consulta = apex.item(''P189_TIPO_CONSULTA'').getValue();',
'    var empresa  = apex.item(''P_COD_EMPRESA'').getValue();',
'    var vURL;',
'   if (empresa ==''1'') {',
'   if (consulta == ''U''){',
'        vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/VTLISTAPRECIOS.pdf?''',
'',
'            +  ''&P_COD_LISTA_PRECIO=''+ p_cod_lista_precio + ''&P_DIV=''+ p_div + ''&P_COD_CATEGORIA=''+ p_cod_categoria +          ',
'            ''&P_COD_DIVISION_EXC=''+ p_cod_division_exc + ''&P_DIV_IN=&P_VER_GUION_N=''+ p_ver_guion_n ',
'            + ''&P_COD_MARCA=''+ p_cod_marca + ''&P_COD_DIVISION=''+ p_cod_division + ''&P_COD_FAMILIA=''+ p_cod_familia +',
'            ''&P_COD_ARTICULO_INI=''+ p_cod_articulo_ini + ''&j_username=jasperadmin&j_password=jasperadmin'';    ',
'   }else{',
'         vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/VTLISTAPRECIOS.pdf?''',
'',
'            +  ''&P_COD_LISTA_PRECIO=''+ p_cod_lista_precio + ''&P_DIV=''+ p_div + ''&P_COD_CATEGORIA=''+ p_cod_categoria +          ',
'            ''&P_COD_DIVISION_EXC=''+ p_cod_division_exc + ''&P_DIV_IN='' + p_cod_division + ''&P_VER_GUION_N=''+ p_ver_guion_n ',
'            + ''&P_COD_MARCA=''+ p_cod_marca + ''&P_COD_DIVISION=&P_COD_FAMILIA=''+ p_cod_familia +',
'            ''&P_COD_ARTICULO_INI=''+ p_cod_articulo_ini + ''&j_username=jasperadmin&j_password=jasperadmin'';    ',
'   }} else {',
'         vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/VTLISTAPRECIOSBH.pdf?''',
'',
'            +  ''&P_COD_LISTA_PRECIO=''+ p_cod_lista_precio + ''&P_DIV=''+ p_div + ''&P_COD_CATEGORIA=''+ p_cod_categoria +          ',
'            ''&P_COD_DIVISION_EXC=''+ p_cod_division_exc + ''&P_DIV_IN='' + p_cod_division + ''&P_VER_GUION_N=''+ p_ver_guion_n ',
'            + ''&P_COD_MARCA=''+ p_cod_marca + ''&P_COD_DIVISION=&P_COD_FAMILIA=''+ p_cod_familia +',
'            ''&P_COD_ARTICULO_INI=''+ p_cod_articulo_ini + ''&j_username=jasperadmin&j_password=jasperadmin'';    ',
'   } ',
'   ',
'',
'',
'   console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'',
'',
'}',
'',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'fieldset.listmanager select.listmanager {',
'    height: 140PX;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240920155701'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39380640993974313)
,p_plug_name=>'CAMPOS_FILTROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30807364641914217)
,p_plug_name=>'IZQ'
,p_parent_plug_id=>wwv_flow_imp.id(39380640993974313)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30807452336914218)
,p_plug_name=>'DER'
,p_parent_plug_id=>wwv_flow_imp.id(39380640993974313)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30807565575914219)
,p_plug_name=>'IZQ 2'
,p_parent_plug_id=>wwv_flow_imp.id(39380640993974313)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30807605767914220)
,p_plug_name=>'DER 2'
,p_parent_plug_id=>wwv_flow_imp.id(39380640993974313)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30807761287914221)
,p_plug_name=>'Boton'
,p_parent_plug_id=>wwv_flow_imp.id(39380640993974313)
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>50
,p_plug_grid_column_span=>8
,p_plug_display_column=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(42372644874157808)
,p_plug_name=>'VARIABLES AUX'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39382206894974329)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(30807761287914221)
,p_button_name=>'P189_BOTON_EJECUTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(42372100625157803)
,p_branch_name=>'BR_LLAMAR_REPORTE'
,p_branch_action=>'https://ngosaeca.com.py/reportes/rest_v2/reports/reports/VTLISTAPRECIOSGASTRO.html?P_COD_LISTA_PRECIO=~NULL~&P_DIV=~NULL~&P_COD_CATEGORIA=~NULL~&P_COD_DIVISION_EXC=~NULL~&P_DIV_IN=~NULL~&P_VER_GUION_N=~NULL~&P_COD_MARCA=~NULL~&P_COD_DIVISION=~NULL~&P_COD_FAMILIA=~NULL~&P_COD_ARTICULO_INI=~NULL~'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30807821590914222)
,p_name=>'P189_TIPO_CONSULTA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(39380640993974313)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39380782322974314)
,p_name=>'P189_COD_RUBRO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(30807364641914217)
,p_prompt=>'Rubro'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_RUBROS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_rubro||'' - ''||descripcion D, ',
'         cod_rubro R',
'    FROM st_rubro ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY descripcion;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39380835349974315)
,p_name=>'P189_COD_LINEA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(30807364641914217)
,p_prompt=>unistr('L\00EDnea')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_LINEAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_linea||'' - ''||descripcion D, cod_linea R',
'from st_linea ',
' ',
'  WHERE COD_EMPRESA=:P_COD_EMPRESA',
'  AND ESTADO IN(''S'',''A'') ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39380957568974316)
,p_name=>'P189_COD_CATEGORIA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(30807364641914217)
,p_prompt=>unistr('Categor\00EDa')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CATEGORIAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_categoria||'' - '' ||descripcion D, ',
'         cod_categoria R',
'    FROM st_categorias',
'  ',
'  WHERE COD_EMPRESA=:P_COD_EMPRESA',
'  AND ESTADO IN(''S'',''A'');',
' '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39381066541974317)
,p_name=>'P189_COD_FAMILIA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(30807364641914217)
,p_prompt=>'Familia'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_FAMILIA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_familia||'' - ''||descripcion D, ',
'       cod_familia R',
'  FROM st_familia',
'  WHERE COD_EMPRESA=:P_COD_EMPRESA',
'  AND ESTADO=''S'';'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39381118650974318)
,p_name=>'P189_COD_DIVISION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(30807452336914218)
,p_prompt=>unistr('Divisi\00F3n')
,p_display_as=>'NATIVE_LIST_MANAGER'
,p_named_lov=>'LV_DIVISION1'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_DIVISION || '' - '' || desc_division D, cod_division R',
'from st_division_articulos',
'where estado NOT IN (''I'',''N'')',
'and cod_division NOT  IN (''9'',''T16'',''7'',''T15'')'))
,p_begin_on_new_line=>'N'
,p_colspan=>10
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'FIRST_ROWSET'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39381254465974319)
,p_name=>'P189_COD_MARCA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(30807565575914219)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MARCAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_marca||'' - ''||descripcion D, cod_marca R',
'from st_marcas',
'order by descripcion;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39381375891974320)
,p_name=>'P189_DIV_IN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(39380640993974313)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39381412626974321)
,p_name=>'P189_COD_ARTICULO_INI'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(30807565575914219)
,p_prompt=>unistr('Art\00EDculo inicial')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  COD_ARTICULO || '' - '' || descripcion D, ',
'        cod_articulo R',
'FROM st_articulos ',
'WHERE cod_empresa = :P_COD_EMPRESA ',
'ORDER BY 1;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39381527696974322)
,p_name=>'P189_COD_ARTICULO_FIN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(30807565575914219)
,p_prompt=>unistr('Art\00EDculo final')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  COD_ARTICULO || '' - '' || descripcion D, ',
'        cod_articulo R',
'FROM st_articulos ',
'WHERE cod_empresa = :P_COD_EMPRESA ',
'ORDER BY 1;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39381630832974323)
,p_name=>'P189_COD_MONEDA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(30807565575914219)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVMONEDAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_MONEDA R, ',
'	   SIGLAS, ',
'	   TIPO_CAMBIO_DIA, ',
'	   DESCRIPCION D',
'  FROM MONEDAS ',
' ORDER BY DESCRIPCION'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39381791400974324)
,p_name=>'P189_COD_IMPRESION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(30807565575914219)
,p_prompt=>'Lista de precios'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT descripcion,cod_lista_precio  cod_impresion ',
'FROM vt_listas_precios_cab ',
'WHERE cod_empresa = :P_COD_EMPRESA',
'AND cod_lista_precio in (''1'',''5'',''3'',''13'',''7'',''27'',''9'',''28'',''2'',''4'',''6'',''8'')',
'AND cod_moneda = :P189_COD_MONEDA',
'ORDER BY descripcion;'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P189_COD_MONEDA'
,p_ajax_items_to_submit=>'P189_COD_MONEDA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39381802123974325)
,p_name=>'P189_EXCLUIR_DIVISION1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(30807605767914220)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39381979770974326)
,p_name=>'P189_DIV'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(39380640993974313)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39382381668974330)
,p_name=>'P189_INCLUIR_SIN_EXISTENCIA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(30807565575914219)
,p_prompt=>'Sin Imagenes'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39382544198974332)
,p_name=>'P189_INCLUIR_VER_GUION_N'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(30807565575914219)
,p_prompt=>unistr('Ver R\00E9gimen de Turismo')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(42372762124157809)
,p_name=>'P189_REPORTE_A_LLAMAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(42372644874157808)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45491804894535521)
,p_name=>'P189_EXCLUIR_DIVISION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(30807605767914220)
,p_prompt=>unistr('Divisi\00F3n')
,p_display_as=>'NATIVE_LIST_MANAGER'
,p_named_lov=>'LV_DIVISION1'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_DIVISION || '' - '' || desc_division D, cod_division R',
'from st_division_articulos',
'where estado NOT IN (''I'',''N'')',
'and cod_division NOT  IN (''9'',''T16'',''7'',''T15'')'))
,p_begin_on_new_line=>'N'
,p_colspan=>10
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'FIRST_ROWSET'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45492060449535523)
,p_name=>'P189_TIPO_EXCLUSION'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(39380640993974313)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39382096251974327)
,p_name=>'DA_LIMPIAR_CAMPOS'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39382121065974328)
,p_event_id=>wwv_flow_imp.id(39382096251974327)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P189_COD_RUBRO,P189_COD_LINEA,P189_COD_CATEGORIA,P189_COD_FAMILIA,P189_COD_DIVISION,P189_DIV_IN,P189_COD_MARCA,P189_COD_ARTICULO_INI,P189_COD_ARTICULO_FIN,P189_EXCLUIR_DIVISION1,P189_DIV'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(42371974718157801)
,p_name=>'DA_SUBMIT_PAGE'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39382206894974329)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42372516962157807)
,p_event_id=>wwv_flow_imp.id(42371974718157801)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P189_COD_DIVISION LIKE ''%T12%'' OR :P189_COD_DIVISION LIKE ''%T10%''  THEN',
'  	:P189_REPORTE_A_LLAMAR := ''1''; ',
'ELSE',
'   :P189_REPORTE_A_LLAMAR := ''2'';',
'END IF;',
'',
'',
'',
'-- P189_COD_DIVISION',
'',
'if INSTR(:P189_COD_DIVISION,'':'',1) = 1 then',
'    :P189_COD_DIVISION := substr(:P189_COD_DIVISION,2);',
'end if;',
'',
'if INSTR(:P189_COD_DIVISION,'':'',1) = 0 then',
'    :P189_TIPO_CONSULTA := ''U''; --unica',
'else ',
'    :P189_TIPO_CONSULTA := ''M''; --multiple',
'end if;',
'',
'',
'',
'-- P189_EXCLUIR_DIVISION',
'if INSTR(:P189_EXCLUIR_DIVISION,'':'',1) = 1 then',
'    :P189_EXCLUIR_DIVISION := substr(:P189_EXCLUIR_DIVISION,2);',
'end if;',
'',
'if INSTR(:P189_EXCLUIR_DIVISION,'':'',1) = 0 then',
'    :P189_TIPO_EXCLUSION := ''U''; --unica',
'else ',
'    :P189_TIPO_EXCLUSION := ''M''; --multiple',
'end if;',
'',
'',
''))
,p_attribute_02=>'P189_DIV_IN,P189_DIV,P189_COD_DIVISION,P189_EXCLUIR_DIVISION1,P189_REPORTE_A_LLAMAR,P189_TIPO_EXCLUSION,P189_EXCLUIR_DIVISION'
,p_attribute_03=>'P189_DIV_IN,P189_DIV,P189_REPORTE_A_LLAMAR,P189_COD_DIVISION,P189_TIPO_CONSULTA,P189_TIPO_EXCLUSION,P189_EXCLUIR_DIVISION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(42372081158157802)
,p_event_id=>wwv_flow_imp.id(42371974718157801)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'llamarReporteVTLISTAPRECIOSGASTRO(apex.item(''P189_COD_CATEGORIA'').getValue(), apex.item(''P189_COD_FAMILIA'').getValue(),',
'apex.item(''P189_COD_MARCA'').getValue(), apex.item(''P189_COD_ARTICULO_INI'').getValue(),',
'apex.item(''P189_COD_IMPRESION'').getValue(), apex.item(''P189_COD_DIVISION'').getValue(), apex.item(''P189_INCLUIR_VER_GUION_N'').getValue(), ',
'apex.item(''P189_EXCLUIR_DIVISION'').getValue(), apex.item(''P189_DIV'').getValue(), apex.item(''P189_DIV_IN'').getValue())',
'',
'',
'',
'',
'',
''))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P189_REPORTE_A_LLAMAR'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45491936895535522)
,p_event_id=>wwv_flow_imp.id(42371974718157801)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'llamarReporteVTLISTAPRECIOS(apex.item(''P189_COD_CATEGORIA'').getValue(), apex.item(''P189_COD_FAMILIA'').getValue(),',
'apex.item(''P189_COD_MARCA'').getValue(), apex.item(''P189_COD_ARTICULO_INI'').getValue(),',
'apex.item(''P189_COD_IMPRESION'').getValue(), apex.item(''P189_COD_DIVISION'').getValue(), apex.item(''P189_INCLUIR_VER_GUION_N'').getValue(), ',
'apex.item(''P189_EXCLUIR_DIVISION'').getValue(), apex.item(''P189_DIV'').getValue(), apex.item(''P189_DIV_IN'').getValue())',
'',
'',
'',
'',
'',
'',
'',
''))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P189_REPORTE_A_LLAMAR'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(45492117302535524)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'PR_LIMPIAR_DATOS'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(39380506452974312)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'-- PRE FORM',
':P_COD_MODULO := ''VT'';',
':P189_COD_IMPRESION := ''1'';',
':P189_COD_MONEDA := ''1'';',
':P189_INCLUIR_VER_GUION_N := ''N'';',
':P189_INCLUIR_SIN_EXISTENCIA := ''S'';',
'',
'',
':P189_REPORTE_A_LLAMAR := ''0'';',
'',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(SQLERRM);',
'',
'END;',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
