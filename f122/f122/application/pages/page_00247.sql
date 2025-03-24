prompt --application/pages/page_00247
begin
--   Manifest
--     PAGE: 00247
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
 p_id=>247
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CASESNC'
,p_alias=>'CASESNC'
,p_step_title=>'Seguimiento de Sol. No Conforme'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#btn, #btnew{ ',
'        margin-top: 15px;',
'        display: flex;',
'        background:white;',
'        background-image: linear-gradient(180deg, #ffee00e4  0%, #fff890 100%);',
'        color:  darkblue;',
'        justify-content: center;',
'        align-items: center; ',
'        box-shadow: #6585af 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color:  yellow;',
'}',
'',
'',
'.t-Form-label{',
'    color:  darkblue !important;',
'    font-weight: bold !important;',
'    }',
'',
'#reg_parametros {',
'      background-color: #487ab8 !important;',
'      box-shadow: black 1px 1px 5px 1px;}',
'',
'      ',
'#subreg {',
'      background-color: #487ab8 !important;',
'      }',
'  ',
' #P217_ACTIVO_LABEL , #a_Collapsible1_subreg_heading{ color: yellow !important;}',
' ',
' .t-Report-colHead {',
'      background: #003a85!important;',
'       color: yellow; ',
' }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240916153149'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(60907961678885915)
,p_name=>'Lista de Solicitudes No Conforme'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  C001 NRO_SOLICITUD',
'       ,C002 FEC_SOLICITUD',
'       ,C003 ESTADO  ',
'       ,C004 OPERACION  ',
'       ,C005 TIPO_COMPROBANTE',
'       ,C006 referencia   ',
'       ,C007 COD_SUCURSAL  ',
'       ,C008 COD_MOTIVO    ',
'       ,C009 DEPARTAMENTO  ',
'       ,C010 TIPO_SEGUIMIENTO',
'       ,C011 Vrowid   ',
'       ,C012 AUTORIZA_USER  ',
'       ,C013 CREA_USER    ',
'       ,C014 COD_CLIENTE',
'       , null ver',
'FROM APEX_COLLECTIONS  ',
'WHERE COLLECTION_NAME = ''CASESNC''  ',
'  order by 2,1'))
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_imp.id(60908328491885919)
,p_query_column_id=>1
,p_column_alias=>'NRO_SOLICITUD'
,p_column_display_sequence=>20
,p_column_heading=>'Numero'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60908499094885920)
,p_query_column_id=>2
,p_column_alias=>'FEC_SOLICITUD'
,p_column_display_sequence=>30
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60908599552885921)
,p_query_column_id=>3
,p_column_alias=>'ESTADO'
,p_column_display_sequence=>50
,p_column_heading=>'Estado'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60908682970885922)
,p_query_column_id=>4
,p_column_alias=>'OPERACION'
,p_column_display_sequence=>60
,p_column_heading=>'Operacion'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60908741964885923)
,p_query_column_id=>5
,p_column_alias=>'TIPO_COMPROBANTE'
,p_column_display_sequence=>70
,p_column_heading=>'Tipo Comp.'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60908864334885924)
,p_query_column_id=>6
,p_column_alias=>'REFERENCIA'
,p_column_display_sequence=>80
,p_column_heading=>'Comprobante Ref'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60908955671885925)
,p_query_column_id=>7
,p_column_alias=>'COD_SUCURSAL'
,p_column_display_sequence=>90
,p_column_heading=>'Suc.'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60909018944885926)
,p_query_column_id=>8
,p_column_alias=>'COD_MOTIVO'
,p_column_display_sequence=>130
,p_column_heading=>'Motivo'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'NEVER'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select UPPER(DESCRIPCION) DESCmot, COD_motivo',
'    from problemas_conformidad  M',
'    WHERE  M.COD_EMPRESA=''1'' '))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60909150558885927)
,p_query_column_id=>9
,p_column_alias=>'DEPARTAMENTO'
,p_column_display_sequence=>100
,p_column_heading=>'Departamento'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60909238426885928)
,p_query_column_id=>10
,p_column_alias=>'TIPO_SEGUIMIENTO'
,p_column_display_sequence=>110
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60909844150885934)
,p_query_column_id=>11
,p_column_alias=>'VROWID'
,p_column_display_sequence=>160
,p_column_heading=>'Vrowid'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60909487469885930)
,p_query_column_id=>12
,p_column_alias=>'AUTORIZA_USER'
,p_column_display_sequence=>140
,p_column_heading=>'Autorizado por'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60909564689885931)
,p_query_column_id=>13
,p_column_alias=>'CREA_USER'
,p_column_display_sequence=>150
,p_column_heading=>'Creado por'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60909739486885933)
,p_query_column_id=>14
,p_column_alias=>'COD_CLIENTE'
,p_column_display_sequence=>40
,p_column_heading=>'Cliente'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   select   substr(ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia))),0,50)nombre, c.cod_cliente ',
'		  from cc_clientes c, personas p',
'		 where c.cod_empresa = ''1''',
'		   and c.cod_persona = p.cod_persona'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60909635622885932)
,p_query_column_id=>15
,p_column_alias=>'VER'
,p_column_display_sequence=>10
,p_column_heading=>'Ver'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:146:&SESSION.::&DEBUG.::P146_ACCION,P146_ROWID_B:BSMENSAJ,#VROWID#'
,p_column_linktext=>'<span class="fa fa-search-plus" aria-hidden="true"></span>'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(109229118406372653)
,p_plug_name=>'PARAMETROS'
,p_region_name=>'reg_parametros'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(112705812548235125)
,p_plug_name=>'Ampliar Busqueda'
,p_region_name=>'subreg'
,p_parent_plug_id=>wwv_flow_imp.id(109229118406372653)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent1:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(60991779465826107)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(109229118406372653)
,p_button_name=>'BUSCAR'
,p_button_static_id=>'btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'FILTRAR'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60907668211885912)
,p_name=>'P247_FECHA_FIN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(112705812548235125)
,p_prompt=>'Fecha Hasta'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60907710064885913)
,p_name=>'P247_TIPO_COMPROBANTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(109229118406372653)
,p_prompt=>'Tipo Comprobante'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:ORDENES DE TRABAJO;OT,FACTURA VENTA;FV,FACTURA COMPRA;FC'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60907815904885914)
,p_name=>'P247_OPERACION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(109229118406372653)
,p_prompt=>'Operacion'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:NOTAS DE CREDITOS;NCR,CAMBIO;CMB,TRASLADO;TRA'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60992506096826110)
,p_name=>'P247_ESTADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(109229118406372653)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct estado, estado COD',
'from ca_conformidad ',
'where cod_empresa=:p_cod_empresa'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cHeight=>1
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60992939659826110)
,p_name=>'P247_RESPONSABLE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(109229118406372653)
,p_prompt=>'Dep. Responsable'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct DEPARTAMENTO, DEPARTAMENTO cod',
'from ca_conformidad ',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60993332109826110)
,p_name=>'P247_FECHA_INI'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(112705812548235125)
,p_prompt=>'Fecha Desde'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60993728858826111)
,p_name=>'P247_COD_ELIMINAR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(109229118406372653)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60994191740826111)
,p_name=>'P247_ACTUALIZA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(109229118406372653)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60994871842826112)
,p_name=>'P247_CLIENTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(112705812548235125)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   select ltrim(rtrim(nvl(p.nombre, p.nomb_fantasia)))nombre, c.cod_cliente ',
'		  from cc_clientes c, personas p',
'		 where c.cod_empresa = :p_cod_empresa',
'		   and c.cod_persona = p.cod_persona',
'       AND EXISTS (select distinct ''1''',
'                from ca_conformidad Cc',
'                WHERE Cc.cod_cliente=c.cod_cliente',
'                AND Cc.COD_EMPRESA=c.COD_EMPRESA',
'              );'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'NO_FETCH'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60995249047826112)
,p_name=>'P247_SUCURSAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(112705812548235125)
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'     select s.cod_sucursal||'' - ''||DESCRIPCION suc, s.cod_sucursal cod',
'    from sucursales s',
'    WHERE s.COD_EMPRESA=:p_cod_empresa',
'    AND EXISTS (select distinct ''1''',
'                from ca_conformidad C',
'                WHERE C.cod_sucursal=s.cod_sucursal',
'                AND C.COD_EMPRESA=s.COD_EMPRESA',
'              );'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60995625830826112)
,p_name=>'P247_MOTIVO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(112705812548235125)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'  select UPPER(DESCRIPCION) DESCmot, COD_motivo',
'    from problemas_conformidad  M',
'    WHERE  M.COD_EMPRESA=''1'' ',
'		AND EXISTS (select distinct ''1''',
'                from ca_conformidad C',
'                WHERE C.COD_motivo=M.COD_MOTIVO',
'                AND C.COD_EMPRESA=M.COD_EMPRESA',
'              )',
'   ORDER BY 1 ASC           		',
'		;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(60996010863826112)
,p_name=>'P247_DEPARTAMENTO_CREACION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(112705812548235125)
,p_prompt=>'Departamento Creacion'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'        select DISTINCT DEPARTAMENTO_CREACION, DEPARTAMENTO_CREACION COD',
'                from ca_conformidad C',
'                WHERE COD_EMPRESA=''1''',
'                AND DEPARTAMENTO_CREACION IS NOT NULL'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60908080343885916)
,p_name=>'da_cargar_lista'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(60991779465826107)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60909919556885935)
,p_event_id=>wwv_flow_imp.id(60908080343885916)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//ejecutar spinner',
'var spinner = apex.util.showSpinner();',
'//remover spinner',
'$("#apex_wait_overlay").remove();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60908126141885917)
,p_event_id=>wwv_flow_imp.id(60908080343885916)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  inv.casesnc.cargar_reporte(p_cod_empresa =>  :p_cod_empresa ,',
'                             p_estado => :p247_estado,',
'                             p_responsable => :p247_responsable,',
'                             p_operacion => :p247_operacion,',
'                             p_tipo_comprobante => :p247_tipo_comprobante,',
'                             p_fecha_ini => :p247_fecha_ini,',
'                             p_fecha_fin => :p247_fecha_fin,',
'                             p_departamento_creacion => :p247_departamento_creacion,',
'                             p_motivo => :p247_motivo,',
'                             p_cliente => :p247_cliente,',
'                             p_sucursal => :p247_sucursal);'))
,p_attribute_02=>'P247_ESTADO,P247_FECHA_INI,P247_FECHA_FIN,P247_RESPONSABLE,P247_DEPARTAMENTO_CREACION,P247_MOTIVO,P247_OPERACION,P247_CLIENTE,P247_TIPO_COMPROBANTE,P247_SUCURSAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60910069325885936)
,p_event_id=>wwv_flow_imp.id(60908080343885916)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(".u-Processing").remove();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60908236143885918)
,p_event_id=>wwv_flow_imp.id(60908080343885916)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(60907961678885915)
);
wwv_flow_imp.component_end;
end;
/
