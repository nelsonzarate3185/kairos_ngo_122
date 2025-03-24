prompt --application/pages/page_00135
begin
--   Manifest
--     PAGE: 00135
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
 p_id=>135
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'STARTICULOS'
,p_alias=>'STARTICULOS'
,p_page_mode=>'MODAL'
,p_step_title=>'FICHA DE ARTICULOS'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-item-single-checkbox{',
'    color:  darkblue  !important;',
'   font-weight:bold  !important; ',
'    } ',
'.t-Form-label {',
'    color:  #003A85  !important;',
'    } ',
'',
'.t-Form-fieldContainer--floatingLabel .apex-item-select, .t-Form-fieldContainer--floatingLabel .apex-item-text, .t-Form-fieldContainer--floatingLabel .apex-item-textarea, .t-Form-fieldContainer--floatingLabel .oj-text-field-container:not(.oj-text-fie'
||'ld-has-start-slot) .oj-text-field-input { font-weight: bold ;}',
' ',
' #btndet{   ',
'        background:white;',
'        background-image: linear-gradient(180deg, rgb(1, 1, 131)  0%, #003a85de 100%);',
'        color:  yellow; ',
'        justify-content: center;',
'        align-items: center; ',
'        box-shadow: #79beca 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color: darkblue; ',
'        ',
'}',
' ',
'.t-Region-bodyWrap{',
'                background:#487ab8 ;',
'        }',
'',
'/*    ',
'.apex-item-group apex-item-group--popup-lov, .apex-item-text{',
'    border-color: darkblue !important;} font-weight: bold !important; ',
'*/',
'',
'.apex-item-text, .t-Form-fieldContainer--floatingLabel .apex-item-textarea , .apex-item-display-only{',
'    border-color: #3c5b83 !important;',
'    background: #FCFCF4 !important;',
'    border-style: solid !important; ',
'    }',
'',
'',
'.t-Tabs--pill .t-Tabs-link {',
'    background-color:  #003A85   !important;',
'    color:  yellow  !important; ',
'    border-color: white !important;',
'    font-style: oblique;',
'',
'}',
'.t-Tabs--pill .t-Tabs-link:focus {',
'    background-color:  darkblue   !important;',
'    color:  yellow  !important; }',
'',
'',
'',
'    .col-2  { background: #35355336   !important;}'))
,p_step_template=>wwv_flow_imp.id(40080790783263649)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'1000'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'PBOGADO'
,p_last_upd_yyyymmddhh24miss=>'20241104093107'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31236794188229813)
,p_plug_name=>'PARAMETROS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31254823817353996)
,p_plug_name=>'STARTICULOS'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--fillLabels:t-TabsRegion-mod--pill'
,p_plug_template=>wwv_flow_imp.id(40132096801263663)
,p_plug_display_sequence=>50
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31235656135229802)
,p_plug_name=>'PRINCIPAL'
,p_parent_plug_id=>wwv_flow_imp.id(31254823817353996)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31235704385229803)
,p_plug_name=>'ATRIBUTOS'
,p_parent_plug_id=>wwv_flow_imp.id(31254823817353996)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31236280429229808)
,p_plug_name=>'Capacidades'
,p_parent_plug_id=>wwv_flow_imp.id(31235704385229803)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31236488225229810)
,p_plug_name=>'Otros Atributos'
,p_parent_plug_id=>wwv_flow_imp.id(31235704385229803)
,p_region_template_options=>'t-Region--removeHeader:t-Region--scrollBody:margin-top-sm:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31235891050229804)
,p_plug_name=>'COSTOS'
,p_parent_plug_id=>wwv_flow_imp.id(31254823817353996)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45736107696738127)
,p_plug_name=>'EAN Alternativo'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>60
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(45737132946738137)
,p_name=>'Vincular EAN'
,p_parent_plug_id=>wwv_flow_imp.id(45736107696738127)
,p_template=>wwv_flow_imp.id(40096829222263653)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_ean,       ',
'       fec_alta,',
'       cod_usuario,',
'       '''' eliminar',
'from st_ean_articulo',
'where cod_empresa= :P_COD_EMPRESA',
'and   cod_articulo= :P135_P_COD_ARTICULO'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P135_P_COD_ARTICULO'
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
 p_id=>wwv_flow_imp.id(45737256945738138)
,p_query_column_id=>1
,p_column_alias=>'COD_EAN'
,p_column_display_sequence=>10
,p_column_heading=>'Codigo EAN'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45737312738738139)
,p_query_column_id=>2
,p_column_alias=>'FEC_ALTA'
,p_column_display_sequence=>20
,p_column_heading=>'Fecha Alta'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45737441360738140)
,p_query_column_id=>3
,p_column_alias=>'COD_USUARIO'
,p_column_display_sequence=>30
,p_column_heading=>'Usuario'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45737535803738141)
,p_query_column_id=>4
,p_column_alias=>'ELIMINAR'
,p_column_display_sequence=>40
,p_column_heading=>'Eliminar'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P135_EAN_ELIMINAR'',''#COD_EAN#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
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
'END;',
'',
''))
,p_display_when_condition2=>'PLSQL'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48233500841546507)
,p_plug_name=>'Carga de Productos Relacionados'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(48233728415546509)
,p_name=>'ARTICULOS_VINCULADOS'
,p_parent_plug_id=>wwv_flow_imp.id(48233500841546507)
,p_template=>wwv_flow_imp.id(40096829222263653)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DECODE(:P135_COD_RUBRO,',
'              ''PR'',',
'              E.COD_ARTICULO_EQUI,',
'              E.COD_ARTICULO) ARTICULO,',
'       COD_ART_CORTO,',
'       S.DESCRIPCION,',
'       '''' ELIMINAR',
'  FROM ST_EQUIVALENCIA_ART E, ST_ARTICULOS S',
' WHERE E.COD_EMPRESA = :P_COD_EMPRESA',
'   AND E.COD_EMPRESA = S.COD_EMPRESA',
'   AND DECODE(:P135_COD_RUBRO,',
'              ''PR'',',
'              E.COD_ARTICULO_EQUI,',
'              E.COD_ARTICULO) = S.COD_ARTICULO',
'   and DECODE(:P135_COD_RUBRO,',
'              ''PR'',',
'              E.COD_ARTICULO,',
'              E.COD_ARTICULO_EQUI) = :P135_P_cod_articulo;',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P135_P_COD_ARTICULO,P135_COD_RUBRO'
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
 p_id=>wwv_flow_imp.id(48233988986546511)
,p_query_column_id=>1
,p_column_alias=>'ARTICULO'
,p_column_display_sequence=>10
,p_column_heading=>'Articulo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(48234027723546512)
,p_query_column_id=>2
,p_column_alias=>'COD_ART_CORTO'
,p_column_display_sequence=>20
,p_column_heading=>'Cod Art Corto'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(48234129688546513)
,p_query_column_id=>3
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>30
,p_column_heading=>'Descripcion'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(48234297289546514)
,p_query_column_id=>4
,p_column_alias=>'ELIMINAR'
,p_column_display_sequence=>40
,p_column_heading=>'Eliminar'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P135_ART_VINC_ELIMINA'',''#ARTICULO#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
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
'END;',
'',
''))
,p_display_when_condition2=>'PLSQL'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48233618055546508)
,p_plug_name=>'Equivalencia de Repuestos'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(48235885553546530)
,p_name=>'Repuestos_equivalentes'
,p_parent_plug_id=>wwv_flow_imp.id(48233618055546508)
,p_template=>wwv_flow_imp.id(40096829222263653)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 	 E.COD_ARTICULO_EQUI	ARTICULO,',
'	    COD_ART_CORTO, ',
'        S.DESCRIPCION,',
'        '''' elimnar',
'	FROM ST_EQUIVALENCIA_rep E, ST_ARTICULOS S',
'	WHERE E.COD_EMPRESA= :P_COD_EMPRESA',
'	AND E.COD_EMPRESA=S.COD_EMPRESA',
'	AND E.COD_ARTICULO_EQUI=S.COD_ARTICULO',
'	and E.COD_ARTICULO=:P135_P_COD_ARTICULO;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P135_P_COD_ARTICULO'
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
 p_id=>wwv_flow_imp.id(48235940971546531)
,p_query_column_id=>1
,p_column_alias=>'ARTICULO'
,p_column_display_sequence=>10
,p_column_heading=>'Articulo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(48236027728546532)
,p_query_column_id=>2
,p_column_alias=>'COD_ART_CORTO'
,p_column_display_sequence=>20
,p_column_heading=>'Cod Art Corto'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(48236196013546533)
,p_query_column_id=>3
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>30
,p_column_heading=>'Descripcion'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(48236268704546534)
,p_query_column_id=>4
,p_column_alias=>'ELIMNAR'
,p_column_display_sequence=>40
,p_column_heading=>'Elimnar'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P135_REP_EQUIV_ELIMIN'',''#ARTICULO#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
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
'END;',
'',
''))
,p_display_when_condition2=>'PLSQL'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45738264044738148)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(45736107696738127)
,p_button_name=>'Guardar_EAN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pillEnd:t-Button--gapTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Ean'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48234379775546515)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(48233500841546507)
,p_button_name=>'Guardar_VINC'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pillEnd:t-Button--gapTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48235751942546529)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(48233618055546508)
,p_button_name=>'Confirmar_EQUIV'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar Equiv'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
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
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45736732211738133)
,p_button_sequence=>210
,p_button_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_button_name=>'EAN_ALTERNATIVO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'EAN Alternativo'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P135_P_COD_ARTICULO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48233215679546504)
,p_button_sequence=>220
,p_button_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_button_name=>'VINCULAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Vincular'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P135_P_COD_ARTICULO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48233348447546505)
,p_button_sequence=>230
,p_button_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_button_name=>'EQUIVALENCIA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Equivalencia'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P135_P_COD_ARTICULO is not null and :P135_COD_RUBRO=''RE'' then',
'    return true;',
'else',
'    return false;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31236574091229811)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(31254823817353996)
,p_button_name=>'GUARDAR'
,p_button_static_id=>'btndet'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'BOTTOM'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    DECLARE',
'    Vinserta NUMBER;',
'    Vactualiza NUMBER;',
'    BEGIN ',
'                    Vinserta := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => 127,',
'                                                                         papli0100_id => :P_APLI0100_ID,',
'                                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                                         pdm_boto     => 1); ',
'                           ',
'                    Vactualiza := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => 127,',
'                                                                         papli0100_id => :P_APLI0100_ID,',
'                                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                                         pdm_boto     => 2); ',
'                 ',
'',
'        IF Vinserta = 0 and Vactualiza = 0 THEN',
'            RETURN FALSE;',
'        ELSE',
'            RETURN TRUE;',
'        END IF;                                                     ',
'    END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(43739627520884007)
,p_branch_name=>'IR_A_PAG_127'
,p_branch_action=>'f?p=&APP_ID.:127:&SESSION.::&DEBUG.:CR,:P127_CODIGO:&P135_P_COD_ARTICULO.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31236351154229809)
,p_name=>'P135_VOLUMEN_ARMADO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(31236280429229808)
,p_item_default=>'0'
,p_prompt=>'Volumen Armado m3'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock:margin-bottom-none:margin-right-lg'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31236676537229812)
,p_name=>'P135_P_COD_ARTICULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31236794188229813)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31236853088229814)
,p_name=>'P135_P_CAMBIA_PRECIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(31236794188229813)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31236933803229815)
,p_name=>'P135_P_VE_AUD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(31236794188229813)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31237074670229816)
,p_name=>'P135_P_MODIFICA_ARTICULOS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(31236794188229813)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31237130927229817)
,p_name=>'P135_P_CAMBIA_FOB'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(31236794188229813)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31237429638229820)
,p_name=>'P135_SERIE_GARANTIA'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(31235891050229804)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31237512407229821)
,p_name=>'P135_SERIE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(31235891050229804)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31237600253229822)
,p_name=>'P135_COD_RELACION_UM'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(31235891050229804)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31237877300229824)
,p_name=>'P135_MSJ_ERR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(31236794188229813)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31255123118353996)
,p_name=>'P135_COD_ARTICULO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>unistr('C\00F3digo Articulo:')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31255590324353998)
,p_name=>'P135_COD_EMPRESA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31255955621353998)
,p_name=>'P135_DESCRIPCION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>unistr('Descripci\00F3n del Art\00EDculo:')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>150
,p_cMaxlength=>200
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31256315517353999)
,p_name=>'P135_COD_GRUPO_ART'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>'Grupo de Precio:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_grupo_art',
'    from st_grupos_art '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-N/A-'
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
 p_id=>wwv_flow_imp.id(31256783879353999)
,p_name=>'P135_COD_PAIS_ORIGEN'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>unistr('Pa\00EDs de Fabricacion:')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select descripcion, cod_pais',
'    from paises',
'      '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-N/A-'
,p_cSize=>32
,p_cMaxlength=>5
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
 p_id=>wwv_flow_imp.id(31257121772353999)
,p_name=>'P135_COD_MARCA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>'Marca:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_marca',
'    from st_marcas '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-N/A-'
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
 p_id=>wwv_flow_imp.id(31257510690354000)
,p_name=>'P135_COD_RUBRO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>'Rubro:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select descripcion, cod_rubro',
'    from st_rubro',
'      where cod_empresa = :P_COD_EMPRESA'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-N/A-'
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
 p_id=>wwv_flow_imp.id(31257940338354000)
,p_name=>'P135_COD_FAMILIA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>'Familia:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion,   cod_familia',
'    from st_familia',
'      where cod_empresa = :P_COD_EMPRESA',
'       '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-N/A-'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31258358101354000)
,p_name=>'P135_COD_LINEA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>'Linea:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select descripcion,  cod_linea',
'    from st_linea ',
'      where cod_empresa = :P_COD_EMPRESA',
'    ;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-N/A-'
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
 p_id=>wwv_flow_imp.id(31258752491354000)
,p_name=>'P135_COD_ENVASE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(31236488225229810)
,p_prompt=>'Envase:'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select descripcion ,cod_envase',
'    from st_envases',
'     '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-N/A-'
,p_cSize=>32
,p_cMaxlength=>5
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31259136146354000)
,p_name=>'P135_COD_IVA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>'Iva:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select porc_iva_venta ||''%'', cod_iva',
'    from st_iva',
'      '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-N/A-'
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
 p_id=>wwv_flow_imp.id(31259516453354001)
,p_name=>'P135_IND_MANEJA_STOCK'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>'Maneja Stock'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31259955221354001)
,p_name=>'P135_COD_UNIDAD_MEDIDA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(31236488225229810)
,p_prompt=>'Unidad Medida'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion ,cod_unidad_medida',
'    from st_unidades_medida '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-N/A-'
,p_cSize=>32
,p_cMaxlength=>5
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31260372627354001)
,p_name=>'P135_COSTO_PROM'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(31235891050229804)
,p_item_default=>'0'
,p_prompt=>'Costo Promedio Gs'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_tag_attributes=>'style="text-align: right;"'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-lg:margin-right-sm'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31260763623354001)
,p_name=>'P135_COSTO_ULTIMO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(31235891050229804)
,p_item_default=>'0'
,p_prompt=>'Ultimo Costo Gs'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_tag_attributes=>'style="text-align: right;"'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-lg:margin-right-sm'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31261178095354002)
,p_name=>'P135_COSTO_FOB'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(31235891050229804)
,p_item_default=>'0'
,p_prompt=>'Costo FOB'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31261546541354002)
,p_name=>'P135_COD_MONEDA_COSTO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(31235891050229804)
,p_prompt=>'Moneda Costo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_moneda',
'    from monedas '))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-lg'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31261970925354002)
,p_name=>'P135_FEC_ULTIMA_COMP'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>'Fecha Ultima Compra'
,p_format_mask=>'dd/mm/yyyy'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-right-sm'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31262399070354002)
,p_name=>'P135_CANT_X_PAQUETE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(31236488225229810)
,p_item_default=>'0'
,p_prompt=>'Cant. por Paquete'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31262775042354002)
,p_name=>'P135_COD_PROVEEDOR_DFLT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>'Proveedor:'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ltrim(pe.nombre) nom,pr.cod_proveedor ',
'    from personas pe, cm_proveedores pr ',
'   where pr.cod_empresa   =:P_COD_EMPRESA  ',
'     and pr.cod_persona   = pe.cod_persona;',
'      '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-N/A-'
,p_cSize=>32
,p_cMaxlength=>15
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
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
 p_id=>wwv_flow_imp.id(31263535249354003)
,p_name=>'P135_COD_ORIGEN_ART'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>unistr('C\00F3digo de origen:')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>150
,p_cMaxlength=>600
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31263939734354003)
,p_name=>'P135_ESTADO'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>'Activo'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_attribute_01=>'N'
,p_attribute_02=>'A'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31264387704354003)
,p_name=>'P135_PRECIO_BASE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(31235891050229804)
,p_item_default=>'0'
,p_prompt=>'Precio Base'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-lg:margin-right-sm'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31264760999354003)
,p_name=>'P135_COD_MONEDA_BASE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>'Moneda Base:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion,cod_moneda',
'    from monedas '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-N/A-'
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
 p_id=>wwv_flow_imp.id(31265177547354003)
,p_name=>'P135_COD_BARRA_ART'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31265536220354004)
,p_name=>'P135_IND_MODIFICA_PRECIO'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>'Modifica Precio'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31268313090354006)
,p_name=>'P135_COD_ARANCEL'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(31235891050229804)
,p_prompt=>'Arancel'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion,cod_arancel ',
'  from cm_aranceles '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-lg'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31269144722354006)
,p_name=>'P135_COMENTARIO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>'Comentario'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>150
,p_cMaxlength=>150
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31269597921354006)
,p_name=>'P135_COD_GRUPO'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>unistr('Grupo de Art\00EDculo:')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion ,cod_grupo',
'    from st_grupos ',
'      where cod_empresa = :P_COD_EMPRESA'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-N/A-'
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
 p_id=>wwv_flow_imp.id(31273536480354008)
,p_name=>'P135_ALTO_CM'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(31236280429229808)
,p_item_default=>'0'
,p_prompt=>'Alto cm.'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock:margin-bottom-none:margin-right-lg'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31273926014354009)
,p_name=>'P135_LARGO_CM'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(31236280429229808)
,p_item_default=>'0'
,p_prompt=>'Largo cm.'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock:margin-bottom-none:margin-right-lg'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31274332950354009)
,p_name=>'P135_ANCHO_CM'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(31236280429229808)
,p_item_default=>'0'
,p_prompt=>'Ancho cm.'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock:margin-bottom-none:margin-right-lg'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31274794226354009)
,p_name=>'P135_PESO_GR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(31236280429229808)
,p_item_default=>'0'
,p_prompt=>'Peso gr.'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock:margin-bottom-none:margin-right-lg'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31275195841354009)
,p_name=>'P135_MANEJA_COSTO'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>'Maneja Costo'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31276352521354010)
,p_name=>'P135_IND_MANEJA_LOTES'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>'Maneja Lotes'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31277545844354010)
,p_name=>'P135_COSTO_PROM_US'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(31235891050229804)
,p_item_default=>'0'
,p_prompt=>'Costo Promedio U$'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_tag_attributes=>'style="text-align: right;"'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-lg:margin-right-sm'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31277983608354010)
,p_name=>'P135_COSTO_ULTIMO_US'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(31235891050229804)
,p_item_default=>'0'
,p_prompt=>'Ultimo Costo U$'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_tag_attributes=>'style="text-align: right;"'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-lg:margin-right-sm'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31278351591354011)
,p_name=>'P135_TIP_CAMBIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(31235891050229804)
,p_item_default=>'0'
,p_prompt=>'Tipo de Cambio'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_tag_attributes=>'style="text-align: right;"'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31278728945354011)
,p_name=>'P135_COD_ALTERNO'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>unistr('C\00F3digo Alterno:')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo||'' - ''||trim(descripcion)descripcion,  cod_articulo',
'from  st_articulos ',
'where cod_empresa=:P_COD_EMPRESA ',
'order by cod_articulo'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-N/A-'
,p_cSize=>60
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
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
 p_id=>wwv_flow_imp.id(31279139808354011)
,p_name=>'P135_COD_ART_CORTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>unistr('C\00F3digo Corto:')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31279594935354011)
,p_name=>'P135_ESTIBA_MAX'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(31236488225229810)
,p_item_default=>'0'
,p_prompt=>'Estiba Max'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31279943058354011)
,p_name=>'P135_FEC_ALTA'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>'Fecha Alta:'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-right-sm'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31280337350354012)
,p_name=>'P135_VOLUMEN'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(31236280429229808)
,p_item_default=>'0'
,p_prompt=>'Volumen m3'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock:margin-bottom-none:margin-right-lg'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31281112526354012)
,p_name=>'P135_RUTA_FOTO_1'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(31235891050229804)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31281525565354012)
,p_name=>'P135_RUTA_FOTO_2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(31235891050229804)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31281962757354012)
,p_name=>'P135_RUTA_FOTO_3'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(31235891050229804)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31282392003354013)
,p_name=>'P135_RUTA_FOTO_4'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(31235891050229804)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31282744956354013)
,p_name=>'P135_RUTA_FOTO_5'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(31235891050229804)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31283943683354013)
,p_name=>'P135_GARANTIA'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>'Garantia'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31284772841354014)
,p_name=>'P135_DURACION_GARANTIA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(31236488225229810)
,p_item_default=>'0'
,p_prompt=>unistr('Duraci\00F3n Garant\00EDa (Mes):')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31285503549354014)
,p_name=>'P135_COD_USUARIO'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>'Usuario Alta:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-right-sm'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31289191888354016)
,p_name=>'P135_COD_EAN'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>unistr('C\00F3digo EAN:')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31289578051354016)
,p_name=>'P135_COD_CATEGORIA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>'Categoria:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion,cod_categoria',
'	    from st_categorias',
'	      where cod_empresa=:P_COD_EMPRESA'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-N/A-'
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
 p_id=>wwv_flow_imp.id(31289922468354016)
,p_name=>'P135_ART_DESC_PROVEEDOR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>unistr('Descripci\00F3n Proveedor:')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>150
,p_cMaxlength=>400
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31290338298354016)
,p_name=>'P135_COD_DIVISION'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>'Division:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select desc_division, cod_division',
'    from st_division_articulos',
'     '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-N/A-'
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
 p_id=>wwv_flow_imp.id(31291168998354017)
,p_name=>'P135_EN_OFERTA_WEB'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>'En Oferta Web'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31291526748354017)
,p_name=>'P135_CAP_20GP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31236280429229808)
,p_item_default=>'0'
,p_prompt=>'Capac. 20 GP'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock:margin-bottom-none:margin-right-lg'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31291953887354018)
,p_name=>'P135_CAP_40GP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(31236280429229808)
,p_item_default=>'0'
,p_prompt=>'Capac. 40 GP'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock:margin-bottom-none:margin-right-lg'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31292336911354018)
,p_name=>'P135_CAP_40HQ'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(31236280429229808)
,p_item_default=>'0'
,p_prompt=>'Capac. 40 HQ'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock:margin-bottom-none:margin-right-lg'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31292796801354018)
,p_name=>'P135_CAMION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(31236280429229808)
,p_item_default=>'0'
,p_prompt=>'Camion'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock:margin-bottom-none:margin-right-lg'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31293175498354018)
,p_name=>'P135_FURGON'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(31236280429229808)
,p_item_default=>'0'
,p_prompt=>'Furgon'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock:margin-bottom-none:margin-right-lg'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31293597386354018)
,p_name=>'P135_EMBARQUE_CONS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(31236280429229808)
,p_item_default=>'0'
,p_prompt=>'Embarque Cons'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock:margin-bottom-none:margin-right-lg'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31293953820354019)
,p_name=>'P135_IND_NETO'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>'Precio Neto'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31294355456354019)
,p_name=>'P135_IND_FUERA_LINEA'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>'Fuera Linea'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31297146654354022)
,p_name=>'P135_IND_EXP_VIEW'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(31235891050229804)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31297534169354022)
,p_name=>'P135_IND_NO_DESCUENTO'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>'Sin Descuento'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31297996016354022)
,p_name=>'P135_PATH_SPARE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(31235891050229804)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31298324062354022)
,p_name=>'P135_PATH_EXP'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(31235891050229804)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31302372743354024)
,p_name=>'P135_PATH_IMG_PRO'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(31235891050229804)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31302731110354025)
,p_name=>'P135_COD_MADRE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>unistr('C\00F3digo Hijo:')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo||'' - ''||trim(descripcion)descripcion,  cod_articulo',
'from  st_articulos  ',
' where cod_empresa = :P_COD_EMPRESA',
' order by cod_articulo'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-N/A-'
,p_cSize=>32
,p_cMaxlength=>30
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
 p_id=>wwv_flow_imp.id(31304385382354025)
,p_name=>'P135_IND_MUESTRA_WEB'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>'Muestra Web'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31304708174354026)
,p_name=>'P135_AUTOAPILABLE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(31236488225229810)
,p_prompt=>'Por Paquete'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:SI;SI,NO;NO,N/A;N/A'
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
 p_id=>wwv_flow_imp.id(31305182081354026)
,p_name=>'P135_CANTIDAD_POR_PALLET'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(31236488225229810)
,p_item_default=>'0'
,p_prompt=>'Cant. por Pallet'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31305932494354026)
,p_name=>'P135_IND_NO_CUBRE_GARANTIA'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>'No Cubre Garantia'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31306710599354027)
,p_name=>'P135_IND_DISCONTINUADO'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>'No Stock'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31307190275354027)
,p_name=>'P135_CANTIDAD_MINIMA_COMPRA'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_item_default=>'0'
,p_prompt=>'Cant.Min.Compra:'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31307502214354027)
,p_name=>'P135_PLAZO_ENTREGA'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>'Plazo Entrega:'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31307959407354027)
,p_name=>'P135_COSTO_PROFORMA_GS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31235891050229804)
,p_item_default=>'0'
,p_prompt=>'Costo Proforma Gs'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31308308765354028)
,p_name=>'P135_COTIZACION_CP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(31235891050229804)
,p_item_default=>'0'
,p_prompt=>'Cotizacion CP'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31309567223354028)
,p_name=>'P135_COD_PUERTO'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>unistr('Pa\00EDs de Embarque:')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select upper(p.descripcion||'' / ''||',
' pa.descripcion||'' / ''||pro.descripcion||''-''||ci.descripcion)puerto  ,cod_puerto ',
'  from   cm_puertos p , paises pa, provincias pro, ciudades ci',
'  where p.cod_pais=pa.cod_pais',
'  and p.cod_pais=pro.cod_pais',
'  and p.cod_provincia=pro.cod_provincia',
'   and p.cod_pais=ci.cod_pais',
'  and p.cod_provincia=ci.cod_provincia',
'  and p.cod_ciudad=ci.cod_ciudad '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-N/A-'
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
 p_id=>wwv_flow_imp.id(31309990089354028)
,p_name=>'P135_ORIGEN_PUERTO'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>'Origen Puerto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31311911012354029)
,p_name=>'P135_COSTO_FOB_OC'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(31235891050229804)
,p_item_default=>'0'
,p_prompt=>'Costo FOB Ultima OC'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_tag_attributes=>'style="text-align: right;"'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31317567435354032)
,p_name=>'P135_IND_LISTA_PRECIO'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>'Incluir en Lista Precio'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31317906778354032)
,p_name=>'P135_IND_SOLO_PROMO'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>'Solo Promo'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31326340015354037)
,p_name=>'P135_MOTIVO_NO_STOCK'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>'Motivo No Stock:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:PROVEEDOR;Proveedor,INDICE DE FALLAS;INDICE DE FALLAS,MOQ MAYOR A NECECIDAD DE MERCADO;MOQ MAYOR A NECECIDAD DE MERCADO,CAMBIO DE PRECIOS;CAMBIO DE PRECIOS,MALA VENTA;MALA VENTA,PROCESO_IMPORTACION;PROCESO_IMPORTACION,TEMPORAL;TEMPORAL'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-N/A-'
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
 p_id=>wwv_flow_imp.id(31327131932354037)
,p_name=>'P135_FECHA_NO_STOCK'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>'No Stock Hasta'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>12
,p_tag_attributes=>'style="background-color:  #FCFCF4; "'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31327569268354037)
,p_name=>'P135_CLASIFICACION_SLIM'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>'Clasificacion Slim'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>60
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31328739077354038)
,p_name=>'P135_IND_NO_FACTURAR'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>'Bloquear p/ Fact.'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31329174934354038)
,p_name=>'P135_APILABILIDAD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(31236488225229810)
,p_prompt=>'Apilabilidad'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:AUTOAPILABLE;AUTOAPILABLE,ESPECIAL;ESPECIAL,PALETIZABLE;PALETIZABLE,MIXTO;MIXTO'
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
 p_id=>wwv_flow_imp.id(31329527009354038)
,p_name=>'P135_ALTO_ARMADO_CM'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(31236280429229808)
,p_item_default=>'0'
,p_prompt=>'Alto Armado Cm'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock:margin-bottom-none:margin-right-lg'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31329977421354038)
,p_name=>'P135_ANCHO_ARMADO_CM'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(31236280429229808)
,p_item_default=>'0'
,p_prompt=>'Ancho Armado Cm'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock:margin-bottom-none:margin-right-lg'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31330338359354039)
,p_name=>'P135_LARGO_ARMADO_CM'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(31236280429229808)
,p_item_default=>'0'
,p_prompt=>'Largo Armado Cm'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock:margin-bottom-none:margin-right-lg'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31330709561354039)
,p_name=>'P135_IND_ARMADO'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(31236280429229808)
,p_prompt=>unistr('Tiene Dimensi\00F3n Armado?')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-top-md'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31331166265354039)
,p_name=>'P135_IND_CONATEL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(31236488225229810)
,p_prompt=>'Registro'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31331548013354039)
,p_name=>'P135_IND_HOMOLOGACION'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(31236488225229810)
,p_prompt=>'Homologacion:'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31331998178354039)
,p_name=>'P135_REGISTRO_CONATEL'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(31236488225229810)
,p_prompt=>'Registro Conatel:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_tag_attributes=>'style="background-color:  #FCFCF4; "'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31332730154354040)
,p_name=>'P135_ANCHO_CLAMP'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(31236280429229808)
,p_item_default=>'0'
,p_prompt=>'Ancho  - Golpe de Clamp'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock:margin-bottom-none:margin-right-lg'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31333144622354040)
,p_name=>'P135_LARGO_CLAMP'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(31236280429229808)
,p_item_default=>'0'
,p_prompt=>'Largo  - Golpe de Clamp'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock:margin-bottom-none:margin-right-lg'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31333511317354040)
,p_name=>'P135_ALTO_CLAMP'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(31236280429229808)
,p_item_default=>'0'
,p_prompt=>'Alto  - Golpe de Clamp'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--postTextBlock:margin-bottom-none:margin-right-lg'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31334304970354041)
,p_name=>'P135_CANTIDAD_MINIMA_WEB'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_item_default=>'0'
,p_prompt=>'Cant. Minima Web'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31353167973354051)
,p_name=>'P135_CANTIDAD_MINIMA_LISTA_PRE'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_item_default=>'0'
,p_prompt=>'Cant. Min. Lista Precio'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31353542663354052)
,p_name=>'P135_NRO_REGISTRO_SANITARIO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(31236488225229810)
,p_prompt=>'Nro Reg. Sanitario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>600
,p_tag_attributes=>'style="background-color:  #FCFCF4; "'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31353935822354052)
,p_name=>'P135_VENCIMIENTO_REGISTRO_SANI'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(31236488225229810)
,p_prompt=>'Vto. Reg. Sanitario'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_attributes=>'style="background-color:  #FCFCF4; "'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45736297570738128)
,p_name=>'P135_EAN_ALTERNATIVO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(45736107696738127)
,p_prompt=>'CODIGO EAN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>7
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45737766481738143)
,p_name=>'P135_EAN_ELIMINAR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(45736107696738127)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48233883210546510)
,p_name=>'P135_ART_VINC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(48233500841546507)
,p_prompt=>'Art Vinc'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select a.descripcion || '' - '' || a.cod_articulo || '' - '' || a.cod_art_corto d, ',
'            a.COD_ARTICULO ',
'       from st_articulos a',
'      where a.cod_empresa = :P_COD_EMPRESA'))
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(48234459349546516)
,p_name=>'P135_ART_VINC_ELIMINA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(48233500841546507)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48235650671546528)
,p_name=>'P135_COD_EQUIVALE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(48233618055546508)
,p_prompt=>'Cod Equivale'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select a.descripcion, ',
'            COD_ARTICULO',
'       from st_articulos a',
'      where a.cod_empresa = :P_COD_EMPRESA'))
,p_cSize=>30
,p_colspan=>7
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
 p_id=>wwv_flow_imp.id(48236397095546535)
,p_name=>'P135_REP_EQUIV_ELIMIN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(48233618055546508)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(842569502723550046)
,p_name=>'P135_IND_GASTRO_DISTRIBUCION'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_imp.id(31235656135229802)
,p_prompt=>'Gastro/Distribuciones'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(41917513628658740)
,p_validation_name=>'VALIDA_COD_CORTO'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P135_COD_ART_CORTO IS NOT NULL THEN',
'        DECLARE ',
'          VEXISTE VARCHAR2(10); ',
'          BEGIN ',
'           SELECT ''S''',
'             INTO VEXISTE',
'           FROM ST_ARTICULOS ',
'            where cod_empresa = :P_COD_EMPRESA',
'           AND  COD_ART_CORTO = :P135_COD_ART_CORTO ',
'           AND  (:P135_P_COD_ARTICULO IS NULL OR :P135_P_COD_ARTICULO<> COD_ARTICULO)',
'           AND ROWNUM=1',
'           ;',
'            ',
'             RETURN FALSE;    ',
'          EXCEPTION',
'          WHEN NO_DATA_FOUND THEN  ',
'             RETURN TRUE;',
'          when others then ',
'             RETURN FALSE;      ',
'          END ;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'El codigo corto del articulo ya existe'
,p_when_button_pressed=>wwv_flow_imp.id(31236574091229811)
,p_associated_item=>wwv_flow_imp.id(31279139808354011)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(41917638166658741)
,p_validation_name=>'VALIDA_EAN'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P135_cod_ean IS NOT NULL THEN',
'DECLARE  ',
' VEXISTE VARCHAR2(1);',
'  BEGIN ',
'   SELECT ''S''',
'     INTO VEXISTE',
'   FROM ST_ARTICULOS ',
'      where cod_empresa = :P_COD_EMPRESA',
'   AND  cod_ean = :P135_cod_ean   ',
'   AND  (:P135_P_COD_ARTICULO IS NULL OR :P135_P_COD_ARTICULO<> COD_ARTICULO)',
'   ;',
'     RETURN FALSE;',
'  EXCEPTION',
'  WHEN NO_DATA_FOUND  THEN  ',
'     RETURN TRUE;    ',
'  when others then ',
'     RETURN FALSE;',
'  END ;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('El c\00F3digo EAN del articulo ya existe')
,p_associated_item=>wwv_flow_imp.id(31289191888354016)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(41917796520658742)
,p_validation_name=>'VALIDA_COD_MADRE'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P135_cod_articulo=:P135_cod_madre then',
'    RETURN FALSE;',
'ELSE',
'    RETURN TRUE;',
'END if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'El articulo hijo y codigo de articulo no pueden ser iguales'
,p_when_button_pressed=>wwv_flow_imp.id(31236574091229811)
,p_associated_item=>wwv_flow_imp.id(31302731110354025)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(45734553769738111)
,p_validation_name=>'val_cod_art'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P135_COD_ARTICULO IS NULL AND :P135_P_COD_ARTICULO IS NULL THEN',
'    RETURN FALSE;',
'ELSE',
'    RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('*El c\00F3digo de Art\00EDculo no debe ser nulo.')
,p_associated_item=>wwv_flow_imp.id(31255123118353996)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(45734683137738112)
,p_validation_name=>'val_desc_art'
,p_validation_sequence=>50
,p_validation=>'P135_DESCRIPCION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('*Debe cargar la descripci\00F3n del Art\00EDculo.')
,p_associated_item=>wwv_flow_imp.id(31255955621353998)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(48235189534546523)
,p_validation_name=>'New'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	SELECT ''S'' ',
'	 FROM ST_EQUIVALENCIA_ART E',
'      where cod_empresa = :P_COD_EMPRESA',
' AND DECODE (:P135_COD_RUBRO,''PR'',E.COD_ARTICULO_EQUI,E.COD_ARTICULO)=:P135_ART_VINC',
' AND DECODE (:P135_COD_RUBRO,''PR'',E.COD_ARTICULO,E.COD_ARTICULO_EQUI)=:P135_P_COD_ARTICULO;'))
,p_validation_type=>'EXISTS'
,p_error_message=>unistr('El Art\00EDculo &P135_ART_VINC. ya se encuentra vinculado')
,p_when_button_pressed=>wwv_flow_imp.id(48234379775546515)
,p_associated_item=>wwv_flow_imp.id(48233883210546510)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31237986869229825)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(31236574091229811)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41916860986658733)
,p_event_id=>wwv_flow_imp.id(31237986869229825)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P135_MSJ_ERR:=NULL;',
'if :P135_ancho_cm is null and :P135_cod_rubro=''PR'' then ',
'	:P135_MSJ_ERR:=''Debe Cargar ancho del articulo'';',
'	else	',
'			if :P135_alto_cm is null  and :P135_cod_rubro=''PR'' then ',
'			:P135_MSJ_ERR:=''Debe Cargar Alto del articulo'';',
'			else	',
'				if :P135_largo_cm is null and :P135_cod_rubro=''PR'' then ',
'				:P135_MSJ_ERR:=''Debe Cargar Largo del articulo''; ',
'				end if;',
'			end if;',
'			',
'	end if;',
'	',
'',
'if :P135_cod_articulo=:P135_cod_madre then',
':P135_MSJ_ERR:=''El articulo hijo y codigo de articulo no pueden ser iguales'';',
'end if;',
'',
'if nvl(:P135_IND_DISCONTINUADO,''N'')=''S''and :P135_MOTIVO_NO_STOCK IS NULL  then',
'    :P135_MSJ_ERR:=''Debe Selecciona un Motivo de No Stock'';',
'end if;',
'',
'--TEMPORAL',
'',
'',
'if nvl(:P135_IND_DISCONTINUADO,''N'')=''S''and :P135_MOTIVO_NO_STOCK =''TEMPORAL'' and',
'	:P135_fecha_no_stock is null then',
'    :P135_MSJ_ERR:=''Debe Selecciona una Fecha  de No Stock''; ',
'end if;',
'',
'',
'if (nvl(:P135_IND_DISCONTINUADO,''N'')<>''S''OR nvl(:P135_MOTIVO_NO_STOCK,''X'') <>''TEMPORAL'') and',
'	:P135_fecha_no_stock is not  null then',
':P135_MSJ_ERR:=''Debe eliminar la fecha para poder continuar''; ',
'end if;',
'',
'',
'if  :P135_fecha_no_stock  <trunc(sysdate-1) then',
':P135_MSJ_ERR:=''La Fecha de No Stock no debe ser menor a la actual''; ',
'end if;',
'',
'if nvl(:P135_IND_DISCONTINUADO,''N'')=''N'' THEN',
'	 :P135_MOTIVO_NO_STOCK :=NULL;',
'	:P135_fecha_no_stock := null;',
'end if;',
'',
' '))
,p_attribute_02=>'P135_COD_ART_CORTO,P135_P_COD_ARTICULO,P135_ANCHO_CM,P135_ALTO_CM,P135_LARGO_CM,P135_COD_RUBRO,P135_COD_MADRE,P135_MOTIVO_NO_STOCK,P135_IND_DISCONTINUADO,P135_FECHA_NO_STOCK'
,p_attribute_03=>'P135_MSJ_ERR,P135_MOTIVO_NO_STOCK,P135_FECHA_NO_STOCK'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31238278799229828)
,p_name=>'DA_VOL1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P135_ANCHO_CM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31238373378229829)
,p_event_id=>wwv_flow_imp.id(31238278799229828)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P135_VOLUMEN'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'NVL(:P135_largo_cm,0)/100*NVL(:P135_ancho_cm,0)/100*NVL(:P135_alto_cm,0)/100 ;'
,p_attribute_07=>'P135_LARGO_CM,P135_ANCHO_CM,P135_ALTO_CM'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31238724400229833)
,p_name=>'DA_VOL3'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P135_LARGO_CM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31238805851229834)
,p_event_id=>wwv_flow_imp.id(31238724400229833)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P135_VOLUMEN'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'NVL(:P135_largo_cm,0)/100*NVL(:P135_ancho_cm,0)/100*NVL(:P135_alto_cm,0)/100'
,p_attribute_07=>'P135_LARGO_CM,P135_ANCHO_CM,P135_ALTO_CM'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31238529530229831)
,p_name=>'DA_VOL2'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P135_ALTO_CM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31238623316229832)
,p_event_id=>wwv_flow_imp.id(31238529530229831)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P135_VOLUMEN'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'NVL(:P135_largo_cm,0)/100*NVL(:P135_ancho_cm,0)/100*NVL(:P135_alto_cm,0)/100'
,p_attribute_07=>'P135_LARGO_CM,P135_ANCHO_CM,P135_ALTO_CM'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31238903047229835)
,p_name=>'DA_VOA1'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P135_ALTO_ARMADO_CM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31239069175229836)
,p_event_id=>wwv_flow_imp.id(31238903047229835)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P135_VOLUMEN_ARMADO'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>' NVL(:P135_largo_armado_cm,0)/100*NVL(:P135_ancho_armado_cm,0)/100*NVL(:P135_alto_armado_cm,0)/100 '
,p_attribute_07=>'P135_ALTO_ARMADO_CM,P135_ANCHO_ARMADO_CM,P135_LARGO_ARMADO_CM'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31239346953229839)
,p_name=>'DA_VOA2'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P135_ANCHO_ARMADO_CM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31239418900229840)
,p_event_id=>wwv_flow_imp.id(31239346953229839)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P135_VOLUMEN_ARMADO'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>' NVL(:P135_largo_armado_cm,0)/100*NVL(:P135_ancho_armado_cm,0)/100*NVL(:P135_alto_armado_cm,0)/100 '
,p_attribute_07=>'P135_ALTO_ARMADO_CM,P135_ANCHO_ARMADO_CM,P135_LARGO_ARMADO_CM'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31239159357229837)
,p_name=>'DA_VOA3'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P135_LARGO_ARMADO_CM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31239293491229838)
,p_event_id=>wwv_flow_imp.id(31239159357229837)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P135_VOLUMEN_ARMADO'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>' NVL(:P135_largo_armado_cm,0)/100*NVL(:P135_ancho_armado_cm,0)/100*NVL(:P135_alto_armado_cm,0)/100 '
,p_attribute_07=>'P135_ALTO_ARMADO_CM,P135_ANCHO_ARMADO_CM,P135_LARGO_ARMADO_CM'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
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
 p_id=>wwv_flow_imp.id(41916021598658725)
,p_name=>'habilita_cod_art'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P135_P_COD_ARTICULO'
,p_condition_element=>'P135_P_COD_ARTICULO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51716073202409037)
,p_event_id=>wwv_flow_imp.id(41916021598658725)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.getElementById("P135_COD_ARTICULO").readOnly=true;'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41916616454658731)
,p_name=>'Alert'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P135_MSJ_ERR'
,p_condition_element=>'P135_MSJ_ERR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41916789073658732)
,p_event_id=>wwv_flow_imp.id(41916616454658731)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Error: &P135_MSJ_ERR.'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43741242491884023)
,p_name=>'NO_STOCK'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P135_IND_DISCONTINUADO'
,p_condition_element=>'P135_IND_DISCONTINUADO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43741334351884024)
,p_event_id=>wwv_flow_imp.id(43741242491884023)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P135_FECHA_NO_STOCK,P135_MOTIVO_NO_STOCK'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45734397042738109)
,p_name=>'da_puerto_origen'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P135_COD_PUERTO'
,p_condition_element=>'P135_COD_PUERTO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45734427559738110)
,p_event_id=>wwv_flow_imp.id(45734397042738109)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P135_ORIGEN_PUERTO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'                   select  pa.descripcion  ',
'                          from   cm_puertos p , paises pa, provincias pro, ciudades ci',
'                          where p.cod_pais=pa.cod_pais',
'                          and p.cod_pais=pro.cod_pais',
'                          and p.cod_provincia=pro.cod_provincia',
'                           and p.cod_pais=ci.cod_pais',
'                          and p.cod_provincia=ci.cod_provincia',
'                          and p.cod_ciudad=ci.cod_ciudad',
'                          and cod_puerto = :P135_COD_PUERTO',
'                          ---and p.estado=''S''',
'                          ;  '))
,p_attribute_07=>'P135_COD_PUERTO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45736822913738134)
,p_name=>'DA_OPEN_REG'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45736732211738133)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45737622880738142)
,p_event_id=>wwv_flow_imp.id(45736822913738134)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(45737132946738137)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45736981194738135)
,p_event_id=>wwv_flow_imp.id(45736822913738134)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(45736107696738127)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45737806414738144)
,p_name=>'DA_ELIMINAR_EAN'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P135_EAN_ELIMINAR'
,p_condition_element=>'P135_EAN_ELIMINAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45737987403738145)
,p_event_id=>wwv_flow_imp.id(45737806414738144)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el EAN &P135_EAN_ELIMINAR. ?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45738039698738146)
,p_event_id=>wwv_flow_imp.id(45737806414738144)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'delete from st_ean_articulo',
'where cod_empresa=''1''',
'and   cod_articulo= :P135_P_COD_ARTICULO',
'and   cod_ean = :P135_EAN_ELIMINAR',
';',
'commit;'))
,p_attribute_02=>'P135_P_COD_ARTICULO,P135_EAN_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45738188887738147)
,p_event_id=>wwv_flow_imp.id(45737806414738144)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(45737132946738137)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48234594906546517)
,p_name=>'DA_ELIMINAR_VINC'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P135_ART_VINC_ELIMINA'
,p_condition_element=>'P135_ART_VINC_ELIMINA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48234619443546518)
,p_event_id=>wwv_flow_imp.id(48234594906546517)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar la vinculacion &P135_ART_VINC_ELIMINA. ?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48234770622546519)
,p_event_id=>wwv_flow_imp.id(48234594906546517)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'IF :P135_COD_RUBRO=''PR'' THEN',
'VINCULA_PRODUCTO_REPUESTO(:P135_P_COD_ARTICULO  ,:P135_ART_VINC_ELIMINA,''D'' );',
'ELSE',
' VINCULA_PRODUCTO_REPUESTO(:P135_ART_VINC_ELIMINA, :P135_P_COD_ARTICULO ,''D'' );',
'END IF;'))
,p_attribute_02=>'P135_P_COD_ARTICULO,P135_ART_VINC_ELIMINA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48234825751546520)
,p_event_id=>wwv_flow_imp.id(48234594906546517)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48233728415546509)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45738334839738149)
,p_name=>'da_insert_ean'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45738264044738148)
,p_condition_element=>'P135_EAN_ALTERNATIVO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45738453961738150)
,p_event_id=>wwv_flow_imp.id(45738334839738149)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'insert into inv.st_ean_articulo',
'  (cod_empresa, cod_articulo, cod_ean, fec_alta, cod_usuario)',
'values',
'  (''1'', :P135_P_COD_ARTICULO, :P135_EAN_ALTERNATIVO, sysdate, v(''APP_USER''));',
'  COMMIT;'))
,p_attribute_02=>'P135_P_COD_ARTICULO,P135_EAN_ALTERNATIVO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48232932548546501)
,p_event_id=>wwv_flow_imp.id(45738334839738149)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(45737132946738137)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48234916491546521)
,p_name=>'da_conf_vinc'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(48234379775546515)
,p_condition_element=>'P135_ART_VINC'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48235030305546522)
,p_event_id=>wwv_flow_imp.id(48234916491546521)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	IF :P135_COD_RUBRO=''PR'' THEN',
'	  VINCULA_PRODUCTO_REPUESTO(:P135_P_COD_ARTICULO ,:P135_ART_VINC ,''I'' );',
'	ELSE		',
'		 VINCULA_PRODUCTO_REPUESTO(:P135_ART_VINC,:P135_P_COD_ARTICULO ,''I'' );',
'		',
'	END IF;'))
,p_attribute_02=>'P135_ART_VINC, P135_P_COD_ARTICULO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48235297466546524)
,p_event_id=>wwv_flow_imp.id(48234916491546521)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48233728415546509)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48235303888546525)
,p_name=>'New'
,p_event_sequence=>210
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(48233215679546504)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48235456251546526)
,p_event_id=>wwv_flow_imp.id(48235303888546525)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48233728415546509)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48235566715546527)
,p_event_id=>wwv_flow_imp.id(48235303888546525)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48233500841546507)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48236456800546536)
,p_name=>'da_elimina_equiv'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P135_REP_EQUIV_ELIMIN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48236515310546537)
,p_event_id=>wwv_flow_imp.id(48236456800546536)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Desea eliminar el repuestos equivalente &P135_REP_EQUIV_ELIMIN.?'
,p_attribute_02=>'Eliminar Equivalencia'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48236653357546538)
,p_event_id=>wwv_flow_imp.id(48236456800546536)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'		 VINCULA_PRODUCTO_REPUESTO(:P135_P_COD_ARTICULO,:P135_REP_EQUIV_ELIMIN ,''D'' ); ',
'		 VINCULA_PRODUCTO_REPUESTO(:P135_P_COD_ARTICULO,:P135_REP_EQUIV_ELIMIN ,''IED'' );',
' '))
,p_attribute_02=>'P135_REP_EQUIV_ELIMIN,P135_P_COD_ARTICULO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48236750126546539)
,p_event_id=>wwv_flow_imp.id(48236456800546536)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48235885553546530)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48236879675546540)
,p_name=>'da_equiv'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(48235751942546529)
,p_condition_element=>'P135_COD_EQUIVALE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48237094896546542)
,p_event_id=>wwv_flow_imp.id(48236879675546540)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'',
'		 VINCULA_PRODUCTO_REPUESTO(:P135_P_COD_ARTICULO,:P135_COD_EQUIVALE ,''I'' ); ',
'		 VINCULA_PRODUCTO_REPUESTO(:P135_P_COD_ARTICULO,:P135_COD_EQUIVALE ,''IE'' );',
' '))
,p_attribute_02=>'P135_P_COD_ARTICULO,P135_COD_EQUIVALE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48236901544546541)
,p_event_id=>wwv_flow_imp.id(48236879675546540)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48235885553546530)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48237124219546543)
,p_name=>'da_open_equiv'
,p_event_sequence=>240
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(48233348447546505)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48237226651546544)
,p_event_id=>wwv_flow_imp.id(48237124219546543)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48233618055546508)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54423175303716950)
,p_name=>'da_permiso_modificar'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P135_P_MODIFICA_ARTICULOS'
,p_condition_element=>'P135_P_MODIFICA_ARTICULOS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60906516934885901)
,p_event_id=>wwv_flow_imp.id(54423175303716950)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'$("#P135_ESTADO").parent(".apex-item-single-checkbox").addClass("apex_disabled").attr(''tabindex'',''-1'');',
'$("#P135_IND_MANEJA_STOCK").parent(".apex-item-single-checkbox").addClass("apex_disabled").attr(''tabindex'',''-1'');',
'$("#P135_IND_MODIFICA_PRECIO").parent(".apex-item-single-checkbox").addClass("apex_disabled").attr(''tabindex'',''-1'');',
'',
'',
'',
'',
'document.getElementById("P135_COD_ART_CORTO").readOnly=true;',
'document.getElementById("P135_COD_EAN").readOnly=true; ',
'document.getElementById("P135_COD_ARTICULO").readOnly=true;',
'document.getElementById("P135_PRECIO_BASE").readOnly=true; ',
'',
'',
'$(''#P135_COD_RUBRO'').css(''pointer-events'',''none'');',
'$(''#P135_COD_MARCA'').css(''pointer-events'',''none'');',
'//$(''#P135_COD_FAMILIA'').css(''pointer-events'',''none'');',
'//$(''#P135_COD_LINEA'').css(''pointer-events'',''none'');',
'$(''#P135_COD_MONEDA_BASE'').css(''pointer-events'',''none'');',
'$(''#P135_COD_PROVEEDOR_DFLT'').css(''pointer-events'',''none'');',
'$(''#P135_COD_ARANCEL'').css(''pointer-events'',''none'');',
'$(''#P135_COD_GRUPO'').css(''pointer-events'',''none'');',
'$(''#P135_COD_GRUPO_ART'').css(''pointer-events'',''none'');',
'$(''#P135_COD_PAIS_ORIGEN'').css(''pointer-events'',''none''); ',
' '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60906637153885902)
,p_name=>'DA_HABILITA_FOB'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P135_P_CAMBIA_FOB'
,p_condition_element=>'P135_P_CAMBIA_FOB'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60906700655885903)
,p_event_id=>wwv_flow_imp.id(60906637153885902)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.getElementById("P135_COSTO_FOB").readOnly=true; '
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60906919898885905)
,p_name=>'da_load'
,p_event_sequence=>270
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60907057697885906)
,p_event_id=>wwv_flow_imp.id(60906919898885905)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--PERMISOS  ',
':P135_P_CAMBIA_FOB         := ''N'';--busca_permiso( NVL(:P_COD_EMPRESA, ''1''),''STARTICU'',:APP_USER,''CAMBIA_FOB'' );',
':P135_P_CAMBIA_PRECIO      := ''N'';--busca_permiso( NVL(:P_COD_EMPRESA, ''1''),''STARTICU'',:APP_USER,''CAMBIA_PRECIO'' );',
':P135_P_MODIFICA_ARTICULOS := busca_permiso( NVL(:P_COD_EMPRESA, ''1''),''STARTICU'',:APP_USER,''MODIFICA_ARTICULOS'' );',
':P135_P_VE_AUD             := ''N'';--busca_permiso( NVL(:P_COD_EMPRESA, ''1''),''STARTICU'',:APP_USER,''VER_AUDITORIA'' );',
'----:P135_P_COD_ARTICULO :=''EDABSX16'';'))
,p_attribute_03=>'P135_P_CAMBIA_FOB,P135_P_CAMBIA_PRECIO,P135_P_MODIFICA_ARTICULOS,P135_P_VE_AUD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(60907152362885907)
,p_name=>'da_permiso_precio'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P135_P_CAMBIA_PRECIO'
,p_condition_element=>'P135_P_CAMBIA_PRECIO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(60907262019885908)
,p_event_id=>wwv_flow_imp.id(60907152362885907)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'document.getElementById("P135_PRECIO_BASE").readOnly=true; '))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31237285527229818)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'VALORES_INICIALES'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--PERMISOS  ',
':P135_P_CAMBIA_FOB         :=  busca_permiso( NVL(:P_COD_EMPRESA, ''1''),''STARTICU'',:APP_USER,''CAMBIA_FOB'' );',
':P135_P_CAMBIA_PRECIO      := busca_permiso( NVL(:P_COD_EMPRESA, ''1''),''STARTICU'',:APP_USER,''CAMBIA_PRECIO'' );',
':P135_P_MODIFICA_ARTICULOS := busca_permiso( NVL(:P_COD_EMPRESA, ''1''),''STARTICU'',:APP_USER,''MODIFICA_ARTICULOS'' );',
':P135_P_VE_AUD             := busca_permiso( NVL(:P_COD_EMPRESA, ''1''),''STARTICU'',:APP_USER,''VER_AUDITORIA'' );',
'----:P135_P_COD_ARTICULO :=''EDABSX16'';'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31237323698229819)
,p_process_sequence=>40
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CARGA_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P135_P_COD_ARTICULO IS NULL THEN',
'        :P135_ind_maneja_stock := ''S'';',
'        :P135_ind_maneja_lotes := ''S'';',
'        :P135_estado := ''A'';',
'        :P135_ind_modifica_precio := ''N'';',
'        :P135_fec_alta := sysdate;',
'        :P135_garantia := ''N'';',
'        :P135_serie := ''N'';',
'        :P135_EN_OFERTA_WEB:=''N'';',
'        :P135_ind_no_descuento:=''N''; ',
'        :P135_IND_CONATEL:=''N'';',
'        :P135_IND_HOMOLOGACION:=''N'';',
'        :P135_IND_SOLO_PROMO                :=''N'';',
'        :P135_ind_lista_precio                :=''S'';',
'        :P135_ind_no_facturar  :=''N'';',
'        :P135_serie_garantia := ''N'';',
'        :P135_ind_discontinuado := ''N'';',
'        :P135_IND_MUESTRA_WEB:=''S'';',
'        :P135_cantidad_minima_compra:=1;',
'        :P135_plazo_entrega:=null;',
'        :P135_cod_usuario := :APP_USER;',
'        :P135_DURACION_GARANTIA:=0;',
'        :P135_cod_unidad_medida:=''UN'';',
'        :P135_COD_MONEDA_BASE:=''1'';',
'        :P135_cod_unidad_medida:=''UN'';',
'        :P135_COD_RELACION_UM:=''1'';',
'        :P135_COD_IVA:=''1'';',
'        :P135_IND_armado:=''N''; ',
'',
'ELSE',
'',
' inv.STARTICU.BUSCA_ARTICULO(:P_COD_EMPRESA,:P135_P_COD_ARTICULO,:P135_COD_ART_CORTO ,',
'                    :P135_COD_EAN ,',
'                    :P135_DESCRIPCION ,',
'                    :P135_ART_DESC_PROVEEDOR ,',
'                    :P135_COD_PROVEEDOR_DFLT ,',
'                    :P135_COD_RUBRO ,',
'                    :P135_COD_LINEA ,',
'                    :P135_COD_CATEGORIA ,',
'                    :P135_COD_FAMILIA ,',
'                    :P135_COD_DIVISION ,',
'                    :P135_COD_MARCA ,',
'                    :P135_COMENTARIO ,',
'                    :P135_FEC_ALTA ,',
'                    :P135_COD_USUARIO ,',
'                    :P135_COD_ORIGEN_ART ,',
'                    :P135_COD_MADRE ,',
'                    :P135_COD_ALTERNO ,',
'                    :P135_COD_PAIS_ORIGEN ,',
'                    :P135_COD_PUERTO ,',
'                    :P135_ORIGEN_PUERTO ,',
'                    :P135_COD_GRUPO_ART ,',
'                    :P135_COD_GRUPO ,',
'                    :P135_MOTIVO_NO_STOCK ,',
'                    :P135_COD_MONEDA_BASE ,',
'                    :P135_COD_IVA ,',
'                    :P135_PLAZO_ENTREGA ,',
'                    :P135_FEC_ULTIMA_COMP ,',
'                    :P135_ESTADO ,',
'                    :P135_IND_MANEJA_STOCK ,',
'                    :P135_IND_MANEJA_LOTES ,',
'                    :P135_MANEJA_COSTO ,',
'                    :P135_IND_NETO ,',
'                    :P135_IND_LISTA_PRECIO ,',
'                    :P135_IND_MODIFICA_PRECIO ,',
'                    :P135_GARANTIA ,',
'                    :P135_IND_MUESTRA_WEB ,',
'                    :P135_EN_OFERTA_WEB ,',
'                    :P135_IND_FUERA_LINEA ,',
'                    :P135_IND_NO_DESCUENTO ,',
'                    :P135_IND_NO_CUBRE_GARANTIA ,',
'                    :P135_IND_NO_FACTURAR ,',
'                    :P135_IND_DISCONTINUADO ,',
'                    :P135_IND_SOLO_PROMO ,',
'                    :P135_FECHA_NO_STOCK ,',
'                    :P135_CANTIDAD_MINIMA_COMPRA ,',
'                    :P135_CLASIFICACION_SLIM ,',
'                    :P135_CANTIDAD_MINIMA_WEB ,',
'                    :P135_CANTIDAD_MINIMA_LISTA_PRE ,',
'                    :P135_COD_UNIDAD_MEDIDA ,',
'                    :P135_COD_ENVASE ,',
'                    :P135_APILABILIDAD ,',
'                    :P135_AUTOAPILABLE ,',
'                    :P135_CANT_X_PAQUETE ,',
'                    :P135_CANTIDAD_POR_PALLET ,',
'                    :P135_DURACION_GARANTIA ,',
'                    :P135_ESTIBA_MAX ,',
'                    :P135_IND_CONATEL ,',
'                    :P135_IND_HOMOLOGACION ,',
'                    :P135_REGISTRO_CONATEL ,',
'                    :P135_VENCIMIENTO_REGISTRO_SANI ,',
'                    :P135_NRO_REGISTRO_SANITARIO ,',
'                    :P135_CAP_20GP ,',
'                    :P135_CAP_40GP ,',
'                    :P135_CAP_40HQ ,',
'                    :P135_CAMION ,',
'                    :P135_FURGON ,',
'                    :P135_EMBARQUE_CONS ,',
'                    :P135_ANCHO_CM ,',
'                    :P135_ALTO_CM ,',
'                    :P135_LARGO_CM ,',
'                    :P135_PESO_GR ,',
'                    :P135_ALTO_ARMADO_CM ,',
'                    :P135_ANCHO_ARMADO_CM ,',
'                    :P135_LARGO_ARMADO_CM ,',
'                    :P135_IND_ARMADO ,',
'                    :P135_LARGO_CLAMP ,',
'                    :P135_ANCHO_CLAMP ,',
'                    :P135_ALTO_CLAMP ,',
'                    :P135_COSTO_PROFORMA_GS ,',
'                    :P135_COTIZACION_CP ,',
'                    :P135_COSTO_PROM ,',
'                    :P135_COSTO_ULTIMO ,',
'                    :P135_TIP_CAMBIO ,',
'                    :P135_COSTO_PROM_US ,',
'                    :P135_COSTO_ULTIMO_US ,',
'                    :P135_COSTO_FOB_OC ,',
'                    :P135_COSTO_FOB ,',
'                    :P135_PRECIO_BASE ,',
'                    :P135_COD_MONEDA_COSTO ,',
'                    :P135_COD_ARANCEL ,',
'                    :P135_COD_RELACION_UM ,',
'                    :P135_serie ,',
'                    :P135_serie_garantia ,:P135_IND_GASTRO_DISTRIBUCION',
'                    );',
' :P135_COD_ARTICULO:= :P135_P_COD_ARTICULO;',
'END IF;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41917257470658737)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_GUARDAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    vop varchar2(1);',
' begin',
' if :P135_P_COD_ARTICULO is null then',
'    vop :=''I'';',
'    :P135_P_COD_ARTICULO:=:P135_cod_articulo;',
' else',
'    vop :=''M''; ',
' end if; ',
' ',
' inv.starticu.guarda_articulo(pi_operacion => vop,',
'                               pi_cod_empresa => :P_COD_EMPRESA,',
'                               pi_cod_articulo => NVL(:P135_P_COD_ARTICULO,:P135_cod_articulo),',
'                               pi_cod_art_corto => :P135_cod_art_corto,',
'                               pi_cod_ean => :P135_cod_ean,',
'                               pi_descripcion => :P135_descripcion,',
'                               pi_art_desc_proveedor => :P135_art_desc_proveedor,',
'                               pi_cod_proveedor_dflt => :P135_cod_proveedor_dflt,',
'                               pi_cod_rubro => :P135_cod_rubro,',
'                               pi_cod_linea => :P135_cod_linea,',
'                               pi_cod_categoria => :P135_cod_categoria,',
'                               pi_cod_familia => :P135_cod_familia,',
'                               pi_cod_division => :P135_cod_division,',
'                               pi_cod_marca => :P135_cod_marca,',
'                               pi_comentario => :P135_comentario, ',
'                               pi_cod_usuario => :P135_cod_usuario,',
'                               pi_cod_origen_art => :P135_cod_origen_art,',
'                               pi_cod_madre => :P135_cod_madre,',
'                               pi_cod_alterno => :P135_cod_alterno,',
'                               pi_cod_pais_origen => :P135_cod_pais_origen,',
'                               pi_cod_puerto => :P135_cod_puerto,',
'                               pi_origen_puerto => :P135_origen_puerto,',
'                               pi_cod_grupo_art => :P135_cod_grupo_art,',
'                               pi_cod_grupo => :P135_cod_grupo,',
'                               pi_motivo_no_stock => :P135_motivo_no_stock,',
'                               pi_cod_moneda_base => :P135_cod_moneda_base,',
'                               pi_cod_iva => :P135_cod_iva,',
'                               pi_plazo_entrega => replace(replace(:P135_plazo_entrega,''.'',''''),''.'','',''),',
'                               pi_fec_ultima_comp => :P135_fec_ultima_comp ,',
'                               pi_estado => :P135_estado,',
'                               pi_ind_maneja_stock => :P135_ind_maneja_stock,',
'                               pi_ind_maneja_lotes => :P135_ind_maneja_lotes,',
'                               pi_maneja_costo => :P135_maneja_costo,',
'                               pi_ind_neto => :P135_ind_neto,',
'                               pi_ind_lista_precio => :P135_ind_lista_precio,',
'                               pi_ind_modifica_precio => :P135_ind_modifica_precio,',
'                               pi_garantia => :P135_garantia,',
'                               pi_ind_muestra_web => :P135_ind_muestra_web,',
'                               pi_en_oferta_web => :P135_en_oferta_web,',
'                               pi_ind_fuera_linea => :P135_ind_fuera_linea,',
'                               pi_ind_no_descuento => :P135_ind_no_descuento,',
'                               pi_ind_no_cubre_garantia => :P135_ind_no_cubre_garantia,',
'                               pi_ind_no_facturar => :P135_ind_no_facturar,',
'                               pi_ind_discontinuado => :P135_ind_discontinuado,',
'                               pi_ind_solo_promo => :P135_ind_solo_promo,',
'                               pi_fecha_no_stock => :P135_fecha_no_stock,',
'                               pi_cantidad_minima_compra => replace(replace(:P135_cantidad_minima_compra,''.'',''''),''.'','',''),',
'                               pi_clasificacion_slim => :P135_clasificacion_slim,',
'                               pi_cantidad_minima_web => replace(replace(:P135_cantidad_minima_web,''.'',''''),''.'','',''),',
'                               pi_cantidad_minima_lista_pre => replace(replace(:P135_cantidad_minima_lista_pre,''.'',''''),''.'','',''),',
'                               pi_cod_unidad_medida => :P135_cod_unidad_medida,',
'                               pi_cod_envase => :P135_cod_envase,',
'                               pi_apilabilidad => :P135_apilabilidad,',
'                               pi_autoapilable => :P135_autoapilable,',
'                               pi_cant_x_paquete => replace(replace(:P135_cant_x_paquete,''.'',''''),''.'','',''),',
'                               pi_cantidad_por_pallet => replace(replace(:P135_cantidad_por_pallet,''.'',''''),''.'','',''),',
'                               pi_duracion_garantia => replace(replace(:P135_duracion_garantia,''.'',''''),''.'','',''),',
'                               pi_estiba_max => replace(replace(:P135_estiba_max,''.'',''''),''.'','',''),',
'                               pi_ind_conatel => :P135_ind_conatel,',
'                               pi_ind_homologacion => :P135_ind_homologacion,',
'                               pi_registro_conatel => :P135_registro_conatel,',
'                               pi_vencimiento_registro_sani => :P135_vencimiento_registro_sani,',
'                               pi_nro_registro_sanitario => :P135_nro_registro_sanitario,',
'                               pi_cap_20gp => replace(replace(:P135_cap_20gp,''.'',''''),''.'','',''),',
'                               pi_cap_40gp => replace(replace(:P135_cap_40gp,''.'',''''),''.'','',''),',
'                               pi_cap_40hq => replace(replace(:P135_cap_40hq,''.'',''''),''.'','',''),',
'                               pi_camion => replace(replace(:P135_camion,''.'',''''),''.'','',''),',
'                               pi_furgon => replace(replace(:P135_furgon,''.'',''''),''.'','',''),',
'                               pi_embarque_cons => replace(replace(:P135_embarque_cons,''.'',''''),''.'','',''),',
'                               pi_ancho_cm => replace(replace(:P135_ancho_cm,''.'',''''),''.'','',''),',
'                               pi_alto_cm => replace(replace(:P135_alto_cm,''.'',''''),''.'','',''),',
'                               pi_largo_cm => replace(replace(:P135_largo_cm,''.'',''''),''.'','',''),',
'                               pi_peso_gr => replace(replace(:P135_peso_gr,''.'',''''),''.'','',''),',
'                               pi_alto_armado_cm => replace(replace(:P135_alto_armado_cm,''.'',''''),''.'','',''),',
'                               pi_ancho_armado_cm => replace(replace(:P135_ancho_armado_cm,''.'',''''),''.'','',''),',
'                               pi_largo_armado_cm => replace(replace(:P135_largo_armado_cm,''.'',''''),''.'','',''),',
'                               pi_ind_armado => :P135_ind_armado,',
'                               pi_largo_clamp => replace(replace(:P135_largo_clamp,''.'',''''),''.'','',''),',
'                               pi_ancho_clamp => replace(replace(:P135_ancho_clamp,''.'',''''),''.'','',''),',
'                               pi_alto_clamp => replace(replace(:P135_alto_clamp,''.'',''''),''.'','',''),',
'                               pi_costo_proforma_gs => replace(replace(:P135_costo_proforma_gs,''.'',''''),''.'','',''),',
'                               pi_cotizacion_cp => replace(replace(:P135_cotizacion_cp,''.'',''''),''.'','',''),',
'                               pi_costo_prom => replace(replace(:P135_costo_prom,''.'',''''),''.'','',''),',
'                               pi_costo_ultimo => replace(replace(:P135_costo_ultimo,''.'',''''),''.'','',''),',
'                               pi_tip_cambio => replace(replace(:P135_tip_cambio,''.'',''''),''.'','',''),',
'                               pi_costo_prom_us => replace(replace(:P135_costo_prom_us,''.'',''''),''.'','',''),',
'                               pi_costo_ultimo_us => replace(replace(:P135_costo_ultimo_us,''.'',''''),''.'','',''),',
'                               pi_costo_fob_oc => replace(replace(:P135_costo_fob_oc,''.'',''''),''.'','',''),',
'                               pi_costo_fob => replace(replace(:P135_costo_fob,''.'',''''),''.'','',''),',
'                               pi_precio_base => replace(replace(:P135_precio_base,''.'',''''),''.'','',''),',
'                               pi_cod_moneda_costo => :P135_cod_moneda_costo,',
'                               pi_cod_arancel => :P135_cod_arancel,',
'                               pi_cod_relacion_um => :P135_cod_relacion_um,',
'                               pi_serie => :P135_serie,',
'                               pi_serie_garantia => :P135_serie_garantia,',
'                                pi_ind_gastro_distri => :P135_IND_GASTRO_DISTRIBUCION);',
'',
' ',
'EXCEPTION ',
'    				when others then',
'    						raise_application_error(-20000, ''Error en la tabla de Articulos ''||sqlerrm);',
'END; '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'No se ha guardado el Articulo.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(31236574091229811)
,p_process_when=>'GUARDAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp.component_end;
end;
/
