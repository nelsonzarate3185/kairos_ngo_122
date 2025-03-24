prompt --application/pages/page_00567
begin
--   Manifest
--     PAGE: 00567
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
 p_id=>567
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Articulos'
,p_alias=>'ARTICULOS1'
,p_step_title=>'Articulos'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_IMAGES#inputmask.js',
'#APP_IMAGES#imask.js',
'#APP_FILES#util_generico.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'function soloNumerosEnteros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57;    ',
'}',
'function soloNumeros(e) {',
'  var key = e.charCode;',
'  var char = String.fromCharCode(key);',
'',
unistr('  // Permite n\00FAmeros del 0 al 9'),
'  if (key >= 48 && key <= 57) {',
'    return true;',
'  }',
'  // // Permite el punto decimal (ASCII 46) o coma decimal (ASCII 44) solo si no se ha ingresado previamente ',
'else if ((key === 46 || key === 44) && e.target.value.indexOf(''.'') === -1 && e.target.value.indexOf('','') === -1) {',
'    return true;',
'',
'  }',
'  ',
unistr('  // Bloquea cualquier otro car\00E1cter'),
'  e.preventDefault();',
'  return false;',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Inputmask("decimal", {',
'    radixPoint: '','',',
'    inputtype: "text"',
'}).mask("P567_CANTIDAD");',
'',
'',
' ',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Footer {',
'visibility:hidden;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20250114133848'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(587279739986862823)
,p_name=>'Detalle Enviado'
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.USUARIO,',
'       s.FECHA_CARGA,',
'       s.COD_ARTICULO,',
'       s.CANTIDAD,',
'       ',
'       CASE',
'         WHEN LENGTH(TRIM(TRANSLATE(REPLACE(substr(s.COD_ARTICULO,',
'                                                   2,',
'                                                   LENGTH(s.COD_ARTICULO)),',
'                                            ''.'',',
'                                            ''A''),',
'                                    '' +-.0123456789'',',
'                                    '' ''))) IS NULL THEN',
'                 case',
'            when NVL((select IND_INVENTARIO_CPH',
'                       FROM ST_GENERACION_INVENTARIO',
'                      WHERE COD_EMPRESA = :P_COD_EMPRESA',
'                        AND NRO_COMPROBANTE = :P567_NRO_INVENTARIO), ''N'') <> ''S'' THEN                     ',
'          (select CASE',
'                    WHEN a.tipo_cierre IN (''CSR'', ''CSS'') AND',
'                         a.nro_sol_conf IS NOT NULL THEN',
'                     ''RENTA''',
'                  ',
'                    WHEN TO_NUMBER(TRUNC(SYSDATE) - a.FEC_CIERRE) > 180 AND',
'                         a.FEC_CIERRE IS NOT NULL AND',
'                         a.NRO_SOL_CONF IS NOT NULL THEN',
'                     ''DONACION''',
'                  ',
'                    WHEN a.tipo_cierre IN (''CERRADA REPARADA'') AND',
'                         a.nro_sol_conf IS NOT NULL THEN',
'                     ''OFERTAS''',
'                  ',
'                    when a.cod_origen = ''20'' and',
'                         a.tipo_cierre IN (''CSR'', ''CSS'') then',
'                     ''RENTA''',
'                    when a.cod_origen = ''20'' and a.tipo_cierre IN (''CR'') then',
'                     ''OFERTA''',
'                  END RESOLUCION',
'             from vt_ordenes_trabajo a',
'            where a.cod_empresa = ''1''',
'              AND A.TIP_COMPROBANTE = ''ORT''',
'              AND A.SER_COMPROBANTE = substr(s.COD_ARTICULO, 0, 1)',
'              AND (A.NRO_COMPROBANTE) =',
'                  (substr(s.COD_ARTICULO, 2, LENGTH(s.COD_ARTICULO)))',
'              and rownum = 1)',
'              ELSE ',
'                (select CASE',
'                    WHEN a.tipo_cierre IN (''CSR'', ''CSS'') AND',
'                         a.nro_sol_conf IS NOT NULL THEN',
'                     ''RENTA''',
'                  ',
'                    WHEN TO_NUMBER(TRUNC(SYSDATE) - a.FEC_CIERRE) > 180 AND',
'                         a.FEC_CIERRE IS NOT NULL AND',
'                         a.NRO_SOL_CONF IS NOT NULL THEN',
'                     ''DONACION''',
'                  ',
'                    WHEN a.tipo_cierre IN (''CERRADA REPARADA'') AND',
'                         a.nro_sol_conf IS NOT NULL THEN',
'                     ''OFERTAS''',
'                  ',
'                    when a.cod_origen = ''20'' and',
'                         a.tipo_cierre IN (''CSR'', ''CSS'') then',
'                     ''RENTA''',
'                    when a.cod_origen = ''20'' and a.tipo_cierre IN (''CR'') then',
'                     ''OFERTA''',
'                  END RESOLUCION',
'             from vt_ordenes_trabajo@DBLINK_CPH a',
'            where a.cod_empresa = ''1''',
'              AND A.TIP_COMPROBANTE = ''ORT''',
'              AND A.SER_COMPROBANTE = substr(s.COD_ARTICULO, 0, 1)',
'              AND (A.NRO_COMPROBANTE) =',
'                  (substr(s.COD_ARTICULO, 2, LENGTH(s.COD_ARTICULO)))',
'              and rownum = 1) END',
'         ELSE',
'          null',
'       END resolucion,',
'       CASE',
'         WHEN LENGTH(TRIM(TRANSLATE(REPLACE(substr(s.COD_ARTICULO,',
'                                                   2,',
'                                                   LENGTH(s.COD_ARTICULO)),',
'                                            ''.'',',
'                                            ''A''),',
'                                    '' +-.0123456789'',',
'                                    '' ''))) IS NULL THEN',
'          case',
'            when NVL((select IND_INVENTARIO_CPH',
'                       FROM ST_GENERACION_INVENTARIO',
'                      WHERE COD_EMPRESA = :P_COD_EMPRESA',
'                        AND NRO_COMPROBANTE = :P567_NRO_INVENTARIO), ''N'') <> ''S'' THEN',
'             (select estado_snc',
'                from estado_ord_trabajo a',
'               where A.SER_COMPROBANTE = substr(s.COD_ARTICULO, 0, 1)',
'                 AND A.NRO_COMPROBANTE =',
'                     (substr(s.COD_ARTICULO, 2, LENGTH(s.COD_ARTICULO)))',
'                 and rownum = 1)',
'            else',
'             (select estado_snc',
'                from estado_ord_trabajo@dblink_cph a',
'               where A.SER_COMPROBANTE = substr(s.COD_ARTICULO, 0, 1)',
'                 AND A.NRO_COMPROBANTE =',
'                     (substr(s.COD_ARTICULO, 2, LENGTH(s.COD_ARTICULO)))',
'                 and rownum = 1)',
'          end',
'       ',
'         ELSE',
'          null',
'       END estado_snc',
'  from SM_INVENTARIO_DET s',
' WHERE s.INVENTORY_AREA = :P567_NRO_INVENTARIO',
'      AND s.ZONA=:P567_ZONA',
'   and s.cod_articulo is not null',
' ORDER BY FECHA_CARGA desc',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P567_ZONA,P567_NRO_INVENTARIO'
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
 p_id=>wwv_flow_imp.id(182690965488538340)
,p_query_column_id=>1
,p_column_alias=>'USUARIO'
,p_column_display_sequence=>10
,p_column_heading=>'Usuario'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(182691360618538340)
,p_query_column_id=>2
,p_column_alias=>'FECHA_CARGA'
,p_column_display_sequence=>20
,p_column_heading=>'Fecha Carga'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(182691799740538339)
,p_query_column_id=>3
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>30
,p_column_heading=>'Cod Articulo'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(182690549714538340)
,p_query_column_id=>4
,p_column_alias=>'CANTIDAD'
,p_column_display_sequence=>40
,p_column_heading=>'Cantidad'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(245894734424347502)
,p_query_column_id=>5
,p_column_alias=>'RESOLUCION'
,p_column_display_sequence=>50
,p_column_heading=>'Resolucion'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(245894864633347503)
,p_query_column_id=>6
,p_column_alias=>'ESTADO_SNC'
,p_column_display_sequence=>60
,p_column_heading=>'Estado Snc'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(750134758899338367)
,p_plug_name=>'Producto'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent2:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(182692833106538338)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(750134758899338367)
,p_button_name=>'Cancelar'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:566:&SESSION.::&DEBUG.::P566_ZONA:#'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(182693242556538338)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(750134758899338367)
,p_button_name=>'Aceptar'
,p_button_static_id=>'CREATE_BUTTON'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'BELOW_BOX'
,p_icon_css_classes=>'fa-check'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(182693675000538338)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(750134758899338367)
,p_button_name=>'Ok'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ok'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-check'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(182692165455538339)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(587279739986862823)
,p_button_name=>'refrescar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refrescar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(182694045093538338)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(750134758899338367)
,p_button_name=>'LecturaZona'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Lecturazona'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:RP,8::'
,p_icon_css_classes=>'fa-wifi'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182694407200538338)
,p_name=>'P567_NRO_INVENTARIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(750134758899338367)
,p_prompt=>'Nro Inventario'
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
 p_id=>wwv_flow_imp.id(182694807493538337)
,p_name=>'P567_ZONA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(750134758899338367)
,p_prompt=>'Zona'
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
 p_id=>wwv_flow_imp.id(182695268331538337)
,p_name=>'P567_COD_ARTICULO'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(750134758899338367)
,p_prompt=>'Cod Articulo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_attribute_06=>'UPPER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182695625317538337)
,p_name=>'P567_COD_PRODUCTO'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(750134758899338367)
,p_prompt=>'Cod Producto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cattributes_element=>'readonly'
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182696061279538336)
,p_name=>'P567_DESCRIPCION_PRODUCTO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(750134758899338367)
,p_prompt=>'Descripcion'
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
 p_id=>wwv_flow_imp.id(182696447976538336)
,p_name=>'P567_CANTIDAD'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(750134758899338367)
,p_prompt=>'Cantidad'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style=''color:red;text-align: right;font-size: 20px;'''
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182696867755538333)
,p_name=>'P567_ITEM_ANTERIOR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(750134758899338367)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(182697227885538333)
,p_name=>'P567_COD_ARTICULO_OT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(750134758899338367)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(245894613442347501)
,p_name=>'P567_RESOLUCION_ST'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(750134758899338367)
,p_prompt=>'Resolucion'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(182698139095538332)
,p_validation_name=>'New'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  VCPH     VARCHAR2(10) := ''N'';',
'  VIOT     VARCHAR2(10) := ''N'';',
'  VEMPRESA VARCHAR2(10) := ''NGO'';',
'BEGIN',
'  BEGIN',
'    SELECT ES_CPH, VINVENTARIO_OT',
'      INTO VCPH, VIOT',
'      FROM v_inventario_movil',
'     WHERE NRO_COMPROBANTE = :P567_NRO_INVENTARIO;',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      VCPH := ''N'';      VIOT := ''N'';',
'  END;',
'   IF VCPH = ''S'' THEN',
'    VEMPRESA := ''CPH'';',
'     ELSIF VCPH = ''T'' THEN',
'    VEMPRESA := ''TF'';',
'  ',
'  END IF;',
'  IF VIOT = ''S'' AND NVL(:P567_CANTIDAD ,0)<>1 THEN',
'    RETURN FALSE;',
'  ELSE',
'  RETURN TRUE;',
'  END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'La cantidad a cargar es incorrecta'
,p_associated_item=>wwv_flow_imp.id(182696447976538336)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(182697792791538332)
,p_validation_name=>'va_ot'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  VCPH     VARCHAR2(10) := ''N'';',
'  VIOT     VARCHAR2(10) := ''N'';',
'  VEMPRESA VARCHAR2(10) := ''NGO'';',
'  vexiste varchar2(20):=''N'';',
'BEGIN',
'  BEGIN',
'    SELECT ES_CPH, VINVENTARIO_OT',
'      INTO VCPH, VIOT',
'      FROM v_inventario_movil',
'     WHERE NRO_COMPROBANTE = :P567_NRO_INVENTARIO;',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      VCPH := ''N'';      VIOT := ''N'';',
'  END;',
'  IF VCPH = ''S'' THEN',
'    VEMPRESA := ''CPH'';',
'     ELSIF VCPH = ''T'' THEN',
'    VEMPRESA := ''TF'';',
'     ELSIF VCPH = ''N'' THEN',
'    VEMPRESA := ''NGO'';',
'  END IF;',
'  ',
'  IF VIOT = ''S''   THEN',
'    IF VEMPRESA=''NGO'' THEN',
'begin',
'select ''S''',
' into vexiste',
'from sm_inventario_det d, ESTADO_ORD_TRABAJO es',
'WHERE INVENTORY_AREA = :P567_NRO_INVENTARIO',
'and d.cod_articulo=:P567_COD_PRODUCTO',
' and es.ser_comprobante||es.nro_comprobante = d.cod_articulo',
'and rownum=1;',
'exception when others then',
'vexiste:=''N'';',
'end;',
'if NVL(vexiste,''N'')=''N'' THEN',
'',
'begin',
'select ''S''',
' into vexiste',
'from sm_inventario_det d, ESTADO_ORD_TRABAJO es',
'WHERE INVENTORY_AREA = :P567_NRO_INVENTARIO',
'and d.codigo_inv_ot_art=:P567_COD_PRODUCTO',
' and es.ser_comprobante||es.nro_comprobante = d.codigo_inv_ot_art',
'and rownum=1;',
'exception when others then',
'vexiste:=''N'';',
'end;',
'END IF;',
'',
'ELSIF  VEMPRESA=''CPH'' THEN',
'begin',
'select ''S''',
' into vexiste',
'from sm_inventario_det d, ESTADO_ORD_TRABAJO@DBLINK_CPH es',
'WHERE INVENTORY_AREA = :P567_NRO_INVENTARIO',
'and d.cod_articulo=:P567_COD_PRODUCTO',
' and es.ser_comprobante||es.nro_comprobante = d.cod_articulo',
'and rownum=1;',
'exception when others then',
'vexiste:=''N'';',
'end;',
'if NVL(vexiste,''N'')=''N'' THEN',
'begin',
'select ''S''',
' into vexiste',
'from sm_inventario_det d, ESTADO_ORD_TRABAJO@DBLINK_CPH es',
'WHERE INVENTORY_AREA = :P567_NRO_INVENTARIO',
'and d.codigo_inv_ot_art=:P567_COD_PRODUCTO',
' and es.ser_comprobante||es.nro_comprobante = d.codigo_inv_ot_art',
'and rownum=1;',
'exception when others then',
'vexiste:=''N'';',
'end;',
'END IF;',
'',
'END IF;',
'',
'if vexiste =''S'' THEN',
'RETURN FALSE;',
'ELSE ',
'RETURN TRUE;',
'END IF;',
'  END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Error la OT ya fue cargada &P567_COD_PRODUCTO.'
,p_associated_item=>wwv_flow_imp.id(182695625317538337)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(182698863391538331)
,p_name=>'da_articulo'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(182693675000538338)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(182699365460538330)
,p_event_id=>wwv_flow_imp.id(182698863391538331)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN SP_INVENTARIO_GET_PRODUCTO(:P567_NRO_INVENTARIO       ,',
'                                                            :P567_COD_ARTICULO  ,',
'                                                            :P567_COD_PRODUCTO      ,',
'                                                            :P567_DESCRIPCION_PRODUCTO ,',
'                                                            :P567_COD_ARTICULO_OT,',
'                                                            :P567_RESOLUCION_ST   ) ;',
'                                                            END;'))
,p_attribute_02=>'P567_COD_ARTICULO'
,p_attribute_03=>'P567_COD_PRODUCTO,P567_DESCRIPCION_PRODUCTO,P567_COD_ARTICULO_OT,P567_CANTIDAD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(182699894308538330)
,p_event_id=>wwv_flow_imp.id(182698863391538331)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  VCPH     VARCHAR2(10) := ''N'';',
'  VIOT     VARCHAR2(10) := ''N'';',
'  VEMPRESA VARCHAR2(10) := ''NGO'';',
'BEGIN',
'  BEGIN',
'    SELECT ES_CPH, VINVENTARIO_OT',
'      INTO VCPH, VIOT',
'      FROM v_inventario_movil',
'     WHERE NRO_COMPROBANTE = :P567_NRO_INVENTARIO;',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      VCPH := ''N'';      VIOT := ''N'';',
'  END;',
'  IF VCPH = ''S'' THEN',
'    VEMPRESA := ''CPH'';',
'    elsiF VCPH = ''T'' THEN',
'    VEMPRESA := ''TF'';',
'      elsiF VCPH = ''B'' THEN',
'    VEMPRESA := ''BH'';',
'  END IF;',
'  IF VIOT = ''S'' THEN',
'    ',
'  :P567_CANTIDAD:=1;',
'  else ',
'  :P567_CANTIDAD:=null;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P567_COD_ARTICULO'
,p_attribute_03=>'P567_CANTIDAD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(182700268378538329)
,p_name=>'New'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(182700794719538329)
,p_event_id=>wwv_flow_imp.id(182700268378538329)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P567_COD_PRODUCTO:=null; :P567_DESCRIPCION_PRODUCTO:=null;',
':P567_COD_ARTICULO:=null;',
'/*:P567_COD_PRODUCTO:=null; :P567_DESCRIPCION_PRODUCTO:=null;',
':P567_COD_ARTICULO:=null;',
'select COD_ARTICULO, DESCRIPCION',
' into :P567_COD_PRODUCTO, :P567_DESCRIPCION_PRODUCTO',
'from st_articulos a where cod_empresa=''1''',
'and (cod_articulo = :P567_COD_ARTICULO);',
'exception when others then',
'begin',
'select COD_ARTICULO, DESCRIPCION',
' into :P567_COD_PRODUCTO, :P567_DESCRIPCION_PRODUCTO',
'from st_articulos a where cod_empresa=''1''',
'and (cod_art_corto = :P567_COD_ARTICULO);',
'exception when others then',
'begin',
'select COD_ARTICULO, DESCRIPCION',
' into :P567_COD_PRODUCTO, :P567_DESCRIPCION_PRODUCTO',
'from st_articulos a where cod_empresa=''1''',
'and (cod_ean = :P567_COD_ARTICULO);',
'exception when others then',
'  ',
'end;',
'end;*/',
'end;'))
,p_attribute_03=>'P567_COD_PRODUCTO,P567_DESCRIPCION_PRODUCTO,P567_COD_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(182701107433538329)
,p_name=>'Actualizar'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(182692165455538339)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(182701609746538327)
,p_event_id=>wwv_flow_imp.id(182701107433538329)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(587279739986862823)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(182702081047538327)
,p_name=>'New_1'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(182702557701538327)
,p_event_id=>wwv_flow_imp.id(182702081047538327)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(587279739986862823)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(182703048805538327)
,p_event_id=>wwv_flow_imp.id(182702081047538327)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(182694045093538338)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(245895279858347507)
,p_name=>'da_solo_numeros'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P567_CANTIDAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(245895366939347508)
,p_event_id=>wwv_flow_imp.id(245895279858347507)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumerosEnteros(event)){',
'      event.preventDefault();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(390605927076583016)
,p_name=>'New_3'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(390606006804583017)
,p_event_id=>wwv_flow_imp.id(390605927076583016)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.getElementById("CREATE_BUTTON").enabled=true;'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(182698418035538332)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'envia_cantidad'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'vdatos varchar2(400);',
'begin',
'SP_INVENTARIO_DET_manual(1          ,',
'                                              :P567_NRO_INVENTARIO ,',
'                                             :P567_NRO_INVENTARIO,',
'                                              :P567_ZONA,',
'                                              V(''APP_USER''),',
'                                             to_char(sysdate,''yy-mm-dd hh24:mi:ss''),',
'                                              NVL(:P567_COD_ARTICULO_OT,:P567_COD_ARTICULO),',
'                                             :P567_COD_ARTICULO,',
'                                              :P567_COD_PRODUCTO,',
'                                              :P567_cantidad       ,',
'                                             ''Carga Apex'',',
'                                              null,',
'                                              vdAtos         );',
'',
':P567_ITEM_ANTERIOR:=:P567_COD_PRODUCTO;',
':P567_COD_PRODUCTO:=null; :P567_DESCRIPCION_PRODUCTO :=null;:P567_CANTIDAD:=null;    :P567_COD_ARTICULO_OT:=null;                                         ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error cantidad no enviada'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(182693242556538338)
,p_process_success_message=>'Articulo Enviado &P567_ITEM_ANTERIOR.'
);
wwv_flow_imp.component_end;
end;
/
