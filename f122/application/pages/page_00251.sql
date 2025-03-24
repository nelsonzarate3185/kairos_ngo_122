prompt --application/pages/page_00251
begin
--   Manifest
--     PAGE: 00251
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
 p_id=>251
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'STCOSOPN'
,p_alias=>'STCOSOPN'
,p_step_title=>'STCOSOPN'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'.imgart {       ',
'    width:auto;',
'    height:450px;',
'} ',
'',
' ',
'   .t-Form-fieldContainer--floatingLabel .t-Form-label {',
'         color: darkblue; ',
'        font-weight: bold;',
'   }',
'   ',
'  /* colores de la tabla*/ ',
'   #STK_ARTICULOS thead{',
'       background-color: #003a85;',
'	  font-weight: bold;',
'	   color: #FFED00;     ',
'   }',
'   #STK_ARTICULOS tbody{',
'        color: darkblue;  ',
'   }',
'',
'    .t-Report-colHead , .t-Report-cell{',
'      border:1px solid black;',
'      }',
'    .t-Report-report tr:last-child .t-Report-cell {',
'        border-bottom: 1px solid black;',
'    }',
'',
'    .t-Report-report tr .t-Report-cell:last-child, .t-Report-report tr .t-Report-colHead:last-child {',
'        border-right: 1px solid black;',
'    }',
'',
'    .t-Report-report, .t-Report-wrap{float: none;',
'                     margin: 0 auto;   }',
'',
' ',
'    .t-Form-fieldContainer--floatingLabel .t-Form-inputContainer .apex-item-display-only { ',
'            border-color:rgb(252, 244, 136);',
'            border-style: solid; ',
'            border-radius: 0.5rem;',
'            /*',
'            color:rgb(253, 245, 131); ',
'            background-color:  #003a85;             ',
'            box-shadow: inset 20px 20px 60px  #003a85,',
'		                inset -20px -20px 60px  #001531;',
'                        */',
'                         ',
'        }',
'',
' ',
'   #REG_IMG{ ',
' /*background: white;*/',
' border-radius: 30px;',
' box-shadow: 0 0  0 1px #003a85,',
'             0.3em 0.3em 1em #667e91;',
'}',
'',
'  #DAT_ART, #STK_ARTICULOS{       ',
'            border-radius: 1rem; ',
'            box-shadow: /*inset 20px 20px 60px #f3f5fa,',
'		                inset -20px -20px 60px #ffffff,*/',
'                        0.3em 0.3em 1em #667e91;',
'}',
'',
'#DAT_ART, #REG_DET, #REG_DET1 , #REG_DET2  {',
'     background:#003a85;  /*#7fccf0;*/',
'}',
'',
'#P126_ARTICULO_LABEL, #P126_RUBRO_LABEL{ color: darkblue;}',
'',
'.lbl_reg_stk {',
'        color:darkblue;/* #2C6676;  */',
'        font-weight: bold; ',
'        display: flex;',
'        align-items: center;',
'        justify-content: center;',
'        margin: 0 auto;',
'    }'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240910155731'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(330066244617918861)
,p_plug_name=>'Consulta de Articulos'
,p_region_name=>'DAT_ART'
,p_region_template_options=>'t-Region--removeHeader:t-Region--scrollBody:margin-top-sm:margin-bottom-md:margin-left-sm:margin-right-sm'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45560854998746542)
,p_plug_name=>'Costos'
,p_region_name=>'REG_DET1'
,p_parent_plug_id=>wwv_flow_imp.id(330066244617918861)
,p_region_template_options=>'t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody:margin-top-md:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61131616718397507)
,p_plug_name=>'Costos'
,p_region_name=>'REG_DET2'
,p_parent_plug_id=>wwv_flow_imp.id(330066244617918861)
,p_region_template_options=>'t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody:margin-top-md:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(330066377613918862)
,p_plug_name=>'Detalles'
,p_region_name=>'REG_DET'
,p_parent_plug_id=>wwv_flow_imp.id(330066244617918861)
,p_region_template_options=>'t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody:margin-top-md:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(330067954658918878)
,p_name=>'STOCK DE ARTICULOS'
,p_region_name=>'STK_ARTICULOS'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>30
,p_region_template_options=>'t-Region--hideHeader:t-Region--scrollBody:margin-top-sm:margin-bottom-sm:margin-left-sm:margin-right-sm'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_grid_column_span=>4
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.cod_sucursal,',
'       s.descripcion,',
'       a.nro_lote,',
'       a.cant_dispon',
'from ST_EXISTENCIA_ART   a',
'     ,sucursales s',
'where A.cod_empresa = :P_COD_EMPRESA',
'AND  :P251_ARTICULO is not null ',
'AND   A.COD_ARTICULO= :P251_ARTICULO',
'and s.cod_empresa  = a.cod_empresa',
'and s.cod_sucursal = a.cod_sucursal ',
'/*AND NVL(IND_FACTURA,''S'')=''S''*/',
'and a.cant_dispon<>0',
'order by S.COD_SUCURSAL_CENTRAL ASC, cant_dispon desc,lpad(ltrim(rtrim(cod_sucursal)),5,'' '')'))
,p_header=>unistr('<span class="lbl_reg_stk">Existencia de Art\00EDculos</span>')
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P251_ARTICULO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Total:'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61097451849325371)
,p_query_column_id=>1
,p_column_alias=>'COD_SUCURSAL'
,p_column_display_sequence=>10
,p_column_heading=>'Cod.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61097809866325372)
,p_query_column_id=>2
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>20
,p_column_heading=>'Descripcion Sucursal'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61098289660325372)
,p_query_column_id=>3
,p_column_alias=>'NRO_LOTE'
,p_column_display_sequence=>30
,p_column_heading=>'Lote'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(61098646457325372)
,p_query_column_id=>4
,p_column_alias=>'CANT_DISPON'
,p_column_display_sequence=>40
,p_column_heading=>'Cant.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45560965988746543)
,p_name=>'P251_COSTO_PROM_SAC_GS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(45560854998746542)
,p_prompt=>'Promedio SAC GS'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:darkblue ; border-color:  #FFED00; background-color:white"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>' fa-money'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45561036754746544)
,p_name=>'P251_COSTO_ULT_SAC_USD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(45560854998746542)
,p_prompt=>'Ultimo SAC USD'
,p_format_mask=>'S999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:darkblue ; border-color:  #FFED00; background-color:white"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>' fa-money'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45561105362746545)
,p_name=>'P251_COSTO_PROM_SAC_USD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(45560854998746542)
,p_prompt=>'Promedio SAC USD'
,p_format_mask=>'S999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:darkblue ; border-color:  #FFED00; background-color:white"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>' fa-money'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45561268720746546)
,p_name=>'P251_COSTO_PROM_OPN_GS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(45560854998746542)
,p_prompt=>'Promedio OPN GS'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:darkblue ; border-color:  #FFED00; background-color:white"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>' fa-money'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45561357904746547)
,p_name=>'P251_COSTO_ULT_SAC_GS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(45560854998746542)
,p_prompt=>'Ultimo SAC GS'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:darkblue ; border-color:  #FFED00; background-color:white"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>' fa-money'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45561444226746548)
,p_name=>'P251_COSTO_PROM_OPN_USD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(45560854998746542)
,p_prompt=>'Promedio OPN USD'
,p_format_mask=>'S999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:darkblue ; border-color:  #FFED00; background-color:white"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>' fa-money'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45561518939746549)
,p_name=>'P251_COSTO_ULT_OPN_GS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(45560854998746542)
,p_prompt=>'Ultimo OPN GS'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:darkblue ; border-color:  #FFED00; background-color:white"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>' fa-money'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45561658150746550)
,p_name=>'P251_COSTO_ULT_OPN_USD'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(45560854998746542)
,p_prompt=>'Ultimo OPN USD'
,p_format_mask=>'S999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:darkblue ; border-color:  #FFED00; background-color:white"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>' fa-money'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61092426491325367)
,p_name=>'P251_ARTICULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(330066244617918861)
,p_prompt=>'Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULO_PAG_251'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select A.DESCRIPCION ,A.COD_ARTICULO,A.Cod_Art_Corto ',
'from st_articulos a',
'where a.cod_empresa=:P_COD_EMPRESA',
'and (( a.cod_rubro in (''RE'',''PR'') AND NVL(:P251_RUBRO,''T'')=''T'') OR (a.cod_rubro=:P251_RUBRO ))',
'/*and   upper(a.descripcion) not like ''%NO%FACT%''*/',
'order by  A.Cod_Art_Corto desc, DECODE(A.ESTADO,''A'',''1'',''2'') ,A.DESCRIPCION'))
,p_lov_cascade_parent_items=>'P251_RUBRO'
,p_ajax_items_to_submit=>'P251_RUBRO'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_tag_attributes=>'style="color:darkblue ; border-color:  #FFED00; background-color:white"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'2'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61092838110325368)
,p_name=>'P251_RUBRO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(330066244617918861)
,p_item_default=>'PR'
,p_prompt=>'RUBRO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:PRODUCTOS;PR,REPUESTOS;RE,TODOS;T'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'style="color:darkblue ; border-color:  #FFED00; background-color:white"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61093542269325368)
,p_name=>'P251_COD_ART_CORTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(330066377613918862)
,p_prompt=>'CODIGO'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:darkblue ; border-color:  #FFED00; background-color:white"'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61093923986325369)
,p_name=>'P251_COD_ARTICULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(330066377613918862)
,p_prompt=>'CODIGO ARTICULO'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:darkblue ; border-color:  #FFED00; background-color:white"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61094340914325369)
,p_name=>'P251_PRECIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(330066377613918862)
,p_prompt=>'PRECIO WEB'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:darkblue ; border-color:  #FFED00; background-color:white"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>' fa-money'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61094716042325369)
,p_name=>'P251_DESCRIPCION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(330066377613918862)
,p_prompt=>unistr('DESCRIPCION ART\00CDCULO')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:darkblue ; border-color:  #FFED00; background-color:white"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61095105233325369)
,p_name=>'P251_LINEA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(330066377613918862)
,p_prompt=>'LINEA'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:darkblue ; border-color:  #FFED00; background-color:white"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61095511585325369)
,p_name=>'P251_CATEGORIA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(330066377613918862)
,p_prompt=>'CATEGORIA'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:darkblue ; border-color:  #FFED00; background-color:white"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61095919223325369)
,p_name=>'P251_FAMILIA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(330066377613918862)
,p_prompt=>'FAMILIA'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:darkblue ; border-color:  #FFED00; background-color:white"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61096377502325370)
,p_name=>'P251_DIVISION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(330066377613918862)
,p_prompt=>'DIVISION'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:darkblue ; border-color:  #FFED00; background-color:white"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61096776476325370)
,p_name=>'P251_MARCA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(330066377613918862)
,p_prompt=>'MARCA'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:darkblue ; border-color:  #FFED00; background-color:white"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61131128599397502)
,p_name=>'P251_PRECIO_BASE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(61131616718397507)
,p_prompt=>'Promedio Base'
,p_format_mask=>'S999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:darkblue ; border-color:  #FFED00; background-color:white"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>' fa-money'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61131257568397503)
,p_name=>'P251_PRECIO_BASE_MAS_IVA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(61131616718397507)
,p_prompt=>'Precio mas IVA'
,p_format_mask=>'S999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:darkblue ; border-color:  #FFED00; background-color:white"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>' fa-money'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61131376387397504)
,p_name=>'P251_MONEDA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(61131616718397507)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:darkblue ; border-color:  #FFED00; background-color:white"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>' fa-money'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61131475954397505)
,p_name=>'P251_PRECIO_LISTA_GS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(61131616718397507)
,p_prompt=>'Precio GS'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:darkblue ; border-color:  #FFED00; background-color:white"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>' fa-money'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61131590040397506)
,p_name=>'P251_PRECIO_LISTA_GS_IVA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(61131616718397507)
,p_prompt=>'Precio GS + IVA'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:darkblue ; border-color:  #FFED00; background-color:white"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>' fa-money'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61131807120397509)
,p_name=>'P251_COD_MONEDA_BASE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(330066377613918862)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61131999687397510)
,p_name=>'P251_COD_IVA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(330066377613918862)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(61102459483325375)
,p_name=>'da_datos_art'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P251_ARTICULO'
,p_condition_element=>'P251_ARTICULO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61105466719325377)
,p_event_id=>wwv_flow_imp.id(61102459483325375)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    VPRECIO NUMBER;',
'BEGIN',
'        select A.DESCRIPCION,',
'                A.COD_ARTICULO,',
'                A.Cod_Art_Corto,',
'                To_char(precio_web( COD_ARTICULO,''5'',0),''999G999G999G990''), COD_MONEDA_BASE, COD_IVA,precio_base',
'        INTO  :P251_DESCRIPCION,',
'              :P251_COD_ARTICULO,',
'              :P251_COD_ART_CORTO,',
'              :P251_PRECIO,',
'              :P251_cod_moneda_base,',
'              :P251_cod_IVA,',
'              :P251_precio_base',
'        from st_articulos a',
'        where a.cod_empresa=:P_COD_EMPRESA',
'        AND   A.COD_ARTICULO= :P251_ARTICULO',
'        and   a.cod_rubro in (''RE'',''PR'')',
'        order by DECODE(A.ESTADO,''A'',''1'',''2'') ;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'            NULL;',
'END;'))
,p_attribute_02=>'P251_ARTICULO'
,p_attribute_03=>'P251_COD_ART_CORTO,P251_COD_ARTICULO,P251_DESCRIPCION,P251_PRECIO,P251_COD_IVA,P251_COD_MONEDA_BASE,P251_PRECIO_BASE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61105970007325377)
,p_event_id=>wwv_flow_imp.id(61102459483325375)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P251_COD_ART_CORTO,P251_COD_ARTICULO,P251_PRECIO,P251_DESCRIPCION,P251_LINEA,P251_CATEGORIA,P251_FAMILIA,P251_DIVISION,P251_MARCA'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61102974318325376)
,p_event_id=>wwv_flow_imp.id(61102459483325375)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'BEGIN',
'                select NVL(( SELECT L.DESCRIPCION',
'               	     FROM ST_LINEA L',
'                     WHERE L.COD_EMPRESA= A.COD_EMPRESA',
'                    AND   L.COD_LINEA =A.COD_LINEA),'''')LINEA,',
'               NVL((SELECT C.DESCRIPCION',
'                    FROM ST_CATEGORIAS C',
'                    WHERE C.COD_EMPRESA= A.COD_EMPRESA',
'                    AND   c.cod_categoria=A.COD_CATEGORIA',
'                    AND   C.COD_FAMILIA=A.COD_FAMILIA),'''')CATEGORIA,',
'               NVL(( SELECT F.DESCRIPCION',
'                     FROM ST_FAMILIA F',
'                      WHERE F.COD_FAMILIA=A.COD_FAMILIA',
'                      AND   F.COD_DIVISION=A.COD_DIVISION ',
'                      AND   F.COD_EMPRESA= A.COD_EMPRESA ),'''')FAMILIA,',
'               NVL(( SELECT D.DESC_DIVISION',
'                      FROM ST_DIVISION_ARTICULOS D',
'                      WHERE D.COD_DIVISION=A.COD_DIVISION ),'''')DIVISION,',
'               NVL(( SELECT M.DESCRIPCION',
'                      FROM ST_MARCAS M',
'                      WHERE M.COD_MARCA=A.COD_MARCA ),'''')MARCA',
'        into :P251_LINEA,',
'             :P251_CATEGORIA,',
'             :P251_FAMILIA,',
'             :P251_DIVISION,',
'             :P251_MARCA  ',
'        from st_articulos a',
'        where a.cod_empresa=:P_COD_EMPRESA',
'        AND   A.COD_ARTICULO= :P251_ARTICULO',
'        and   a.cod_rubro in (''RE'',''PR'')',
'        order by DECODE(A.ESTADO,''A'',''1'',''2'') ;',
'        ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'            :P251_LINEA:=null;',
'             :P251_CATEGORIA:=null;',
'             :P251_FAMILIA:=null;',
'             :P251_DIVISION:=null;',
'             :P251_MARCA  :=null;',
'END;'))
,p_attribute_02=>'P251_ARTICULO'
,p_attribute_03=>'P251_LINEA,P251_CATEGORIA,P251_FAMILIA,P251_DIVISION,P251_MARCA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61131765922397508)
,p_event_id=>wwv_flow_imp.id(61102459483325375)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'begin',
'  select descripcion',
'    into :P251_MONEDA',
'    from monedas',
'   where cod_moneda = :P251_cod_moneda_base ;',
'exception',
'  when others then',
'    :P251_MONEDA := NULL;',
'end ;',
'',
'declare',
'  vporc_iva number(6,2);',
'begin',
'  begin',
'    select porc_iva_compra',
'    into vporc_iva',
'    from st_iva',
'    where cod_iva = :P251_cod_iva;',
'  exception',
'    when others then',
'      vporc_iva := 0;',
'  end;',
'  :P251_PRECIO_BASE_MAS_IVA := round((:P251_precio_base + :P251_precio_base * vporc_iva / 100),2);',
'  ',
'end ;',
'',
'',
'BEGIN',
'select costo_prom, costo_ultimo, ',
'       COSTO_PROM_US, costo_ultimo_us ',
'  into :P251_COSTO_PROM_SAC_GS,:P251_COSTO_ULT_SAC_GS,',
'       :P251_COSTO_PROM_SAC_USD,',
'       :P251_COSTO_ULT_SAC_USD ',
'from st_articulos',
'where cod_empresa = :P_COD_EMPRESA',
' and  cod_articulo = :P251_cod_articulo;',
'',
' exception',
'when others then ',
'    :P251_COSTO_PROM_SAC_GS:= null;',
'    :P251_COSTO_ULT_SAC_GS:= null;',
'       :P251_COSTO_PROM_SAC_USD:= null;',
'       :P251_COSTO_ULT_SAC_USD := null;',
'  ',
'END;',
'',
'',
'BEGIN',
'select costo_prom, costo_ultimo, ',
'       COSTO_PROM_US, costo_ultimo_us ',
'  into :P251_COSTO_PROM_OPN_GS,:P251_COSTO_ULT_OPN_GS,',
'       :P251_COSTO_PROM_OPN_USD,',
'       :P251_COSTO_ULT_OPN_USD ',
'from st_articulos',
'where cod_empresa = ''2''',
' and  cod_articulo = :P251_cod_articulo;',
'',
' exception',
'when others then ',
'    :P251_COSTO_PROM_OPN_GS:= null;',
'    :P251_COSTO_ULT_OPN_GS:= null;',
'       :P251_COSTO_PROM_OPN_USD:= null;',
'       :P251_COSTO_ULT_OPN_USD := null;',
'  ',
'END;',
'',
' ',
'',
'declare',
'	vtip_cam number(6,2);',
'begin',
'	begin',
'	 select Tipo_cambio_credito ',
'	 into vtip_cam',
'	 from monedas',
'	 where cod_moneda = ''2'';',
'	exception',
'	 when others then',
'	  vtip_cam := 0;',
'	end;',
'	--mensaje_ex(vtip_cam);',
' IF  :P251_cod_moneda_base is not null then',
'	IF :P251_cod_moneda_base = ''1'' then',
'		:P251_precio_LISTA_gs := nvl( :P251_precio_base,0);',
'		:P251_precio_LISTA_gs_iva := nvl(  :P251_PRECIO_BASE_MAS_IVA,0);',
'	else',
'	:P251_precio_LISTA_gs := nvl((:P251_precio_base * vtip_cam ),0);',
':P251_precio_LISTA_gs_iva:= nvl((:P251_PRECIO_BASE_MAS_IVA * vtip_cam ),0);',
'	 ',
'	end if;',
' ELSE',
'   :P251_precio_LISTA_gs := 0;',
'   	:P251_precio_LISTA_gs_iva := 0;',
' end if ;',
'end;',
'',
'',
'end;',
'',
':P251_precio_LISTA_gs_iva:=TO_CHAR(:P251_precio_LISTA_gs_iva,''999G999G999G990'') ;',
':P251_precio_LISTA_gs:=TO_CHAR(:P251_precio_LISTA_gs,''999G999G999G990'') ;',
':P251_PRECIO_BASE_MAS_IVA:=TO_CHAR(:P251_PRECIO_BASE_MAS_IVA,''999G999G999G990D00'') ;',
':P251_COSTO_PROM_OPN_GS:=TO_CHAR(:P251_COSTO_PROM_OPN_GS,''999G999G999G990'') ;',
':P251_COSTO_ULT_OPN_GS:=TO_CHAR(:P251_COSTO_ULT_OPN_GS,''999G999G999G990'') ;',
':P251_COSTO_PROM_OPN_USD:=TO_CHAR(:P251_COSTO_PROM_OPN_USD,''999G999G999G990D00'') ;',
':P251_COSTO_ULT_OPN_USD:=TO_CHAR(:P251_COSTO_ULT_OPN_USD,''999G999G999G990D00'') ;',
'',
':P251_COSTO_PROM_SAC_GS:=TO_CHAR(:P251_COSTO_PROM_SAC_GS,''999G999G999G990D00'') ;',
':P251_COSTO_ULT_SAC_GS:=TO_CHAR(:P251_COSTO_ULT_SAC_GS,''999G999G999G990D00'') ;',
':P251_COSTO_PROM_SAC_USD:=TO_CHAR(:P251_COSTO_PROM_SAC_USD,''999G999G999G990D00'') ;',
':P251_COSTO_ULT_SAC_USD:=TO_CHAR(:P251_COSTO_ULT_SAC_USD,''999G999G999G990D00'') ; ',
'',
' '))
,p_attribute_02=>'P251_ARTICULO,P251_COD_MONEDA_BASE,P251_COD_IVA'
,p_attribute_03=>'P251_COSTO_PROM_SAC_GS,P251_COSTO_PROM_SAC_USD,P251_COSTO_ULT_SAC_GS,P251_COSTO_ULT_SAC_USD,P251_COSTO_PROM_OPN_GS,P251_COSTO_PROM_OPN_USD,P251_COSTO_ULT_OPN_GS,P251_COSTO_ULT_OPN_USD,P251_PRECIO_BASE,P251_PRECIO_BASE_MAS_IVA,P251_MONEDA,P251_PRECIO_'
||'LISTA_GS,P251_PRECIO_LISTA_GS_IVA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(61106334935325377)
,p_name=>'DA_REFRESH_REG'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P251_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(209703665503309506)
,p_event_id=>wwv_flow_imp.id(61106334935325377)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(330067954658918878)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(61106860999325377)
,p_event_id=>wwv_flow_imp.id(61106334935325377)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("STK_ARTICULOS").refresh();'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(61102089988325375)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'New'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
