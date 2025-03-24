prompt --application/pages/page_00127
begin
--   Manifest
--     PAGE: 00127
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
 p_id=>127
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'GRILLA_ARTICULOS'
,p_alias=>'GRILLA-ARTICULOS'
,p_step_title=>unistr('Art\00EDculos - Busqueda')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Region-body>.container .t-Button, #btndet{ ',
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
'/*',
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
'}',
'',
'*/',
'',
'.t-Form-label{',
'    color:  darkblue !important;',
'    font-weight: bold !important;',
'    }',
'',
'#reg_parametros {',
'      background-color: #487ab8 !important;',
'      box-shadow: black 1px 1px 5px 1px;}',
'  ',
'',
'.t-Report-colHead, .t-Report-colHead  a{',
'    background: #003A85 !important;',
'    background-color: #003A85 !important;',
'	color: #FFED00 !important; ',
'      }',
' ',
'',
'.t-Region-header {',
'    background: #003a85 !important;',
'    background-color: #003a85 !important;',
'	color: #FFED00 !important; ',
'      }',
'',
' #subreg{',
'      background-color: #487ab8 !important;',
'      }',
' '))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240920153119'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25625194906754441)
,p_plug_name=>'PARAMETROS'
,p_region_name=>'reg_parametros'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30967094221430215)
,p_plug_name=>'Ampliar Busqueda'
,p_region_name=>'subreg'
,p_parent_plug_id=>wwv_flow_imp.id(25625194906754441)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent1:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(41914078326658705)
,p_name=>'LISTADO DE ARTICULOS'
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  C001 COD_ARTICULO',
'       ,C002 COD_ART_CORTO',
'       ,C003 DESCRIPCION  ',
'       ,C004 COD_PAIS_ORIGEN  ',
'       ,C005 COD_MARCA  ',
'       ,C006 COD_RUBRO  ',
'       ,C007 COD_FAMILIA  ',
'       ,C008 COD_LINEA  ',
'       ,C009 IND_MANEJA_STOCK  ',
'       ---,C010 ESTADO',
'       , APEX_ITEM.CHECKBOX(1,C010,decode(C010,''A'',''CHECKED'',''UNCHECKED'' )||'' disabled'' )ESTADO',
'       ,C011 COD_EAN  ',
'       ,C012 COD_CATEGORIA  ',
'       ,C013 COD_DIVISION      ',
'       , null eliminar',
'       , null editar',
'FROM APEX_COLLECTIONS  ',
'WHERE COLLECTION_NAME = ''ST_ARTICULOS''  ',
''))
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
 p_id=>wwv_flow_imp.id(41914135753658706)
,p_query_column_id=>1
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>20
,p_column_heading=>'Codigo Articulo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41914212040658707)
,p_query_column_id=>2
,p_column_alias=>'COD_ART_CORTO'
,p_column_display_sequence=>30
,p_column_heading=>'Codigo Corto'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41914318515658708)
,p_query_column_id=>3
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>40
,p_column_heading=>'Descripcion'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41914426384658709)
,p_query_column_id=>4
,p_column_alias=>'COD_PAIS_ORIGEN'
,p_column_display_sequence=>130
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41914531387658710)
,p_query_column_id=>5
,p_column_alias=>'COD_MARCA'
,p_column_display_sequence=>50
,p_column_heading=>'Marca'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_marca',
'    from st_marcas'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41914617896658711)
,p_query_column_id=>6
,p_column_alias=>'COD_RUBRO'
,p_column_display_sequence=>100
,p_column_heading=>'Rubro'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select descripcion,cod_rubro ',
'    from st_rubro',
'   where cod_empresa = ''1'''))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41914730592658712)
,p_query_column_id=>7
,p_column_alias=>'COD_FAMILIA'
,p_column_display_sequence=>70
,p_column_heading=>'Familia'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_familia ',
'    from st_familia '))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41914853633658713)
,p_query_column_id=>8
,p_column_alias=>'COD_LINEA'
,p_column_display_sequence=>80
,p_column_heading=>'Linea'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select descripcion, cod_linea',
'    from st_linea '))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41914970380658714)
,p_query_column_id=>9
,p_column_alias=>'IND_MANEJA_STOCK'
,p_column_display_sequence=>140
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41915050880658715)
,p_query_column_id=>10
,p_column_alias=>'ESTADO'
,p_column_display_sequence=>110
,p_column_heading=>'Activo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41915118278658716)
,p_query_column_id=>11
,p_column_alias=>'COD_EAN'
,p_column_display_sequence=>120
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41915241548658717)
,p_query_column_id=>12
,p_column_alias=>'COD_CATEGORIA'
,p_column_display_sequence=>90
,p_column_heading=>'Categoria'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select descripcion, cod_categoria ',
'from st_categorias '))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41915380751658718)
,p_query_column_id=>13
,p_column_alias=>'COD_DIVISION'
,p_column_display_sequence=>60
,p_column_heading=>'Division'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select desc_division, cod_division  ',
'    from st_division_articulos',
'      ;'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41915485214658719)
,p_query_column_id=>14
,p_column_alias=>'ELIMINAR'
,p_column_display_sequence=>160
,p_column_heading=>'Eliminar'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P127_SEQ_ID_ELIMINAR'',''#COD_ARTICULO#'');'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_alignment=>'CENTER'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
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
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(41915567989658720)
,p_query_column_id=>15
,p_column_alias=>'EDITAR'
,p_column_display_sequence=>10
,p_column_heading=>'Ver'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:135:&SESSION.::&DEBUG.:Y,135:P135_P_COD_ARTICULO:#COD_ARTICULO#'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31239630633229842)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(25625194906754441)
,p_button_name=>'buscar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30966726909430212)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(30967094221430215)
,p_button_name=>'crear'
,p_button_static_id=>'btn_crear'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear Articulo'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:135:&SESSION.::&DEBUG.:135::'
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
,p_icon_css_classes=>'fa-window-plus'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30966220329430207)
,p_name=>'P127_DESCRIPCION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(25625194906754441)
,p_prompt=>'Descripcion'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_attribute_06=>'UPPER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30966377495430208)
,p_name=>'P127_CODIGO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(25625194906754441)
,p_prompt=>unistr('C\00F3digo')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_attribute_06=>'UPPER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30966474331430209)
,p_name=>'P127_COD_CORTO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(25625194906754441)
,p_prompt=>unistr('C\00F3digo Corto')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_attribute_06=>'UPPER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30967132366430216)
,p_name=>'P127_MARCA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(30967094221430215)
,p_prompt=>'Marca'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_marca',
'from st_marcas',
'ORDER BY 1 ASC'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET_FILTER'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30967336981430218)
,p_name=>'P127_RUBRO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(30967094221430215)
,p_prompt=>'Rubro'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select descripcion,cod_rubro ',
'    from st_rubro',
'   where cod_empresa = :p_cod_empresa',
'ORDER BY 1 ASC'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET_FILTER'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30967414750430219)
,p_name=>'P127_DIVISION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(30967094221430215)
,p_prompt=>'Division'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select desc_division, cod_division  ',
'    from st_division_articulos',
'ORDER BY 1 ASC',
'      ;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET_FILTER'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30967540019430220)
,p_name=>'P127_LINEA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(30967094221430215)
,p_prompt=>'Linea'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_linea',
'    from st_linea ',
'where cod_empresa=:p_cod_empresa',
'ORDER BY 1 ASC'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET_FILTER'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30967680179430221)
,p_name=>'P127_CATEGORIA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(30967094221430215)
,p_prompt=>'Categoria'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select descripcion, cod_categoria ',
'from st_categorias ',
'where cod_empresa=:p_cod_empresa',
'ORDER BY 1 ASC;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET_FILTER'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30967791622430222)
,p_name=>'P127_FAMILIA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(30967094221430215)
,p_prompt=>'Familia'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, cod_familia ',
'    from st_familia ',
'where cod_empresa=:p_cod_empresa',
'ORDER BY 1 ASC'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-TODOS-'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET_FILTER'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31240261304229848)
,p_name=>'P127_SEQ_ID_ELIMINAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(25625194906754441)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30967964262430224)
,p_name=>'DA_MARCA'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P127_MARCA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30968455484430229)
,p_name=>'DA_RUBRO'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P127_RUBRO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30968699269430231)
,p_name=>'DA_DIVISION'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P127_DIVISION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30968889996430233)
,p_name=>'DA_LINEA'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P127_LINEA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30969063270430235)
,p_name=>'DA_CATEG'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P127_CATEGORIA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30969221386430237)
,p_name=>'DA_FAMILIA'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P127_FAMILIA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30970377849430248)
,p_name=>'limpia_campos'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30970465441430249)
,p_event_id=>wwv_flow_imp.id(30970377849430248)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P127_DESCRIPCION,P127_MARCA,P127_RUBRO,P127_DIVISION,P127_LINEA,P127_COD_CORTO,P127_CATEGORIA,P127_FAMILIA'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43739291684884003)
,p_event_id=>wwv_flow_imp.id(30970377849430248)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'  ',
'                setTimeout(function() { $(''.t-Alert'').fadeOut(''slow'');',
'                                        }, 3000);  ',
'    apex.message.clearErrors(); ',
'',
'    if (apex.item( "P127_CODIGO" ).getValue()==''''){',
'    apex.navigation.redirect ( "f?p=&APP_ID.:135:&APP_SESSION.:::135:::&P135_P_COD_ARTICULO." );',
'    }',
';'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31239742991229843)
,p_name=>'DA_CARGAR'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(31239630633229842)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41913697557658701)
,p_event_id=>wwv_flow_imp.id(31239742991229843)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.util.showSpinner();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31239889087229844)
,p_event_id=>wwv_flow_imp.id(31239742991229843)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INV.STARTICU.cargar_reporte(  :P_COD_EMPRESA,',
'                                :P127_DESCRIPCION,',
'                                :P127_CODIGO     ,',
'                                :P127_COD_CORTO  ,',
'                                :P127_MARCA  ,',
'                                :P127_RUBRO  ,',
'                                :P127_DIVISION    ,',
'                                :P127_LINEA  ,',
'                                :P127_CATEGORIA   ,',
'                                :P127_FAMILIA ',
'                            );'))
,p_attribute_02=>'P127_DESCRIPCION,P127_MARCA,P127_RUBRO,P127_CODIGO,P127_DIVISION,P127_COD_CORTO,P127_LINEA,P127_CATEGORIA,P127_FAMILIA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41915648776658721)
,p_event_id=>wwv_flow_imp.id(31239742991229843)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(41914078326658705)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41913949750658704)
,p_event_id=>wwv_flow_imp.id(31239742991229843)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31240398991229849)
,p_name=>'da_eliminar'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P127_SEQ_ID_ELIMINAR'
,p_condition_element=>'P127_SEQ_ID_ELIMINAR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31240453371229850)
,p_event_id=>wwv_flow_imp.id(31240398991229849)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el articulo &P127_SEQ_ID_ELIMINAR. ?')
,p_attribute_06=>'Eliminar'
,p_attribute_07=>'Cancelar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43742977562884040)
,p_event_id=>wwv_flow_imp.id(31240398991229849)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  inv.starticu.elimina_articulo(pi_cod_empresa => :P_COD_EMPRESA,',
'                                pi_cod_articulo => :P127_SEQ_ID_ELIMINAR/*:pi_cod_articulo*/);'))
,p_attribute_02=>'P127_SEQ_ID_ELIMINAR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43743015365884041)
,p_event_id=>wwv_flow_imp.id(31240398991229849)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43743906472884050)
,p_name=>'VER_CODIGO'
,p_event_sequence=>140
,p_condition_element=>'P127_CODIGO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43743851353884049)
,p_event_id=>wwv_flow_imp.id(43743906472884050)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P127_CODIGO IS NOT NULL THEN',
'INV.STARTICU.cargar_reporte(   :P_COD_EMPRESA,',
'                                :P127_DESCRIPCION,',
'                                :P127_CODIGO     ,',
'                                :P127_COD_CORTO  ,',
'                                :P127_MARCA  ,',
'                                :P127_RUBRO  ,',
'                                :P127_DIVISION    ,',
'                                :P127_LINEA  ,',
'                                :P127_CATEGORIA   ,',
'                                :P127_FAMILIA ',
'                            );',
'',
'END IF;'))
,p_attribute_02=>'P127_CODIGO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45733569544738101)
,p_event_id=>wwv_flow_imp.id(43743906472884050)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(41914078326658705)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31240140658229847)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'LIMPIAR_COLLECTION'
,p_process_sql_clob=>'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''ST_ARTICULOS'');'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
