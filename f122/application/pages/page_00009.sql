prompt --application/pages/page_00009
begin
--   Manifest
--     PAGE: 00009
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
 p_id=>9
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Carga de Pedidos Repuesto'
,p_alias=>'CARGA-DE-PEDIDOS-REPUESTO'
,p_step_title=>'Carga de Pedidos Repuesto'
,p_allow_duplicate_submissions=>'N'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#APP_FILES#util_generico.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function removeParam(key, sourceURL) {',
'    var rtn = sourceURL.split("?")[0],',
'        param,',
'        params_arr = [],',
'        queryString = (sourceURL.indexOf("?") !== -1) ? sourceURL.split("?")[1] : "";',
'    if (queryString !== "") {',
'        params_arr = queryString.split("&");',
'        for (var i = params_arr.length - 1; i >= 0; i -= 1) {',
'            param = params_arr[i].split("=")[0];',
'            if (param === key) {',
'                params_arr.splice(i, 1);',
'            }',
'        }',
'        rtn = rtn + "?" + params_arr.join("&");',
'    }',
'    return rtn;',
'}',
'',
'function doDescarga(p_cod_empresa, p_tip_comprobante, p_ser_comprobante, p_nro_comprobante){',
'   var vURL = ''https://ngosaeca.com.py/reportes/rest_v2/reports/reports/VTPEDREPU.pdf?''',
'            + ''P_COD_EMPRESA='' + p_cod_empresa + ''&P_TIP_COMPROBANTE='' + p_tip_comprobante  + ''&P_SER_COMPROBANTE=''+ p_ser_comprobante + ''&P_NRO_COMPROBANTE=''+ p_nro_comprobante;',
'',
'    console.log(vURL);',
'    window.open(unescape(vURL.replace(/&amp;/g,''g'')),''_blank'');',
'}',
'',
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57;',
'}',
'',
'',
'',
'',
'',
'',
''))
,p_javascript_code_onload=>'window.history.pushState("object or string", "Title", removeParam("success_msg", window.location.href));'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Form-inputContainer span.display_only{',
'    text-align: right;',
'}  ',
'',
'.btn_agregar{',
'    margin-top: 15px;',
'}',
'#IMPRIMIR,#BUSCAR,#CC{',
'     ',
'        background:white;',
'        background-image: linear-gradient(180deg, #ffee00e4  0%, #fff890 100%);',
'        color:  darkblue;',
'        box-shadow: #6585af 1px 1px 5px 1px; ',
'        border-style: solid;',
'        border-width: 0.5px;',
'        border-color:  yellow;',
'    ',
'}',
'',
'',
'#mimapa {',
'    height: 530px !important;',
'    ',
'}',
'',
'.apex-item-text, .t-Form-fieldContainer--floatingLabel .apex-item-textarea , .apex-item-display-only{',
'    border-color: #3c5b83 !important;',
'    background: #FCFCF4 !important;',
'    border-style: solid !important; ',
'    }',
'',
'.t-PageBody {',
'    background-color: #296073 !important;',
'    font-weight: bold !important;',
'',
'}',
'',
'',
'input:read-only {',
'        background-color: #CCCCCC !important;',
'    } ',
'',
'#P234_TEXTO_DISPLAY {',
'    background-color: #e0e0e0 !important;',
'    font-weight: bold;',
'    text-align: left;',
'    font-size: 12px;',
'}',
'',
'#P9_TOTAL_PEDIDO_AUX {',
'    background-color: blue !important;',
'    color: white !important;',
'    font-weight: bold !important;',
'}',
'',
'#crear {',
'    display: none !important;',
'}',
'',
'#ocultar {',
'    display: none !important;',
'}',
'',
'.u-checkbox {',
'    margin-top: 25px !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20250305105345'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5476933179225721)
,p_plug_name=>'Carga de Pedidos Repuesto'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41117290894000702)
,p_plug_name=>'CABECERA'
,p_parent_plug_id=>wwv_flow_imp.id(5476933179225721)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41221509928563115)
,p_plug_name=>'Datos Alta'
,p_parent_plug_id=>wwv_flow_imp.id(5476933179225721)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>60
,p_plug_grid_column_span=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41222023275563120)
,p_plug_name=>'Datos Traslado'
,p_parent_plug_id=>wwv_flow_imp.id(5476933179225721)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41222457195563124)
,p_plug_name=>unistr('Ingreso de Art\00EDculos')
,p_parent_plug_id=>wwv_flow_imp.id(5476933179225721)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41222508613563125)
,p_plug_name=>unistr('Ingresar Art\00EDculo')
,p_parent_plug_id=>wwv_flow_imp.id(41222457195563124)
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5309716933947436)
,p_plug_name=>unistr('Art\00EDculos Ingresados')
,p_parent_plug_id=>wwv_flow_imp.id(41222508613563125)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID,',
'       C001 COD_ARTICULO,',
'       C002 CANTIDAD,',
'       NVL(TO_NUMBER(C003),0) PRECIO_UNITARIO,',
'       NVL(C004,0) PORC_DESCUENTO,',
'       NVL(TO_NUMBER(C005),0) MONTO_TOTAL,',
'       DECODE(C006, ''S'', ''SI'', ''N'', ''NO'', NULL, ''NO'') IND_OFERTA,',
'       (SELECT descripcion',
'          FROM st_articulos ',
'         WHERE cod_empresa = :P9_COD_EMPRESA_VA',
'           AND cod_articulo = C001) NOMBRE_ARTICULO,',
'       NULL ELIMINAR',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''ARTICULOS'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Art\00EDculos Ingresados')
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5309818502947437)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>unistr('No hay art\00EDculos ingresados hasta el momento.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MARIANABLA'
,p_internal_uid=>5309818502947437
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5309990114947438)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5310920400947448)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>20
,p_column_identifier=>'G'
,p_column_label=>unistr('C\00F3digo Articulo')
,p_column_link=>'f?p=&APP_ID.:68:&SESSION.::&DEBUG.::P68_COD_ARTICULO:#COD_ARTICULO#'
,p_column_linktext=>'#COD_ARTICULO#'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5476046275225712)
,p_db_column_name=>'NOMBRE_ARTICULO'
,p_display_order=>30
,p_column_identifier=>'M'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5311018539947449)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>40
,p_column_identifier=>'H'
,p_column_label=>'Cantidad'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5474956853225701)
,p_db_column_name=>'PORC_DESCUENTO'
,p_display_order=>60
,p_column_identifier=>'J'
,p_column_label=>'% Desc.'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5475176720225703)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>80
,p_column_identifier=>'L'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:$s(''P9_AUX_SEQ_ID'',''#SEQ_ID#''),$s(''P9_AUX_CANTIDAD'',''#CANTIDAD#'');'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-irrow" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--P9_MODIFICABLE',
'BEGIN',
'IF :P9_MODIFICABLE = ''-1'' THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;    ',
'    END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5476174431225713)
,p_db_column_name=>'IND_OFERTA'
,p_display_order=>90
,p_column_identifier=>'N'
,p_column_label=>'Ofertas'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34203141818626904)
,p_db_column_name=>'PRECIO_UNITARIO'
,p_display_order=>100
,p_column_identifier=>'O'
,p_column_label=>'Precio Unitario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34203213052626905)
,p_db_column_name=>'MONTO_TOTAL'
,p_display_order=>110
,p_column_identifier=>'P'
,p_column_label=>'Monto Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5464641126703513)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'54647'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_ARTICULO:NOMBRE_ARTICULO:CANTIDAD:PRECIO_UNITARIO:PORC_DESCUENTO:MONTO_TOTAL:IND_OFERTA:ELIMINAR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5310879757947447)
,p_plug_name=>'TOTAL'
,p_parent_plug_id=>wwv_flow_imp.id(41222508613563125)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41223353268563133)
,p_plug_name=>'DETALLE'
,p_parent_plug_id=>wwv_flow_imp.id(41222508613563125)
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64085461581872819)
,p_plug_name=>'Clientes'
,p_parent_plug_id=>wwv_flow_imp.id(5476933179225721)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41121900190000749)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(75651753991710212)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(64085461581872819)
,p_button_name=>'Crear_clientes'
,p_button_static_id=>'CC'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear Cliente'
,p_button_redirect_url=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.:92::'
,p_icon_css_classes=>'fa-address-card'
,p_grid_new_row=>'N'
,p_grid_column=>8
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(513056405954057901)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(64085461581872819)
,p_button_name=>'Venta_Pedida'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Venta Pedida'
,p_button_redirect_url=>'f?p=&APP_ID.:711:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'u-color-7-bg  u-color-43-text'
,p_icon_css_classes=>'fa-thumbs-down'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41223834391563138)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(41223353268563133)
,p_button_name=>'AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--P9_MODIFICABLE',
'BEGIN',
'IF :P9_MODIFICABLE = ''-1'' THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;    ',
'    END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'btn_agregar'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7805997971851801)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5476933179225721)
,p_button_name=>'BUSCAR'
,p_button_static_id=>'BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5477432575225726)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5476933179225721)
,p_button_name=>'GUARDAR'
,p_button_static_id=>'GUARDAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'    IF VCONTROL = 0 or :P9_MODIFICABLE = ''-1'' THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;    ',
'   --END IF;                                                 ',
'END;',
'',
'*/',
'',
'RETURN TRUE;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5478538880225737)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5476933179225721)
,p_button_name=>'ELIMINAR'
,p_button_static_id=>'ELIMINAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Eliminar'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-trash-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11950726785734708)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(5476933179225721)
,p_button_name=>'IMPRIMIR'
,p_button_static_id=>'IMPRIMIR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7806581087851807)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(5476933179225721)
,p_button_name=>'LIMPIAR'
,p_button_static_id=>'LIMPIAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Limpiar'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5478343432225735)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(5476933179225721)
,p_button_name=>'ANULAR'
,p_button_static_id=>'ANULAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Anular'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64086899093872833)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(5476933179225721)
,p_button_name=>'Salir'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salir'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:376:&SESSION.::&DEBUG.:RP,376::'
,p_icon_css_classes=>'fa-reply'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(106522811341760519)
,p_branch_action=>'f?p=&APP_ID.:376:&SESSION.::&DEBUG.:9::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5308279892947421)
,p_name=>'P9_TOT_CANT_ANT_CAB'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(41117290894000702)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5475510845225707)
,p_name=>'P9_AUX_SEQ_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(41121900190000749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5476830891225720)
,p_name=>'P9_ACTUALIZA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(41121900190000749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5477178345225723)
,p_name=>'P9_AUX_CANTIDAD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(41121900190000749)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5477893350225730)
,p_name=>'P9_COD_EMPRESA_DET'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(41223353268563133)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5477994327225731)
,p_name=>'P9_NRO_SERVICIO'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(41117290894000702)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5478039590225732)
,p_name=>'P9_FEC_SERVICIO'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(41117290894000702)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5478178073225733)
,p_name=>'P9_TIP_SERVICIO'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(41117290894000702)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5479387348225745)
,p_name=>'P9_AUX_AGREGAR'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(41223353268563133)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5923752362379005)
,p_name=>'P9_AUX_MENSAJE_EXISTE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(41223353268563133)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34202865200626901)
,p_name=>'P9_TOTAL_PEDIDO_AUX'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5310879757947447)
,p_prompt=>'Total Pedido'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_css_classes=>'allow_only_numbers'
,p_item_icon_css_classes=>'readonly'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34203336230626906)
,p_name=>'P9_MONTO_TOTAL_AUX'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(41223353268563133)
,p_prompt=>'Total'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41117347355000703)
,p_name=>'P9_COD_SUCURSAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(41117290894000702)
,p_item_default=>'P_COD_SUCURSAL'
,p_item_default_type=>'ITEM'
,p_prompt=>'Sucursal'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSALES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_sucursal||'' - ''||descripcion L, ',
'         cod_sucursal V',
'    FROM sucursales ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY descripcion'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Ninguna sucursal.'
,p_cSize=>90
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_07=>'Sucursal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41117499053000704)
,p_name=>'P9_COD_SUCURSAL_ENT'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(41117290894000702)
,p_item_default=>'P_COD_SUCURSAL'
,p_item_default_type=>'ITEM'
,p_prompt=>'Suc. Entrada'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_sucursal||'' - ''||descripcion L,',
'         cod_sucursal V         ',
'    FROM sucursales ',
'   WHERE cod_empresa = :P_COD_EMPRESA ',
'     AND (cod_sucursal <> :P9_COD_SUCURSAL or :P9_COD_SUCURSAL is null)',
'ORDER BY descripcion;'))
,p_lov_cascade_parent_items=>'P9_COD_SUCURSAL'
,p_ajax_items_to_submit=>'P9_COD_SUCURSAL'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>90
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_07=>'Sucursal Entrada'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41117577057000705)
,p_name=>'P9_TIP_COMPROBANTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(41117290894000702)
,p_prompt=>'Tipo de comprobante'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41117676244000706)
,p_name=>'P9_NRO_COMPROBANTE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(41117290894000702)
,p_prompt=>unistr('N\00FAmero')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41117701746000707)
,p_name=>'P9_FEC_COMPROBANTE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(41117290894000702)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41117891010000708)
,p_name=>'P9_COD_VENDEDOR'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(41117290894000702)
,p_prompt=>'Vendedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVVENDEDORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT v.cod_vendedor||'' - ''||nvl( v.descripcion, p.nombre ) L, ',
'         v.cod_vendedor V, p.nombre',
'    FROM fv_vendedores v, personas p ',
'   WHERE v.cod_empresa = :p_cod_empresa ',
'     AND v.cod_persona = p.cod_persona ',
'     AND v.estado = ''A'' ',
'ORDER BY 1'))
,p_cSize=>90
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186576483263678)
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
 p_id=>wwv_flow_imp.id(41117926785000709)
,p_name=>'P9_NRO_DIARIO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(41117290894000702)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41118033401000710)
,p_name=>'P9_RETIRA_DE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(41117290894000702)
,p_prompt=>'Retira de'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_RETIRA_DE'
,p_lov=>'.'||wwv_flow_imp.id(5853780271411104)||'.'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41118162084000711)
,p_name=>'P9_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(64085461581872819)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_CLIENTE_COD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_cliente,nombre, codigo_area, num_telefono,numero',
'from cc_clientes c, personas p, telef_personas pt, ident_personas pi ',
'where c.cod_empresa = ''1''',
'and c.cod_persona = p.cod_persona',
'and p.cod_persona = pt.cod_persona(+) ',
'and p.cod_persona = pi.cod_persona(+) ',
'and nvl(c.estado,''X'') = ''A'' ',
'order by nombre'))
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'600'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41118282301000712)
,p_name=>'P9_DIRECCION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(64085461581872819)
,p_prompt=>unistr('Direcci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41118356577000713)
,p_name=>'P9_TELEFONO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(64085461581872819)
,p_prompt=>unistr('Tel\00E9fono')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41118436405000714)
,p_name=>'P9_OBSERVACION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(64085461581872819)
,p_prompt=>unistr('Observaci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
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
 p_id=>wwv_flow_imp.id(41118569805000715)
,p_name=>'P9_ANULADO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(41221509928563115)
,p_prompt=>'Anular'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41118628740000716)
,p_name=>'P9_COD_USUARIO_ANU'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(41221509928563115)
,p_prompt=>'Usuario '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41118749968000717)
,p_name=>'P9_FEC_ESTADO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(41221509928563115)
,p_prompt=>'Fecha'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41118825737000718)
,p_name=>'P9_COD_MOTIVO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(41117290894000702)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVMOTIVO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_motivo_anu||'' - ''||descripcion L, ',
'         cod_motivo_anu V ',
'    FROM VT_MOTIVO_ANULACION ',
'   WHERE cod_empresa = :p_cod_empresa ',
'     AND tip_motivo=''7'' ',
'ORDER BY 1'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
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
 p_id=>wwv_flow_imp.id(41119129856000721)
,p_name=>'P9_DESC_TIPO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(41117290894000702)
,p_prompt=>'Comprobante'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41119519700000725)
,p_name=>'P9_RUC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(64085461581872819)
,p_prompt=>'RUC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41119616232000726)
,p_name=>'P9_CI'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(64085461581872819)
,p_prompt=>'CI'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41121245622000742)
,p_name=>'P9_AUX_MENSAJE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(41117290894000702)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41121743486000747)
,p_name=>'P9_SER_COMPROBANTE_DET'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(41223353268563133)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41121840162000748)
,p_name=>'P9_SER_COMPROBANTE_CAB'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(41117290894000702)
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41122007131000750)
,p_name=>'P9_MODIFICA_PRECIO_VENTA_VA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(41121900190000749)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41220138876563101)
,p_name=>'P9_COD_EMPRESA_VA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(41121900190000749)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41220297879563102)
,p_name=>'P9_COD_USUARIO_VA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(41121900190000749)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41220323107563103)
,p_name=>'P9_COD_SUCURSAL_VA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(41121900190000749)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41220476358563104)
,p_name=>'P9_COD_MODULO_VA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(41121900190000749)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41221694241563116)
,p_name=>'P9_COD_USUARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(41221509928563115)
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41221799485563117)
,p_name=>'P9_FEC_ALTA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(41221509928563115)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha de Alta'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41222143320563121)
,p_name=>'P9_TRASLADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(41222023275563120)
,p_prompt=>'Traslado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41222218080563122)
,p_name=>'P9_HORA_ALTA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(41222023275563120)
,p_prompt=>'Hora de Alta'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41222746619563127)
,p_name=>'P9_COD_ARTICULO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(41223353268563133)
,p_prompt=>unistr('Art\00EDculo')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ARTICULOS_REPUESTOS_PAG_9'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_articulo||'' - ''||descripcion DESCRIPCION, ',
'         cod_articulo CODIGO,  ',
'                  ',
'          A.COD_ORIGEN_ART, A.COD_ALTERNO ',
'    FROM st_articulos  A',
'   WHERE cod_empresa = ''1''--:p_cod_empresa ',
'     AND ( estado is null or estado <> ''I'' )',
'     AND COD_RUBRO=''RE''',
'    ORDER BY descripcion'))
,p_cSize=>90
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'3'
,p_attribute_07=>unistr('Art\00EDculos')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41222851962563128)
,p_name=>'P9_CANTIDAD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(41223353268563133)
,p_prompt=>'Cantidad'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41222910219563129)
,p_name=>'P9_PRECIO_UNITARIO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(41223353268563133)
,p_prompt=>'Precio Unitario'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41223018137563130)
,p_name=>'P9_PORC_DESCUENTO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(41223353268563133)
,p_prompt=>'% Desc.'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41223102540563131)
,p_name=>'P9_MONTO_TOTAL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(41223353268563133)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41223289723563132)
,p_name=>'P9_IND_OFERTA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(41223353268563133)
,p_prompt=>'Ofertas'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-top-md'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41223431600563134)
,p_name=>'P9_TIP_COMPROBANTE_DET'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(41223353268563133)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41223571196563135)
,p_name=>'P9_NRO_COMPROBANTE_DET'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(41223353268563133)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41223651304563136)
,p_name=>'P9_IND_PROMO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(41223353268563133)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41223752500563137)
,p_name=>'P9_NRO_PROMO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(41223353268563133)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41223945622563139)
,p_name=>'P9_DESCRIPCION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5310879757947447)
,p_prompt=>unistr('Explicaci\00F3n rep.')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>150
,p_colspan=>9
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41224038672563140)
,p_name=>'P9_TOTAL_PEDIDO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5310879757947447)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41224197340563141)
,p_name=>'P9_COD_EMPRESA_CAB'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(41117290894000702)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41224267732563142)
,p_name=>'P9_TOT_CANTIDAD_CAB'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(41117290894000702)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41224394560563143)
,p_name=>'P9_DERIVADO_CAB'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(41117290894000702)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41224447461563144)
,p_name=>'P9_IND_ENVIAR_CAB'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(41117290894000702)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64085670808872821)
,p_name=>'P9_OPERACION'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(41117290894000702)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64086907703872834)
,p_name=>'P9_MODIFICABLE'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(41117290894000702)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75651244305710207)
,p_name=>'P9_CLIENTE_DESC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(64085461581872819)
,p_prompt=>unistr('Raz\00F3n Social')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(98194423657746839)
,p_name=>'P9_TIPO_IMPUESTO'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(41117290894000702)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(106521741934760508)
,p_name=>'P9_FACTURADO'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(41117290894000702)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(115348188554984239)
,p_name=>'P9_CORREO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(64085461581872819)
,p_prompt=>'Correo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(174253972294975448)
,p_name=>'P9_PROVINCIA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(64085461581872819)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Departamento'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(174254092582975449)
,p_name=>'P9_COD_PAIS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(64085461581872819)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('Pa\00EDs')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(174254179580975450)
,p_name=>'P9_CIUDAD'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(64085461581872819)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ciudad'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(175726336833649201)
,p_name=>'P9_BARRIO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(64085461581872819)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5306440188947403)
,p_validation_name=>'VA_COD_CLIENTE'
,p_validation_sequence=>10
,p_validation=>'P9_COD_CLIENTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Debe ingresar el c\00F3digo del cliente, no puede quedar nulo.')
,p_associated_item=>wwv_flow_imp.id(41118162084000711)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5477325369225725)
,p_validation_name=>'VA_MOTIVO'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P9_ANULADO = ''S'' AND :P9_COD_MOTIVO IS NULL THEN',
'    RETURN FALSE;',
'ELSE',
'    RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Debe Seleccionar un motivo de anulacion para anular el pedido. '
,p_associated_item=>wwv_flow_imp.id(41118825737000718)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(6266643052275211)
,p_validation_name=>'VA_TIP_COMPROBANTE'
,p_validation_sequence=>30
,p_validation=>'P9_TIP_COMPROBANTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe ingresar un tipo de comprobante.'
,p_associated_item=>wwv_flow_imp.id(41117577057000705)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(6266784954275212)
,p_validation_name=>'VA_sER_COMPROBANTE'
,p_validation_sequence=>40
,p_validation=>'P9_SER_COMPROBANTE_CAB'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe ingresar un valor.'
,p_associated_item=>wwv_flow_imp.id(41121840162000748)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(6266994325275214)
,p_validation_name=>'VA_RETIRA_DE'
,p_validation_sequence=>60
,p_validation=>'P9_RETIRA_DE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Debe seleccionar el lugar de retiro.'
,p_associated_item=>wwv_flow_imp.id(41118033401000710)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(6267192982275216)
,p_validation_name=>'VA_ARTICULOS'
,p_validation_sequence=>70
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    VCOUNT NUMBER;',
'BEGIN',
'    VCOUNT :=  APEX_COLLECTION.COLLECTION_MEMBER_COUNT(P_COLLECTION_NAME => ''ARTICULOS'');',
'    IF VCOUNT = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('Debe ingresar un art\00EDculo para guardar el pedido. ')
,p_associated_item=>wwv_flow_imp.id(41222746619563127)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41119292131000722)
,p_name=>'DA_TIP_COMPROBANTE'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_TIP_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41119365773000723)
,p_event_id=>wwv_flow_imp.id(41119292131000722)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT descripcion',
'    INTO :P9_DESC_TIPO',
'    FROM tipos_comprobantes',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'     AND tip_comprobante = :P9_TIP_COMPROBANTE;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    :P9_DESC_TIPO := NULL;',
'END;'))
,p_attribute_02=>'P9_TIP_COMPROBANTE'
,p_attribute_03=>'P9_DESC_TIPO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41119448321000724)
,p_event_id=>wwv_flow_imp.id(41119292131000722)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_DESC_TIPO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41224619878563146)
,p_name=>'DA_TIP_COMPROBANTE_1'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101874324051708147)
,p_event_id=>wwv_flow_imp.id(41224619878563146)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($(''body'').hasClass(''js-navExpanded'')',
'){',
'$(''#t_Button_navControl'').click();',
'};'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41224740758563147)
,p_event_id=>wwv_flow_imp.id(41224619878563146)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT descripcion',
'    INTO :P9_DESC_TIPO',
'    FROM tipos_comprobantes',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'     AND tip_comprobante = :P9_TIP_COMPROBANTE;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    :P9_DESC_TIPO := NULL;',
'END;'))
,p_attribute_02=>'P9_TIP_COMPROBANTE'
,p_attribute_03=>'P9_DESC_TIPO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41224890003563148)
,p_event_id=>wwv_flow_imp.id(41224619878563146)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_DESC_TIPO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41119723060000727)
,p_name=>'DA_LVCLIENTES'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41119862967000728)
,p_event_id=>wwv_flow_imp.id(41119723060000727)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--WHEN-VALIDATE-ITEM',
'BEGIN		',
'select cod_cliente',
'  INTO :P9_COD_CLIENTE',
'  from cc_clientes c, ',
'  	   personas p,  ',
'  	   ident_personas pi',
' where c.cod_empresa = :P_COD_EMPRESA',
'   and NUMERO        = :P9_COD_CLIENTE',
'   and c.cod_persona = p.cod_persona',
'   and p.cod_persona = pi.cod_persona',
'   and COD_IDENT IN (''CI'',''RUC'')',
'   and :P9_COD_CLIENTE <>''00000''; ',
'EXCEPTION ',
'WHEN OTHERS THEN ',
'		null;  ',
'END;',
'',
'BEGIN',
':P0_MENSAJE_VALIDACION := null;',
'if :P9_COD_CLIENTE  <> ''0'' then',
'	declare',
'		vcod_persona varchar2(15) ;',
'		vestado		  varchar2(1) := null;',
'	begin',
'		begin',
'				select  c.cod_persona, p.nombre,c.estado, p.direc_electronica,C.TIPO_IMPUESTO',
'				  into  vcod_persona, :P9_CLIENTE_DESC,vestado, :P9_CORREO,:P9_TIPO_IMPUESTO',
'				  from cc_clientes c, ',
'				  		 personas p',
'				 where c.cod_empresa = :P_COD_EMPRESA ',
'				   and c.cod_cliente = :P9_COD_CLIENTE',
'				   and c.cod_persona = p.cod_persona;',
'				   --and nvl (c.estado,''A'') <> ''I'';',
'',
'		exception',
'			when no_data_found then',
'			    vcod_persona := null;',
'                :P0_MENSAJE_VALIDACION := ''No existe el Nro. Cliente ingresado'';',
'			when others then',
'                raise_application_error(-20000, ''Error al consultar datos del cliente. ''||sqlerrm);',
'		end;',
'',
'        BEGIN',
'        select CC.EMAIL  into :P9_CORREO',
'                     from CC_CONTACTOS_CLIENTES CC',
'                    where CC.COD_EMPRESA =  :P_COD_EMPRESA ',
'                      AND CC.COD_CLIENTE = :P9_cod_cliente',
'                      and CC.COD_CONTACTO = ''FA''',
'                      AND CC.EMAIL IS NOT NULL',
'                      AND ROWNUM = 1;',
'                      EXCEPTION WHEN OTHERS THEN ',
'                      :P9_CORREO:=NULL;',
'      END;',
'		',
'             if nvl(vestado, ''X'') = ''I'' then',
unistr('                raise_application_error(-20000, ''El cliente debe estar ACTIVO. Favor comun\00EDquese con el departamento de Riesgos para solicitar el cambio de estado del cliente. ''||:P9_COD_CLIENTE||vestado||:P_COD_EMPRESA );'),
'    		end if;',
'		--',
'		begin',
'			select d.detalle,',
'                   (SELECT a.descripcion',
'                      FROM paises a',
'                     WHERE a.cod_pais = d.cod_pais) pais,',
'                   (SELECT P.DESCRIPCION',
'                    FROM PROVINCIAS P',
'                    WHERE P.COD_PAIS = d.cod_pais',
'                    AND P.COD_PROVINCIA = D.COD_PROVINCIA) PROVINCIA,',
'                   (SELECT DESCRIPCION ',
'                    FROM CIUDADES ',
'                    WHERE COD_PAIS = d.cod_pais',
'                    AND COD_PROVINCIA = D.COD_PROVINCIA',
'                    AND COD_CIUDAD = D.COD_CIUDAD) CIUDAD,',
'                   d.cod_barrio',
'			  into :P9_DIRECCION,',
'                        :P9_COD_PAIS,',
'                          :P9_PROVINCIA,',
'                          :P9_CIUDAD,',
'                          :P9_BARRIO',
'			  from direc_personas d',
'			 where d.cod_persona = vcod_persona',
'			   and nvl( d.por_defecto, ''N'' ) = ''S''',
'			   and rownum      = 1 ;',
'		exception',
'			when no_data_found then',
'					:P9_DIRECCION := null ;',
'		end ;',
'',
'		begin',
'			select decode( codigo_area, ''0''  , num_telefono,  ''021'', num_telefono,  ''NOD'', num_telefono, ''('' || codigo_area || '') '' || num_telefono )',
'			 into :P9_TELEFONO',
'			 from telef_personas',
'			where cod_persona             = vcod_persona',
'			  and nvl( por_defecto, ''N'' ) = ''S''',
'			  and rownum = 1 ;',
'		exception',
'			when no_data_found then',
'					:P9_TELEFONO := null ;',
'		end ;',
'',
'	    begin',
'		    select numero',
'			  into :P9_RUC',
'			  from ident_personas',
'			 where cod_persona = vcod_persona',
'			   and cod_ident   = ''RUC''',
'			   and rownum      = 1 ;',
'	    exception',
'	        when no_data_found then',
'	            :P9_RUC := null ;',
'	    end;',
'',
'		begin',
'			select numero',
'			  into :P9_CI',
'			  from ident_personas',
'			 where cod_persona = vcod_persona',
'			   and cod_ident   = ''CI''',
'			   and rownum      = 1 ;',
'		exception',
'			when no_data_found then',
'			    :P9_CI := null;',
'		end;',
'	end;		',
'END IF;',
'END;',
''))
,p_attribute_02=>'P9_COD_CLIENTE,P9_COD_EMPRESA_VA'
,p_attribute_03=>'P9_COD_CLIENTE,P9_RUC,P9_CI,P9_DIRECCION,P9_TELEFONO,P9_CLIENTE_DESC,P0_MENSAJE_VALIDACION,P9_CORREO,P9_COD_PAIS,P9_PROVINCIA,P9_CIUDAD,P9_BARRIO,P9_TIPO_IMPUESTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41119964763000729)
,p_event_id=>wwv_flow_imp.id(41119723060000727)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_CI'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41120045985000730)
,p_name=>'DA_ANULADO'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_ANULADO'
,p_condition_element=>'P9_ANULADO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41120169719000731)
,p_event_id=>wwv_flow_imp.id(41120045985000730)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_COD_MOTIVO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41121087336000740)
,p_event_id=>wwv_flow_imp.id(41120045985000730)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_COD_MOTIVO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6266287710275207)
,p_event_id=>wwv_flow_imp.id(41120045985000730)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(5478343432225735)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6266490245275209)
,p_event_id=>wwv_flow_imp.id(41120045985000730)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(5478343432225735)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41120219463000732)
,p_name=>'DA_PAGE_LOAD'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41120347782000733)
,p_event_id=>wwv_flow_imp.id(41120219463000732)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_COD_MOTIVO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41220895182563108)
,p_event_id=>wwv_flow_imp.id(41120219463000732)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_NRO_COMPROBANTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5307481653947413)
,p_event_id=>wwv_flow_imp.id(41120219463000732)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_COD_ARTICULO,P9_CANTIDAD,P9_PRECIO_UNITARIO,P9_PORC_DESCUENTO,P9_MONTO_TOTAL'
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
 p_id=>wwv_flow_imp.id(5307802368947417)
,p_event_id=>wwv_flow_imp.id(41120219463000732)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(41223834391563138)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6266370495275208)
,p_event_id=>wwv_flow_imp.id(41120219463000732)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(5478343432225735)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11951205113734713)
,p_event_id=>wwv_flow_imp.id(41120219463000732)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(11950726785734708)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41120573186000735)
,p_name=>'DA_ANULAR'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5478343432225735)
,p_condition_element=>'P9_COD_MOTIVO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41120676578000736)
,p_event_id=>wwv_flow_imp.id(41120573186000735)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  i NUMBER;',
'  f VARCHAR2(100);',
'BEGIN',
'',
'  IF :P9_TIP_COMPROBANTE = ''PER'' THEN',
'    f := ''PEDIDO '';',
'    ELSE',
'    f := :P9_TIP_COMPROBANTE || '' '';',
'  END IF;',
unistr('  :P9_AUX_MENSAJE := ''\00BFRealmente desea anular el ''|| f || :P9_SER_COMPROBANTE_CAB|| '' '' ||to_char( :P9_NRO_COMPROBANTE) || ''?'';'),
'  ',
'END;'))
,p_attribute_02=>'P9_TIP_COMPROBANTE,P9_NRO_COMPROBANTE,P9_SER_COMPROBANTE_CAB'
,p_attribute_03=>'P9_AUX_MENSAJE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41120714064000737)
,p_event_id=>wwv_flow_imp.id(41120573186000735)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Debe ingresar un motivo para anular el pedido.'
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5478445364225736)
,p_event_id=>wwv_flow_imp.id(41120573186000735)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9_FEC_ESTADO := null;',
':P9_COD_USUARIO_ANU := null;'))
,p_attribute_03=>'P9_FEC_ESTADO,P9_COD_USUARIO_ANU'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41121169456000741)
,p_event_id=>wwv_flow_imp.id(41120573186000735)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'&P9_AUX_MENSAJE.'
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_attribute_07=>'Cancelar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41121310207000743)
,p_event_id=>wwv_flow_imp.id(41120573186000735)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9_FEC_ESTADO := SYSDATE;',
':P9_COD_USUARIO_ANU := :APP_USER;  ',
':P9_AUX_MENSAJE := null;',
'',
''))
,p_attribute_03=>'P9_AUX_MENSAJE,P9_FEC_ESTADO,P9_COD_USUARIO_ANU'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6266006763275205)
,p_event_id=>wwv_flow_imp.id(41120573186000735)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--KEY-COMMIT',
'IF  :P9_NRO_COMPROBANTE IS  null THEN  ',
'    BEGIN',
'        SELECT nvl( max( nro_comprobante ), 0 ) + 1',
'          INTO :P9_NRO_COMPROBANTE',
'          FROM VT_PEDIDOS_CABECERA_REP',
'         WHERE cod_empresa = :P9_COD_EMPRESA_VA',
'           AND tip_comprobante = :P9_TIP_COMPROBANTE',
'           AND ser_comprobante = :P9_SER_COMPROBANTE_CAB;       ',
' ',
'        IF :P9_NRO_COMPROBANTE IS null THEN',
'           :P9_NRO_COMPROBANTE := 1 ;',
'        END IF ;',
'    EXCEPTION',
'        WHEN no_data_found THEN',
'            :P9_NRO_COMPROBANTE := 1;     ',
'        WHEN OTHERS THEN',
'            raise_application_error(-20000, ''Error en la tabla  '' || sqlerrm );',
'    END;',
'END IF;',
'',
'',
'',
''))
,p_attribute_02=>'P9_NRO_COMPROBANTE ,P9_SER_COMPROBANTE_CAB,P9_TIP_COMPROBANTE,P9_COD_EMPRESA_VA'
,p_attribute_03=>'P9_NRO_COMPROBANTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6266107982275206)
,p_event_id=>wwv_flow_imp.id(41120573186000735)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'GUARDAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41220606340563106)
,p_name=>'DA_NUM_COMPROBANTE'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_NRO_COMPROBANTE'
,p_condition_element=>'P9_NRO_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41220717797563107)
,p_event_id=>wwv_flow_imp.id(41220606340563106)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'DECLARE',
'    VEXISTE VARCHAR(1) := ''N'';',
'    VEXI EXCEPTION;',
'BEGIN',
'    SELECT ''S''',
'      INTO VEXISTE',
'      FROM VT_PEDIDOS_CABECERA_REP',
'     WHERE COD_EMPRESA = :P9_COD_EMPRESA_VA',
'       AND NRO_COMPROBANTE = :P9_NRO_COMPROBANTE',
'       AND SER_COMPROBANTE = :P9_SER_COMPROBANTE_CAB',
'       AND TIP_COMPROBANTE = :P9_TIP_COMPROBANTE;',
'    RAISE VEXI;   ',
'EXCEPTION',
'    when no_data_found then',
'        NULL;',
'    when vexi then',
unistr('        raise_application_error(-20000, ''El n\00FAmero de pedido ya existe para ese tipo y serie de comprobante. Si contin\00FAa se realizar\00E1 una actualizaci\00F3n sobre ese registro.'');'),
'    when others then',
'        raise_application_error(-20000, ''Error en la tabla de pedidos (Cabecera) '' || sqlerrm);                                  ',
'END;  ',
'',
''))
,p_attribute_02=>'P9_COD_EMPRESA_VA,P9_TIP_COMPROBANTE,P9_SER_COMPROBANTE_CAB,P9_NRO_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41220947281563109)
,p_name=>'DA_ENABLE_NRO_COMP'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_SER_COMPROBANTE_CAB,P9_TIP_COMPROBANTE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.item(''P9_TIP_COMPROBANTE'').getValue() != '''' && apex.item(''P9_SER_COMPROBANTE_CAB'').getValue() != ''''; '
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41221000651563110)
,p_event_id=>wwv_flow_imp.id(41220947281563109)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_NRO_COMPROBANTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41221229684563112)
,p_event_id=>wwv_flow_imp.id(41220947281563109)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_NRO_COMPROBANTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41225003680563150)
,p_name=>'DA_ENABLE_NRO_COMP_1'
,p_event_sequence=>90
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.item(''P9_TIP_COMPROBANTE'').getValue() != '''' && apex.item(''P9_SER_COMPROBANTE_CAB'').getValue() != ''''; '
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5306283446947401)
,p_event_id=>wwv_flow_imp.id(41225003680563150)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_NRO_COMPROBANTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5306311191947402)
,p_event_id=>wwv_flow_imp.id(41225003680563150)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_NRO_COMPROBANTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5306509237947404)
,p_name=>'DA_ARTICULO'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_COD_ARTICULO'
,p_condition_element=>'P9_COD_CLIENTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5306691292947405)
,p_event_id=>wwv_flow_imp.id(5306509237947404)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--WHEN-VALIDATE-ITEM',
'IF :P9_COD_ARTICULO IS NOT NULL THEN',
'    DECLARE ',
'    	vexiste varchar2(400);',
'    BEGIN',
'        :P9_HORA_ALTA := to_char(sysdate, ''HH24:MI:SS'');',
'        --:P9_PRECIO_UNITARIO := round(nvl(precio(:P9_COD_ARTICULO,0),0));',
'',
'    	SELECT f_bloquea_inventario(:P9_COD_ARTICULO,''101'')',
'    	  INTO vexiste',
'    	  FROM dual;',
'',
'    	IF VEXISTE=''S'' THEN',
'    		:P9_AUX_MENSAJE_EXISTE := ''El repuesto ''||:P9_COD_ARTICULO||'' esta de inventario '';',
'    	END IF;  ',
'    EXCEPTION',
'    	WHEN OTHERS THEN',
'            null;',
'    END;',
'    	',
'    DECLARE ',
'        vexiste varchar2(400);',
'    BEGIN',
'    	SELECT f_bloquea_inventario(:P9_COD_ARTICULO,''1015'')',
'    	  INTO vexiste',
'    	  FROM dual;',
'',
'    	IF VEXISTE=''S'' THEN',
'    		:P9_AUX_MENSAJE_EXISTE := ''El repuesto ''||:P9_COD_ARTICULO||'' esta de inventario '';',
'    	END IF;  ',
'    EXCEPTION',
'    	WHEN OTHERS THEN',
'    	    null;',
'    END;',
'END IF;',
''))
,p_attribute_02=>'P9_COD_ARTICULO'
,p_attribute_03=>'P9_AUX_MENSAJE_EXISTE,P9_HORA_ALTA,P9_PRECIO_UNITARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5923870236379006)
,p_event_id=>wwv_flow_imp.id(5306509237947404)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P9_AUX_MENSAJE_EXISTE.'
,p_attribute_02=>unistr('Sobre el art\00EDculo')
,p_attribute_03=>'information'
,p_attribute_04=>'fa-info'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P9_AUX_MENSAJE_EXISTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5923946868379007)
,p_event_id=>wwv_flow_imp.id(5306509237947404)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9_AUX_MENSAJE_EXISTE := null;',
':P9_MONTO_TOTAL := null;',
':P9_CANTIDAD := null;'))
,p_attribute_03=>'P9_CANTIDAD,P9_AUX_MENSAJE_EXISTE,P9_MONTO_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5306727034947406)
,p_name=>'DA_DESCUENTO'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_COD_ARTICULO'
,p_condition_element=>'P9_COD_CLIENTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5306856266947407)
,p_event_id=>wwv_flow_imp.id(5306727034947406)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--PROCEDURE DESCUENTO ',
'DECLARE',
'    VCANAL varchar2(600);',
'    VCONDICION VARCHAR2(600);',
'BEGIN',
'    IF :P9_COD_ARTICULO IS NOT NULL THEN',
'    --	IF NVL(:B_CABECERA.GARANTIA,''P'')=''P'' THEN',
'    	VCONDICION:=''PARTICULAR'';',
'    --	ELSE                      ',
'    	--	VCONDICION:=''GARANTIA'';',
'    --	END IF;',
'    --	IF NVL(:B_CABECERA.P_TIPO,''A'')<>''W'' then',
'    	VCANAL:=''SALON'';',
'    	--else',
'    	--	VCANAL:=''STA'';',
'    		--end if;		',
'      	:P9_PORC_DESCUENTO:= nvl(f_descuento_tipo_cliente_rep(:P9_COD_CLIENTE,',
'    														  ''1'',',
'    														  ''1'',',
'    														  :P9_CANTIDAD,',
'    														  :P9_COD_ARTICULO, ',
'    														  VCANAL, ',
'    														  VCONDICION, 0) ,0);     ',
'    END IF;                                                                                                         ',
'END;'))
,p_attribute_02=>'P9_COD_CLIENTE,P9_CANTIDAD,P9_COD_ARTICULO'
,p_attribute_03=>'P9_PORC_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5307605267947415)
,p_name=>'DA_ENABLE_ARTICULOS'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_COD_CLIENTE'
,p_condition_element=>'P9_COD_CLIENTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5307714836947416)
,p_event_id=>wwv_flow_imp.id(5307605267947415)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_COD_ARTICULO,P9_CANTIDAD,P9_PRECIO_UNITARIO,P9_PORC_DESCUENTO,P9_MONTO_TOTAL,P9_IND_OFERTA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5307995912947418)
,p_event_id=>wwv_flow_imp.id(5307605267947415)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(41223834391563138)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5308012558947419)
,p_name=>'DA_CANTIDAD'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_CANTIDAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5308194977947420)
,p_event_id=>wwv_flow_imp.id(5308012558947419)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF nvl(:P9_CANTIDAD,0) > 0 AND :P9_COD_SUCURSAL=190 THEN',
'	DECLARE',
'		vcantidad number;',
'	BEGIN',
'	    SELECT nvl(sum(cant_dispon),0)',
'	      INTO vcantidad ',
'	      FROM st_existencia_art',
'	      WHERE cod_empresa = :P9_COD_EMPRESA_VA',
'	       AND cod_sucursal = :P9_COD_SUCURSAL',
'	       AND cod_articulo = :P9_COD_ARTICULO',
'	       AND nvl(cant_dispon ,0) > 0;        ',
'	        --apex_debug.error(vcantidad);',
'',
'        IF (vcantidad - nvl(:P9_CANTIDAD,0)) < 0 THEN',
'            --apex_debug.error(1);',
'            raise_application_error(-20000, ''La cantidad solicitada es mayor a la cantidad disponible.'');                   	',
'        ELSE',
'            --apex_debug.error(2);',
'            :P9_MONTO_TOTAL := round(precio(:P9_COD_ARTICULO,NVL(:P9_PORC_DESCUENTO,0))) * nvl(:P9_CANTIDAD,0);            ',
'        END IF;	',
'',
'	  	EXCEPTION',
'	  		WHEN OTHERS THEN',
'                raise_application_error(-20000, ''Error al intentar calcular la cantidad disponible ''|| sqlerrm);    ',
'	END;',
'END IF;',
'',
':P9_TOT_CANTIDAD_CAB := nvl( :P9_TOT_CANTIDAD_CAB, 0 ) +',
'                        nvl( :P9_CANTIDAD, 0 ) -',
'                        nvl( :P9_TOT_CANT_ANT_CAB, 0 );',
'',
':P9_TOT_CANT_ANT_CAB := nvl( :P9_CANTIDAD, 0 );',
'',
':P9_MONTO_TOTAL := TO_CHAR(round(precio(:P9_COD_ARTICULO,NVL(:P9_PORC_DESCUENTO,0))) * nvl(:P9_CANTIDAD,0), ''999G999G999G999G999G999G990''); ',
'',
''))
,p_attribute_02=>'P9_PORC_DESCUENTO,P9_DESCRIPCION,P9_TOT_CANT_ANT_CAB,P9_TOT_CANTIDAD_CAB ,P9_CANTIDAD,P9_COD_SUCURSAL,P9_COD_EMPRESA_VA,P9_COD_ARTICULO'
,p_attribute_03=>'P9_MONTO_TOTAL,P9_TOT_CANTIDAD_CAB,P9_TOT_CANT_ANT_CAB'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5308535623947424)
,p_event_id=>wwv_flow_imp.id(5308012558947419)
,p_event_result=>'TRUE'
,p_action_sequence=>11
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--KEY-NEXT-ITEM/KEY-ENTER',
'DECLARE',
'	vexiste VARCHAR2(10):=''N'';',
'    VCOLCOUNT NUMBER := 0;',
'BEGIN',
'	SELECT ''S''',
'	  INTO VEXISTE',
'      FROM inv.st_promocion_rep p, st_articulos a',
'     WHERE p.cod_empresa = a.cod_empresa',
'       AND p.cod_art_promo = a.cod_articulo',
'       AND p.cod_articulo = :P9_COD_ARTICULO',
'       AND p.cod_empresa = :P9_COD_EMPRESA_VA',
'       AND nvl(p.activo, ''N'') = ''A''',
'       AND p.fec_cierre >= :P9_FEC_COMPROBANTE',
'       AND ROWNUM=1;',
'',
'    IF NVL(:P9_IND_PROMO,''N'') <>''S'' THEN   	',
'		VTPEDREP.cargar_promo (P_cod_art      => :P9_COD_ARTICULO, ',
'                               P_cant_art     => :P9_CANTIDAD,',
'                               P_cod_empresa  => :P9_COD_EMPRESA_VA);',
'',
'        VCOLCOUNT := APEX_COLLECTION.COLLECTION_MEMBER_COUNT( p_collection_name => ''CARGAR_PROMO'');',
'',
'        IF VCOLCOUNT > 0 THEN                       ',
'            SELECT  C002,  --:b_detalle.nro_promo',
'                    C003,  --:b_detalle.IND_PROMO ',
'                    C005 -- :b_detalle.PRECIO_UNITARIO:=0;',
'              INTO :P9_NRO_PROMO,',
'                   :P9_IND_PROMO,',
'                   :P9_PRECIO_UNITARIO',
'              FROM APEX_COLLECTIONS',
'             WHERE COLLECTION_NAME = ''CARGAR_PROMO''; ',
'        END IF;   ',
'	END IF;',
'',
'EXCEPTION',
'	WHEN OTHERS THEN ',
'	NULL;',
'END;',
':P9_MONTO_TOTAL := TO_CHAR(round(precio(:P9_COD_ARTICULO,NVL(:P9_PORC_DESCUENTO,0))) * nvl(:P9_CANTIDAD,0), ''999G999G999G999G999G999G990'');     '))
,p_attribute_02=>'P9_CANTIDAD,P9_COD_ARTICULO,P9_COD_EMPRESA_VA,P9_FEC_COMPROBANTE,P9_IND_PROMO'
,p_attribute_03=>'P9_NRO_PROMO,P9_IND_PROMO,P9_PRECIO_UNITARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5476499100225716)
,p_event_id=>wwv_flow_imp.id(5308012558947419)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_MONTO_TOTAL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5308852690947427)
,p_name=>'DA_PORC_DESCUENTO'
,p_event_sequence=>191
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_COD_ARTICULO'
,p_condition_element=>'P9_COD_ARTICULO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5308957856947428)
,p_event_id=>wwv_flow_imp.id(5308852690947427)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P9_COD_ARTICULO IS NOT NULL THEN',
'    DECLARE ',
'    		vneto varchar2(20);',
'    --WHEN-VALIDATE-ITEM',
'    BEGIN',
'        SELECT IND_NO_DESCUENTO',
'          INTO   vneto',
'          FROM st_articulos',
'         WHERE cod_empresa = :P9_COD_EMPRESA_VA',
'           AND cod_articulo = :P9_COD_ARTICULO;',
'        ',
'        :P9_PRECIO_UNITARIO := TO_CHAR(NVL(precio(:P9_COD_ARTICULO,0),0), ''999G999G999G999G999G999G990'');',
'        if nvl(vneto,''N'') =''S'' THEN',
'         	:P9_PORC_DESCUENTO := 0; ',
'        END IF;',
'    EXCEPTION  ',
'        when others then',
'            NULL;',
'    END;  ',
'END IF;    ',
'',
''))
,p_attribute_02=>'P9_COD_EMPRESA_VA,P9_COD_ARTICULO'
,p_attribute_03=>'P9_PRECIO_UNITARIO,P9_PORC_DESCUENTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(110475692244213423)
,p_event_id=>wwv_flow_imp.id(5308852690947427)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    v_total_iva NUMBER  := 0;',
'    v_por_recargo   NUMBER  := 0;',
'BEGIN',
'    :P9_MONTO_TOTAL_AUX := TO_NUMBER(REPLACE(:P9_MONTO_TOTAL_AUX,''.''));',
'    inv.vtpedido.pr_redondeo_50( p_cod_moneda          => ''1'',',
'                                 p_det_monto_total    =>  nvl(:P9_MONTO_TOTAL_AUX,0),',
'                                 p_det_total_iva       => v_total_iva,',
'                                 p_det_precio_unitario =>  :P9_PRECIO_UNITARIO,',
'                                 p_det_cantidad        =>  nvl(:P9_CANTIDAD,0),',
'                                 p_det_porc_descuento  =>  nvl(:P9_PORC_DESCUENTO,0),',
'                                 p_det_porc_recargo    =>  v_por_recargo);',
'',
'    :P9_PRECIO_UNITARIO := TO_CHAR(:P9_PRECIO_UNITARIO , ''999G999G999G999G999G999G990'');',
'END;'))
,p_attribute_02=>'P9_MONTO_TOTAL_AUX,P9_PRECIO_UNITARIO,P9_CANTIDAD,P9_PORC_DESCUENTO'
,p_attribute_03=>'P9_PRECIO_UNITARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5309463584947433)
,p_name=>'DA_AGREGAR_A_COLECCION'
,p_event_sequence=>201
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(41223834391563138)
,p_condition_element=>'P9_COD_ARTICULO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5309524586947434)
,p_event_id=>wwv_flow_imp.id(5309463584947433)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    VCOUNT NUMBER;',
'BEGIN',
'',
'SELECT COUNT(SEQ_ID)',
'  INTO VCOUNT ',
'  FROM APEX_COLLECTIONS',
' WHERE COLLECTION_NAME = ''ARTICULOS''',
'   AND C001 = :P9_COD_ARTICULO;',
'',
'IF VCOUNT = 0 THEN',
'    APEX_COLLECTION.ADD_MEMBER (P_COLLECTION_NAME => ''ARTICULOS'',',
'                                P_C001 => :P9_COD_ARTICULO,                         ',
'                                P_C002 => :P9_CANTIDAD,',
'                                P_C003 => :P9_PRECIO_UNITARIO,',
'                                P_C004 => nvl(:P9_PORC_DESCUENTO,0),',
'                                P_C005 => :P9_MONTO_TOTAL,',
'                                P_C006 => :P9_IND_OFERTA); ',
'                           ',
'ELSE',
'    FOR CC IN (SELECT SEQ_ID,',
'                      C001,',
'                      C002,',
'                      C003,',
'                      C004,',
'                      C005,',
'                      C006',
'                 FROM APEX_COLLECTIONS',
'                WHERE COLLECTION_NAME = ''ARTICULOS''',
'                  AND C001 = :P9_COD_ARTICULO)',
'    LOOP',
'        IF CC.C006 = :P9_IND_OFERTA THEN',
'                APEX_COLLECTION.UPDATE_MEMBER (P_COLLECTION_NAME => ''ARTICULOS'',',
'                                               P_SEQ => CC.SEQ_ID, ',
'                                               P_C001 => CC.C001,                             ',
'                                               P_C002 => TO_NUMBER(CC.C002) + TO_NUMBER(:P9_CANTIDAD),',
'                                               P_C003 => CC.C003,',
'                                               P_C004 => CC.C004,',
'                                               P_C005 => TO_NUMBER(CC.C005) + TO_NUMBER(:P9_MONTO_TOTAL),',
'                                               P_C006 => CC.C006); ',
'                             ',
'        ELSE      ',
'            APEX_COLLECTION.ADD_MEMBER (P_COLLECTION_NAME => ''ARTICULOS'',',
'                                P_C001 => :P9_COD_ARTICULO,                             ',
'                                P_C002 => :P9_CANTIDAD,',
'                                P_C003 => :P9_PRECIO_UNITARIO,',
'                                P_C004 => nvl(:P9_PORC_DESCUENTO,0),',
'                                P_C005 => :P9_MONTO_TOTAL,',
'                                P_C006 => :P9_IND_OFERTA);   ',
'                    ',
'        END IF;                                                           ',
'    END LOOP;                               ',
'END IF;',
'--WHEN-NEW-RECORD-INSTANCE BLOQUE DETALLE',
':P9_TOT_CANT_ANT_CAB := NVL(:P9_CANTIDAD,0); ',
'',
'END;                            ',
''))
,p_attribute_02=>'P9_COD_ARTICULO,P9_CANTIDAD,P9_PRECIO_UNITARIO,P9_PORC_DESCUENTO,P9_MONTO_TOTAL,P9_IND_OFERTA'
,p_attribute_03=>'P9_TOT_CANT_ANT_CAB'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5309670084947435)
,p_event_id=>wwv_flow_imp.id(5309463584947433)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('apex.message.showPageSuccess(''El art\00EDculo se agreg\00F3 correctamente.'');')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5310510819947444)
,p_event_id=>wwv_flow_imp.id(5309463584947433)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5309716933947436)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5310657646947445)
,p_event_id=>wwv_flow_imp.id(5309463584947433)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_COD_ARTICULO,P9_CANTIDAD,P9_PRECIO_UNITARIO,P9_PORC_DESCUENTO,P9_MONTO_TOTAL,P9_IND_OFERTA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5479413333225746)
,p_name=>'DA_AGREGAR_A_COLECCION_1'
,p_event_sequence=>211
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_AUX_AGREGAR'
,p_condition_element=>'P9_AUX_AGREGAR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5479599131225747)
,p_event_id=>wwv_flow_imp.id(5479413333225746)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    VCOUNT NUMBER;',
'BEGIN',
'    SELECT COUNT(SEQ_ID)',
'      INTO VCOUNT ',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''ARTICULOS''',
'       AND C001 = :P9_COD_ARTICULO',
'       AND C004 = :P9_PORC_DESCUENTO',
'       AND C006 = :P9_IND_OFERTA;',
'',
'    IF VCOUNT = 0 THEN',
'        APEX_COLLECTION.ADD_MEMBER (P_COLLECTION_NAME => ''ARTICULOS'',',
'                                    P_C001 => :P9_COD_ARTICULO,                         ',
'                                    P_C002 => :P9_CANTIDAD,',
'                                    P_C003 => :P9_PRECIO_UNITARIO,',
'                                    P_C004 => :P9_PORC_DESCUENTO,',
'                                    P_C005 => :P9_MONTO_TOTAL,',
'                                    P_C006 => :P9_IND_OFERTA,',
'                                    P_C007 => :P9_NRO_PROMO,',
'                                    P_C008 => :P9_IND_PROMO);  ',
'                               ',
'    ELSE',
'        FOR CC IN (SELECT SEQ_ID,',
'                          C001,',
'                          C002,',
'                          C003,',
'                          C004,',
'                          C005,',
'                          C006,',
'                          C007,',
'                          C008',
'                     FROM APEX_COLLECTIONS',
'                    WHERE COLLECTION_NAME = ''ARTICULOS''',
'                      AND C001 = :P9_COD_ARTICULO',
'                      AND C004 = :P9_PORC_DESCUENTO',
'                      AND C006 = :P9_IND_OFERTA )',
'        LOOP',
'            APEX_COLLECTION.UPDATE_MEMBER (P_COLLECTION_NAME => ''ARTICULOS'',',
'                                           P_SEQ => CC.SEQ_ID, ',
'                                           P_C001 => CC.C001,                             ',
'                                           P_C002 => TO_NUMBER(CC.C002) + TO_NUMBER(:P9_CANTIDAD),',
'                                           P_C003 => CC.C003,',
'                                           P_C004 => CC.C004,',
'                                           P_C005 => TO_NUMBER(CC.C005) + TO_NUMBER(:P9_MONTO_TOTAL),',
'                                           P_C006 => CC.C006,',
'                                           P_C007 => CC.C007,',
'                                           P_C008 => CC.C008);                                                                                                                       ',
'        END LOOP;                               ',
'    END IF;',
'    --WHEN-NEW-RECORD-INSTANCE BLOQUE DETALLE',
'    :P9_TOT_CANT_ANT_CAB := NVL(:P9_CANTIDAD,0); ',
'END;                            ',
''))
,p_attribute_02=>'P9_NRO_PROMO,P9_IND_PROMO,P9_COD_ARTICULO,P9_CANTIDAD,P9_PRECIO_UNITARIO,P9_PORC_DESCUENTO,P9_MONTO_TOTAL,P9_IND_OFERTA'
,p_attribute_03=>'P9_TOT_CANT_ANT_CAB'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5479631966225748)
,p_event_id=>wwv_flow_imp.id(5479413333225746)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('apex.message.showPageSuccess(''El art\00EDculo se agreg\00F3 correctamente.'');')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5479783444225749)
,p_event_id=>wwv_flow_imp.id(5479413333225746)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5309716933947436)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5479843567225750)
,p_event_id=>wwv_flow_imp.id(5479413333225746)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_COD_ARTICULO,P9_CANTIDAD,P9_PRECIO_UNITARIO,P9_PORC_DESCUENTO,P9_MONTO_TOTAL,P9_IND_OFERTA'
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
 p_id=>wwv_flow_imp.id(5923624294379004)
,p_event_id=>wwv_flow_imp.id(5479413333225746)
,p_event_result=>'FALSE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Los datos del detalle est\00E1n incompletos. ')
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5475215190225704)
,p_name=>'DA_BORRAR'
,p_event_sequence=>221
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_AUX_SEQ_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5475391953225705)
,p_event_id=>wwv_flow_imp.id(5475215190225704)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el art\00EDculo del detalle?')
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_attribute_07=>'Cancelar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5475630137225708)
,p_event_id=>wwv_flow_imp.id(5475215190225704)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'    APEX_COLLECTION.DELETE_MEMBER(',
'        p_collection_name => ''ARTICULOS'',',
'        p_seq => :P9_AUX_SEQ_ID);',
'End;'))
,p_attribute_02=>'P9_AUX_SEQ_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5477035618225722)
,p_event_id=>wwv_flow_imp.id(5475215190225704)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P9_TOT_CANTIDAD_CAB := NVL(TO_NUMBER(:P9_TOT_CANTIDAD_CAB), 0) - NVL(TO_NUMBER(:P9_AUX_CANTIDAD), 0); '
,p_attribute_02=>'P9_TOT_CANTIDAD_CAB,P9_AUX_CANTIDAD'
,p_attribute_03=>'P9_TOT_CANTIDAD_CAB'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5475756396225709)
,p_event_id=>wwv_flow_imp.id(5475215190225704)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5309716933947436)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5476290317225714)
,p_name=>'DA_OFERTA'
,p_event_sequence=>231
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_IND_OFERTA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5476363395225715)
,p_event_id=>wwv_flow_imp.id(5476290317225714)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P9_IND_OFERTA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5476554081225717)
,p_name=>'DA_TOTAL'
,p_event_sequence=>241
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5309716933947436)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5476647083225718)
,p_event_id=>wwv_flow_imp.id(5476554081225717)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    VTOTAL NUMBER (11,2) := 0;',
'BEGIN',
'    FOR CC IN (SELECT C005',
'                 FROM APEX_COLLECTIONS',
'                WHERE COLLECTION_NAME = ''ARTICULOS'')',
'    LOOP',
'        VTOTAL := VTOTAL + CC.C005;',
'    END LOOP;            ',
'',
'    :P9_TOTAL_PEDIDO := VTOTAL;',
'END;'))
,p_attribute_03=>'P9_TOTAL_PEDIDO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5476702304225719)
,p_event_id=>wwv_flow_imp.id(5476554081225717)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_TOTAL_PEDIDO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5477624540225728)
,p_name=>'DA_NRO_COMPROBANTE'
,p_event_sequence=>251
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5477432575225726)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5477765621225729)
,p_event_id=>wwv_flow_imp.id(5477624540225728)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P9_NRO_COMPROBANTE IS NULL THEN',
'    		BEGIN',
'    				select nvl( max( nro_comprobante ), 0 ) + 1',
'    			 	  into :P9_NRO_COMPROBANTE',
'    				  from VT_PEDIDOS_CABECERA_REP',
'    				 where cod_empresa     = :P9_COD_EMPRESA_VA',
'    				   and tip_comprobante = :P9_TIP_COMPROBANTE',
'    				   and ser_comprobante = :P9_SER_COMPROBANTE_CAB;  ',
'    		',
'    				IF :P9_NRO_COMPROBANTE IS NULL THEN',
'    				    :P9_NRO_COMPROBANTE := 1;',
'    				END IF;',
'    		EXCEPTION',
'    				when no_data_found then',
'    						:P9_NRO_COMPROBANTE := 1;',
'    				when others then',
'    						raise_application_error(-20000, ''Error en la tabla de Pedidos (Cabecera) ''||sqlerrm);',
'    		END;       ',
'    END IF;',
'END;',
'',
'BEGIN',
'    :P9_FEC_ALTA   := sysdate;',
'    :P9_HORA_ALTA  := to_char(sysdate, ''HH24:MI:SS'');',
'    :P9_DERIVADO_CAB   := ''F'';',
'    :P9_IND_ENVIAR_CAB := ''S'';',
'END;',
''))
,p_attribute_02=>'P9_COD_EMPRESA_VA,P9_TIP_COMPROBANTE,P9_SER_COMPROBANTE_CAB,P9_NRO_COMPROBANTE'
,p_attribute_03=>'P9_NRO_COMPROBANTE,P9_IND_ENVIAR_CAB,P9_DERIVADO_CAB,P9_HORA_ALTA ,P9_FEC_ALTA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6266571448275210)
,p_event_id=>wwv_flow_imp.id(5477624540225728)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'GUARDAR'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5478645820225738)
,p_name=>'DA_ELIMINAR'
,p_event_sequence=>261
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5478538880225737)
,p_condition_element=>'P9_NRO_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5478941862225741)
,p_event_id=>wwv_flow_imp.id(5478645820225738)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Debe ingresar un n\00FAmero de comprobante a eliminar. ')
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5478834479225740)
,p_event_id=>wwv_flow_imp.id(5478645820225738)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFDesea eliminar el comprobante &P9_NRO_COMPROBANTE.?')
,p_attribute_02=>unistr('Atenci\00F3n')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
,p_attribute_07=>'Cancelar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5478799782225739)
,p_event_id=>wwv_flow_imp.id(5478645820225738)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DELETE FROM VT_PEDIDOS_DETALLE_REP V',
'      WHERE V.COD_EMPRESA = :P9_COD_EMPRESA_CAB',
'        AND V.TIP_COMPROBANTE = :P9_TIP_COMPROBANTE ',
'        AND V.SER_COMPROBANTE = :P9_SER_COMPROBANTE_CAB ',
'        AND V.NRO_COMPROBANTE = :P9_NRO_COMPROBANTE;',
'  '))
,p_attribute_02=>'P9_NRO_COMPROBANTE,P9_SER_COMPROBANTE_CAB,P9_COD_EMPRESA_CAB,P9_TIP_COMPROBANTE,'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5923330986379001)
,p_name=>'DA_VALIDA_AGREGAR'
,p_event_sequence=>271
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(41223834391563138)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5923437651379002)
,p_event_id=>wwv_flow_imp.id(5923330986379001)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P9_COD_ARTICULO IS NULL OR :P9_CANTIDAD IS NULL OR :P9_PORC_DESCUENTO IS NULL OR :P9_MONTO_TOTAL IS NULL ',
'OR   :P9_MODIFICABLE = ''-1'' THEN',
'    :P9_AUX_AGREGAR := 2; ',
'ELSE',
'    :P9_AUX_AGREGAR := 1;',
'END IF;        ',
'    ',
''))
,p_attribute_02=>'P9_COD_ARTICULO,P9_CANTIDAD,P9_PORC_DESCUENTO,P9_PORC_DESCUENTO'
,p_attribute_03=>'P9_AUX_AGREGAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5924041787379008)
,p_name=>'DA_COD_SUCURSAL'
,p_event_sequence=>281
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_COD_SUCURSAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5924173558379009)
,p_event_id=>wwv_flow_imp.id(5924041787379008)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P9_COD_SUCURSAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7806031390851802)
,p_name=>'DA_BUSCAR'
,p_event_sequence=>291
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(7805997971851801)
,p_condition_element=>'P9_NRO_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7806216974851804)
,p_event_id=>wwv_flow_imp.id(7806031390851802)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Debe ingresar un n\00FAmero de comprobante.')
,p_attribute_02=>'Error'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_attribute_06=>'Aceptar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7806961515851811)
,p_event_id=>wwv_flow_imp.id(7806031390851802)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'  APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''ARTICULOS'');'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7807070222851812)
,p_event_id=>wwv_flow_imp.id(7806031390851802)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5309716933947436)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7806139577851803)
,p_event_id=>wwv_flow_imp.id(7806031390851802)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT COD_EMPRESA,COD_SUCURSAL,COD_SUCURSAL_ENT,TIP_COMPROBANTE,SER_COMPROBANTE,NRO_COMPROBANTE,FEC_COMPROBANTE,COD_VENDEDOR,RETIRA_DE,FEC_ALTA,COD_USUARIO,ANULADO,FEC_ESTADO,COD_USUARIO_ANU,HORA_ALTA,NRO_DIARIO,TRASLADO,COD_CLIENTE,DIRECCION,TE'
||'LEFONO,RUC,CI,OBSERVACION,COD_MOTIVO_ANU,TIP_SERVICIO,DERIVADO,IND_ENVIAR,NRO_SERVICIO,FEC_SERVICIO,TOT_COMPROBANTE',
'      INTO :P9_COD_EMPRESA_CAB,:P9_COD_SUCURSAL,:P9_COD_SUCURSAL_ENT,:P9_TIP_COMPROBANTE,:P9_SER_COMPROBANTE_CAB,:P9_NRO_COMPROBANTE,:P9_FEC_COMPROBANTE,:P9_COD_VENDEDOR,:P9_RETIRA_DE,:P9_FEC_ALTA,:P9_COD_USUARIO,:P9_ANULADO,:P9_FEC_ESTADO,:P9_COD_US'
||'UARIO_ANU,:P9_HORA_ALTA,:P9_NRO_DIARIO,:P9_TRASLADO,:P9_COD_CLIENTE,:P9_DIRECCION,:P9_TELEFONO,:P9_RUC,:P9_CI,:P9_OBSERVACION,:P9_COD_MOTIVO,:P9_TIP_SERVICIO,:P9_DERIVADO_CAB,:P9_IND_ENVIAR_CAB,:P9_NRO_SERVICIO,:P9_FEC_SERVICIO,:P9_TOTAL_PEDIDO',
'      FROM VT_PEDIDOS_CABECERA_REP',
'     WHERE COD_EMPRESA = :P9_COD_EMPRESA_VA',
'       AND TIP_COMPROBANTE =  :P9_TIP_COMPROBANTE',
'       AND SER_COMPROBANTE = :P9_SER_COMPROBANTE_CAB',
'       AND NRO_COMPROBANTE = :P9_NRO_COMPROBANTE;  ',
'    ',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
unistr('        RAISE_APPLICATION_ERROR(-20000,''No se ha encontrado un pedido con ese n\00FAmero de comprobante.'');'),
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000,''Ha ocurrido un error en la tabla de Remisiones (Cabecera)''|| sqlerrm);',
'END;',
'',
'BEGIN',
'    FOR CC IN (SELECT COD_EMPRESA,TIP_COMPROBANTE,SER_COMPROBANTE,NRO_COMPROBANTE,COD_ARTICULO,DESCRIPCION,CANTIDAD,PRECIO_UNITARIO,PORC_DESCUENTO,ROUND(PRECIO_UNITARIO*CANTIDAD-(PRECIO_UNITARIO*CANTIDAD*PORC_DESCUENTO/100)) MONTO_TOTAL,IND_OFERTA,IN'
||'D_PROMO,NRO_PROMO',
'          FROM VT_PEDIDOS_DETALLE_REP   ',
'        WHERE COD_EMPRESA = :P9_COD_EMPRESA_VA',
'          AND NRO_COMPROBANTE = :P9_NRO_COMPROBANTE',
'                AND SER_COMPROBANTE = :P9_SER_COMPROBANTE_CAB)',
'    LOOP',
'       APEX_COLLECTION.ADD_MEMBER (P_COLLECTION_NAME => ''ARTICULOS'',',
'                                    P_C001 => CC.COD_ARTICULO,                         ',
'                                    P_C002 => CC.CANTIDAD,',
'                                    P_C003 => CC.PRECIO_UNITARIO,',
'                                    P_C004 => CC.PORC_DESCUENTO,',
'                                    P_C005 => CC.MONTO_TOTAL,',
'                                    P_C006 => CC.IND_OFERTA,',
'                                    P_C007 => CC.NRO_PROMO,',
'                                    P_C008 => CC.IND_PROMO);                                    ',
'    END LOOP;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
unistr('        RAISE_APPLICATION_ERROR(-20000,''No se ha encontrado un detalle de pedido con ese n\00FAmero de comprobante.'');'),
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000,''Ha ocurrido un error en la tabla de Detalle. ''|| sqlerrm);',
'END;',
'',
'',
'',
''))
,p_attribute_02=>'P9_COD_EMPRESA_VA,P9_NRO_COMPROBANTE,P9_SER_COMPROBANTE_CAB,P9_TIP_COMPROBANTE'
,p_attribute_03=>'P9_COD_EMPRESA_CAB,P9_COD_SUCURSAL,P9_COD_SUCURSAL_ENT,P9_TIP_COMPROBANTE,P9_SER_COMPROBANTE_CAB,P9_NRO_COMPROBANTE,P9_FEC_COMPROBANTE,P9_COD_VENDEDOR,P9_RETIRA_DE,P9_FEC_ALTA,P9_COD_USUARIO,P9_ANULADO,P9_FEC_ESTADO,P9_COD_USUARIO_ANU,P9_HORA_ALTA,P9'
||'_NRO_DIARIO,P9_TRASLADO,P9_COD_CLIENTE,P9_DIRECCION,P9_TELEFONO,P9_RUC,P9_CI,P9_OBSERVACION,P9_COD_MOTIVO,P9_TIP_SERVICIO,P9_DERIVADO_CAB,P9_IND_ENVIAR_CAB,P9_NRO_SERVICIO,P9_FEC_SERVICIO,P9_TOTAL_PEDIDO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7806396933851805)
,p_event_id=>wwv_flow_imp.id(7806031390851802)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5309716933947436)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7806651066851808)
,p_event_id=>wwv_flow_imp.id(7806031390851802)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(5478343432225735)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P9_ANULADO'
,p_client_condition_expression=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7806762253851809)
,p_event_id=>wwv_flow_imp.id(7806031390851802)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(5478343432225735)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P9_ANULADO'
,p_client_condition_expression=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11951360198734714)
,p_event_id=>wwv_flow_imp.id(7806031390851802)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(11950726785734708)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11950888080734709)
,p_name=>'DA_IMPRIMIR'
,p_event_sequence=>301
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11950726785734708)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11950995786734710)
,p_event_id=>wwv_flow_imp.id(11950888080734709)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'doDescarga(apex.item(''P9_COD_EMPRESA_VA'').getValue(),apex.item(''P9_TIP_COMPROBANTE'').getValue(),apex.item(''P9_SER_COMPROBANTE_CAB'').getValue(),apex.item(''P9_NRO_COMPROBANTE'').getValue());'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11951035777734711)
,p_name=>'DA_PORC_DESCUENTO1'
,p_event_sequence=>311
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_PORC_DESCUENTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11951170455734712)
,p_event_id=>wwv_flow_imp.id(11951035777734711)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P9_MONTO_TOTAL := round(precio(:P9_COD_ARTICULO,NVL(:P9_PORC_DESCUENTO,0))) * nvl(:P9_CANTIDAD,0);      '
,p_attribute_02=>'P9_PORC_DESCUENTO,P9_COD_ARTICULO,P9_CANTIDAD'
,p_attribute_03=>'P9_MONTO_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21770887394343319)
,p_name=>'DA_SOLO_NUM'
,p_event_sequence=>321
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_CANTIDAD,P9_PRECIO_UNITARIO,P9_PORC_DESCUENTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21770919946343320)
,p_event_id=>wwv_flow_imp.id(21770887394343319)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumeros(event)){',
'      event.preventDefault();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34202940903626902)
,p_name=>'DA_TOTAL_PEDIDO_FORMATO'
,p_event_sequence=>331
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_TOTAL_PEDIDO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34203044935626903)
,p_event_id=>wwv_flow_imp.id(34202940903626902)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P9_TOTAL_PEDIDO_AUX := :P9_TOTAL_PEDIDO;'
,p_attribute_02=>'P9_TOTAL_PEDIDO'
,p_attribute_03=>'P9_TOTAL_PEDIDO_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34203402409626907)
,p_name=>'DA_FORMATO_MONTO_TOTAL'
,p_event_sequence=>341
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_MONTO_TOTAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34203551092626908)
,p_event_id=>wwv_flow_imp.id(34203402409626907)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P9_MONTO_TOTAL_AUX := :P9_MONTO_TOTAL;'
,p_attribute_02=>'P9_MONTO_TOTAL'
,p_attribute_03=>'P9_MONTO_TOTAL_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(34204096027626913)
,p_name=>'DA_PRECIO_UNITARIO'
,p_event_sequence=>361
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_PRECIO_UNITARIO_AUX'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34204109124626914)
,p_event_id=>wwv_flow_imp.id(34204096027626913)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P9_PRECIO_UNITARIO := :P9_PRECIO_UNITARIO_AUX;'
,p_attribute_02=>'P9_PRECIO_UNITARIO_AUX'
,p_attribute_03=>'P9_PRECIO_UNITARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75651362193710208)
,p_name=>'Change_Cliente'
,p_event_sequence=>371
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_COD_CLIENTE'
,p_condition_element=>'P9_COD_CLIENTE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'00000'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75651421918710209)
,p_event_id=>wwv_flow_imp.id(75651362193710208)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_CLIENTE_DESC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75651503909710210)
,p_event_id=>wwv_flow_imp.id(75651362193710208)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_CLIENTE_DESC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64086023635872825)
,p_name=>'da_recupera_pedido'
,p_event_sequence=>381
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P9_NRO_COMPROBANTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64086292090872827)
,p_event_id=>wwv_flow_imp.id(64086023635872825)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''ARTICULOS'');'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64086194564872826)
,p_event_id=>wwv_flow_imp.id(64086023635872825)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT COD_EMPRESA,COD_SUCURSAL,COD_SUCURSAL_ENT,TIP_COMPROBANTE,',
'   FEC_COMPROBANTE,COD_VENDEDOR,RETIRA_DE,FEC_ALTA,COD_USUARIO,ANULADO,FEC_ESTADO,COD_USUARIO_ANU,HORA_ALTA,NRO_DIARIO,TRASLADO,COD_CLIENTE,',
'   DIRECCION,TELEFONO,RUC,CI,OBSERVACION,COD_MOTIVO_ANU,TIP_SERVICIO,DERIVADO,IND_ENVIAR,NRO_SERVICIO,FEC_SERVICIO,TOT_COMPROBANTE,nom_cliente,',
'   case when NVL(FACTURADO,''N'')=''S'' THEN ''-1'' ',
'   WHEN NVL(ANULADO,''N'')=''S'' THEN ''-1''',
'   else ''1'' end modificable',
'      INTO :P9_COD_EMPRESA_CAB,:P9_COD_SUCURSAL,:P9_COD_SUCURSAL_ENT,:P9_TIP_COMPROBANTE,',
'     :P9_FEC_COMPROBANTE,:P9_COD_VENDEDOR,',
'      :P9_RETIRA_DE,:P9_FEC_ALTA,:P9_COD_USUARIO,:P9_ANULADO,:P9_FEC_ESTADO,:P9_COD_USUARIO_ANU,',
'      :P9_HORA_ALTA,:P9_NRO_DIARIO,:P9_TRASLADO,:P9_COD_CLIENTE,:P9_DIRECCION,:P9_TELEFONO,:P9_RUC,:P9_CI,:P9_OBSERVACION,',
'      :P9_COD_MOTIVO,:P9_TIP_SERVICIO,:P9_DERIVADO_CAB,:P9_IND_ENVIAR_CAB,:P9_NRO_SERVICIO,:P9_FEC_SERVICIO,:P9_TOTAL_PEDIDO,',
'      :P9_CLIENTE_DESC, :P9_MODIFICABLE',
'      FROM VT_PEDIDOS_CABECERA_REP',
'     WHERE COD_EMPRESA = :P9_COD_EMPRESA_VA',
'       AND TIP_COMPROBANTE =  :P9_TIP_COMPROBANTE',
'       AND SER_COMPROBANTE = :P9_SER_COMPROBANTE_CAB',
'       AND NRO_COMPROBANTE = :P9_NRO_COMPROBANTE;  ',
'    ',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
unistr('        RAISE_APPLICATION_ERROR(-20000,''No se ha encontrado un pedido con ese n\00FAmero de comprobante.'');'),
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000,''Ha ocurrido un error en la tabla de Remisiones (Cabecera)''|| sqlerrm);',
'END;',
'',
'BEGIN',
'    FOR CC IN (SELECT COD_EMPRESA,TIP_COMPROBANTE,SER_COMPROBANTE,NRO_COMPROBANTE,COD_ARTICULO,DESCRIPCION,CANTIDAD,PRECIO_UNITARIO,PORC_DESCUENTO,',
'    ROUND(PRECIO_UNITARIO*CANTIDAD-(PRECIO_UNITARIO*CANTIDAD*PORC_DESCUENTO/100))  MONTO_TOTAL,IND_OFERTA,IND_PROMO,NRO_PROMO',
'          FROM VT_PEDIDOS_DETALLE_REP   ',
'        WHERE COD_EMPRESA = :P9_COD_EMPRESA_VA',
'          AND NRO_COMPROBANTE = :P9_NRO_COMPROBANTE',
'          and ser_comprobante = :P9_SER_COMPROBANTE_CAB)',
'    LOOP',
'       APEX_COLLECTION.ADD_MEMBER (P_COLLECTION_NAME => ''ARTICULOS'',',
'                                    P_C001 => CC.COD_ARTICULO,                         ',
'                                    P_C002 => CC.CANTIDAD,',
'                                    P_C003 => CC.PRECIO_UNITARIO,',
'                                    P_C004 => CC.PORC_DESCUENTO,',
'                                    P_C005 => CC.MONTO_TOTAL,',
'                                    P_C006 => CC.IND_OFERTA,',
'                                    P_C007 => CC.NRO_PROMO,',
'                                    P_C008 => CC.IND_PROMO);                                    ',
'    END LOOP;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
unistr('        RAISE_APPLICATION_ERROR(-20000,''No se ha encontrado un detalle de pedido con ese n\00FAmero de comprobante.'');'),
'    WHEN OTHERS THEN',
'        RAISE_APPLICATION_ERROR(-20000,''Ha ocurrido un error en la tabla de Detalle. ''|| sqlerrm);',
'END;',
'',
'',
'',
''))
,p_attribute_02=>'P9_SER_COMPROBANTE_CAB,P9_NRO_COMPROBANTE'
,p_attribute_03=>'P9_COD_EMPRESA_CAB,P9_COD_SUCURSAL,P9_COD_SUCURSAL_ENT,P9_NRO_COMPROBANTE,P9_FEC_COMPROBANTE,P9_COD_VENDEDOR,P9_RETIRA_DE,P9_FEC_ALTA,P9_COD_USUARIO,P9_ANULADO,P9_FEC_ESTADO,P9_COD_USUARIO_ANU,P9_HORA_ALTA,P9_NRO_DIARIO,P9_TRASLADO,P9_COD_CLIENTE,P9_'
||'DIRECCION,P9_TELEFONO,P9_RUC,P9_CI,P9_OBSERVACION,P9_COD_MOTIVO,P9_TIP_SERVICIO,P9_DERIVADO_CAB,P9_IND_ENVIAR_CAB,P9_NRO_SERVICIO,P9_FEC_SERVICIO,P9_TOTAL_PEDIDO,P9_CLIENTE_DESC,P9_MODIFICABLE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64086373824872828)
,p_event_id=>wwv_flow_imp.id(64086023635872825)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5309716933947436)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64086635296872831)
,p_name=>'DA_PRECIO_UNITARIO_CA'
,p_event_sequence=>391
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_PRECIO_UNITARIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64086713432872832)
,p_event_id=>wwv_flow_imp.id(64086635296872831)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P9_MONTO_TOTAL := round(precio(:P9_COD_ARTICULO,NVL(:P9_PORC_DESCUENTO,0))) * nvl(:P9_CANTIDAD,0);     '
,p_attribute_02=>'P9_PORC_DESCUENTO,P9_COD_ARTICULO,P9_CANTIDAD'
,p_attribute_03=>'P9_MONTO_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64087125056872836)
,p_name=>'da_desabilta_guardar'
,p_event_sequence=>401
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P9_MODIFICABLE'
,p_display_when_cond2=>'-1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64087008943872835)
,p_event_id=>wwv_flow_imp.id(64087125056872836)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(5477432575225726)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(106521887519760509)
,p_name=>unistr('Verificar facturaci\00F3n')
,p_event_sequence=>411
,p_condition_element=>'P9_FACTURADO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106521988470760510)
,p_event_id=>wwv_flow_imp.id(106521887519760509)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(41223834391563138)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106522060038760511)
,p_event_id=>wwv_flow_imp.id(106521887519760509)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(5478343432225735)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106522105026760512)
,p_event_id=>wwv_flow_imp.id(106521887519760509)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(7805997971851801)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106522250250760513)
,p_event_id=>wwv_flow_imp.id(106521887519760509)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(75651753991710212)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106522408447760515)
,p_event_id=>wwv_flow_imp.id(106521887519760509)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(5478538880225737)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106522585467760516)
,p_event_id=>wwv_flow_imp.id(106521887519760509)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(5477432575225726)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106522660959760517)
,p_event_id=>wwv_flow_imp.id(106521887519760509)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(11950726785734708)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(106522777265760518)
,p_event_id=>wwv_flow_imp.id(106521887519760509)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(7806581087851807)
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
 p_id=>wwv_flow_imp.id(557945401793594321)
,p_name=>'Da_validacion'
,p_event_sequence=>421
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_COD_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(557945580104594322)
,p_event_id=>wwv_flow_imp.id(557945401793594321)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_estado VARCHAR2(50);',
'BEGIN',
'    SELECT c.estado',
'    INTO v_estado',
'    FROM st_repuestos_venta_perdida_seg c',
'    WHERE c.cod_repuesto = :P9_COD_ARTICULO',
'    AND c.rowid = ( SELECT MAX(cc.rowid)',
'                    FROM st_repuestos_venta_perdida_seg cc',
'                    WHERE cc.cod_repuesto = c.cod_repuesto',
'                    AND cc.estado IS NOT NULL',
'                );',
'',
'    --IF v_estado = ''rechazado'' THEN',
'        /*APEX_ERROR.ADD_ERROR (',
unistr('            p_message => ''El art\00EDculo con el c\00F3digo '' || :P9_cod_articulo || '' est\00E1 rechazado y no puede ser agregado.'','),
'            p_display_location => apex_error.c_inline_in_notification*/',
unistr('      --  :P9_AUX_AGREGAR_2 := :P9_cod_articulo;--(''El art\00EDculo con el c\00F3digo '' || :P9_cod_articulo || '' est\00E1 rechazado y no puede ser agregado.'');'),
'    IF  v_estado = ''RECHAZADO'' THEN',
unistr('         raise_application_error(-20000, ''El art\00EDculo con el c\00F3digo '' || :P9_cod_articulo || '' est\00E1 rechazado y no puede ser agregado.'');'),
'    END IF;    ',
'        -- Detener el procesamiento adicional',
'        --APEX_APPLICATION.STOP_APEX_ENGINE;',
'   -- END IF;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
unistr('        -- Si no se encuentra el art\00EDculo, no hacer nada'),
'        NULL;',
'END;'))
,p_attribute_02=>'P9_COD_ARTICULO'
,p_attribute_03=>'P9_COD_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(557945818335594325)
,p_event_id=>wwv_flow_imp.id(557945401793594321)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_COD_ARTICULO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41119080616000720)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P_COD_EMPRESA := 1;',
'',
'--INICIALIZA_GLOBALES',
'--Almacena los valores en variables locales',
':P9_COD_EMPRESA_VA := NVL(:P_COD_EMPRESA, ''1'');',
':P9_COD_USUARIO_VA := NVL(:P_COD_USUARIO, :APP_USER);',
':P9_COD_SUCURSAL_VA := NVL(:P_COD_SUCURSAL, ''01'');',
':P9_COD_MODULO_VA := NVL(:P_COD_MODULO, ''VT'');',
':P9_MODIFICABLE:=''1'';',
'',
unistr('--INICIALIZA_LOCALES --> SE MANEJA CON M\00D3DULOS DE SEGURIDAD?'),
unistr('--PRE-FORM --> A D\00D3NDE EST\00C1 RUTINA_INICIAL? BUSCA_PERMISO SE RESUELVE CON LOS M\00D3DULOS DE SEGURIDAD?'),
'',
'--WHEN-CREATE-FORM ',
':P9_COD_EMPRESA_CAB := :P9_COD_EMPRESA_VA;',
'--:P9_COD_SUCURSAL_ENT := :P9_COD_SUCURSAL_VA;',
':P9_TIP_COMPROBANTE := ''PER'';',
':P9_RETIRA_DE:=''ARTIGAS'';',
':P9_SER_COMPROBANTE_CAB := ''A'';',
':P9_FEC_COMPROBANTE := trae_fecha( :P9_COD_EMPRESA_VA, :P9_COD_MODULO_VA);',
':P9_TOT_CANTIDAD_CAB := 0;',
':P9_DERIVADO_CAB := ''F'';',
':P9_IND_ENVIAR_CAB := ''S'';',
':P9_COD_USUARIO := :P9_COD_USUARIO_VA;',
':P9_HORA_ALTA := to_char(sysdate, ''HH24:MI:SS'');',
':P9_ANULADO:=''N'';',
':P9_IND_OFERTA:=''N'';',
':P9_AUX_AGREGAR := 0;',
'',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(P_COLLECTION_NAME => ''ARTICULOS'');',
'',
'--WHEN-CREATE-RECORD BLOQUE CABECERA',
'BEGIN ',
'    SELECT v.cod_vendedor ',
'      INTO :P9_COD_VENDEDOR',
'      FROM fv_vendedores v, ',
'           personas p , ',
'           USUARIOS U',
'     WHERE v.cod_empresa  = :P9_COD_EMPRESA_VA',
'       AND V.COD_EMPRESA = U.COD_EMPRESA',
'       AND U.COD_PERSONA = V.COD_PERSONA',
'       AND U.COD_USUARIO = :APP_USER',
'       AND v.cod_persona = p.cod_persona;',
'EXCEPTION	  ',
'	  when others then',
'		    :P9_COD_VENDEDOR := NULL;',
'		      ',
'end;',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5479252752225744)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GUARDAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P9_MODIFICABLE=''-1'' THEN',
'  apex_error.add_error (p_message          => ''No es posible realizar cambios sobre el pedido. '',',
'                                  p_display_location => apex_error.c_inline_in_notification );   ',
'ELSE',
'',
'DECLARE ',
'    VNROCOMPROBANTE NUMBER;',
'    VNOMBRE_CLIENTE VARCHAR2(100);',
'BEGIN',
'    BEGIN',
'        SELECT p.nombre ',
'          INTO VNOMBRE_CLIENTE',
'          FROM cc_clientes c, personas p',
'         WHERE c.cod_empresa = :p_cod_empresa',
'           AND c.cod_persona = p.cod_persona',
'           AND c.cod_cliente = :P9_COD_CLIENTE;',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            apex_error.add_error (p_message          => ''No se ha encontrado el nombre del cliente. '',',
'                                  p_display_location => apex_error.c_inline_in_notification );        ',
'    END;',
'',
'    SELECT COUNT(NRO_COMPROBANTE) ',
'      INTO VNROCOMPROBANTE',
'      FROM VT_PEDIDOS_CABECERA_REP',
'     WHERE COD_EMPRESA = :p_cod_empresa',
'       AND NRO_COMPROBANTE = :P9_NRO_COMPROBANTE',
'       AND SER_COMPROBANTE = :P9_SER_COMPROBANTE_CAB',
'       AND TIP_COMPROBANTE = :P9_TIP_COMPROBANTE;',
'    ',
'    IF VNROCOMPROBANTE = 0 THEN   ',
'        INSERT INTO VT_PEDIDOS_CABECERA_REP(COD_EMPRESA,COD_SUCURSAL,COD_SUCURSAL_ENT,TIP_COMPROBANTE,SER_COMPROBANTE,NRO_COMPROBANTE,FEC_COMPROBANTE,COD_VENDEDOR,RETIRA_DE,FEC_ALTA,',
'        COD_USUARIO,ANULADO,FEC_ESTADO,COD_USUARIO_ANU,HORA_ALTA,NRO_DIARIO,TRASLADO,COD_CLIENTE,NOM_CLIENTE,DIRECCION,TELEFONO,',
'        RUC,CI,OBSERVACION,COD_MOTIVO_ANU,TIP_SERVICIO,DERIVADO,IND_ENVIAR,NRO_SERVICIO,FEC_SERVICIO,TOT_COMPROBANTE, correo_cliente)',
'                                     VALUES(:p_cod_empresa,:P9_COD_SUCURSAL,:P9_COD_SUCURSAL_ENT,:P9_TIP_COMPROBANTE,:P9_SER_COMPROBANTE_CAB,',
'                                     TO_NUMBER(:P9_NRO_COMPROBANTE),TO_DATE(:P9_FEC_COMPROBANTE),:P9_COD_VENDEDOR,:P9_RETIRA_DE,TO_DATE(:P9_FEC_ALTA),:P9_COD_USUARIO,:P9_ANULADO,TO_DATE(:P9_FEC_ESTADO),:P9_COD_USUARIO_ANU,:P9_HORA_ALTA,:P9_NRO_DIARIO'
||',:P9_TRASLADO,:P9_COD_CLIENTE,nvl(:P9_CLIENTE_DESC,VNOMBRE_CLIENTE),:P9_DIRECCION,:P9_TELEFONO,:P9_RUC,:P9_CI,:P9_OBSERVACION,:P9_COD_MOTIVO,:P9_TIP_SERVICIO,:P9_DERIVADO_CAB,:P9_IND_ENVIAR_CAB,TO_NUMBER(:P9_NRO_SERVICIO),TO_DATE(:P9_FEC_SERVICIO),TO'
||'_NUMBER(:P9_TOTAL_PEDIDO),',
'                                     :P9_CORREO); ',
'',
'        FOR CC IN (SELECT C001 COD_ARTICULO,',
'                          C002 CANTIDAD,',
'                          C003 PRECIO_UNITARIO,',
'                          C004 PORC_DESCUENTO,',
'                          C005 MONTO_TOTAL,',
'                          C006 IND_OFERTA,',
'                          C007 NRO_PROMO,',
'                          C008 IND_PROMO',
'                     FROM APEX_COLLECTIONS',
'                    WHERE COLLECTION_NAME = ''ARTICULOS'' )',
'        LOOP   ',
'            INSERT INTO VT_PEDIDOS_DETALLE_REP(COD_EMPRESA,TIP_COMPROBANTE,SER_COMPROBANTE,NRO_COMPROBANTE,COD_ARTICULO,DESCRIPCION,CANTIDAD,PRECIO_UNITARIO,PORC_DESCUENTO,MONTO_TOTAL,IND_OFERTA,IND_PROMO,NRO_PROMO)',
'                                        VALUES(:p_cod_empresa,:P9_TIP_COMPROBANTE,:P9_SER_COMPROBANTE_CAB,TO_NUMBER(:P9_NRO_COMPROBANTE),CC.COD_ARTICULO,:P9_DESCRIPCION,TO_NUMBER(CC.CANTIDAD),TO_NUMBER(CC.PRECIO_UNITARIO),TO_NUMBER(CC.PORC_DESCUENTO)'
||',TO_NUMBER(CC.MONTO_TOTAL),CC.IND_OFERTA,CC.IND_PROMO,TO_NUMBER(CC.NRO_PROMO)); ',
'        END LOOP;        ',
'        :P0_MENSAJE := ''El Nro. de Pedido generado es: ''||:P9_NRO_COMPROBANTE;',
'    ELSIF VNROCOMPROBANTE = 1 THEN',
'        :P0_MENSAJE := ''Se modificado el Nro. de Pedido: ''||:P9_NRO_COMPROBANTE;',
'        UPDATE VT_PEDIDOS_CABECERA_REP ',
'           SET COD_SUCURSAL = :P9_COD_SUCURSAL,',
'               COD_SUCURSAL_ENT = :P9_COD_SUCURSAL_ENT,',
'               TIP_COMPROBANTE = :P9_TIP_COMPROBANTE,',
'               SER_COMPROBANTE = :P9_SER_COMPROBANTE_CAB,',
'               FEC_COMPROBANTE = :P9_FEC_COMPROBANTE,',
'               COD_VENDEDOR = :P9_COD_VENDEDOR,',
'               RETIRA_DE = :P9_RETIRA_DE,',
'               FEC_ALTA = :P9_FEC_ALTA,',
'               COD_USUARIO = :P9_COD_USUARIO,',
'               ANULADO = :P9_ANULADO,',
'               FEC_ESTADO = :P9_FEC_ESTADO,',
'               COD_USUARIO_ANU = :P9_COD_USUARIO_ANU,',
'               HORA_ALTA = :P9_HORA_ALTA,',
'               NRO_DIARIO = :P9_NRO_DIARIO,',
'               TRASLADO = :P9_TRASLADO,',
'               COD_CLIENTE = :P9_COD_CLIENTE,',
'               NOM_CLIENTE = VNOMBRE_CLIENTE,',
'               DIRECCION = :P9_DIRECCION,',
'               TELEFONO = :P9_TELEFONO,',
'               RUC = :P9_RUC,',
'               CI = :P9_CI,',
'               OBSERVACION = :P9_OBSERVACION,',
'               COD_MOTIVO_ANU = :P9_COD_MOTIVO,',
'               TIP_SERVICIO = :P9_TIP_SERVICIO,',
'               DERIVADO = :P9_DERIVADO_CAB,',
'               IND_ENVIAR = :P9_IND_ENVIAR_CAB,',
'               NRO_SERVICIO = :P9_NRO_SERVICIO,',
'               FEC_SERVICIO = :P9_FEC_SERVICIO,',
'               TOT_COMPROBANTE = :P9_TOTAL_PEDIDO',
'        WHERE NRO_COMPROBANTE = :P9_NRO_COMPROBANTE',
'          AND COD_EMPRESA = :p_cod_empresa;',
'',
'        DELETE FROM VT_PEDIDOS_DETALLE_REP',
'              WHERE COD_EMPRESA = :P9_COD_EMPRESA_VA',
'                AND NRO_COMPROBANTE = :P9_NRO_COMPROBANTE; ',
'',
'        FOR CC IN (SELECT C001 COD_ARTICULO,',
'                              C002 CANTIDAD,',
'                              C003 PRECIO_UNITARIO,',
'                              C004 PORC_DESCUENTO,',
'                              C005 MONTO_TOTAL,',
'                              C006 IND_OFERTA,',
'                              C007 NRO_PROMO,',
'                              C008 IND_PROMO',
'                         FROM APEX_COLLECTIONS',
'                        WHERE COLLECTION_NAME = ''ARTICULOS'')',
'        LOOP           ',
'         begin',
'            INSERT INTO VT_PEDIDOS_DETALLE_REP(COD_EMPRESA,TIP_COMPROBANTE,SER_COMPROBANTE,NRO_COMPROBANTE,COD_ARTICULO,DESCRIPCION,CANTIDAD,PRECIO_UNITARIO,PORC_DESCUENTO,MONTO_TOTAL,IND_OFERTA,IND_PROMO,NRO_PROMO)',
'                                        VALUES(:p_cod_empresa,:P9_TIP_COMPROBANTE,:P9_SER_COMPROBANTE_CAB,:P9_NRO_COMPROBANTE,CC.COD_ARTICULO,:P9_DESCRIPCION,CC.CANTIDAD,CC.PRECIO_UNITARIO,CC.PORC_DESCUENTO,CC.MONTO_TOTAL,CC.IND_OFERTA,CC.IND_PROMO,C'
||'C.NRO_PROMO); ',
'                                        exception',
'                                        when others then',
'                                         RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al recuperar los datos de la tabla de detalle. ''||cc.cod_articulo||sqlerrm);',
'                                        end;',
'        END LOOP;      ',
'                   ',
'     END IF;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'      RAISE_APPLICATION_ERROR(-20000, ''Ha ocurrido un error al recuperar los datos de la tabla de cabecera. ''||sqlerrm);         ',
'END;                             ',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Ha ocurrido un error. '
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(5477432575225726)
,p_process_when=>'GUARDAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'&P0_MENSAJE.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7806827392851810)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'LIMPIAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(7806581087851807)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64085975330872824)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'limpiar_guardado'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(5477432575225726)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(156807136999017243)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'validaciones'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' DECLARE ',
'    v_mensaje VARCHAR2(4000);',
'BEGIN',
'    if :P9_CORREO is not null then    ',
'        INV.PCK_GENERAL_APEX.pr_validar_direccion_email(p_direccion_mail => :P9_CORREO,',
'                                                        p_mensaje         => v_mensaje);',
'        IF v_mensaje IS NOT NULL THEN             ',
'            	raise_application_error(-20000,''Formato de Correo Incorrecto ''||v_mensaje);',
'        END IF;',
'    END IF;',
'END;',
'',
'IF :P9_RUC IS NULL AND :P9_CI IS NULL AND NVL(:P9_TIPO_IMPUESTO,''G'')=''G'' THEN ',
'    RAISE_APPLICATION_ERROR(-20001, ''Debe ingresar CI o RUC del cliente'');',
'END IF;',
'    ',
'',
'',
'',
'',
'',
' ',
'DECLARE',
'  VDATOS               VARCHAR2(32000);',
'  VDIREC               VARCHAR2(32000);',
'  V_DETALLE            VARCHAR2(10000);',
'  V_CABECERA           VARCHAR2(10000);',
'  VDATOS_RETORNO       VARCHAR2(32000);',
'  P_JSON               VARCHAR2(4000);',
'  P_DATOS              VARCHAR2(4000);',
'  L_MSJ                VARCHAR2(4000);',
'  L_PATH               VARCHAR2(200);',
'  L_ESTADO             VARCHAR2(200);',
'  NOMBRE               VARCHAR2(1);',
'  VDATOS2              VARCHAR2(5000);',
'  V_DESCRIPCION_ESTADO VARCHAR2(500);',
'  V_ESTADO VARCHAR2(500);',
'BEGIN',
'  :P0_MENSAJE_VALIDACION := NULL;/*',
'  IF :P9_RUC IS NOT NULL THEN',
'    DECLARE',
'      T_HTTP_REQ     UTL_HTTP.REQ;',
'      T_HTTP_RESP    UTL_HTTP.RESP;',
'      T_REQUEST_BODY VARCHAR2(30000);',
'    BEGIN',
'      BEGIN',
'        VDIREC := ''http://192.168.15.102:8080/efactura-py/api/consultas/consulta-ruc'';',
'      END;',
'      VDATOS := ''{"ruc":["'' || :P9_RUC || ''"],',
'                "retornarRespuestaOriginal":"true"',
'                }'';',
'      P_JSON := ''{"ruc":["'' || :P9_RUC || ''"],',
'                "retornarRespuestaOriginal":"true"',
'                }'';',
'    ',
'      T_REQUEST_BODY := VDATOS;',
'      T_HTTP_REQ     := UTL_HTTP.BEGIN_REQUEST(VDIREC, ''POST'', ''HTTP/1.1'');',
'      UTL_HTTP.SET_HEADER(T_HTTP_REQ, ''Content-Type'', ''application/json'');',
'    ',
'      UTL_HTTP.SET_HEADER(T_HTTP_REQ, ''Content-Length'', LENGTH(VDATOS));',
'    ',
'      UTL_HTTP.WRITE_TEXT(T_HTTP_REQ, T_REQUEST_BODY);',
'      P_JSON := T_REQUEST_BODY;',
'      DBMS_OUTPUT.PUT_LINE(''t_request_body: '' || T_REQUEST_BODY);',
'    ',
'      T_HTTP_RESP := UTL_HTTP.GET_RESPONSE(T_HTTP_REQ);',
'      UTL_HTTP.READ_TEXT(T_HTTP_RESP, P_DATOS);',
'      UTL_HTTP.END_RESPONSE(T_HTTP_RESP);',
'      BEGIN',
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00D1'', ''\005Cu00D1'');'),
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00F3'', ''\005Cu00F3'');'),
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00E1'', ''\005Cu00E1'');'),
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00E1'', ''\005Cu00E1'');'),
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00F3'', ''\005Cu00F3'');'),
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00F3'', ''\005Cu00F3'');'),
unistr('        VDATOS2 := REPLACE(P_DATOS, ''\00F3'', ''\005Cu00F3'');'),
'      ',
'        APEX_JSON.PARSE(VDATOS2);',
'        V_ESTADO            := APEX_JSON.GET_VARCHAR2(P_PATH => ''resultadoRuc[%d].codigoRespuesta'',',
'                                                         P0     => 1);',
'        :P0_MENSAJE_VALIDACION := CONVERT(REPLACE(APEX_JSON.GET_VARCHAR2(P_PATH => ''resultadoRuc[%d].mensajeError'',',
'                                                                         P0     => 1),',
'                                                  ''"'',',
'                                                  ''''),',
'                                          ''WE8MSWIN1252'',',
'                                          ''UTF8'');',
'        V_DESCRIPCION_ESTADO   := APEX_JSON.GET_VARCHAR2(P_PATH => ''resultadoRuc[%d].descripcionEstadoRuc'',',
'                                                         P0     => 1);',
'        IF V_ESTADO = ''EXISTE'' AND V_DESCRIPCION_ESTADO <> ''ACTIVO'' THEN',
unistr('          :P0_MENSAJE_VALIDACION := ''El n\00FAmero de Ruc est\00E1 '' ||'),
'                                    V_DESCRIPCION_ESTADO ||'' para el codigo de cliente ''||:P9_COD_CLIENTE;',
'           	raise_application_error(-20000, :P0_MENSAJE_VALIDACION);',
'          ',
'        ELSIF V_ESTADO <> ''EXISTE'' OR :P0_MENSAJE_VALIDACION IS NOT NULL THEN',
unistr('          :P0_MENSAJE_VALIDACION := ''El n\00FAmero de Ruc ingresado no existe para el codigo de cliente ''||:P9_COD_CLIENTE; '),
'          	raise_application_error(-20000, :P0_MENSAJE_VALIDACION);',
'        END IF;',
'      END;',
'    END;',
'  END IF;*/',
'  ',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(5477432575225726)
);
wwv_flow_imp.component_end;
end;
/
