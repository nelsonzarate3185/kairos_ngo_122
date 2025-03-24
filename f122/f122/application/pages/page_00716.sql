prompt --application/pages/page_00716
begin
--   Manifest
--     PAGE: 00716
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
 p_id=>716
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Metas Vendedores NP'
,p_alias=>'METAS-VENDEDORES-NP'
,p_step_title=>'Metas Vendedores NP'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#util_generico#MIN#.js'
,p_javascript_code=>' formatMiles(''P716_META''); '
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#PARAM{    ',
'  background-color: #487ab8  !important;',
'}',
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
'  background-color:#003a85    !important;',
'  color: #fff6a4  !important;',
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
'.a-IRR-table tr td { ',
'        color: black !important;',
'   }',
' ',
'.a-IRR-table td {',
'    border: 1px solid #003a85b7 !important;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20250205112018'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(268951818027157527)
,p_plug_name=>'Parametros'
,p_region_name=>'PARAM'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(268952177261157530)
,p_name=>'Metas'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT m.cod_vendedor,',
'         v.descripcion nom_vendedor,',
'         m.anio,',
'         m.mes,',
'         to_char(to_date(''01/''||m.mes||''/''||m.anio,''dd/mm/yyyy''),''MONTH'')nom_mes,',
'         m.meta_mes_cerrado,',
'        -- DECODE(NVL(TRIM(m.cod_marca),''0''),''0'',''VARIOS'',(SELECT DESCRIPCION FROM ST_MARCAS MM WHERE MM.COD_MARCA=m.cod_marca AND ROWNUM=1))  MARCA,',
'        -- m.porc_peso,',
'         DECODE(SUBSTR(M.DIVISION,1,1),''C'',''CORPORATIVO'',''G'',''GASTRONOMIA'',''R'',''REPUESTOS'',''DISTRIBUCION'')DIVISION,',
'        DECODE(M.ZONA,''I'',''INTERIOR'',''CAPITAL'')ZONA,',
'         M.ROWID del,',
'         M.ROWID edit',
'  FROM fv_metas_vend_mensual m,',
'       fv_vendedores v',
'  where m.cod_empresa=:P_COD_EMPRESA',
'  and   m.cod_empresa = v.cod_empresa',
'  and   m.cod_vendedor= v.cod_vendedor',
'  and   ( :P716_ANIO is null or :P716_ANIO=m.anio)',
'  and   ( :P716_MES is null or :P716_MES = m.mes)',
'  and   (:P716_VENDEDOR is null or :P716_VENDEDOR = m.cod_vendedor)',
'',
'order by m.cod_vendedor, m.anio desc,m.mes desc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P716_ANIO,P716_MES,P716_VENDEDOR'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(268952215027157531)
,p_query_column_id=>1
,p_column_alias=>'COD_VENDEDOR'
,p_column_display_sequence=>20
,p_column_heading=>'Codigo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(268952329559157532)
,p_query_column_id=>2
,p_column_alias=>'NOM_VENDEDOR'
,p_column_display_sequence=>30
,p_column_heading=>'Nombre Vendedor'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(268952495372157533)
,p_query_column_id=>3
,p_column_alias=>'ANIO'
,p_column_display_sequence=>40
,p_column_heading=>unistr('A\00F1o')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(268952502703157534)
,p_query_column_id=>4
,p_column_alias=>'MES'
,p_column_display_sequence=>60
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(268953572044157544)
,p_query_column_id=>5
,p_column_alias=>'NOM_MES'
,p_column_display_sequence=>50
,p_column_heading=>'Mes'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(268952620417157535)
,p_query_column_id=>6
,p_column_alias=>'META_MES_CERRADO'
,p_column_display_sequence=>90
,p_column_heading=>'Objetivo'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1017485973185915311)
,p_query_column_id=>7
,p_column_alias=>'DIVISION'
,p_column_display_sequence=>70
,p_column_heading=>'Division'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1017486008657915312)
,p_query_column_id=>8
,p_column_alias=>'ZONA'
,p_column_display_sequence=>80
,p_column_heading=>'Zona'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(268952930537157538)
,p_query_column_id=>9
,p_column_alias=>'DEL'
,p_column_display_sequence=>100
,p_column_heading=>'Del'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P716_DEL'',''#DEL#'');'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-note" aria-hidden="true"></span>'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(268953064989157539)
,p_query_column_id=>10
,p_column_alias=>'EDIT'
,p_column_display_sequence=>10
,p_column_heading=>'Edit'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P716_EDT'',''#EDIT#'');'
,p_column_linktext=>'<span aria-label="Editar"><span class="fa fa-edit" aria-hidden="true" title="Editar"></span></span>'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(268953606290157545)
,p_plug_name=>'CARGA DE METAS'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(269572436389862711)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(268953606290157545)
,p_button_name=>'aceptar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(268953278222157541)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(268952177261157530)
,p_button_name=>'Add_Meta'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cargar Meta'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(268951918285157528)
,p_name=>'P716_ANIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(268951818027157527)
,p_prompt=>unistr('A\00F1o')
,p_placeholder=>'AAAA'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'2000'
,p_attribute_02=>'3000'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(268952057809157529)
,p_name=>'P716_MES'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(268951818027157527)
,p_prompt=>'Mes'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LPAD(MES,2,''0'')||''-''||UPPER(DESCRIPCION) MES, LPAD(MES,2,''0'') COD',
'FROM MESES;',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET_FILTER'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(268953111921157540)
,p_name=>'P716_VENDEDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(268951818027157527)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VENDEDORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  F.COD_VENDEDOR||'' - ''||P.NOMBRE nombre,F.COD_VENDEDOR FROM FV_VENDEDORES F, PERSONAS P',
'WHERE F.COD_EMPRESA=:P_COD_EMPRESA',
'AND F.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(268953354785157542)
,p_name=>'P716_EDT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(268952177261157530)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(268953400761157543)
,p_name=>'P716_DEL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(268952177261157530)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(268953709806157546)
,p_name=>'P716_META'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(268953606290157545)
,p_prompt=>'Meta GS.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="text-align: end;"'
,p_colspan=>5
,p_grid_column=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(268953890038157547)
,p_name=>'P716_DIVISION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(268953606290157545)
,p_prompt=>'Division'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:DISTRIBUCION;D,GASTRONOMIA;G,REPUESTOS;R,CORPORATIVO;C'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET_FILTER'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(268953955024157548)
,p_name=>'P716_ZONA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(268953606290157545)
,p_prompt=>'Zona'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:CAPITAL;C,INTERIOR;I'
,p_cSize=>30
,p_cMaxlength=>3
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(268954008028157549)
,p_name=>'P716_ABM_ANIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(268953606290157545)
,p_prompt=>unistr('A\00F1o')
,p_placeholder=>'AAAA'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
,p_colspan=>3
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'2000'
,p_attribute_02=>'3000'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(268954128654157550)
,p_name=>'P716_ABM_MES'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(268953606290157545)
,p_prompt=>'Mes'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LPAD(MES,2,''0'')||''-''||UPPER(DESCRIPCION) MES, LPAD(MES,2,''0'') COD',
'FROM MESES;',
''))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET_FILTER'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(269571437271862701)
,p_name=>'P716_ABM_VENDEDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(268953606290157545)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VENDEDORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  F.COD_VENDEDOR||'' - ''||P.NOMBRE nombre,F.COD_VENDEDOR FROM FV_VENDEDORES F, PERSONAS P',
'WHERE F.COD_EMPRESA=:P_COD_EMPRESA',
'AND F.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I''',
'order by 1'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(269571575910862702)
,p_name=>'da_edt'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P716_EDT'
,p_condition_element=>'P716_EDT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(269572399127862710)
,p_event_id=>wwv_flow_imp.id(269571575910862702)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' select cod_vendedor, anio, mes, meta_mes_cerrado, nvl(DIVISION,''0''), nvl(ZONA ,''C'')',
' into :P716_ABM_VENDEDOR, :P716_ABM_ANIO, :P716_ABM_MES, :P716_META, :P716_DIVISION, :P716_ZONA',
' from inv.fv_metas_vend_mensual',
' where cod_empresa = :P_COD_EMPRESA',
' and ROWID = :P716_EDT; ',
'exception',
'    when others then',
'        null;',
'end;'))
,p_attribute_02=>'P716_EDT'
,p_attribute_03=>'P716_ABM_VENDEDOR,P716_ABM_ANIO,P716_ABM_MES,P716_ZONA,P716_DIVISION,P716_META'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(269571672577862703)
,p_event_id=>wwv_flow_imp.id(269571575910862702)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(268953606290157545)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(269571703462862704)
,p_name=>'da_delete'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P716_DEL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(269571892997862705)
,p_event_id=>wwv_flow_imp.id(269571703462862704)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro de borrar el registro?'
,p_attribute_02=>'Eliminar Meta'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(379344243287055045)
,p_event_id=>wwv_flow_imp.id(269571703462862704)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' begin',
'      delete FROM fv_metas_vend_mensual',
'      where cod_empresa= :P_COD_EMPRESA',
'      and ROWID= :P716_DEL',
'      ;',
'  exception',
'    when others then',
'        null;',
'end; '))
,p_attribute_02=>'P716_DEL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(269571931436862706)
,p_event_id=>wwv_flow_imp.id(269571703462862704)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(268952177261157530)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(269572023824862707)
,p_name=>'da_add'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(268953278222157541)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(269572171831862708)
,p_event_id=>wwv_flow_imp.id(269572023824862707)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(268953606290157545)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(269572210320862709)
,p_event_id=>wwv_flow_imp.id(269572023824862707)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P716_ABM_VENDEDOR,P716_ABM_MES,P716_ABM_ANIO,P716_ZONA,P716_DIVISION,P716_META,P716_EDT'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(269572520537862712)
,p_name=>'da_guardar'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(269572436389862711)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(269572686754862713)
,p_event_id=>wwv_flow_imp.id(269572520537862712)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P716_ABM_VENDEDOR IS NULL THEN',
'    raise_application_error(-20000, ''Debe seleccionar el Vendedor.'' );',
'ELSE',
'    IF :P716_ABM_ANIO IS NULL THEN',
unistr('        raise_application_error(-20000, ''Debe cargar en a\00F1o.'' );'),
'    ELSE',
'        IF :P716_ABM_MES IS NULL THEN',
'            raise_application_error(-20000, ''Debe seleccionar el mes.'' );',
'        ELSE',
'            IF NVL(replace(:P716_meta,''.'',''''),0)> 0 THEN',
'',
'                    begin',
'                        IF :P716_EDT IS NULL THEN',
'                             insert into inv.fv_metas_vend_mensual',
'                                   (cod_empresa, cod_vendedor, anio, mes, meta_mes_cerrado, cod_marca, porc_peso,DIVISION,ZONA)',
'                                 values',
'                                   (:P_COD_EMPRESA, :P716_ABM_VENDEDOR, :P716_ABM_ANIO, :P716_ABM_mes, replace(:P716_meta,''.'',''''),''0'',100, nvl(:P716_DIVISION,''0''), nvl(:P716_ZONA,''0'' ));',
'                                 ',
'                        ELSE',
'                             update inv.fv_metas_vend_mensual',
'                                set',
'                                    cod_vendedor = :P716_ABM_VENDEDOR,',
'                                    anio = :P716_ABM_ANIO,',
'                                    mes = :P716_ABM_mes,',
'                                    meta_mes_cerrado = replace(:P716_meta,''.'','''') ,',
'                                    DIVISION = nvl(:P716_DIVISION,''0''),',
'                                    ZONA = nvl(:P716_ZONA,''0'')',
'                              where  cod_empresa = :P_COD_EMPRESA                              ',
'                              and   ROWID = :P716_EDT;                              ',
'',
'                        END IF;',
'                   exception',
'                        when others then',
'                            raise_application_error(-20000, sqlerrm );',
'                   end;',
'            ELSE',
'                raise_application_error(-20000, ''Debe cargar correctamente la Meta.'' );',
'            END IF;',
'         END IF;',
'     END IF;',
' END IF;',
'',
'',
'',
'',
''))
,p_attribute_02=>'P716_ABM_VENDEDOR,P716_ABM_ANIO,P716_ABM_MES,P716_DIVISION,P716_ZONA,P716_META,P716_DEL,P716_EDT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(269572701773862714)
,p_event_id=>wwv_flow_imp.id(269572520537862712)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(268953606290157545)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(269572848390862715)
,p_event_id=>wwv_flow_imp.id(269572520537862712)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(268952177261157530)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(269572995456862716)
,p_name=>'DA_VND_REFRESH'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P716_VENDEDOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(269573094293862717)
,p_event_id=>wwv_flow_imp.id(269572995456862716)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(268952177261157530)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(269573197980862718)
,p_name=>'DA_MES_REFRESH'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P716_MES'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(269573246879862719)
,p_event_id=>wwv_flow_imp.id(269573197980862718)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(268952177261157530)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(269573339692862720)
,p_name=>'DA_ANI_REFRESH'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P716_ANIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(269573458396862721)
,p_event_id=>wwv_flow_imp.id(269573339692862720)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(268952177261157530)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(269573579790862722)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'limpiar'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_imp.component_end;
end;
/
