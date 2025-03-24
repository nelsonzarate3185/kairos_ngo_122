prompt --application/pages/page_00282
begin
--   Manifest
--     PAGE: 00282
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
 p_id=>282
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Seguimiento de Viaticos - CPGESVAL '
,p_alias=>'CPGESVAL'
,p_step_title=>'Seguimiento de Vales/Viaticos'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function entregar_vale(p_empresa, p_serie, p_nro){',
'    ',
'     var params = []',
'       params.push({ name: ''P_COD_EMPRESA'', value: p_empresa})',
'       params.push({ name: ''P_NRO_VALE'', value: p_nro})',
'       params.push({ name: ''P_SER_VALE'', value: p_serie}) ',
'       createReportUrl(''CPSVALE'', params)',
'        ',
'                            apex.server.process(',
'                            ''ESTADO_ENTREGADO'',',
'                            { x01: p_empresa,',
'                             x02: p_serie,',
'                             x03: p_nro ,                            ',
'                            },',
'                            {',
'                            success: function (pData) {',
'                                                            $(''#btn'').click();',
'                            }, ',
'                            });',
'}',
'',
'',
'',
'',
'function  estado_css()',
'{  ',
'      $(''td[headers="ESTADO"]'').each(function() {  ',
'        if ( $(this).text() === ''ENTREGADO'' ) { ',
'            $(this).css({"background-color":"lightblue"}); ',
'        }',
'        if ( $(this).text() === ''RENDIDO'' ) {',
'            $(this).css({"background-color":"#aec3b0"}); ',
'        }',
'        if ( $(this).text() === ''PROCESADO'' ) {',
'            $(this).css({"background-color":"#f5cb5c"});',
'        }',
'        if ( $(this).text() === ''RECHAZADO'' ) {',
'            $(this).css({"background-color":"#ff5636"});',
'        } ',
'',
'        if ( $(this).text() === ''APROBADO'' ) {',
'                    $(this).css({"background-color":"lightgreen"});',
'                } ',
'        if ( $(this).text() === ''SOLICITADO'' ) {',
'                    $(this).css({"background-color":"#f0f3bd"});',
'                }',
'         if ( $(this).text() === ''FINALIZADO'' ) {',
'            $(this).css({"background-color":"#9eb3c2"});',
'        } ',
'        });',
'        ',
'}',
' ',
' '))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
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
'  .t-Report-colHead {',
'      background: #003a85!important;',
'       color: yellow; ',
' }',
'',
'',
'',
'    #ENTREGADO{',
'      background: #a9def9!important; ',
' }',
'    #SOLICITADO{',
'      background: #b0c4b1!important; ',
' }',
'    #RECHAZADO{',
'      background: #f08080!important; ',
' }',
'    #RENDIDO{',
'      background: #003a85!important; ',
' }',
'    #PROCESADO{',
'      background: #003a85!important; ',
' }',
'    #FINALIZADO{',
'      background: #003a85!important; ',
' }',
'    #APROBADO{',
'      background: #d0f4de!important;',
'       color: yellow; ',
' }',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'PABLOALV'
,p_last_upd_yyyymmddhh24miss=>'20240916133703'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(118773533759770239)
,p_plug_name=>'PARAMETROS'
,p_region_name=>'reg_parametros'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(119034452933743794)
,p_name=>'Grilla de Vales'
,p_region_name=>'grilla'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  C004 SER',
'       ,C001 NRO',
'       ,C002 FECHA',
'       , C003 ESTADO  ',
'       ,C005 TIPO  ',
'       ,C006 ORDEN   ',
'       ,C007 CONCEPTO  ',
'       ,to_char(C008,''999G999G999G990'') MONTO  ',
'       ,C009 AUTORIZADO_POR',
'       ,C010 FECHA_AUTO',
'       ,C011 SUC',
'       ,C012 IDREG ',
'       , null eliminar',
'       , null editar',
'       ,C003 FECHA_ENTREGA  ',
'        /*, decode(C013,null, ''<button  type="button"  id="btndet" ''||DECODE(C003,''APROBADO'','' onclick="entregar_vale(1, ''''''||C004||'''''', ''''''||C001||'''''')"'' ,'' disabled'')||''>ENTREGAR</button>''        ,',
'          C013 ',
'        )  AS FECHA_ENTREGA  ',
'        */',
'FROM APEX_COLLECTIONS  ',
'WHERE COLLECTION_NAME = ''CPGESVAL''  ',
'',
'; '))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>true
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
 p_id=>wwv_flow_imp.id(60910195934885937)
,p_query_column_id=>1
,p_column_alias=>'SER'
,p_column_display_sequence=>160
,p_column_heading=>'Serie'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60910250462885938)
,p_query_column_id=>2
,p_column_alias=>'NRO'
,p_column_display_sequence=>170
,p_column_heading=>unistr('N\00BA Vale')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60910394967885939)
,p_query_column_id=>3
,p_column_alias=>'FECHA'
,p_column_display_sequence=>180
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(70539261692223698)
,p_query_column_id=>4
,p_column_alias=>'ESTADO'
,p_column_display_sequence=>190
,p_column_heading=>'Estado'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60910410767885940)
,p_query_column_id=>5
,p_column_alias=>'TIPO'
,p_column_display_sequence=>200
,p_column_heading=>'Sector'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60910579518885941)
,p_query_column_id=>6
,p_column_alias=>'ORDEN'
,p_column_display_sequence=>210
,p_column_heading=>'Orden'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60910643729885942)
,p_query_column_id=>7
,p_column_alias=>'CONCEPTO'
,p_column_display_sequence=>220
,p_column_heading=>'Concepto'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60910731096885943)
,p_query_column_id=>8
,p_column_alias=>'MONTO'
,p_column_display_sequence=>230
,p_column_heading=>'Monto'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60910872255885944)
,p_query_column_id=>9
,p_column_alias=>'AUTORIZADO_POR'
,p_column_display_sequence=>250
,p_column_heading=>'Autorizado Por'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60911275343885948)
,p_query_column_id=>10
,p_column_alias=>'FECHA_AUTO'
,p_column_display_sequence=>240
,p_column_heading=>'Fecha Autoriza'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60911088146885946)
,p_query_column_id=>11
,p_column_alias=>'SUC'
,p_column_display_sequence=>270
,p_column_heading=>'Suc'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(60911161917885947)
,p_query_column_id=>12
,p_column_alias=>'IDREG'
,p_column_display_sequence=>290
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(70541696963223699)
,p_query_column_id=>13
,p_column_alias=>'ELIMINAR'
,p_column_display_sequence=>280
,p_column_heading=>'Eliminar'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P282_COD_ELIMINAR'',''#IDREG#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_alignment=>'CENTER'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 3); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END; '))
,p_display_when_condition2=>'PLSQL'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(70542035066223700)
,p_query_column_id=>14
,p_column_alias=>'EDITAR'
,p_column_display_sequence=>10
,p_column_heading=>'Ver'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:33:P33_SER_COMPROBANTE,P33_NRO_COMPROBANTE:#SER#,#NRO#'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(71081974493541827)
,p_query_column_id=>15
,p_column_alias=>'FECHA_ENTREGA'
,p_column_display_sequence=>260
,p_column_heading=>'Fecha Entrega'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70542798865223701)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(118773533759770239)
,p_button_name=>'BUSCAR'
,p_button_static_id=>'btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Filtrar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70545480068223703)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(118773533759770239)
,p_button_name=>'NUEVO'
,p_button_static_id=>'btnew'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo'
,p_button_redirect_url=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:33:P33_NRO_COMPROBANTE:'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'',
'/*',
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 1); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;',
'*/',
'',
'        RETURN TRUE;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_icon_css_classes=>'fa-plus'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70543109098223701)
,p_name=>'P282_TIPO_VIATICO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(118773533759770239)
,p_prompt=>'TIPO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:INTERNACIONAL;INTERNACIONAL,NACIONAL;NACIONAL'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'TODOS'
,p_cHeight=>1
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70543538583223702)
,p_name=>'P282_TIPO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(118773533759770239)
,p_prompt=>'SECTOR'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT  DESCRIPCION DESCTIPO, DESCRIPCION   ',
'FROM CP_VALES_SECTOR A ',
'',
'/*select DISTINCT TIPO DESCTIPO, TIPO',
'from cp_vales',
'ORDER BY TIPO*/'))
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
 p_id=>wwv_flow_imp.id(70543933915223703)
,p_name=>'P282_ESTADO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(118773533759770239)
,p_prompt=>'ESTADO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT ESTADO DESCTIPO, ESTADO',
'from cp_vales',
'ORDER BY ESTADO'))
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
 p_id=>wwv_flow_imp.id(70544302542223703)
,p_name=>'P282_COD_ELIMINAR'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(118773533759770239)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70544755542223703)
,p_name=>'P282_ACTUALIZA'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(118773533759770239)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70545884587223704)
,p_name=>'P282_FECHA_INI'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(118773533759770239)
,p_prompt=>'FECHA DESDE:'
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
 p_id=>wwv_flow_imp.id(70546278044223705)
,p_name=>'P282_FECHA_FIN'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(118773533759770239)
,p_prompt=>'FECHA HASTA:'
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
 p_id=>wwv_flow_imp.id(70546647629223705)
,p_name=>'P282_ZONA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(118773533759770239)
,p_prompt=>'ZONA'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select T.COD_PAIS||'' / ''||UPPER(D.DESCRIPCION)  ||'' / ''||UPPER(C.DESCRIPCION) disp, T.COD_TARIFA',
'  from CP_TARIFARIO_VIATICO  T,',
'       PROVINCIAS D,',
'       CIUDADES C',
'  WHERE T.COD_PROVINCIA = D.COD_PROVINCIA',
'  AND   T.COD_PAIS = D.COD_PAIS',
'  AND   T.COD_CIUDAD =  C.COD_CIUDAD',
'  AND   T.COD_PROVINCIA = C.COD_PROVINCIA',
'  AND   T.COD_PAIS = C.COD_PAIS ',
'  ORDER BY 1,2 ASC',
'   ',
''))
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
 p_id=>wwv_flow_imp.id(70547080065223705)
,p_name=>'P282_PERSONA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(118773533759770239)
,p_prompt=>'A LA ORDEN DE:'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PERSONAS_VIATICO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.NOMBRE , P.cod_persona ',
'				  FROM PERSONAS P ',
'				 WHERE  ( nvl((',
'BUSCA_PERMISO(:P_COD_EMPRESA,''CPSVALES'',:APP_USER,''VER_PERSONAS'')),''N'')=''S'' AND EXISTS (select DISTINCT ''1''',
'                                from cp_vales c',
'                                where c.cod_empresa=:P_COD_EMPRESA',
'                                and c.Cod_Persona=P.Cod_Persona ',
'                                 ',
'                                 )',
'                    )',
'                  ',
'union all',
'    SELECT P.NOMBRE , P.cod_persona ',
'    FROM PERSONAS P ',
'    WHERE exists ',
'         (',
'                             select   DISTINCT ''1''',
'                                  from ASP$USUA0100 u',
'                                  where U.USRN = :APP_USER',
'                                  and  u.cod_persona =  P.cod_persona ',
'                                   UNION ALL',
'                                  select  DISTINCT ''1''',
'                                  from usuarios u1',
'                                  where cod_usuario = :APP_USER',
'                                  and  u1.cod_persona= P.cod_persona ',
'                        )',
'',
'ORDER BY 1 ASC'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'2'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71081577756541823)
,p_name=>'P282_NRO_SOLICITUD'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(118773533759770239)
,p_prompt=>'NUMERO VALE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71081636235541824)
,p_name=>'P282_SER_SOLICITUD'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(118773533759770239)
,p_prompt=>'SERIE VALE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70552625149223709)
,p_name=>'FILTRA_DATOS'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(70542798865223701)
,p_condition_element=>'P282_PERSONA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71082496329541832)
,p_event_id=>wwv_flow_imp.id(70552625149223709)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var spinner = apex.util.showSpinner();',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(600259019263922105)
,p_event_id=>wwv_flow_imp.id(70552625149223709)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe seleccionar un colaborador.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70553133880223709)
,p_event_id=>wwv_flow_imp.id(70552625149223709)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'   begin',
'      ',
'  inv.cpsvales.cargar_reporte(p_cod_empresa => :p_cod_empresa,',
'                              p_estado => :p282_estado,',
'                              p_sector => :P282_TIPO,',
'                              p_tipo => :P282_TIPO_VIATICO,',
'                              p_persona => :p282_persona,',
'                              p_zona => :P282_ZONA,',
'                              p_fecha_ini => :p282_fecha_ini,',
'                              p_fecha_fin => :p282_fecha_fin,',
'                              p_ser_comprobante => :P282_SER_SOLICITUD,',
'                              p_nro_comprobante => :P282_NRO_SOLICITUD);',
'',
'exception',
'    when others then         ',
'        RAISE_APPLICATION_ERROR(-20000,SQLERRM);',
'end;',
' '))
,p_attribute_02=>'P282_TIPO_VIATICO,P282_TIPO,P282_FECHA_INI,P282_ESTADO,P282_FECHA_FIN,P282_ZONA,P282_PERSONA,P282_NRO_SOLICITUD,P282_SER_SOLICITUD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71082348573541831)
,p_event_id=>wwv_flow_imp.id(70552625149223709)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' $(".u-Processing").remove();',
' estado_css();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70553600924223709)
,p_event_id=>wwv_flow_imp.id(70552625149223709)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(119034452933743794)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70550709203223708)
,p_name=>'da_eliminar_prov'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P282_COD_ELIMINAR'
,p_condition_element=>'P282_COD_ELIMINAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70551217459223708)
,p_event_id=>wwv_flow_imp.id(70550709203223708)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el Vale?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70551718301223709)
,p_event_id=>wwv_flow_imp.id(70550709203223708)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    /*',
'        inv.cmprovee.elimina_proveedor(pi_cod_empresa => ''1'',---:pi_cod_empresa,',
'                                         pi_cod_proveedor => :P282_COD_ELIMINAR);',
'  */                               ',
'  inv.cpsvales.elimina_vale( pi_id_reg => :P282_COD_ELIMINAR);'))
,p_attribute_02=>'P282_COD_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70552225545223709)
,p_event_id=>wwv_flow_imp.id(70550709203223708)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#btn'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70547810459223706)
,p_name=>'Setea_Campos'
,p_event_sequence=>30
,p_condition_element=>'P282_ACTUALIZA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70548387164223707)
,p_event_id=>wwv_flow_imp.id(70547810459223706)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''CPGESVAL'');'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70548839359223707)
,p_event_id=>wwv_flow_imp.id(70547810459223706)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#btn'').click();',
'apex.item(''P282_ACTUALIZA'').setValue(''N'');',
'apex.item(''P282_SER_SOLICITUD'').setValue('''');',
'apex.item(''P282_NRO_SOLICITUD'').setValue('''');'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70549308966223708)
,p_event_id=>wwv_flow_imp.id(70547810459223706)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P282_ACTUALIZA,P282_SER_SOLICITUD,P282_NRO_SOLICITUD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70549859949223708)
,p_event_id=>wwv_flow_imp.id(70547810459223706)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(119034452933743794)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70550392880223708)
,p_event_id=>wwv_flow_imp.id(70547810459223706)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P282_TIPO_VIATICO,P282_TIPO,P282_ESTADO,P282_FECHA_FIN,P282_FECHA_INI,P282_ZONA,P282_PERSONA,P282_SER_SOLICITUD,P282_NRO_SOLICITUD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(237088385421215133)
,p_name=>'da_refresh'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(119034452933743794)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(237088442043215134)
,p_event_id=>wwv_flow_imp.id(237088385421215133)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'estado_css();'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(71082262367541830)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ESTADO_ENTREGADO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' v_mensaje VARCHAR2(2000);',
' v_contador_rep_jasper NUMBER := 0;',
' V_cod_empresa VARCHAR2(1);',
' V_ser_comprobante VARCHAR2(5);',
' V_nro_comprobante NUMBER;',
'',
'BEGIN ',
' V_cod_empresa := apex_application.g_x01;',
' V_ser_comprobante := apex_application.g_x02;',
' V_nro_comprobante := apex_application.g_x03;',
'',
' 	                        UPDATE cp_vales',
'					  		SET ESTADO =''ENTREGADO'',',
'                              USER_ENTREGA = :app_user',
'					  		WHERE COD_EMPRESA=V_cod_empresa',
'					  		AND 	SER_COMPROBANTE= V_ser_comprobante ',
'					  		AND 	NRO_COMPROBANTE= V_nro_comprobante;',
' apex_json.open_object;',
' apex_json.write(''p_correcto'',TRUE);',
' apex_json.write(''p_mensaje'',v_mensaje);',
' apex_json.write(''p_contador_rep_jasper'',v_contador_rep_jasper);',
' apex_json.close_object;',
'EXCEPTION',
' WHEN OTHERS THEN',
' apex_json.open_object;',
' apex_json.write(''p_correcto'', FALSE);',
' ---apex_json.write(''p_mensaje'',pck_general_apex.fn_obtener_msg_trigger(p_mensaje =>SQLERRM));',
' apex_json.close_object;',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
