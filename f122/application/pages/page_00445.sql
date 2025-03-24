prompt --application/pages/page_00445
begin
--   Manifest
--     PAGE: 00445
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
 p_id=>445
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Proyectos Presupuesto - SMOBRPRO'
,p_alias=>'PROYECTOS-PRESUPUESTO-SMOBRPRO'
,p_page_mode=>'MODAL'
,p_step_title=>'Proyectos Presupuesto - SMOBRPRO'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#util_generico#MIN#.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'formatMiles(''P445_COSTO'');',
'formatMiles(''P445_MONTO'');',
'formatMiles(''P445_COSTO_REAL'');',
'',
'',
'function propiedades(){      ',
'        document.getElementById("guardar").disabled = true;     ',
'        document.getElementById("iniciar").disabled = true; ',
'        document.getElementById("solicitar").disabled = true; ',
'        document.getElementById("modificar").disabled = true; ',
'        document.getElementById("verificado").disabled = true; ',
'        document.getElementById("aprobado").disabled = true; ',
'        ',
'	if  ( $v("P445_ESTADO")!=''APROBADO'' && $v("P445_ESTADO")!='''' ) ',
'        {',
'            if  ($v("P445_ESTADO")===''VERIFICADO''){		',
'                document.getElementById("guardar").disabled = true; ',
'            }else{           ',
'                document.getElementById("guardar").disabled = false; ',
'            }',
'                      ',
'            ',
'            if ($v("P445_ESTADO")===''EN PREPARACION'') {	 ',
'                    document.getElementById("solicitar").disabled = false; ',
'                ',
'                if ($v("P445_PARAM_APRUEBA")===''S''){ ',
'                        document.getElementById("verificado").disabled = false; ',
'                        document.getElementById("aprobado").disabled = false;  	     		',
'                 }',
'            }',
'                ',
'            if ($v("P445_ESTADO")===''A VERIFICAR'') {',
'                    document.getElementById("modificar").disabled = false;  ',
'',
'                        if ($v("P_COD_USUARIO")===''MONICACAB'' || $v("P_COD_USUARIO")===''monicacab''|| $v("P_COD_USUARIO")===''JUANSA''){ 	     		',
'                                document.getElementById("verificado").disabled = false; ',
'                                document.getElementById("aprobado").disabled = false;  	',
'                        }',
'                }',
'                ',
'            if  ($v("P445_ESTADO")===''VERIFICADO'') {	 ',
'               document.getElementById("modificar").disabled = false;',
'',
'                if ( $v("P_COD_USUARIO")===''monicacab'' || $v("P_COD_USUARIO")===''MONICACAB''|| $v("P_COD_USUARIO")===''JUANSA''){ 	     		',
'                                document.getElementById("aprobado").disabled = false; ',
'                    }',
'             }',
'             ',
'     ',
'              ',
'    }   else{',
'               if ($v("P445_ESTADO")===''APROBADO'') {	 ',
'                    document.getElementById("modificar").disabled = false;',
'            } ',
'    }',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#lateral{ background-color: #cdd5dd;}',
'',
'#botones  { background-color: #e6e6e6 !important; }',
'',
'.t-Form-label{',
'    color:  #003A85 !important;',
'    font-weight: bold !important;',
'    }',
'',
'',
' .t-Report-colHead {',
'      background: #003a85!important;',
'       color: #FFED00!important; }'))
,p_step_template=>wwv_flow_imp.id(40080790783263649)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'600'
,p_dialog_width=>'850'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20241227083349'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(128532720500125323)
,p_plug_name=>'PRESUPUESTOS DE PROYECTOS '
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>990
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(128534056528125336)
,p_plug_name=>'LATERAL'
,p_region_name=>'lateral'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1000
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(128535361312125349)
,p_plug_name=>'reg_boton'
,p_region_name=>'botones'
,p_region_template_options=>'#DEFAULT#:margin-top-none'
,p_plug_template=>wwv_flow_imp.id(40097820288263654)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(132514221027517934)
,p_name=>'Historial de Estados'
,p_template=>wwv_flow_imp.id(40117728043263659)
,p_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FECHA_ESTADO,',
'       ESTADO,',
'       COD_USUARIO,',
'       FECHA_TENTATIVA',
'from inv.SM_OBRA_PRESUPUESTO',
'where cod_empresa=''1''',
'and   tip_comprobante=''OBR''',
'and   ser_comprobante=''A''',
'and   nro_comprobante=  :P445_PARAM_NRO',
'AND   FECHA_ESTADO IS NOT NULL',
'ORDER BY FECHA_ESTADO'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P445_PARAM_NRO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No se encuentran registros.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(132514490985517936)
,p_query_column_id=>1
,p_column_alias=>'FECHA_ESTADO'
,p_column_display_sequence=>20
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(132514362984517935)
,p_query_column_id=>2
,p_column_alias=>'ESTADO'
,p_column_display_sequence=>30
,p_column_heading=>'Estado'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(132514598368517937)
,p_query_column_id=>3
,p_column_alias=>'COD_USUARIO'
,p_column_display_sequence=>40
,p_column_heading=>'Usuario'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(132514673732517938)
,p_query_column_id=>4
,p_column_alias=>'FECHA_TENTATIVA'
,p_column_display_sequence=>50
,p_column_heading=>'Fecha Tentativa'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(132515032250517942)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(128534056528125336)
,p_button_name=>'GUARDAR'
,p_button_static_id=>'guardar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--padRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-text'
,p_icon_css_classes=>'fa-save'
,p_grid_new_row=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(128534560289125341)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(128535361312125349)
,p_button_name=>'INICIAR'
,p_button_static_id=>'iniciar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--padLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Iniciar Preparacion'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(128534691378125342)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(128535361312125349)
,p_button_name=>'SOLICITAR'
,p_button_static_id=>'solicitar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--padLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Solicitar Verificacion'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(128534871046125344)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(128535361312125349)
,p_button_name=>'MODIFICAR'
,p_button_static_id=>'modificar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--padLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Modificar Ppto.'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(128534970309125345)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(128535361312125349)
,p_button_name=>'VERIFICADO'
,p_button_static_id=>'verificado'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--padLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ppto. Verificado'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(132514006403517932)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(128534056528125336)
,p_button_name=>'HISTORIAL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Historial'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-history'
,p_grid_new_row=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(128535008741125346)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(128535361312125349)
,p_button_name=>'APROBADO'
,p_button_static_id=>'aprobado'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--padLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aprobar Ppto.'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(181616142365166884)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(128534056528125336)
,p_button_name=>'CARGAR_ARCHIVO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconRight:t-Button--padLeft:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cargar Archivo'
,p_button_redirect_url=>'f?p=&APP_ID.:466:&SESSION.::&DEBUG.::P466_COD_MODULO,P466_OPERACION,P466_ID_IMAGEN:SM,OBRA,&P445_PARAM_NRO.'
,p_button_condition=>'P445_PARAM_NRO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-file-pdf-o'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(181616464302165976)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(128534056528125336)
,p_button_name=>'DOCUMENTOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconRight:t-Button--padLeft:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Documentos'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-folder-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(133460865029476619)
,p_branch_action=>'f?p=&APP_ID.:445:&SESSION.::&DEBUG.:445:P445_PARAM_NRO:&P445_PARAM_NRO.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128532841522125324)
,p_name=>'P445_NRO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(128532720500125323)
,p_prompt=>unistr('N\00BA Proyecto')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128532941893125325)
,p_name=>'P445_FECHA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(128532720500125323)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128533033264125326)
,p_name=>'P445_NOM_PROYECTO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(128532720500125323)
,p_prompt=>'Nombre del Proyecto'
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
 p_id=>wwv_flow_imp.id(128533189845125327)
,p_name=>'P445_CLIENTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(128532720500125323)
,p_prompt=>'Cliente'
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
 p_id=>wwv_flow_imp.id(128533215300125328)
,p_name=>'P445_ESTADO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(128532720500125323)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128533351174125329)
,p_name=>'P445_CONTACTO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(128532720500125323)
,p_prompt=>'Contacto'
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
 p_id=>wwv_flow_imp.id(128533473918125330)
,p_name=>'P445_CORREO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(128532720500125323)
,p_prompt=>'Correo'
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
 p_id=>wwv_flow_imp.id(128533582641125331)
,p_name=>'P445_TELEFONO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(128532720500125323)
,p_prompt=>'Telefono'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128533610503125332)
,p_name=>'P445_FECHA_TENTATIVA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(128534056528125336)
,p_prompt=>'Fecha Tentativa'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128533721394125333)
,p_name=>'P445_RESPONSABLE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(128532720500125323)
,p_prompt=>'Responsable'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NOMBRE, COD_PERSONA',
'FROM PERSONAS ',
'WHERE COD_PERSONA IN (''304020'',''347817'',''377123'',''387071'',''387087'',''443593'')'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-N/N-'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128533857656125334)
,p_name=>'P445_PRIORIDAD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(128534056528125336)
,p_prompt=>'Prioridad'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:INMEDIATO;INMEDIATO,URGENTE;URGENTE,ALTA;ALTA,NORMAL;NORMAL,BAJA;BAJA'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-N/N-'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128533930445125335)
,p_name=>'P445_CATEGORIA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(128534056528125336)
,p_prompt=>'Categoria'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:PEQUE\00D1O;PEQUE\00D1O,MEDIANO;MEDIANO,GRANDE;GRANDE')
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-N/N-'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128534105502125337)
,p_name=>'P445_MONTO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(128534056528125336)
,p_prompt=>'Monto Presupuesto'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128534211779125338)
,p_name=>'P445_COSTO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(128534056528125336)
,p_prompt=>'Costo Previsto'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128534314137125339)
,p_name=>'P445_COSTO_REAL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(128534056528125336)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128534451742125340)
,p_name=>'P445_MARGEN'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(128534056528125336)
,p_prompt=>'Margen'
,p_format_mask=>'990G90'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128535442974125350)
,p_name=>'P445_PARAM_NRO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(128532720500125323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132513617164517928)
,p_name=>'P445_VENDEDOR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(128532720500125323)
,p_prompt=>'Vendedor'
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
 p_id=>wwv_flow_imp.id(132515286112517944)
,p_name=>'P445_PARAM_APRUEBA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(128532720500125323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133461095979476621)
,p_name=>'P445_MSJ'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(128532720500125323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132510959536517901)
,p_name=>'bloquea_campos'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132515126847517943)
,p_event_id=>wwv_flow_imp.id(132510959536517901)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P445_PARAM_APRUEBA :=busca_permiso( :p_cod_empresa, ''SMOBRPRO'',:APP_USER,''APRUEBA_PROYECTO'' ) ;'
,p_attribute_02=>'P445_PARAM_APRUEBA'
,p_attribute_03=>'P445_PARAM_APRUEBA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132511089225517902)
,p_event_id=>wwv_flow_imp.id(132510959536517901)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById("P445_NRO").readOnly=true;',
'document.getElementById("P445_ESTADO").readOnly=true;',
'document.getElementById("P445_FECHA").readOnly=true;',
'document.getElementById("P445_NOM_PROYECTO").readOnly=true;',
'document.getElementById("P445_CLIENTE").readOnly=true;',
'document.getElementById("P445_CONTACTO").readOnly=true;',
'',
'',
'document.getElementById("P445_CORREO").readOnly=true;',
'document.getElementById("P445_VENDEDOR").readOnly=true;',
'document.getElementById("P445_TELEFONO").readOnly=true;',
'document.getElementById("P445_COSTO_REAL").readOnly=true;',
'document.getElementById("P445_MARGEN").readOnly=true;',
'',
'document.getElementById("P445_FECHA_TENTATIVA").readOnly=true; ',
'////propiedades();',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132513779081517929)
,p_name=>'da_carga_datos'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P445_PARAM_NRO'
,p_condition_element=>'P445_PARAM_NRO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132513887785517930)
,p_event_id=>wwv_flow_imp.id(132513779081517929)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  inv.smotobra.recupera_datos_proyecto(pi_cod_empresa => :p_cod_empresa,',
'                                       pi_nro_comprobante => :P445_PARAM_NRO,',
'                                       po_fec_comprobante => :P445_FECHA,',
'                                       po_cliente => :P445_CLIENTE,',
'                                       po_nombre_proy => :P445_NOM_PROYECTO,',
'                                       po_estado => :P445_ESTADO,',
'                                       po_cod_vendedor => :P445_VENDEDOR,',
'                                       po_celular_contacto => :P445_TELEFONO,',
'                                       po_correo_contacto => :P445_CORREO,',
'                                       po_datos_contacto => :P445_CONTACTO,',
'                                       po_monto_presupuesto => :P445_MONTO,',
'                                       po_costo_previsto => :P445_COSTO,',
'                                       po_costo_final => :P445_COSTO_REAL,',
'                                       po_fec_tenta_proy => :P445_FECHA_TENTATIVA,',
'                                       po_margen => :P445_MARGEN,',
'                                       po_prioridad => :P445_PRIORIDAD,',
'                                       po_categoria => :P445_CATEGORIA,',
'                                       po_responsable => :P445_RESPONSABLE);',
':P445_NRO:= :P445_PARAM_NRO;'))
,p_attribute_02=>'P445_PARAM_NRO'
,p_attribute_03=>'P445_NRO,P445_FECHA,P445_CLIENTE,P445_NOM_PROYECTO,P445_ESTADO,P445_VENDEDOR,P445_TELEFONO, P445_CORREO, P445_CONTACTO, P445_MONTO, P445_COSTO, P445_COSTO_REAL, P445_FECHA_TENTATIVA, P445_MARGEN, P445_PRIORIDAD, P445_CATEGORIA, P445_RESPONSABLE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132513946897517931)
,p_event_id=>wwv_flow_imp.id(132513779081517929)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P445_NRO,P445_FECHA,P445_CLIENTE,P445_NOM_PROYECTO,P445_ESTADO,P445_VENDEDOR,P445_TELEFONO, P445_CORREO, P445_CONTACTO, P445_MONTO, P445_COSTO, P445_COSTO_REAL, P445_FECHA_TENTATIVA, P445_MARGEN, P445_PRIORIDAD, P445_CATEGORIA, P445_RESPONSABLE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132515619571517948)
,p_event_id=>wwv_flow_imp.id(132513779081517929)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'propiedades();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132514704630517939)
,p_name=>'DA_ABRIR_HIST'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(132514006403517932)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132514805711517940)
,p_event_id=>wwv_flow_imp.id(132514704630517939)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(132514221027517934)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132514981081517941)
,p_event_id=>wwv_flow_imp.id(132514704630517939)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(132514221027517934)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(132515740186517949)
,p_name=>'da_iniciar'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(128534560289125341)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(132515830507517950)
,p_event_id=>wwv_flow_imp.id(132515740186517949)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   inv.smotobra.cambia_estado_proyecto(pi_cod_empresa => :P_COD_EMPRESA,',
'                                      pi_nro_comprobante => :P445_PARAM_NRO,',
'                                      pi_estado => ''EN PREPARACION'',',
'                                      po_mensaje => :P445_MSJ);'))
,p_attribute_02=>'P445_PARAM_NRO'
,p_attribute_03=>'P445_MSJ'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133459828870476609)
,p_event_id=>wwv_flow_imp.id(132515740186517949)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133459057962476601)
,p_name=>'da_solicitar'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(128534691378125342)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133459128883476602)
,p_event_id=>wwv_flow_imp.id(133459057962476601)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  inv.smotobra.cambia_estado_proyecto(pi_cod_empresa => :P_COD_EMPRESA,',
'                                      pi_nro_comprobante => :P445_PARAM_NRO,',
'                                      pi_estado => ''A VERIFICAR'',',
'                                      po_mensaje => :P445_MSJ);'))
,p_attribute_02=>'P445_PARAM_NRO'
,p_attribute_03=>'P445_MSJ'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133460063887476611)
,p_event_id=>wwv_flow_imp.id(133459057962476601)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133459296362476603)
,p_name=>'da_modificar'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(128534871046125344)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133459356053476604)
,p_event_id=>wwv_flow_imp.id(133459296362476603)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  inv.smotobra.cambia_estado_proyecto(pi_cod_empresa => :P_COD_EMPRESA,',
'                                      pi_nro_comprobante => :P445_PARAM_NRO,',
'                                      pi_estado => ''EN PREPARACION'',',
'                                      po_mensaje => :P445_MSJ);'))
,p_attribute_02=>'P445_PARAM_NRO'
,p_attribute_03=>'P445_MSJ'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133460191766476612)
,p_event_id=>wwv_flow_imp.id(133459296362476603)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133459413962476605)
,p_name=>'da_veridicar'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(128534970309125345)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133459501016476606)
,p_event_id=>wwv_flow_imp.id(133459413962476605)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  inv.smotobra.cambia_estado_proyecto(pi_cod_empresa => :P_COD_EMPRESA,',
'                                      pi_nro_comprobante => :P445_PARAM_NRO,',
'                                      pi_estado => ''VERIFICADO'',',
'                                      po_mensaje => :P445_MSJ);'))
,p_attribute_02=>'P445_PARAM_NRO'
,p_attribute_03=>'P445_MSJ'
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133460232252476613)
,p_event_id=>wwv_flow_imp.id(133459413962476605)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133459661917476607)
,p_name=>'da_aprobar'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(128535008741125346)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133459779807476608)
,p_event_id=>wwv_flow_imp.id(133459661917476607)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  inv.smotobra.cambia_estado_proyecto(pi_cod_empresa => :P_COD_EMPRESA,',
'                                      pi_nro_comprobante => :P445_PARAM_NRO,',
'                                      pi_estado => ''APROBADO'',',
'                                      po_mensaje => :P445_MSJ);'))
,p_attribute_02=>'P445_PARAM_NRO'
,p_attribute_03=>'P445_MSJ'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133460382618476614)
,p_event_id=>wwv_flow_imp.id(133459661917476607)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133460445216476615)
,p_name=>'da_guardar'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(132515032250517942)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133460594098476616)
,p_event_id=>wwv_flow_imp.id(133460445216476615)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  inv.smotobra.actualiza_proyecto(pi_cod_empresa => :P_COD_EMPRESA,',
'                                  pi_nro_comprobante => :P445_PARAM_NRO,',
'                                  pi_responsable => :P445_RESPONSABLE,',
'                                  pi_prioridad => :P445_PRIORIDAD,',
'                                  pi_categoria => :P445_CATEGORIA,',
'                                  pi_presupuesto => :P445_MONTO,',
'                                  pi_costo => :P445_COSTO,',
'                                  po_mensaje => :P445_MSJ',
'                                  );',
'exception',
'    when others then',
'         raise_application_error(-20000,  sqlerrm );',
'end ;'))
,p_attribute_02=>'P445_PARAM_NRO,P445_RESPONSABLE,P445_PRIORIDAD,P445_CATEGORIA,P445_MONTO,P445_COSTO'
,p_attribute_03=>'P445_MSJ'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133460648651476617)
,p_event_id=>wwv_flow_imp.id(133460445216476615)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133461138137476622)
,p_name=>'DA_MENSAJE'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P445_MSJ'
,p_condition_element=>'P445_MSJ'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133461271722476623)
,p_event_id=>wwv_flow_imp.id(133461138137476622)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P445_MSJ.'
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133461321698476624)
,p_name=>'DA_CALCULA_MRGN_PR'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P445_MONTO'
,p_condition_element=>'P445_MONTO'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133461449035476625)
,p_event_id=>wwv_flow_imp.id(133461321698476624)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P445_MARGEN'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'ROUND(NVL(:P445_COSTO ,0) *100 / NVL(:P445_MONTO,1),2)'
,p_attribute_07=>'P445_COSTO,P445_MONTO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(133461578700476626)
,p_name=>'DA_CALCULA_MRGN_COS'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P445_COSTO'
,p_condition_element=>'P445_COSTO'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(133461677834476627)
,p_event_id=>wwv_flow_imp.id(133461578700476626)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P445_MARGEN'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'ROUND(NVL(:P445_COSTO,0) *100 / NVL(:P445_MONTO,1),2)'
,p_attribute_07=>'P445_COSTO,P445_MONTO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(181620559532127785)
,p_name=>'da_carga_archivos'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(181616464302165976)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(181621444971127783)
,p_event_id=>wwv_flow_imp.id(181620559532127785)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' DECLARE',
'  l_url VARCHAR2(4000);',
'BEGIN',
'     inv.smotobra.pr_carga_archivos(pi_cod_empresa => nvl(:P_COD_EMPRESA,''1''),',
'                                     pi_nro_comprobante => nvl(:P445_PARAM_NRO,:P445_NRO),',
'                                     pi_ser_comprobante =>  ''A'',',
'                                     pi_tip_comprobante =>  ''OBR'');',
'  ',
'EXCEPTION',
'    when others then',
'                raise_application_error(-20000, sqlerrm );',
'END;',
' '))
,p_attribute_02=>'P258_NRO_COMPROBANTE_RECIBIDO,P258_NRO_COMPROBANTE,P258_SER_COMPROBANTE,P258_TIP_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(181620922498127783)
,p_event_id=>wwv_flow_imp.id(181620559532127785)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' var url = ''f?p=&APP_ID.:552:&APP_SESSION.::NO::P552_TIPO,P552_SERIE,P552_NUMERO:OBR,A,'' +$v("P445_PARAM_NRO");',
'   ',
'',
'   window.open(url,''_blank'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(181621856475125804)
,p_name=>'After Dialog Close'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(181616142365166884)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(181622231681125802)
,p_event_id=>wwv_flow_imp.id(181621856475125804)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
);
wwv_flow_imp.component_end;
end;
/
