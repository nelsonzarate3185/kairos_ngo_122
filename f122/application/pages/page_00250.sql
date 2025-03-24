prompt --application/pages/page_00250
begin
--   Manifest
--     PAGE: 00250
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
 p_id=>250
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Problemas y Soluciones'
,p_alias=>'PROBLEMAS-Y-SOLUCIONES'
,p_page_mode=>'MODAL'
,p_step_title=>'Problemas y Soluciones'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(40080790783263649)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'16'
,p_last_updated_by=>'HSEGOVIA'
,p_last_upd_yyyymmddhh24miss=>'20230216094255'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(166836789222313191)
,p_plug_name=>'<span style="display:none">Item</span>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'Style="background:#DCDCDC;width:100%;"'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61038231633152033)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(166836789222313191)
,p_button_name=>'Cancelar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(61038674920152034)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(166836789222313191)
,p_button_name=>'Agregar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(61047037585152084)
,p_branch_name=>'IR_A LA PAGINA_244'
,p_branch_action=>'f?p=&APP_ID.:244:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(61038674920152034)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61039084584152035)
,p_name=>'P250_COD_ORIGEN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(166836789222313191)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61039496303152035)
,p_name=>'P250_PROBLEMA_CLIENTE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(166836789222313191)
,p_prompt=>'Problema Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select P.DESCRIPCION, P.cod_problema ',
'from  ca_problemas  p, ca_problemas_articulos  a, st_articulos  ar',
'where P.COD_EMPRESA=A.COD_EMPRESA',
'AND P.COD_PROBLEMA =A.COD_PROBLEMA',
'and ar.cod_empresa=p.cod_empresa',
'and ar.cod_Articulo=:P250_COD_ARTICULO',
'AND a.cod_Articulo  =:P250_COD_ARTICULO',
'',
'AND a.cod_Articulo  =:P250_COD_ARTICULO',
'AND AR.COD_CATEGORIA NOT IN (SELECT CPS.COD_CATEGORIA',
'FROM CA_CATEGORIAS_PRO_SOL  CPS',
'WHERE CPS.COD_EMPRESA=AR.COD_EMPRESA',
'AND CPS.COD_CATEGORIA=AR.COD_CATEGORIA)',
'union all',
'select P.DESCRIPCION, P.cod_problema',
'from  ca_problemas  p ,st_articulos  AR',
'where P.cod_empresa = ''1''',
'and p.cod_problema not in nvl((select a.cod_problema',
'from   ca_problemas_articulos  a ',
' where  P.COD_EMPRESA=A.COD_EMPRESA',
'AND P.COD_PROBLEMA =A.COD_PROBLEMA',
'AND a.cod_Articulo  = :P250_COD_ARTICULO',
'),''1'')',
'and P.cod_empresa = ''1''',
'AND AR.COD_CATEGORIA NOT IN (SELECT CPS.COD_CATEGORIA',
'FROM CA_CATEGORIAS_PRO_SOL  CPS',
'WHERE CPS.COD_EMPRESA=AR.COD_EMPRESA',
'AND CPS.COD_CATEGORIA=AR.COD_CATEGORIA)',
'',
'and ar.cod_empresa=p.cod_empresa',
'and ar.cod_Articulo=:P250_COD_ARTICULO',
'',
'union all',
'select P.DESCRIPCION, P.cod_problema ',
'from  ca_problemas  p, ca_problemas_articulos  a, st_articulos  ar, CA_CATEGORIAS_PRO_SOL  cps',
'where P.COD_EMPRESA=A.COD_EMPRESA',
'AND P.COD_PROBLEMA =A.COD_PROBLEMA',
'and ar.cod_empresa=p.cod_empresa',
'and ar.cod_Articulo=:P250_COD_ARTICULO',
'AND a.cod_Articulo  =:P250_COD_ARTICULO',
'',
'and P.cod_empresa = ''1''',
'AND a.cod_Articulo  =:P250_COD_ARTICULO',
'and ar.cod_empresa=cps.cod_empresa',
'AND AR.COD_CATEGORIA= cps.cod_categoria',
'and p.cod_problema=cps.cod_problema',
'group by P.DESCRIPCION, P.cod_problema',
'union all',
'select P.DESCRIPCION, P.cod_problema',
'from  ca_problemas  p ,st_articulos  AR, CA_CATEGORIAS_PRO_SOL  cps',
'where P.cod_empresa = ''1''',
'and p.cod_problema not in nvl((select a.cod_problema',
'from   ca_problemas_articulos  a ',
' where  P.COD_EMPRESA=A.COD_EMPRESA',
'AND P.COD_PROBLEMA =A.COD_PROBLEMA',
'',
'',
'AND a.cod_Articulo  = :P250_COD_ARTICULO',
'),''1'')',
'and P.cod_empresa = ''1''',
'',
'',
'and ar.cod_empresa=p.cod_empresa',
'and ar.cod_Articulo=:P250_COD_ARTICULO',
'and ar.cod_empresa=cps.cod_empresa',
'AND AR.COD_CATEGORIA= cps.cod_categoria',
'and p.cod_problema=cps.cod_problema',
'group by P.DESCRIPCION, P.cod_problema',
'order by 2,1'))
,p_lov_display_null=>'YES'
,p_cSize=>90
,p_field_template=>wwv_flow_imp.id(40186463825263678)
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
 p_id=>wwv_flow_imp.id(61039868742152037)
,p_name=>'P250_CODIGO_PROBLEMA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(166836789222313191)
,p_prompt=>'Problema'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select P.DESCRIPCION, P.cod_problema ',
'from  ca_problemas  p, ca_problemas_articulos  a, st_articulos  ar',
'where P.COD_EMPRESA=A.COD_EMPRESA',
'AND P.COD_PROBLEMA =A.COD_PROBLEMA',
'and ar.cod_empresa=p.cod_empresa',
'and ar.cod_Articulo=:P250_COD_ARTICULO',
'AND a.cod_Articulo  =:P250_COD_ARTICULO',
'',
'AND a.cod_Articulo  =:P250_COD_ARTICULO',
'AND AR.COD_CATEGORIA NOT IN (SELECT CPS.COD_CATEGORIA',
'FROM CA_CATEGORIAS_PRO_SOL  CPS',
'WHERE CPS.COD_EMPRESA=AR.COD_EMPRESA',
'AND CPS.COD_CATEGORIA=AR.COD_CATEGORIA)',
'union all',
'select P.DESCRIPCION, P.cod_problema',
'from  ca_problemas  p ,st_articulos  AR',
'where P.cod_empresa = ''1''',
'and p.cod_problema not in nvl((select a.cod_problema',
'from   ca_problemas_articulos  a ',
' where  P.COD_EMPRESA=A.COD_EMPRESA',
'AND P.COD_PROBLEMA =A.COD_PROBLEMA',
'AND a.cod_Articulo  = :P250_COD_ARTICULO',
'),''1'')',
'and P.cod_empresa = ''1''',
'AND AR.COD_CATEGORIA NOT IN (SELECT CPS.COD_CATEGORIA',
'FROM CA_CATEGORIAS_PRO_SOL  CPS',
'WHERE CPS.COD_EMPRESA=AR.COD_EMPRESA',
'AND CPS.COD_CATEGORIA=AR.COD_CATEGORIA)',
'',
'and ar.cod_empresa=p.cod_empresa',
'and ar.cod_Articulo=:P250_COD_ARTICULO',
'',
'union all',
'select P.DESCRIPCION, P.cod_problema ',
'from  ca_problemas  p, ca_problemas_articulos  a, st_articulos  ar, CA_CATEGORIAS_PRO_SOL  cps',
'where P.COD_EMPRESA=A.COD_EMPRESA',
'AND P.COD_PROBLEMA =A.COD_PROBLEMA',
'and ar.cod_empresa=p.cod_empresa',
'and ar.cod_Articulo=:P250_COD_ARTICULO',
'AND a.cod_Articulo  =:P250_COD_ARTICULO',
'',
'and P.cod_empresa = ''1''',
'AND a.cod_Articulo  =:P250_COD_ARTICULO',
'and ar.cod_empresa=cps.cod_empresa',
'AND AR.COD_CATEGORIA= cps.cod_categoria',
'and p.cod_problema=cps.cod_problema',
'group by P.DESCRIPCION, P.cod_problema',
'union all',
'select P.DESCRIPCION, P.cod_problema',
'from  ca_problemas  p ,st_articulos  AR, CA_CATEGORIAS_PRO_SOL  cps',
'where P.cod_empresa = ''1''',
'and p.cod_problema not in nvl((select a.cod_problema',
'from   ca_problemas_articulos  a ',
' where  P.COD_EMPRESA=A.COD_EMPRESA',
'AND P.COD_PROBLEMA =A.COD_PROBLEMA',
'',
'',
'AND a.cod_Articulo  = :P250_COD_ARTICULO',
'),''1'')',
'and P.cod_empresa = ''1''',
'',
'',
'and ar.cod_empresa=p.cod_empresa',
'and ar.cod_Articulo=:P250_COD_ARTICULO',
'and ar.cod_empresa=cps.cod_empresa',
'AND AR.COD_CATEGORIA= cps.cod_categoria',
'and p.cod_problema=cps.cod_problema',
'group by P.DESCRIPCION, P.cod_problema',
'order by 2,1'))
,p_lov_display_null=>'YES'
,p_cSize=>90
,p_field_template=>wwv_flow_imp.id(40186463825263678)
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
 p_id=>wwv_flow_imp.id(61040240818152037)
,p_name=>'P250_CODIGO_SOLUCION'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(166836789222313191)
,p_prompt=>'Solucion'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select P.DESCRIPCION, P.Cod_Solucion ',
'from  CA_SOLUCIONES  p, CA_SOLUCIONES_ARTICULOS  a, st_articulos  ar',
'where P.COD_EMPRESA=A.COD_EMPRESA',
'AND P.COD_SOLUCION =A.COD_SOLUCION',
'and ar.cod_empresa=p.cod_empresa',
'AND NVL(P.ESTADO,''S'')<>''N''',
'and ar.cod_articulo=:P250_cod_Articulo ',
' ',
'AND a.cod_articulo  =:P250_cod_Articulo ',
'',
'and P.cod_empresa = ''1''',
'AND a.cod_articulo  =:P250_cod_Articulo ',
'',
'AND AR.COD_CATEGORIA NOT IN (SELECT CPS.COD_CATEGORIA',
'FROM CA_CATEGORIAS_PRO_SOL  CPS',
'WHERE CPS.COD_EMPRESA=AR.COD_EMPRESA',
'AND CPS.COD_CATEGORIA=AR.COD_CATEGORIA)',
'',
'union all',
'select P.DESCRIPCION, P.COD_SOLUCION',
'from  CA_SOLUCIONES  p ,st_articulos  AR',
'where P.cod_empresa =''1''',
' ',
'AND NVL(P.ESTADO,''S'')<>''N''',
'and p.COD_SOLUCION not in nvl((select a.COD_SOLUCION',
'from   CA_SOLUCIONES_ARTICULOS  a ',
' where  P.COD_EMPRESA=A.COD_EMPRESA',
'AND P.COD_SOLUCION =A.COD_SOLUCION',
'',
'',
'',
'AND a.cod_articulo  = :P250_cod_Articulo ',
'),''1'')',
'and P.cod_empresa =''1''',
'',
'AND NVL(P.ESTADO,''S'')<>''N''',
'and ar.cod_empresa=p.cod_empresa',
'and ar.cod_articulo=:P250_cod_Articulo ',
'AND AR.COD_CATEGORIA NOT IN (SELECT CPS.COD_CATEGORIA',
'FROM CA_CATEGORIAS_PRO_SOL  CPS',
'WHERE CPS.COD_EMPRESA=AR.COD_EMPRESA',
'AND CPS.COD_CATEGORIA=AR.COD_CATEGORIA)',
'union all',
'select P.DESCRIPCION, P.Cod_Solucion',
'from  CA_SOLUCIONES  p, CA_SOLUCIONES_ARTICULOS  a, st_articulos  ar,',
'CA_CATEGORIAS_PRO_SOL  CPS',
'where P.COD_EMPRESA=A.COD_EMPRESA',
'AND P.COD_SOLUCION =A.COD_SOLUCION',
'and ar.cod_empresa=p.cod_empresa',
'AND NVL(P.ESTADO,''S'')<>''N''',
'and ar.cod_articulo=:P250_cod_Articulo  ',
'AND a.cod_articulo  =:P250_cod_Articulo ',
'and P.cod_empresa = ''1''',
'AND a.cod_articulo  =:P250_cod_Articulo ',
'and  CPS.COD_EMPRESA=AR.COD_EMPRESA',
'AND CPS.COD_CATEGORIA=AR.COD_CATEGORIA',
'and cps.cod_solucion=p.cod_solucion',
'and cps.cod_problema=:P250_CODIGO_PROBLEMA',
'group by  P.DESCRIPCION, P.COD_SOLUCION',
'union all',
'select P.DESCRIPCION, P.COD_SOLUCION',
'from  CA_SOLUCIONES  p ,st_articulos  AR,CA_CATEGORIAS_PRO_SOL  CPS',
'where P.cod_empresa = ''1''',
' ',
'AND NVL(P.ESTADO,''S'')<>''N''',
'and p.COD_SOLUCION not in nvl((select a.COD_SOLUCION',
'from   CA_SOLUCIONES_ARTICULOS  a ',
' where  P.COD_EMPRESA=A.COD_EMPRESA',
'AND P.COD_SOLUCION =A.COD_SOLUCION',
'',
'',
'',
'AND a.cod_articulo  = :P250_cod_Articulo ',
'),''1'')',
'and P.cod_empresa = ''1''',
'',
'AND NVL(P.ESTADO,''S'')<>''N''',
'and ar.cod_empresa=p.cod_empresa',
'and ar.cod_articulo=:P250_cod_Articulo ',
'',
'and  CPS.COD_EMPRESA=AR.COD_EMPRESA',
'AND CPS.COD_CATEGORIA=AR.COD_CATEGORIA',
'and cps.cod_solucion=p.cod_solucion',
'and cps.cod_problema=:P250_codIGO_problema',
'group by  P.DESCRIPCION, P.COD_SOLUCION',
'order by 2,1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P250_CODIGO_PROBLEMA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>90
,p_field_template=>wwv_flow_imp.id(40186463825263678)
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
 p_id=>wwv_flow_imp.id(61040630086152037)
,p_name=>'P250_COD_CATEGORIA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(166836789222313191)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61041019853152037)
,p_name=>'P250_COD_FAMILIA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(166836789222313191)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61041405485152038)
,p_name=>'P250_COD_DIVISION'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(166836789222313191)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61041852905152038)
,p_name=>'P250_COD_LINEA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(166836789222313191)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61042288708152038)
,p_name=>'P250_COD_MARCA'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(166836789222313191)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61042607420152038)
,p_name=>'P250_COD_ARTICULO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(166836789222313191)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(61043457813152053)
,p_name=>'OBTIENE_DESCUENTO'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P250_CANTIDAD'
,p_condition_element=>'P250_CANTIDAD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61043986869152082)
,p_event_id=>wwv_flow_imp.id(61043457813152053)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P250_PORC_DESCUENTO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'',
'',
'nvl(f_descuento_tipo_cliente(:P250_cod_cliente, :P250_cod_condicion_venta,:P250_cod_lista_precio,:P250_cantidad ,:P250_cod_articulo, NULL),0)',
'',
'',
'descuento',
'',
'from dual',
''))
,p_attribute_07=>'P250_CANTIDAD'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(61044214442152082)
,p_name=>'obtiene_monto_total'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P250_PORC_DESCUENTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61044795305152083)
,p_event_id=>wwv_flow_imp.id(61044214442152082)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'VTIPO_IMPUESTO VARCHAR2(10);',
'VCOD_IVA VARCHAR2(10);',
'     vporc_iva       NUMBER;',
'     vfec_vigencia DATE;',
'     vporcentaje   NUMBER(8,2);',
'     vexento_ad varchar2(5);',
'     vregimen_turismo       varchar2(5);',
'     VDECIMALES NUMBER;',
'      vexenta_regimen number;',
'  vgravada_regimen       number;',
'  vtotal_regimen number;',
'  viva_regimen  number;',
'  vrecargo number;',
'  	vdescuento         NUMBER;',
'		',
'		viva_rec           NUMBER;',
'		viva_des           NUMBER;',
'		vunitario          number;',
'                VMONTO_TOTAL NUMBER;',
'                VTOTAL_IVA NUMBER;',
'                VTOTAL NUMBER;',
'		vunitario_c_iva    number;',
'		vmonto_total_c_iva number;',
'',
'BEGIN',
'IF :P250_COD_MONEDA=''1'' THEN ',
'VDECIMALES:=0; ELSE VDECIMALES:=2; END IF;',
'BEGIN',
'SELECT  NVL(TIPO_IMPUESTO,''G'')',
' INTO VTIPO_IMPUESTO',
'FROM CC_CLIENTES  C',
'WHERE C.COD_EMPRESA=''1''',
'AND C.COD_CLIENTE=:P250_COD_CLIENTE;',
'EXCEPTION WHEN OTHERS THEN',
'VTIPO_IMPUESTO:=''G'';',
'END;',
'',
'BEGIN',
'     select',
'     ',
'            a.cod_iva',
'       into vcod_iva',
'       from st_articulos  a, st_iva  i',
'      where a.cod_empresa = ''1''',
'        and a.cod_articulo = :P250_cod_articulo',
'        and a.cod_iva = i.cod_iva (+);',
'        EXCEPTION WHEN OTHERS THEN',
'        VCOD_IVA:=''1'';',
'END;',
'',
'',
'   BEGIN',
'     vporcentaje := vporc_iva;',
'     select round(nvl( porc_iva_venta,0) / 100,2), nvl(ind_exento_ad,''N''),',
'      nvl(ind_regimen_turismo,''N'')',
'       into  vporc_iva, vexento_ad,vregimen_turismo',
'       from st_iva  iva',
'      where iva.cod_iva = vcod_iva',
'        and iva.fec_vigencia <= sysdate ',
'      order by fec_vigencia desc;',
'      exception when others then null;',
'      end;',
'',
'IF nvl( VTIPO_IMPUESTO, ''G'' ) = ''E''   THEN',
'       vporcentaje := 0;',
'       vporc_iva := 0;',
'     END IF;',
'   ',
'      IF  NVL(vtipo_impuesto, ''G'' ) = ''T''  ',
'            AND  nvl(vregimen_turismo,''N'') = ''S''       THEN',
'       vporcentaje := round(1.5/100,3);',
'       vporc_iva := round(1.5/100,3);',
'      END IF;',
'',
'',
'	if nvl(Vporc_iva, 0) = 0 then',
'				vunitario := round(nvl(:P250_precio_unitario, 0),nvl(Vdecimales, 0));           ',
'		else		',
'				vunitario       := round(nvl(:P250_precio_unitario, 0) /(1 + (nvl(Vporc_iva, 0))), nvl(Vdecimales, 0));',
'				',
'		end if;',
'                ',
'                ',
'        vdescuento:= vunitario * :P250_CANTIDAD*(:P250_PORC_DESCUENTO/100);        ',
'        vrecargo:= NVL(vunitario * :P250_CANTIDAD*(:P250_PORC_recargo/100),0);        ',
'VMONTO_TOTAL :=(VUNITARIO*:P250_CANTIDAD)-nvl(vdescuento,0)+nvl(vrecargo,0);',
'VTOTAL_IVA:= VMONTO_TOTAL*VPORC_IVA;',
'	if :Vporc_iva in(round(1.5/100,3),round(1.5/100,2)) then',
'  vtotal_regimen :=nvl(vmonto_total, 0)+nvl(vtotal_iva, 0);',
'              vgravada_regimen:= nvl(vtotal_regimen,0)/1.1; ',
'              vexenta_regimen:=vgravada_regimen*85/100;',
'              vgravada_regimen:=vgravada_regimen-vexenta_regimen;',
'              viva_regimen:=  vgravada_regimen/10  ;    ',
'              ',
'             Vmonto_total :=round(nvl(vgravada_regimen,0)+nvl(vexenta_regimen,0),nvl(vdecimales, 0));',
'                             Vtotal_iva:=  round(nvl(viva_regimen, 0) ,nvl(vdecimales, 0));     ',
'                           ',
'                   ',
'END IF;',
':P250_DESCUENTO:=ROUND(NVL(VDESCUENTO,0),nvl(vdecimales, 0));',
':P250_PORC_IVA:=VPORC_IVA;',
':P250_RECARGO:=NVL(VRECARGO,0);',
':P250_COD_IVA:=VCOD_IVA;',
':P250_MONTO_TOTAL:= ROUND(VMONTO_TOTAL,nvl(vdecimales, 0));',
':P250_TOTAL_IVA := ROUND(VTOTAL_IVA,nvl(vdecimales, 0));',
':P250_TOTAL:= ROUND(VMONTO_TOTAL+VTOTAL_IVA,nvl(vdecimales, 0));',
'END;'))
,p_attribute_02=>'P250_PORC_DESCUENTO,P250_PORC_RECARGO'
,p_attribute_03=>'P250_TOTAL_IVA,P250_MONTO_TOTAL,P250_TOTAL,P250_COD_IVA,P250_PORC_IVA,P250_DESCUENTO,P250_RECARGO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(61045110818152083)
,p_name=>'OBTIENE_MONTO_RECARGO'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P250_PORC_RECARGO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61045661558152083)
,p_event_id=>wwv_flow_imp.id(61045110818152083)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'VTIPO_IMPUESTO VARCHAR2(10);',
'VCOD_IVA VARCHAR2(10);',
'     vporc_iva       NUMBER;',
'     vfec_vigencia DATE;',
'     vporcentaje   NUMBER(8,2);',
'     vexento_ad varchar2(5);',
'     vregimen_turismo       varchar2(5);',
'     VDECIMALES NUMBER;',
'      vexenta_regimen number;',
'  vgravada_regimen       number;',
'  vtotal_regimen number;',
'  viva_regimen  number;',
'  vrecargo number;',
'  	vdescuento         NUMBER;',
'		',
'		viva_rec           NUMBER;',
'		viva_des           NUMBER;',
'		vunitario          number;',
'                VMONTO_TOTAL NUMBER;',
'                VTOTAL_IVA NUMBER;',
'                VTOTAL NUMBER;',
'		vunitario_c_iva    number;',
'		vmonto_total_c_iva number;',
'',
'BEGIN',
'IF :P250_COD_MONEDA=''1'' THEN ',
'VDECIMALES:=0; ELSE VDECIMALES:=2; END IF;',
'BEGIN',
'SELECT  NVL(TIPO_IMPUESTO,''G'')',
' INTO VTIPO_IMPUESTO',
'FROM CC_CLIENTES  C',
'WHERE C.COD_EMPRESA=''1''',
'AND C.COD_CLIENTE=:P250_COD_CLIENTE;',
'EXCEPTION WHEN OTHERS THEN',
'VTIPO_IMPUESTO:=''G'';',
'END;',
'',
'BEGIN',
'     select',
'     ',
'            a.cod_iva',
'       into vcod_iva',
'       from st_articulos  a, st_iva  i',
'      where a.cod_empresa = ''1''',
'        and a.cod_articulo = :P250_cod_articulo',
'        and a.cod_iva = i.cod_iva (+);',
'        EXCEPTION WHEN OTHERS THEN',
'        VCOD_IVA:=''1'';',
'END;',
'',
'',
'   BEGIN',
'     vporcentaje := vporc_iva;',
'     select round(nvl( porc_iva_venta,0) / 100,2), nvl(ind_exento_ad,''N''),',
'      nvl(ind_regimen_turismo,''N'')',
'       into  vporc_iva, vexento_ad,vregimen_turismo',
'       from st_iva  iva',
'      where iva.cod_iva = vcod_iva',
'        and iva.fec_vigencia <= sysdate ',
'      order by fec_vigencia desc;',
'      exception when others then null;',
'      end;',
'',
'IF nvl( VTIPO_IMPUESTO, ''G'' ) = ''E''   THEN',
'       vporcentaje := 0;',
'       vporc_iva := 0;',
'     END IF;',
'   ',
'      IF  NVL(vtipo_impuesto, ''G'' ) = ''T''  ',
'            AND  nvl(vregimen_turismo,''N'') = ''S''       THEN',
'       vporcentaje := round(1.5/100,3);',
'       vporc_iva := round(1.5/100,3);',
'      END IF;',
'',
'',
'	if nvl(Vporc_iva, 0) = 0 then',
'				vunitario := round(nvl(:P250_precio_unitario, 0),nvl(Vdecimales, 0));           ',
'		else		',
'				vunitario       := round(nvl(:P250_precio_unitario, 0) /(1 + (nvl(Vporc_iva, 0))), nvl(Vdecimales, 0));',
'				',
'		end if;',
'                ',
'                ',
'        vdescuento:= vunitario * :P250_CANTIDAD*(:P250_PORC_DESCUENTO/100);        ',
'        vrecargo:= NVL(vunitario * :P250_CANTIDAD*(:P250_PORC_recargo/100),0);        ',
'VMONTO_TOTAL :=(VUNITARIO*:P250_CANTIDAD)-nvl(vdescuento,0)+nvl(vrecargo,0);',
'VTOTAL_IVA:= VMONTO_TOTAL*VPORC_IVA;',
'	if :Vporc_iva in(round(1.5/100,3),round(1.5/100,2)) then',
'  vtotal_regimen :=nvl(vmonto_total, 0)+nvl(vtotal_iva, 0);',
'              vgravada_regimen:= nvl(vtotal_regimen,0)/1.1; ',
'              vexenta_regimen:=vgravada_regimen*85/100;',
'              vgravada_regimen:=vgravada_regimen-vexenta_regimen;',
'              viva_regimen:=  vgravada_regimen/10  ;    ',
'              ',
'             Vmonto_total :=round(nvl(vgravada_regimen,0)+nvl(vexenta_regimen,0),nvl(vdecimales, 0));',
'                             Vtotal_iva:=  round(nvl(viva_regimen, 0) ,nvl(vdecimales, 0));     ',
'                           ',
'                   ',
'END IF;',
'',
':P250_DESCUENTO:=ROUND(NVL(VDESCUENTO,0),nvl(vdecimales, 0));',
':P250_PORC_IVA:=VPORC_IVA;',
':P250_RECARGO:=NVL(VRECARGO,0);',
':P250_COD_IVA:=VCOD_IVA;',
':P250_MONTO_TOTAL:= ROUND(VMONTO_TOTAL,nvl(vdecimales, 0));',
':P250_TOTAL_IVA := ROUND(VTOTAL_IVA,nvl(vdecimales, 0));',
':P250_TOTAL:= ROUND(VMONTO_TOTAL+VTOTAL_IVA,nvl(vdecimales, 0));',
'END;'))
,p_attribute_02=>'P250_PORC_DESCUENTO,P250_PORC_RECARGO'
,p_attribute_03=>'P250_TOTAL_IVA,P250_MONTO_TOTAL,P250_TOTAL,P250_COD_IVA,P250_PORC_IVA,P250_DESCUENTO,P250_RECARGO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(61046072790152083)
,p_name=>'carga_inicial'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61046547686152083)
,p_event_id=>wwv_flow_imp.id(61046072790152083)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' select  cod_familia,cod_marca, cod_linea,cod_categoria, cod_familia, COD_DIVISION',
'    into :P250_COD_FAMILIA,:P250_COD_MARCA,:P250_COD_LINEA,:P250_COD_CATEGORIA,:P250_COD_FAMILIA, :P250_COD_DIVISION',
'    from st_articulos ',
'   where cod_empresa = ''1''',
'     and cod_articulo = :P250_cod_articulo;',
'end;'))
,p_attribute_03=>'P250_COD_CATEGORIA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61043033572152052)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'COLLECTION_CARGA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P250_CODIGO_PROBLEMA IS NOT NULL or :P250_PROBLEMA_CLIENTE IS NOT NULL THEN',
'',
'',
'        declare',
'            l_order_id    number;',
'            l_order_id_det    number;',
'            ',
'        begin',
'',
'            if not apex_collection.collection_exists(''VT_ORDENES_PROBLEMA1'') then ',
'                                    apex_collection.create_collection(''VT_ORDENES_PROBLEMA1'');                         ',
'            end if;',
'            apex_collection.add_member(',
'                    p_collection_name => ''VT_ORDENES_PROBLEMA1'',',
'                    p_c001            => :P250_PROBLEMA_CLIENTE, ',
'                --- p_c002            => v(''P250_CODIGO_PROBLEMA''), ',
'                    p_c003             => :P250_CODIGO_PROBLEMA,',
'                    p_c005            => :P250_CODIGO_SOLUCION ',
'                --- ,p_c006            => v(''P250_CODIGO_SOLUCION'') ',
'                   ,p_c008  =>''I''',
'                )',
'                ;',
'        exception',
'            WHEN OTHERs THEN',
'                apex_error.add_error(p_message => sqlerrm,',
'	                   p_display_location      => apex_error.c_inline_in_notification',
'                   );',
'        END;',
'ELSE',
'   apex_application.g_print_success_message := ''<span style="color:red">No se registro el PROBLEMA/SOLUCION</span>'';  ',
'END IF;',
'',
'',
'',
'',
' '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(61038674920152034)
);
wwv_flow_imp.component_end;
end;
/
