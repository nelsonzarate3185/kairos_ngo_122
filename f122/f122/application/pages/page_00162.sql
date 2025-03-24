prompt --application/pages/page_00162
begin
--   Manifest
--     PAGE: 00162
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
 p_id=>162
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'CCCLIENT - Datos del cliente'
,p_alias=>'CCCLIENT-DATOS-DEL-CLIENTE'
,p_step_title=>'CCCLIENT - Datos del cliente'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'var cliente = $v("P162_COD_CLIENTE");  ',
'if (cliente === null || cliente === "") {',
'    null;',
'} else {',
'    P162_SALDO_CTA_CTE.disabled = true;',
'    P162_CHEQUE_DEVUELTO.disabled = true;',
'    P162_VALOR_DEPOSITAR.disabled = true;',
'    P162_SALDO_ACTUAL.disabled = true;',
'    P162_FACTURACION_POSIBLE.disabled = true;',
'}',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#form-principal{',
'    background-color: #e6e3e3;',
'    padding: 1rem;',
'}',
'',
'#editar-datos-cliente, #editar-demanda-cliente, #form-opciones, #buscar-cliente, #form-cambios,#form-ir-pagina{',
'    padding: 1rem;',
'    border: 2rem;',
'    border-radius: 1rem;',
'    background-color: white;',
'    border-color: rgb(127, 127, 127);',
'    border-width: medium;',
'    border-style: solid;',
'    margin-bottom: 0.5em;',
'}',
'',
'#editar-datos-cliente label, #editar-demanda-cliente label, #form-cambios label{',
'    font-weight: bold;',
'}',
'',
'#form-opciones button {',
'    margin-bottom: 0.5rem;',
'}',
'',
'#form-limite-credito,#configuraciones-cliente {',
'    background-color: #487ab8;',
'    padding: 1rem;',
'    border-color: rgb(127, 127, 127);',
'    border-width: medium;',
'    border-style: solid;',
'}',
'',
'#configuraciones-cliente label, #form-limite-credito label {',
'    color: white;',
'    font-weight: bold;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20240917164854'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40107105343414024)
,p_plug_name=>unistr('Edici\00F3n de datos del cliente')
,p_region_name=>'form-principal'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(40132096801263663)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40112076388434723)
,p_plug_name=>unistr('L\00EDmite de cr\00E9dito')
,p_region_name=>'form-limite-credito'
,p_parent_plug_id=>wwv_flow_imp.id(40107105343414024)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SEQ_ID ,',
'c017 FEC_ULT_MODIFICACION,',
'c018 FEC_ALTA,',
'c019 FECHA_PRIMERA_COMPRA,',
'c020 FEC_ULTIMA_COMPRA,',
'c021 DIAS_COBRO,',
'c022 COD_MONEDA_LIMITE,',
'c023 LIMITE_CREDITO,',
'c027 FECHA_VENC_LINEA,',
'c028 IMP_BARRAS,',
'c029 TIPO_IMPUESTO,',
'c030 FECHA_SEGUIMIENTO_CLIENTE',
'from APEX_COLLECTIONS ',
'           where COLLECTION_NAME = ''COLEC_DATOS_CLIENTE_1''',
'            order by SEQ_ID desc'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P162_SEQ_ID_1'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41145673725693411)
,p_plug_name=>unistr('Edici\00F3n de datos')
,p_region_name=>'editar-datos-cliente'
,p_parent_plug_id=>wwv_flow_imp.id(40107105343414024)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:t-Form--noPadding:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_imp.id(40113619510263658)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SEQ_ID ,',
'c001 COD_EMPRESA,',
'c002 COD_CLIENTE,',
'c003 COD_PERSONA,',
'c004 ESTADO,',
'c005 FEC_ESTADO,',
'c006 COD_CAUSAL,',
'c007 COMENTARIO,',
'c008 COD_VENDEDOR,',
'c009 COD_COBRADOR,',
'c010 COD_ZONA,',
'c011 NRO_ORDEN,',
'c012 ZONIFICACION,',
'c013 COD_CORPORACION,',
'c014 COD_LISTA_PRECIO,',
'c015 COD_SUCURSAL,',
'c016 COD_CLIENTE_ANTERIOR,',
'c049 ID_REGISTRO,',
'c050 OPCION',
'from APEX_COLLECTIONS ',
'           where COLLECTION_NAME = ''COLEC_DATOS_CLIENTE_1''',
'            order by SEQ_ID desc'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P162_SEQ_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41148146305693436)
,p_plug_name=>'Form Demanda'
,p_region_name=>'editar-demanda-cliente'
,p_parent_plug_id=>wwv_flow_imp.id(40107105343414024)
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_plug_template=>wwv_flow_imp.id(40100032401263654)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SEQ_ID SEQ_ID2,',
'c004 NRO_INSCRIPCION_AD,',
'c005 FEC_DEMANDA,',
'c006 TIP_DOCUMENTO,',
'c007 PLAZO,',
'c008 TIP_CLIENTE,',
'c009 COD_SUB_TIPO_CLIENTE,',
'c010 COD_CONDICION_VENTA,',
'c011 OBS_COBRANZAS,',
'c012 FECHA_limite_FACTURACION,',
'upper(c013) IND_PREFERENCIAL,',
'c014 NRO_JERARQUIA,',
'upper(c015) IND_EMP_ASOCIADA,',
'c016 COD_SCORING,',
'upper(c017) IND_SEGUIMIENTOS,',
'c018 OBS_SEGUIMIENTO,',
'c019 OBSERVACION_PEDIDO,',
'c020 CODIGO_INTESINDAD_COBRANZA,',
'upper(c021) IND_REMISION,',
'upper(c022) SIN_CV,',
'upper(c023) IMPRIMIR_DIR_SUCURSAL,',
'upper(c024) IND_IMPRIMIR_BARRA,',
'upper(c025) IND_LLEVA_OC,',
'upper(c026) IND_IMPRIMIR_UNICO_PAGARE,',
'upper(c027) IND_GEOREFERENCIADO,',
'upper(c028) IND_FINANCIACION,',
'upper(c029) PAGARE_POR_FACTURA,',
'upper(c030) IND_ENVIA_FACTURA,',
'upper(c031)cod_segmento_linea,',
'upper(c032)ind_acuerdo_comercial,',
'upper(c033)porcentaje_acuerdo_comercial',
'from APEX_COLLECTIONS ',
'           where COLLECTION_NAME = ''COLEC_DATOS_CLIENTE_2''',
'            order by 1 desc'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P162_SEQ_ID2'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45075720748466405)
,p_plug_name=>'Datos demanda'
,p_parent_plug_id=>wwv_flow_imp.id(41148146305693436)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40100032401263654)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>12
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45075869315466406)
,p_plug_name=>'Configuraciones'
,p_region_name=>'configuraciones-cliente'
,p_parent_plug_id=>wwv_flow_imp.id(41148146305693436)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(40100032401263654)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(280541755768066438)
,p_plug_name=>'Acuerdo Comercial'
,p_parent_plug_id=>wwv_flow_imp.id(41148146305693436)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41295525129214623)
,p_plug_name=>'Opciones disponibles'
,p_region_name=>'form-opciones'
,p_parent_plug_id=>wwv_flow_imp.id(40107105343414024)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47093072131156943)
,p_plug_name=>'Buscar cliente'
,p_region_name=>'buscar-cliente'
,p_parent_plug_id=>wwv_flow_imp.id(40107105343414024)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48936668286377208)
,p_plug_name=>'Formulario de Cambios'
,p_region_name=>'form-cambios'
,p_parent_plug_id=>wwv_flow_imp.id(40107105343414024)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(40100032401263654)
,p_plug_display_sequence=>90
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48936701916377209)
,p_plug_name=>unistr('Ir a p\00E1gina')
,p_region_name=>'form-ir-pagina'
,p_parent_plug_id=>wwv_flow_imp.id(40107105343414024)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40100032401263654)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P162_COD_PERSONA'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51665072057045222)
,p_plug_name=>'Paneles'
,p_parent_plug_id=>wwv_flow_imp.id(40107105343414024)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--scrollBody:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>110
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41297594521214643)
,p_plug_name=>'Direcciones'
,p_parent_plug_id=>wwv_flow_imp.id(51665072057045222)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SEQ_ID SEQ_ID_DIR,',
'           c001 DIR_COD_PERSONA,',
'           c002 COD_DIRECCION,',
'           c003 TIP_DIRECCION,',
'           DECODE(c003, ''T'',''Trabajo'',''C'',''Casa'',''O'',''Otro'') TIPO_DIRECCION,',
'           c005 CODIGO_POSTAL,',
'           c006 DETALLE,',
'           c007 COD_PAIS,',
'           p.descripcion DESC_PAIS,',
'           c009 COD_PROVINCIA,',
'           prov.descripcion DESC_PROVINCIA,',
'           c011 COD_CIUDAD,',
'           ciu.descripcion DESC_CIUDAD,',
'           c013 COD_BARRIO,',
'           bar.descripcion DESC_BARRIO,',
'           DECODE(c015,''S'',''checked'') POR_DEFECTO,',
'           c016 CASILLA_CORREO',
'    from APEX_COLLECTIONS',
'    left join paises p on p.cod_pais = c007',
'    left join provincias prov on prov.cod_provincia = c009 and prov.cod_pais = c007',
'    left join ciudades ciu on ciu.cod_ciudad = c011 and ciu.cod_provincia = c009 and ciu.cod_pais = c007',
'    left join barrios bar on bar.cod_barrio = c013 and bar.cod_ciudad = c011 and bar.cod_provincia = c009 and bar.cod_pais = c007',
'           where COLLECTION_NAME = ''COLEC_DATOS_CLIENTE_DIRECCIONES'' and c001 = :P162_COD_PERSONA',
'            order by SEQ_ID_DIR desc;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P162_COD_PERSONA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Direcciones'
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
 p_id=>wwv_flow_imp.id(42324583389055648)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:204:&SESSION.::&DEBUG.::P204_DIR_SEQ_ID,P204_DIR_COD_PERSONA:#SEQ_ID_DIR#,#DIR_COD_PERSONA#'
,p_detail_link_text=>'<span aria-label="Editar"  width="25" height="25"><span class="fa fa-edit" aria-hidden="true" title="Editar"></span></span>'
,p_owner=>'OSCARGO'
,p_internal_uid=>42324583389055648
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42324642422055649)
,p_db_column_name=>'SEQ_ID_DIR'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id Dir'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42324710475055650)
,p_db_column_name=>'COD_DIRECCION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('C\00F3digo')
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43093257936013501)
,p_db_column_name=>'TIP_DIRECCION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43093367970013502)
,p_db_column_name=>'DETALLE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Detalle'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43093484487013503)
,p_db_column_name=>'POR_DEFECTO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Por Defecto'
,p_column_html_expression=>'<input type="checkbox" name="POR_DEFECTO" value="#POR_DEFECTO#" #POR_DEFECTO# disabled>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43093574576013504)
,p_db_column_name=>'COD_PAIS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('Pa\00EDs')
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43093619152013505)
,p_db_column_name=>'COD_PROVINCIA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Departamento'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43093798751013506)
,p_db_column_name=>'COD_CIUDAD'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Ciudad'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43093889253013507)
,p_db_column_name=>'COD_BARRIO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Barrio'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43093965333013508)
,p_db_column_name=>'CASILLA_CORREO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Casilla Correo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43094010713013509)
,p_db_column_name=>'CODIGO_POSTAL'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Codigo Postal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43094306827013512)
,p_db_column_name=>'DIR_COD_PERSONA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Dir Cod Persona'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43094910683013518)
,p_db_column_name=>'TIPO_DIRECCION'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Tipo Direccion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43095029460013519)
,p_db_column_name=>'DESC_PAIS'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>unistr('Pa\00EDs')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43095177090013520)
,p_db_column_name=>'DESC_PROVINCIA'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Provincia'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43095225609013521)
,p_db_column_name=>'DESC_CIUDAD'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Ciudad'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(43095335240013522)
,p_db_column_name=>'DESC_BARRIO'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Barrio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(43109133053027592)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'431092'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIPO_DIRECCION:DETALLE:DESC_PAIS:DESC_PROVINCIA:DESC_CIUDAD:DESC_BARRIO:CASILLA_CORREO:CODIGO_POSTAL:POR_DEFECTO:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(51890854494350399)
,p_report_id=>wwv_flow_imp.id(43109133053027592)
,p_name=>'Por Defecto'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'POR_DEFECTO'
,p_operator=>'='
,p_expr=>'checked'
,p_condition_sql=>' (case when ("POR_DEFECTO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''checked''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#d0f1cc'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47088832706156901)
,p_plug_name=>unistr('T\00E9lefonos')
,p_parent_plug_id=>wwv_flow_imp.id(51665072057045222)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select seq_id TEL_SEQ_ID,',
'      c002 TEL_CODIGO_AREA,',
'      c003 TEL_NUM_TELEFONO,',
'      DECODE(c004,''D'',''Linea Directa'', ''C'',''Celular'',''F'',''Fax'') TEL_TIP_TELEFONO,',
'      DECODE(c005,''C'',''Casa'',''T'',''Trabajo'',''O'',''Otro'') TEL_UBICACION,',
'      c006 TEL_INTERNO,',
'      c007 TEL_NOTA,',
'      DECODE(c008,''S'',''checked'') TEL_POR_DEFECTO,',
'      c009 TEL_PARA_INFORME',
'      from APEX_COLLECTIONS where COLLECTION_NAME = ''COLEC_DATOS_CLIENTE_TELEFONOS'' and c001 = :P162_COD_PERSONA',
'        order by 1;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P162_COD_PERSONA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('T\00E9lefonos')
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
 p_id=>wwv_flow_imp.id(47088958332156902)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:213:&SESSION.::&DEBUG.::P213_TEL_SEQ_ID:#TEL_SEQ_ID#'
,p_detail_link_text=>'<span aria-label="Editar"  width="25" height="25"><span class="fa fa-edit" aria-hidden="true" title="Editar"></span></span>'
,p_owner=>'OSCARGO'
,p_internal_uid=>47088958332156902
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47089015034156903)
,p_db_column_name=>'TEL_SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Tel Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47089153306156904)
,p_db_column_name=>'TEL_CODIGO_AREA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('C\00F3digo \00C1rea')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47089204176156905)
,p_db_column_name=>'TEL_NUM_TELEFONO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('N\00FAmero Tel\00E9fono')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47089380359156906)
,p_db_column_name=>'TEL_TIP_TELEFONO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47089495000156907)
,p_db_column_name=>'TEL_UBICACION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('Ubicaci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47089547780156908)
,p_db_column_name=>'TEL_INTERNO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Interno'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47089642709156909)
,p_db_column_name=>'TEL_NOTA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Nota'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47089740630156910)
,p_db_column_name=>'TEL_POR_DEFECTO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Por Defecto'
,p_column_html_expression=>'<input type="checkbox" name="TEL_POR_DEFECTO" value="#TEL_POR_DEFECTO#" #TEL_POR_DEFECTO# disabled>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47089836017156911)
,p_db_column_name=>'TEL_PARA_INFORME'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Para Informe'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(47131898953327094)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'471319'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TEL_SEQ_ID:TEL_CODIGO_AREA:TEL_NUM_TELEFONO:TEL_TIP_TELEFONO:TEL_UBICACION:TEL_INTERNO:TEL_NOTA:TEL_POR_DEFECTO:TEL_PARA_INFORME'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(52126717577662447)
,p_report_id=>wwv_flow_imp.id(47131898953327094)
,p_name=>'Por Defecto'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'TEL_POR_DEFECTO'
,p_operator=>'='
,p_expr=>'checked'
,p_condition_sql=>' (case when ("TEL_POR_DEFECTO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''checked''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#d0f1cc'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48092340345927348)
,p_plug_name=>'Documentos'
,p_parent_plug_id=>wwv_flow_imp.id(51665072057045222)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select seq_id  ident_seq_id,',
'       c002 ident_cod_ident,',
'       c003 ident_numero,',
'       c004 ident_fec_vencimiento,',
'       ''Editar'' opcion',
'    from APEX_COLLECTIONS where collection_name = ''COLEC_DATOS_IDENT_PERSONAS'' and c001 = :P162_COD_PERSONA;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P162_COD_PERSONA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Documentos'
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
 p_id=>wwv_flow_imp.id(48092454507927349)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:246:&SESSION.::&DEBUG.::P246_DOCUMENTO_SEQ_ID:#IDENT_SEQ_ID#'
,p_detail_link_text=>'<span aria-label="Editar"  width="25" height="25"><span class="fa fa-edit" aria-hidden="true" title="Editar"></span></span>'
,p_owner=>'OSCARGO'
,p_internal_uid=>48092454507927349
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48092545450927350)
,p_db_column_name=>'IDENT_SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Ident Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48935956032377201)
,p_db_column_name=>'IDENT_COD_IDENT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48936034654377202)
,p_db_column_name=>'IDENT_NUMERO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('N\00FAmero')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48936127346377203)
,p_db_column_name=>'IDENT_FEC_VENCIMIENTO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Vencimiento'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48936369923377205)
,p_db_column_name=>'OPCION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Opcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(48942643593395975)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'489427'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'IDENT_SEQ_ID:IDENT_COD_IDENT:IDENT_NUMERO:IDENT_FEC_VENCIMIENTO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48937883473377220)
,p_plug_name=>unistr('Garant\00EDas')
,p_parent_plug_id=>wwv_flow_imp.id(51665072057045222)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select seq_id  garant_seq_id,',
'       c002 gar_cod_cliente,',
'       c003 gar_tip_garantia,',
'       c004 gar_fecha,',
'       c005 gar_cod_moneda,',
'       m.descripcion gar_desc_moneda,',
'       c006 gar_monto,',
'       c007 gar_estado,',
'       decode(c007,''F'',''FIRMADA'',''P'',''PENDIENTE'',''NF'',''NO REQUIERE FIRMAR'') gar_desc_estado',
'    from APEX_COLLECTIONS',
'    left join monedas m on m.cod_moneda = c005',
'    where collection_name = ''COLEC_DATOS_GARANTIA_CLIENTE'' and c002 = :P162_COD_CLIENTE;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P162_COD_CLIENTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Garant\00EDas')
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(48937939781377221)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:220:&SESSION.::&DEBUG.::P220_GAR_SEQ_ID:#GARANT_SEQ_ID#'
,p_detail_link_text=>'<span aria-label="Editar"  width="25" height="25"><span class="fa fa-edit" aria-hidden="true" title="Editar"></span></span>'
,p_owner=>'OSCARGO'
,p_internal_uid=>48937939781377221
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48938090864377222)
,p_db_column_name=>'GARANT_SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Garant Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48939425196377236)
,p_db_column_name=>'GAR_COD_CLIENTE'
,p_display_order=>20
,p_column_identifier=>'G'
,p_column_label=>'Gar Cod Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48938118212377223)
,p_db_column_name=>'GAR_TIP_GARANTIA'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48938284446377224)
,p_db_column_name=>'GAR_FECHA'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48939537429377237)
,p_db_column_name=>'GAR_DESC_MONEDA'
,p_display_order=>50
,p_column_identifier=>'H'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48938369006377225)
,p_db_column_name=>'GAR_COD_MONEDA'
,p_display_order=>60
,p_column_identifier=>'D'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48938437399377226)
,p_db_column_name=>'GAR_MONTO'
,p_display_order=>70
,p_column_identifier=>'E'
,p_column_label=>'Monto'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48938559921377227)
,p_db_column_name=>'GAR_ESTADO'
,p_display_order=>80
,p_column_identifier=>'F'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48939618233377238)
,p_db_column_name=>'GAR_DESC_ESTADO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(50975372184195662)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'509754'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'GARANT_SEQ_ID:GAR_TIP_GARANTIA:GAR_FECHA:GAR_COD_MONEDA:GAR_MONTO:GAR_ESTADO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48940708892377249)
,p_plug_name=>'Intereses'
,p_parent_plug_id=>wwv_flow_imp.id(51665072057045222)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select seq_id  interes_seq_id,',
'       c002 interes_cod_cliente,',
'       c003 interes_cod_moneda,',
'       c004 interes_porc_interes,',
'       m.descripcion interes_desc_moneda',
'    from APEX_COLLECTIONS',
'    left join monedas m on m.cod_moneda = c003',
'    where collection_name = ''COLEC_DATOS_INTERESES_CLIENTE'' and c002 = :P162_COD_CLIENTE;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Intereses'
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
 p_id=>wwv_flow_imp.id(48940870632377250)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:221:&SESSION.::&DEBUG.::P221_INTERES_SEQ_ID:#INTERES_SEQ_ID#'
,p_detail_link_text=>'<span aria-label="Editar"  width="25" height="25"><span class="fa fa-edit" aria-hidden="true" title="Editar"></span></span>'
,p_owner=>'OSCARGO'
,p_internal_uid=>48940870632377250
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51662975835045201)
,p_db_column_name=>'INTERES_SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Interes Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51663099104045202)
,p_db_column_name=>'INTERES_COD_CLIENTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Interes Cod Cliente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51663120708045203)
,p_db_column_name=>'INTERES_COD_MONEDA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51663385934045205)
,p_db_column_name=>'INTERES_DESC_MONEDA'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(51663278220045204)
,p_db_column_name=>'INTERES_PORC_INTERES'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>unistr('Porcentaje Inter\00E9s')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(51706364268320608)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'517064'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'INTERES_SEQ_ID:INTERES_COD_CLIENTE:INTERES_COD_MONEDA:INTERES_DESC_MONEDA:INTERES_PORC_INTERES'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58320737218298809)
,p_plug_name=>'Firmas'
,p_region_name=>'form-opciones'
,p_parent_plug_id=>wwv_flow_imp.id(40107105343414024)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P162_COD_PERSONA'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(58320954514298811)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(58320737218298809)
,p_button_name=>'BTN_FIRMA_PG_CHE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconRight:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'PG / CHE'
,p_button_redirect_url=>'f?p=&APP_ID.:259:&SESSION.::&DEBUG.::P259_TEXTO,P259_ORIGEN:&P162_COD_CLIENTE.,CLIENTE'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(280541258443066433)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(41295525129214623)
,p_button_name=>'BTN_VOLVER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_redirect_url=>'f?p=&APP_ID.:357:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-reply'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45075903796466407)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(41295525129214623)
,p_button_name=>'BTN_LIMPIAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Limpiar'
,p_button_redirect_url=>'f?p=&APP_ID.:162:&SESSION.::&DEBUG.::P162_SEQ_ID,P162_SEQ_ID_1,P162_SEQ_ID2,P162_COD_CLIENTE,P162_COD_PERSONA:,,,,'
,p_icon_css_classes=>'fa-window-x'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45078309044466431)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(47093072131156943)
,p_button_name=>'BTN_BUSCAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--hoverIconSpin:t-Button--pill:t-Button--padLeft:t-Button--padRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-refresh'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(58321004336298812)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(58320737218298809)
,p_button_name=>'BTN_MERCADERIA'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconRight:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'MERCADERIA'
,p_button_redirect_url=>'f?p=&APP_ID.:259:&SESSION.::&DEBUG.::P259_TEXTO,P259_ORIGEN:&P162_COD_CLIENTE.,MERCADERIAS'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48937000855377212)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(48936701916377209)
,p_button_name=>'BTN_IR_PAGINA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--pill:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Ir'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(58321271700298814)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(58320737218298809)
,p_button_name=>'BTN_FIRMA_STA'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconRight:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'FIRMA STA'
,p_button_redirect_url=>'f?p=&APP_ID.:259:&SESSION.::&DEBUG.::P259_TEXTO,P259_ORIGEN:&P162_COD_CLIENTE.,FIRMA_STA'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(280542066818066441)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(280541755768066438)
,p_button_name=>'BTN_CREAR_ACUERDO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconRight:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Crear Acuerdo'
,p_button_redirect_url=>'f?p=&APP_ID.:723:&SESSION.::&DEBUG.:723:P723_C_COD_CLIENTE,P723_PARAM_NRO_ACUERDO:&P162_COD_CLIENTE.,'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40113366528434736)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(41295525129214623)
,p_button_name=>'BTN_Actualizar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Actualizar'
,p_warn_on_unsaved_changes=>null
,p_confirm_message=>unistr('\00BFSeguro que quieres guardar los cambios realizados al cliente?')
,p_button_condition=>'P162_COD_CLIENTE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-edit'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(280542128067066442)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(280541755768066438)
,p_button_name=>'BTN_Consultar_Acuerdo'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconRight:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Consultar Acuerdo'
,p_button_redirect_url=>'f?p=&APP_ID.:733:&SESSION.::&DEBUG.::P733_COD_CLIENTE:&P162_COD_CLIENTE.'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41295645806214624)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(41295525129214623)
,p_button_name=>'BTN_AGREGAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Agregar'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P162_COD_PERSONA'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-window-plus'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(58321312523298815)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(58320737218298809)
,p_button_name=>'BTN_FIRMA_GARANTIA'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconRight:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'GARANTIA'
,p_button_redirect_url=>'f?p=&APP_ID.:259:&SESSION.::&DEBUG.::P259_TEXTO,P259_ORIGEN:&P162_COD_CLIENTE.,GARANTIAS'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(40113486873434737)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(41295525129214623)
,p_button_name=>'BTN_REGISTRAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Registrar'
,p_confirm_message=>unistr('\00BFSeguro que quieres registrar los cambios en la base de datos de clientes?')
,p_icon_css_classes=>'fa-database-play'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(58321469587298816)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(58320737218298809)
,p_button_name=>'BTN_FIRMA_CONTRATOS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconRight:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'CONTRATOS'
,p_button_redirect_url=>'f?p=&APP_ID.:259:&SESSION.::&DEBUG.::P259_TEXTO,P259_ORIGEN:&P162_COD_CLIENTE.,CONTRATOS'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43094822067013517)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(41297594521214643)
,p_button_name=>'BTN_AGREGAR_DIRECCION'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>unistr('Agregar Direcci\00F3n')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:204:&SESSION.::&DEBUG.::P204_DIR_COD_PERSONA:&P162_COD_PERSONA.'
,p_button_condition=>'P162_COD_PERSONA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-window-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(47092019598156933)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(47088832706156901)
,p_button_name=>'BTN_AGREGAR_TELEF'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>unistr('Agregar Tel\00E9fono')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:213:&SESSION.::&DEBUG.::P213_TEL_COD_PERSONA:&P162_COD_PERSONA.'
,p_button_condition=>'P162_COD_PERSONA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-window-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48939969707377241)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(48937883473377220)
,p_button_name=>'BTN_AGREGAR_GAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>unistr('Agregar Garant\00EDas')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:220:&SESSION.::&DEBUG.::P220_GAR_COD_CLIENTE:&P162_COD_CLIENTE.'
,p_button_condition=>'P162_COD_PERSONA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-window-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51664253825045214)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(48940708892377249)
,p_button_name=>'BTN_AGREGAR_INTERES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>unistr('Agregar Inter\00E9s')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:221:&SESSION.::&DEBUG.::P221_INTERES_COD_CLIENTE:&P162_COD_CLIENTE.'
,p_button_condition=>'P162_COD_PERSONA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-window-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(58323186970298833)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(48092340345927348)
,p_button_name=>'BTN_AGREGAR_DOC'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Agregar Documento'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:246:&SESSION.::&DEBUG.::P246_DOCUMENTO_COD_PERSONA:&P162_COD_PERSONA.'
,p_icon_css_classes=>'fa-window-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44045287213366345)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(41297594521214643)
,p_button_name=>'BTN_REGISTRAR_DIR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Registrar cambios en direcciones'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_confirm_message=>unistr('\00BFSeguro que quieres registrar los cambios en la base de datos de direcci\00F3n de clientes?')
,p_button_condition=>'P162_COD_PERSONA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-database-play'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(47092163258156934)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(47088832706156901)
,p_button_name=>'BTN_REGISTRAR_TELEF'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>unistr('Registrar Tel\00E9fonos')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_confirm_message=>unistr('\00BFSeguro que quieres registrar los cambios en la base de datos de tel\00E9fonos de clientes?')
,p_button_condition=>'P162_COD_PERSONA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-database-play'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48940075113377242)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(48937883473377220)
,p_button_name=>'BTN_REGISTRAR_GAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>unistr('Registrar Garant\00EDas')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_confirm_message=>unistr('\00BFSeguro que quieres registrar los cambios en la base de datos de garant\00EDas del cliente?')
,p_confirm_style=>'information'
,p_button_condition=>'P162_COD_PERSONA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-database-play'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51664369054045215)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(48940708892377249)
,p_button_name=>'BTN_REGISTRAR_INTERES'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>unistr('Registrar Inter\00E9s')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P162_COD_PERSONA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-database-play'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(58323280411298834)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(48092340345927348)
,p_button_name=>'BTN_REGISTRAR_DOC'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_image_alt=>'Registrar documento'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_confirm_message=>unistr('\00BFSeguro que quieres registrar los cambios en la base de datos de documentos del cliente?')
,p_confirm_style=>'information'
,p_icon_css_classes=>'fa-database-play'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(48372804617792527)
,p_branch_name=>'IR_A'
,p_branch_action=>'P162_URL'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'BRANCH_TO_URL_IDENT_BY_ITEM'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'IR_A'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40112271416434725)
,p_name=>'P162_SEQ_ID_1'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(40112076388434723)
,p_item_source_plug_id=>wwv_flow_imp.id(40112076388434723)
,p_source=>'SEQ_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40112364333434726)
,p_name=>'P162_FEC_ULT_MODIFICACION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(48936668286377208)
,p_item_source_plug_id=>wwv_flow_imp.id(40112076388434723)
,p_prompt=>'Fec. Ult. Modif.'
,p_source=>'FEC_ULT_MODIFICACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_read_only_when=>'P162_COD_PERSONA'
,p_read_only_when2=>'1'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40112400259434727)
,p_name=>'P162_FEC_ALTA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(48936668286377208)
,p_item_source_plug_id=>wwv_flow_imp.id(40112076388434723)
,p_prompt=>'Fec Alta'
,p_source=>'FEC_ALTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_colspan=>3
,p_read_only_when=>'P162_COD_PERSONA'
,p_read_only_when2=>'1'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40112504837434728)
,p_name=>'P162_FECHA_PRIMERA_COMPRA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(48936668286377208)
,p_item_source_plug_id=>wwv_flow_imp.id(40112076388434723)
,p_prompt=>'Primera Compra'
,p_source=>'FECHA_PRIMERA_COMPRA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_read_only_when=>'P162_COD_PERSONA'
,p_read_only_when2=>'1'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40112666688434729)
,p_name=>'P162_FEC_ULTIMA_COMPRA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(48936668286377208)
,p_item_source_plug_id=>wwv_flow_imp.id(40112076388434723)
,p_prompt=>unistr('\00DAltima Compra')
,p_source=>'FEC_ULTIMA_COMPRA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_read_only_when=>'P162_COD_PERSONA'
,p_read_only_when2=>'1'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40112723848434730)
,p_name=>'P162_DIAS_COBRO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(40112076388434723)
,p_item_source_plug_id=>wwv_flow_imp.id(40112076388434723)
,p_source=>'DIAS_COBRO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40112870794434731)
,p_name=>'P162_COD_MONEDA_LIMITE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(40112076388434723)
,p_item_source_plug_id=>wwv_flow_imp.id(40112076388434723)
,p_prompt=>'Moneda'
,p_source=>'COD_MONEDA_LIMITE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MONEDAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion as d,',
'       cod_moneda r',
'  from monedas',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40112997545434732)
,p_name=>'P162_LIMITE_CREDITO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(40112076388434723)
,p_item_source_plug_id=>wwv_flow_imp.id(40112076388434723)
,p_prompt=>'Limite Credito'
,p_source=>'LIMITE_CREDITO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41145822464693413)
,p_name=>'P162_SEQ_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_item_source_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_source=>'SEQ_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41145921013693414)
,p_name=>'P162_COD_EMPRESA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_item_source_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_source=>'COD_EMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41146089439693415)
,p_name=>'P162_COD_CLIENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(47093072131156943)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_cliente||'' - ''||nombre D, ',
'         cod_cliente R',
'    FROM cc_clientes c, personas p',
'   WHERE c.cod_empresa = :P_COD_EMPRESA ',
'     AND c.cod_persona = p.cod_persona',
'ORDER BY nombre;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_colspan=>10
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41146112052693416)
,p_name=>'P162_COD_PERSONA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_item_source_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_prompt=>'Persona'
,p_source=>'COD_PERSONA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PERSONAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_persona || '' - '' || ltrim( rtrim( nvl( nombre, nomb_fantasia ) ) ) d, cod_persona r ',
'from personas',
'order by 1;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_read_only_when=>'P162_COD_CLIENTE'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
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
 p_id=>wwv_flow_imp.id(41146278938693417)
,p_name=>'P162_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_item_source_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_prompt=>'Estado'
,p_source=>'ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:INACTIVO;I,ACTIVO;A,DEMANDA;D,BLOQUEDO;B,CREDITO BLOQUEADO;C'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41146335625693418)
,p_name=>'P162_FEC_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_item_source_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_prompt=>'Fecha Estado'
,p_source=>'FEC_ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_display_when=>'P162_COD_PERSONA'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_read_only_when=>'P162_COD_PERSONA'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41146409530693419)
,p_name=>'P162_COD_CAUSAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_item_source_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_prompt=>'Causal Bloq'
,p_source=>'COD_CAUSAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CAUSALES'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41146569339693420)
,p_name=>'P162_COMENTARIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_item_source_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_prompt=>'Comentario'
,p_source=>'COMENTARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41146637839693421)
,p_name=>'P162_COD_VENDEDOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_item_source_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_prompt=>'Vendedor'
,p_source=>'COD_VENDEDOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_VENDEDORES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  F.COD_VENDEDOR||'' - ''||P.NOMBRE nombre,F.COD_VENDEDOR FROM FV_VENDEDORES F, PERSONAS P',
'WHERE F.COD_EMPRESA=:P_COD_EMPRESA',
'AND F.COD_PERSONA=P.COD_PERSONA',
'AND NVL(F.ESTADO,''I'')NOT IN ''I''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41146752774693422)
,p_name=>'P162_COD_COBRADOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_item_source_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_prompt=>'Cod Cobrador'
,p_source=>'COD_COBRADOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_COBRADOR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NOMBRE as d,',
'       C.COD_COBRADOR as r',
'  from CC_COBRADORES C, PERSONAS P',
'WHERE C.COD_EMPRESA=:P_COD_EMPRESA',
'AND C.COD_PERSONA=P.COD_PERSONA',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41146895914693423)
,p_name=>'P162_COD_ZONA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_item_source_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_prompt=>'Zona'
,p_source=>'COD_ZONA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ZONA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_zona||'' - ''||descripcion D, ',
'         cod_zona R',
'    FROM zonas_geograficas ',
'ORDER BY 1;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41146980707693424)
,p_name=>'P162_NRO_ORDEN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_item_source_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_prompt=>'Nro Orden'
,p_source=>'NRO_ORDEN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41147010266693425)
,p_name=>'P162_ZONIFICACION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_item_source_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_prompt=>unistr('Ubicaci\00F3n')
,p_source=>'ZONIFICACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:CAPITAL;CAPITAL,INTERIOR;INTERIOR'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'N/A'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41147115599693426)
,p_name=>'P162_COD_CORPORACION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_item_source_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_prompt=>unistr('Corporaci\00F3n')
,p_source=>'COD_CORPORACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LVCORPORACION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_corporacion||'' - ''||descripcion D, ',
'         cod_corporacion R',
'    FROM cc_corporaciones ',
'   WHERE cod_empresa = :P_COD_EMPRESA ',
'ORDER BY descripcion;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41147283247693427)
,p_name=>'P162_COD_LISTA_PRECIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_item_source_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_prompt=>'Lista Precio'
,p_source=>'COD_LISTA_PRECIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_LISTA_PRECIOS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPCION||''(''||COD_LISTA_PRECIO||'')'' D, COD_LISTA_PRECIO from VT_LISTAS_PRECIOS_CAB',
'WHERE COD_EMPRESA=:p_cod_empresa',
'AND ESTADO=''A''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41147327154693428)
,p_name=>'P162_COD_SUCURSAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_item_source_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_prompt=>'Suc. Autoriza'
,p_source=>'COD_SUCURSAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUCURSALES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_sucursal||'' - ''||descripcion L, ',
'         cod_sucursal V',
'    FROM sucursales ',
'   WHERE cod_empresa = :P_COD_EMPRESA',
'ORDER BY descripcion'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41147440887693429)
,p_name=>'P162_COD_CLIENTE_ANTERIOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_item_source_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_prompt=>unistr('C\00F3d. Anterior')
,p_source=>'COD_CLIENTE_ANTERIOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41148346918693438)
,p_name=>'P162_SEQ_ID2'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(41148146305693436)
,p_item_source_plug_id=>wwv_flow_imp.id(41148146305693436)
,p_source=>'SEQ_ID2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41148414010693439)
,p_name=>'P162_NRO_INSCRIPCION_AD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(45075720748466405)
,p_item_source_plug_id=>wwv_flow_imp.id(41148146305693436)
,p_prompt=>'Nro. Insc. Ad.'
,p_source=>'NRO_INSCRIPCION_AD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41148558057693440)
,p_name=>'P162_FEC_DEMANDA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(45075720748466405)
,p_item_source_plug_id=>wwv_flow_imp.id(41148146305693436)
,p_prompt=>'Fecha Demanda'
,p_source=>'FEC_DEMANDA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41148672100693441)
,p_name=>'P162_TIP_DOCUMENTO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(45075720748466405)
,p_item_source_plug_id=>wwv_flow_imp.id(41148146305693436)
,p_prompt=>'Tipo Documento'
,p_source=>'TIP_DOCUMENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_TIP_DOC||'' - ''||DESCRIPCION, COD_TIP_DOC',
'  FROM cc_tipo_documentacion;'))
,p_cSize=>30
,p_cMaxlength=>4000
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41148740145693442)
,p_name=>'P162_PLAZO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(45075720748466405)
,p_item_source_plug_id=>wwv_flow_imp.id(41148146305693436)
,p_prompt=>'Plazo'
,p_source=>'PLAZO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41148860786693443)
,p_name=>'P162_TIP_CLIENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(45075720748466405)
,p_item_source_plug_id=>wwv_flow_imp.id(41148146305693436)
,p_prompt=>'Tip Cliente'
,p_source=>'TIP_CLIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_TIP_CLIENTE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_tip_cliente||'' - ''||descripcion D, ',
'         cod_tip_cliente R',
'    FROM cc_tipo_cliente ',
'ORDER BY 1;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41148975066693444)
,p_name=>'P162_COD_SUB_TIPO_CLIENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(45075720748466405)
,p_item_source_plug_id=>wwv_flow_imp.id(41148146305693436)
,p_prompt=>'SubTipo Cliente'
,p_source=>'COD_SUB_TIPO_CLIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SUB_TIPO_CLIENTE'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41149051479693445)
,p_name=>'P162_COD_CONDICION_VENTA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(45075720748466405)
,p_item_source_plug_id=>wwv_flow_imp.id(41148146305693436)
,p_prompt=>'Cond. Venta'
,p_source=>'COD_CONDICION_VENTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CONDICION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_condicion_venta||'' - ''||descripcion D, ',
'       cod_condicion_venta R',
'  FROM cc_condiciones_ventas ',
' WHERE cod_empresa=:P_COD_EMPRESA;',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41149106619693446)
,p_name=>'P162_OBS_COBRANZAS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(45075720748466405)
,p_item_source_plug_id=>wwv_flow_imp.id(41148146305693436)
,p_prompt=>'Obs Cobranzas'
,p_source=>'OBS_COBRANZAS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_colspan=>12
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41149280633693447)
,p_name=>'P162_FECHA_LIMITE_FACTURACION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(45075720748466405)
,p_item_source_plug_id=>wwv_flow_imp.id(41148146305693436)
,p_prompt=>unistr('Fec Facturaci\00F3n')
,p_source=>'FECHA_LIMITE_FACTURACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-bottom-sm'
,p_is_persistent=>'N'
,p_help_text=>unistr('Fecha tope de facturaci\00F3n (1 al 30)')
,p_attribute_01=>'1'
,p_attribute_02=>'30'
,p_attribute_03=>'center'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41149355689693448)
,p_name=>'P162_IND_PREFERENCIAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(45075869315466406)
,p_item_source_plug_id=>wwv_flow_imp.id(41148146305693436)
,p_prompt=>'Relacionado al directorio'
,p_source=>'IND_PREFERENCIAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41149466839693449)
,p_name=>'P162_NRO_JERARQUIA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(45075869315466406)
,p_item_source_plug_id=>wwv_flow_imp.id(41148146305693436)
,p_prompt=>'Calificacion Cobranza'
,p_source=>'NRO_JERARQUIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion d, nro_jerarquia c',
'      ',
'         from cc_jerarquias',
'         where cod_empresa   = :p_cod_empresa',
'           '))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'readonly'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41149590722693450)
,p_name=>'P162_IND_EMP_ASOCIADA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(45075869315466406)
,p_item_source_plug_id=>wwv_flow_imp.id(41148146305693436)
,p_prompt=>'Empresa Asociada'
,p_source=>'IND_EMP_ASOCIADA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41293398494214601)
,p_name=>'P162_COD_SCORING'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(45075869315466406)
,p_item_source_plug_id=>wwv_flow_imp.id(41148146305693436)
,p_prompt=>'Scoring'
,p_source=>'COD_SCORING'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41293411711214602)
,p_name=>'P162_IND_SEGUIMIENTOS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(45075869315466406)
,p_item_source_plug_id=>wwv_flow_imp.id(41148146305693436)
,p_prompt=>'Seguimientos'
,p_source=>'IND_SEGUIMIENTOS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41293528900214603)
,p_name=>'P162_OBS_SEGUIMIENTO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(45075869315466406)
,p_item_source_plug_id=>wwv_flow_imp.id(41148146305693436)
,p_prompt=>unistr('Observaci\00F3n seguimiento')
,p_source=>'OBS_SEGUIMIENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>8
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41293631269214604)
,p_name=>'P162_OBSERVACION_PEDIDO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(45075869315466406)
,p_item_source_plug_id=>wwv_flow_imp.id(41148146305693436)
,p_prompt=>unistr('Observaci\00F3n 2daH Pedido')
,p_source=>'OBSERVACION_PEDIDO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_colspan=>8
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41293703088214605)
,p_name=>'P162_INTESINDAD_COB'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(45075869315466406)
,p_item_source_plug_id=>wwv_flow_imp.id(41148146305693436)
,p_prompt=>'Intesindad Cob'
,p_source=>'CODIGO_INTESINDAD_COBRANZA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_display_when=>'P162_COD_PERSONA'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41293857976214606)
,p_name=>'P162_IND_REMISION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(45075869315466406)
,p_item_source_plug_id=>wwv_flow_imp.id(41148146305693436)
,p_prompt=>unistr('4ta Copia Fac. Remisi\00F3n')
,p_source=>'IND_REMISION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41293909920214607)
,p_name=>'P162_SIN_CV'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(45075869315466406)
,p_item_source_plug_id=>wwv_flow_imp.id(41148146305693436)
,p_prompt=>'Imp. sin cond. venta'
,p_source=>'SIN_CV'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41294009235214608)
,p_name=>'P162_IMPRIMIR_DIR_SUCURSAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(45075869315466406)
,p_item_source_plug_id=>wwv_flow_imp.id(41148146305693436)
,p_prompt=>'Imp. direc sucursal'
,p_source=>'IMPRIMIR_DIR_SUCURSAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41294124269214609)
,p_name=>'P162_IND_IMPRIMIR_BARRA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(45075869315466406)
,p_item_source_plug_id=>wwv_flow_imp.id(41148146305693436)
,p_prompt=>'Imp. barra factura'
,p_source=>'IND_IMPRIMIR_BARRA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41294202976214610)
,p_name=>'P162_IND_LLEVA_OC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(45075869315466406)
,p_item_source_plug_id=>wwv_flow_imp.id(41148146305693436)
,p_prompt=>'Lleva OC'
,p_source=>'IND_LLEVA_OC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41294353945214611)
,p_name=>'P162_IND_IMPRIMIR_UNICO_PAGARE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(45075869315466406)
,p_item_source_plug_id=>wwv_flow_imp.id(41148146305693436)
,p_prompt=>unistr('Impr. \00FAnico pagar\00E9')
,p_source=>'IND_IMPRIMIR_UNICO_PAGARE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41294420447214612)
,p_name=>'P162_IND_GEOREFERENCIADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(45075869315466406)
,p_item_source_plug_id=>wwv_flow_imp.id(41148146305693436)
,p_prompt=>'Georeferenciado'
,p_source=>'IND_GEOREFERENCIADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41294520147214613)
,p_name=>'P162_IND_FINANCIACION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(45075869315466406)
,p_item_source_plug_id=>wwv_flow_imp.id(41148146305693436)
,p_prompt=>'Sin gasto financiacion'
,p_source=>'IND_FINANCIACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41294611567214614)
,p_name=>'P162_PAGARE_POR_FACTURA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(45075869315466406)
,p_item_source_plug_id=>wwv_flow_imp.id(41148146305693436)
,p_prompt=>unistr('Pagar\00E9 Por Factura')
,p_source=>'PAGARE_POR_FACTURA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41294707484214615)
,p_name=>'P162_IND_ENVIA_FACTURA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(45075869315466406)
,p_item_source_plug_id=>wwv_flow_imp.id(41148146305693436)
,p_prompt=>unistr('Env\00EDa factura por email')
,p_source=>'IND_ENVIA_FACTURA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45079533318466443)
,p_name=>'P162_OPCION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_item_source_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_source=>'OPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45080131174466449)
,p_name=>'P162_ID_REGISTRO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_item_source_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_source=>'ID_REGISTRO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
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
 p_id=>wwv_flow_imp.id(48087931965927304)
,p_name=>'P162_MESSAGE_ERROR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(47093072131156943)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48372774580792526)
,p_name=>'P162_URL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(48936701916377209)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48373225901792531)
,p_name=>'P162_PARAMETROS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(48936701916377209)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48936940702377211)
,p_name=>'P162_SELEC_PAGINA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(48936701916377209)
,p_prompt=>unistr('Seleccionar p\00E1gina')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>unistr('STATIC2:Personas;102,Autorizados para Recibir Merdar\00EDas;129,Referencias Comerciales;108,Tarjetas de Cr\00E9dito;110,Tarjetas de D\00E9bito;113,Seguros Contratados;91,Resumen de Datos Financieros,Rodados,Muebles;202,Observaciones,Descuentos Excepcionales;170,')
||unistr('Sucursales Clientes;171,Comprobantes Presentados;167,Solicitud de Cr\00E9ditos,Cr\00E9dito por Descuento CPH;122,Seguimiento Abogados;94,Registro de Cheques;163,Balance Cliente;114,Calificaci\00F3n Cliente;164')
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_07=>unistr('Ir a p\00E1gina de')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51666510418045237)
,p_name=>'P162_IMP_BARRAS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(48936668286377208)
,p_item_source_plug_id=>wwv_flow_imp.id(40112076388434723)
,p_prompt=>'Clientes autorizados'
,p_source=>'IMP_BARRAS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51666642085045238)
,p_name=>'P162_TIPO_IMPUESTO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(48936668286377208)
,p_item_source_plug_id=>wwv_flow_imp.id(40112076388434723)
,p_prompt=>'Tipo Impuesto'
,p_source=>'TIPO_IMPUESTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC:Gravado;G,Exento;E,Regimen Turismo;T'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51666796167045239)
,p_name=>'P162_FECHA_SEGUIMIENTO_CLIENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(48936668286377208)
,p_item_source_plug_id=>wwv_flow_imp.id(40112076388434723)
,p_prompt=>'Fecha Seguimiento'
,p_source=>'FECHA_SEGUIMIENTO_CLIENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51666874676045240)
,p_name=>'P162_AGENTE_GPV'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_prompt=>'Agente GPV'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when=>'P162_COD_PERSONA'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51666945186045241)
,p_name=>'P162_AGENTE_COBRO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_prompt=>'Agente Cobro'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when=>'P162_COD_PERSONA'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51667028105045242)
,p_name=>'P162_RESP_GEST_COBRO'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_prompt=>'Resp Gest Cobro'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when=>'P162_COD_PERSONA'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51667252597045244)
,p_name=>'P162_AGENTE_CREDITO'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_prompt=>'Agente Credito'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when=>'P162_COD_PERSONA'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51667381143045245)
,p_name=>'P162_PERS_SECTOR'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(41145673725693411)
,p_prompt=>'Sector'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_SECTOR_ECO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COD_SECTOR||'' - ''||DESCRIPCION D,',
'	   COD_SECTOR R,',
'       DESCRIPCION',
'  FROM SECTORES_ECON',
' ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_display_when=>'P162_COD_PERSONA'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_read_only_when=>'P162_COD_PERSONA'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58320096595298802)
,p_name=>'P162_FECHA_VENC_LINEA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(40112076388434723)
,p_item_source_plug_id=>wwv_flow_imp.id(40112076388434723)
,p_prompt=>'Fecha Venc Linea'
,p_source=>'FECHA_VENC_LINEA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_cMaxlength=>4000
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58320144561298803)
,p_name=>'P162_SALDO_CTA_CTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(40112076388434723)
,p_prompt=>'Cuenta Corriente'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_display_when=>'P162_COD_CLIENTE'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58320298948298804)
,p_name=>'P162_CHEQUE_DEVUELTO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(40112076388434723)
,p_prompt=>'Cheques Devueltos'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_display_when=>'P162_COD_CLIENTE'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58320382504298805)
,p_name=>'P162_VALOR_DEPOSITAR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(40112076388434723)
,p_prompt=>'Valor a Depositar'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_display_when=>'P162_COD_CLIENTE'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58320482274298806)
,p_name=>'P162_SALDO_ACTUAL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(40112076388434723)
,p_prompt=>'Saldo Actual'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_display_when=>'P162_COD_CLIENTE'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58320538543298807)
,p_name=>'P162_FACTURACION_POSIBLE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(40112076388434723)
,p_prompt=>'Facturacion Posible'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_display_when=>'P162_COD_CLIENTE'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58321674744298818)
,p_name=>'P162_VALOR_CARPETA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(45075869315466406)
,p_prompt=>'Valor Carpeta'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_display_when=>'P162_COD_PERSONA'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59762056407338003)
,p_name=>'P162_RUTA_IMAGEN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(58320737218298809)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(280541527439066436)
,p_name=>'P162_SEGMENTACION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(45075720748466405)
,p_item_source_plug_id=>wwv_flow_imp.id(41148146305693436)
,p_prompt=>'Segmentacion Cliente'
,p_source=>'COD_SEGMENTO_LINEA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select descripcion_segmento , cod_tip_segmento from cc_segmentacion_linea where cod_empresa=:p_cod_empresa'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>12
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(280541802577066439)
,p_name=>'P162_PORCENTAJE_ACUERDO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(280541755768066438)
,p_item_source_plug_id=>wwv_flow_imp.id(41148146305693436)
,p_prompt=>'Porcentaje Acuerdo'
,p_source=>'PORCENTAJE_ACUERDO_COMERCIAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(280541927509066440)
,p_name=>'P162_IND_ACUERDO_COMERCIAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(280541755768066438)
,p_item_source_plug_id=>wwv_flow_imp.id(41148146305693436)
,p_prompt=>'Acuerdo Comercial'
,p_source=>'IND_ACUERDO_COMERCIAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186576483263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(280542764217066448)
,p_name=>'P162_BLOQUEA_ACUERDO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(47093072131156943)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(703387893511265801)
,p_name=>'P162_PERMISO_ACUERDO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(280541755768066438)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(51667402260045246)
,p_validation_name=>'VALIDA_REGISTRO'
,p_validation_sequence=>10
,p_validation=>'P162_OPCION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'No se encontraron actualizaciones por registrar'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_imp.id(40113486873434737)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(40113616047434739)
,p_name=>'DA_ACTUALIZA'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(40113366528434736)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40113709570434740)
,p_event_id=>wwv_flow_imp.id(40113616047434739)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_COLLECTION.update_member(p_collection_name => ''COLEC_DATOS_CLIENTE_1'',',
'        p_seq  => :P162_SEQ_ID,',
'        p_c001 => :P162_COD_EMPRESA,',
'        p_c002 => :P162_COD_CLIENTE,',
'        p_c003 => :P162_COD_PERSONA,',
'        p_c004 => :P162_ESTADO,',
'        p_c005 => :P162_FEC_ESTADO,',
'        p_c006 => :P162_COD_CAUSAL,',
'        p_c007 => :P162_COMENTARIO,',
'        p_c008 => :P_COD_VENDEDOR,',
'        p_c009 => :P162_COD_COBRADOR,',
'        p_c010 => :P162_COD_ZONA,',
'        p_c011 => :P162_NRO_ORDEN,',
'        p_c012 => :P162_ZONIFICACION,',
'        p_c013 => :P162_COD_CORPORACION,',
'        p_c014 => :P162_COD_LISTA_PRECIO,',
'        p_c015 => :P162_COD_SUCURSAL,',
'        p_c016 => :P162_COD_CLIENTE_ANTERIOR,',
'        p_c017 => :P162_FEC_ULT_MODIFICACION,',
'        p_c018 => :P162_FEC_ALTA,',
'        p_c019 => :P162_FECHA_PRIMERA_COMPRA,',
'        p_c020 => :P162_FEC_ULTIMA_COMPRA,',
'        p_c021 => :P162_DIAS_COBRO,',
'        p_c022 => :P162_COD_MONEDA_LIMITE,',
'        p_c023 => :P162_LIMITE_CREDITO,',
'        p_c027 => :P162_FECHA_VENC_LINEA,',
'        p_c028 => :P162_IMP_BARRAS,',
'        p_c029 => :P162_TIPO_IMPUESTO,',
'        p_c030 => :P162_FECHA_SEGUIMIENTO_CLIENTE,',
'        p_c048 => :P_COD_USUARIO,',
'        P_c049 => :P162_ID_REGISTRO,',
'      p_c050 => ''U'');',
':P162_OPCION := ''U'';',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     RAISE_APPLICATION_ERROR(-20001,SQLERRM);',
'END;'))
,p_attribute_02=>'P162_COD_EMPRESA,P162_COD_CLIENTE,P162_COD_PERSONA,P162_ESTADO,P162_FEC_ESTADO,P162_COD_CAUSAL,P162_COMENTARIO,P162_COD_VENDEDOR,P162_COD_COBRADOR,P162_COD_ZONA,P162_NRO_ORDEN,P162_ZONIFICACION,P162_COD_CORPORACION,P162_COD_LISTA_PRECIO,P162_COD_SUCU'
||'RSAL,P162_COD_CLIENTE_ANTERIOR,P162_FEC_ULT_MODIFICACION,P162_FEC_ALTA,P162_FECHA_PRIMERA_COMPRA,P162_FEC_ULTIMA_COMPRA,P162_DIAS_COBRO,P162_COD_MONEDA_LIMITE,P162_LIMITE_CREDITO,P162_SEQ_ID,P162_ID_REGISTRO,P162_IMP_BARRAS,P162_FECHA_SEGUIMIENTO_CLI'
||'ENTE,P162_TIPO_IMPUESTO,P162_FECHA_VENC_LINEA,P_COD_USUARIO,P162_SEGMENTACION'
,p_attribute_03=>'P162_OPCION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45079604980466444)
,p_event_id=>wwv_flow_imp.id(40113616047434739)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_COLLECTION.update_member(p_collection_name => ''COLEC_DATOS_CLIENTE_2'',',
'            p_seq  => :P162_SEQ_ID,',
'            p_c001 => :P162_COD_EMPRESA,',
'            p_c002 => :P162_COD_CLIENTE,',
'            p_c003 => :P162_COD_PERSONA,',
'            p_c004 => :P162_NRO_INSCRIPCION_AD,',
'            p_c005 => :P162_FEC_DEMANDA,',
'            p_c006 => :P162_TIP_DOCUMENTO,',
'            p_c007 => :P162_PLAZO,',
'            p_c008 => :P162_TIP_CLIENTE,',
'            p_c009 => :P162_COD_SUB_TIPO_CLIENTE,',
'            p_c010 => :P162_COD_CONDICION_VENTA,',
'            p_c011 => :P162_OBS_COBRANZAS,',
'            p_c012 => :P162_FECHA_limite_FACTURACION,',
'            p_c013 => :P162_IND_PREFERENCIAL,',
'            p_c014 => :P162_NRO_JERARQUIA,',
'            p_c015 => :P162_IND_EMP_ASOCIADA,',
'            p_c016 => :P162_COD_SCORING,',
'            p_c017 => :P162_IND_SEGUIMIENTOS,',
'            p_c018 => :P162_OBS_SEGUIMIENTO,',
'            p_c019 => :P162_OBSERVACION_PEDIDO,',
'            p_c020 => :P162_INTESINDAD_COB,',
'            p_c021 => :P162_IND_REMISION,',
'            p_c022 => :P162_SIN_CV,',
'            p_c023 => :P162_IMPRIMIR_DIR_SUCURSAL,',
'            p_c024 => :P162_IND_IMPRIMIR_BARRA,',
'            p_c025 => :P162_IND_LLEVA_OC,',
'            p_c026 => :P162_IND_IMPRIMIR_UNICO_PAGARE,',
'            p_c027 => :P162_IND_GEOREFERENCIADO,',
'            p_c028 => :P162_IND_FINANCIACION,',
'            p_c029 => :P162_PAGARE_POR_FACTURA,',
'            p_c030 => :P162_IND_ENVIA_FACTURA,',
'            p_c031 => :P162_SEGMENTACION,',
'            p_c032 => :P162_IND_ACUERDO_COMERCIAL,',
'            p_c033 => :P162_PORCENTAJE_ACUERDO,                        ',
'            p_c050 => ''U'');',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     RAISE_APPLICATION_ERROR(-20001,SQLERRM);',
'END;'))
,p_attribute_02=>'P162_COD_EMPRESA,P162_COD_CLIENTE,P162_COD_PERSONA,P162_NRO_INSCRIPCION_AD,P162_FEC_DEMANDA,P162_TIP_DOCUMENTO,P162_PLAZO,P162_TIP_CLIENTE,P162_COD_SUB_TIPO_CLIENTE,P162_COD_CONDICION_VENTA,P162_OBS_COBRANZAS,P162_FECHA_LIMITE_FACTURACION,P162_IND_PR'
||'EFERENCIAL,P162_NRO_JERARQUIA,P162_IND_EMP_ASOCIADA,P162_COD_SCORING,P162_IND_SEGUIMIENTOS,P162_OBS_SEGUIMIENTO,P162_OBSERVACION_PEDIDO,P162_CODIGO_INTESINDAD_COBRANZA,P162_IND_REMISION,P162_SIN_CV,P162_IMPRIMIR_DIR_SUCURSAL,P162_IND_IMPRIMIR_BARRA,P'
||'162_IND_LLEVA_OC,P162_IND_IMPRIMIR_UNICO_PAGARE,P162_IND_GEOREFERENCIADO,P162_IND_FINANCIACION,P162_PAGARE_POR_FACTURA,P162_IND_ENVIA_FACTURA,P162_SEQ_ID,P162_SEGMENTACION,P162_IND_ACUERDO_COMERCIAL,P162_PORCENTAJE_ACUERDO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45080200588466450)
,p_event_id=>wwv_flow_imp.id(40113616047434739)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Ahora debes registrarlos en la base de datos.'
,p_attribute_02=>'Datos actualizados'
,p_attribute_03=>'success'
,p_attribute_04=>'fa-smile'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43094455162013513)
,p_name=>'DA_CLOSE_EDIT_DIRECCION'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(41297594521214643)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43094522372013514)
,p_event_id=>wwv_flow_imp.id(43094455162013513)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(41297594521214643)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44045728308366350)
,p_name=>'DA_REGISTRAR_DIR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(44045287213366345)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45075348885466401)
,p_event_id=>wwv_flow_imp.id(44045728308366350)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare v_cantidad numeric(3);',
'begin',
'    select count(c017) INTO v_cantidad from APEX_COLLECTIONS where COLLECTION_NAME = ''COLEC_DATOS_CLIENTE_DIRECCIONES''',
'        and c017 IN(''I'',''U'');',
'    if v_cantidad is not null and v_cantidad > 0 then',
'        CCCLIENT.sp_registrar_direcciones(pi_cod_persona => :P162_COD_PERSONA);',
'    else',
'        RAISE_APPLICATION_ERROR(-20001,''No se detectaron cambios en los datos'');',
'    end if;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     RAISE_APPLICATION_ERROR(-20001,SQLERRM);',
'END;'))
,p_attribute_02=>'P162_COD_PERSONA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45075491652466402)
,p_event_id=>wwv_flow_imp.id(44045728308366350)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Los cambios fueron registrados correctamente.'
,p_attribute_02=>unistr('Confirmaci\00F3n de registro')
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51664915341045221)
,p_event_id=>wwv_flow_imp.id(44045728308366350)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45079861112466446)
,p_name=>'DA_REGISTRAR'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(40113486873434737)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45079908715466447)
,p_event_id=>wwv_flow_imp.id(45079861112466446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*begin',
':P162_MESSAGE_ERROR := null;',
'    select c050 into :P162_OPCION from APEX_COLLECTIONS ',
'           where COLLECTION_NAME = ''COLEC_DATOS_CLIENTE_1'' and seq_id = 1;',
'    if (:P162_OPCION is null) then',
'        RAISE_APPLICATION_ERROR(-20001,''No se ha realizado cambios en los datos del cliente'');',
'    else ',
'        CCCLIENT.sp_registrar_datos_cliente(:P162_SEQ_ID);',
'    end if;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     :P162_MESSAGE_ERROR := ''Error al registrar: ''||SQLERRM;',
'END;*/ null;'))
,p_attribute_02=>'P162_OPCION,P162_SEQ_ID,P162_MESSAGE_ERROR'
,p_attribute_03=>'P162_MESSAGE_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48088501496927310)
,p_event_id=>wwv_flow_imp.id(45079861112466446)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P162_MESSAGE_ERROR.'
,p_attribute_02=>'Mensaje del sistema'
,p_attribute_03=>'danger'
,p_attribute_04=>'fa-frown'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P162_MESSAGE_ERROR'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_server_condition_expr1=>'P162_COD_CLIENTE'
,p_server_condition_expr2=>'1000'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47091858185156931)
,p_name=>'DA_CLOSE_EDIT_TELEF'
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(47088832706156901)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47091950337156932)
,p_event_id=>wwv_flow_imp.id(47091858185156931)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(47088832706156901)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47092763381156940)
,p_name=>'DA_REGISTRAR_TELEF'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(47092163258156934)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47092896828156941)
,p_event_id=>wwv_flow_imp.id(47092763381156940)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare v_cantidad numeric(3);',
'begin',
'    select count(c050) INTO v_cantidad from APEX_COLLECTIONS where COLLECTION_NAME = ''COLEC_DATOS_CLIENTE_TELEFONOS''',
'        and c050 IN(''I'',''U'');',
'    if v_cantidad is not null and v_cantidad > 0 then',
'        CCCLIENT.sp_registrar_telefonos(pi_cod_persona => :P162_COD_PERSONA);',
'    else',
'        RAISE_APPLICATION_ERROR(-20001,''No se detectaron cambios en los datos'');',
'    end if;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     RAISE_APPLICATION_ERROR(-20001,SQLERRM);',
'END;'))
,p_attribute_02=>'P162_COD_PERSONA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47092979233156942)
,p_event_id=>wwv_flow_imp.id(47092763381156940)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Los cambios fueron registrados correctamente.'
,p_attribute_02=>unistr('Confirmaci\00F3n de registro')
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47093100882156944)
,p_name=>'DA_VALIDA_PERSONA'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P162_COD_PERSONA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47093275411156945)
,p_event_id=>wwv_flow_imp.id(47093100882156944)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare v_aux number(5);',
'begin',
'    select count(*) into v_aux  from cc_clientes where cod_empresa = :P_COD_EMPRESA and cod_persona = :P162_COD_PERSONA;',
'    if v_aux > 0 then',
'        RAISE_APPLICATION_ERROR(-20001,''La persona seleccionada ya posee cliente relacionado'');',
'        :P162_COD_PERSONA := null;',
'    end if;',
'end;'))
,p_attribute_02=>'P162_COD_PERSONA,P_COD_EMPRESA'
,p_attribute_03=>'P162_COD_PERSONA'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P162_COD_CLIENTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47093579110156948)
,p_name=>'DA_AGREGAR_CLIENTE'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(41295645806214624)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47093631457156949)
,p_event_id=>wwv_flow_imp.id(47093579110156948)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P162_MESSAGE_ERROR := null;',
'    if :P162_COD_PERSONA is null then',
'        :P162_MESSAGE_ERROR := ''Debes completar los campos obligatorios'';',
'    else',
'        APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_DATOS_CLIENTE_1'');',
'        APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_DATOS_CLIENTE_2'');',
'        APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_DATOS_CLIENTE_DIRECCIONES'');',
'        APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_DATOS_CLIENTE_TELEFONOS'');',
'        APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_DATOS_IDENT_PERSONAS'');',
'        APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_DATOS_GARANTIA_CLIENTE'');',
'        APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_DATOS_INTERESES_CLIENTE'');',
'        APEX_COLLECTION.add_member(p_collection_name => ''COLEC_DATOS_CLIENTE_1'',',
'            p_c001 => :P_COD_EMPRESA,',
'            p_c003 => :P162_COD_PERSONA,',
'            p_c004 => :P162_ESTADO,',
'            p_c005 => :P162_FEC_ESTADO,',
'            p_c006 => :P162_COD_CAUSAL,',
'            p_c007 => :P162_COMENTARIO,',
'            p_c008 => :P_COD_VENDEDOR,',
'            p_c009 => :P162_COD_COBRADOR,',
'            p_c010 => :P162_COD_ZONA,',
'            p_c011 => :P162_NRO_ORDEN,',
'            p_c012 => :P162_ZONIFICACION,',
'            p_c013 => :P162_COD_CORPORACION,',
'            p_c014 => :P162_COD_LISTA_PRECIO,',
'            p_c015 => :P162_COD_SUCURSAL,',
'            p_c016 => :P162_COD_CLIENTE_ANTERIOR,',
'            p_c017 => :P162_FEC_ULT_MODIFICACION,',
'            p_c018 => :P162_FEC_ALTA,',
'            p_c019 => :P162_FECHA_PRIMERA_COMPRA,',
'            p_c020 => :P162_FEC_ULTIMA_COMPRA,',
'            p_c021 => :P162_DIAS_COBRO,',
'            p_c022 => :P162_COD_MONEDA_LIMITE,',
'            p_c023 => :P162_LIMITE_CREDITO,',
'            p_c028 => :P162_IMP_BARRAS,',
'            p_c029 => :P162_TIPO_IMPUESTO,',
'            p_c030 => :P162_FECHA_SEGUIMIENTO_CLIENTE,',
'            p_c031 => :P162_COD_SEGMENTO_LINEA,',
'            p_c048 => :P_COD_USUARIO,',
'            P_c049 => :P162_ID_REGISTRO,',
'          p_c050 => ''I'');',
'        :P162_OPCION := ''I'';',
'    end if;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    :P162_MESSAGE_ERROR := ''Error: ''||SQLERRM;',
'END;'))
,p_attribute_02=>'P162_COD_EMPRESA,P162_COD_CLIENTE,P162_COD_PERSONA,P162_ESTADO,P162_FEC_ESTADO,P162_COD_CAUSAL,P162_COMENTARIO,P162_COD_VENDEDOR,P162_COD_COBRADOR,P162_COD_ZONA,P162_NRO_ORDEN,P162_ZONIFICACION,P162_COD_CORPORACION,P162_COD_LISTA_PRECIO,P162_COD_SUCU'
||'RSAL,P162_COD_CLIENTE_ANTERIOR,P162_FEC_ULT_MODIFICACION,P162_FEC_ALTA,P162_FECHA_PRIMERA_COMPRA,P162_FEC_ULTIMA_COMPRA,P162_DIAS_COBRO,P162_COD_MONEDA_LIMITE,P162_LIMITE_CREDITO,P162_ID_REGISTRO,P162_MESSAGE_ERROR,P162_IMP_BARRAS,P162_FECHA_SEGUIMIE'
||'NTO_CLIENTE,P162_TIPO_IMPUESTO,P_COD_USUARIO,P162_SEGMENTACION'
,p_attribute_03=>'P162_MESSAGE_ERROR'
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
 p_id=>wwv_flow_imp.id(47093764074156950)
,p_event_id=>wwv_flow_imp.id(47093579110156948)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    if :P162_COD_PERSONA is not null then',
'        APEX_COLLECTION.add_member(p_collection_name => ''COLEC_DATOS_CLIENTE_2'',',
'                p_c001 => :P162_COD_EMPRESA,',
'                p_c002 => :P162_COD_CLIENTE,',
'                p_c003 => :P162_COD_PERSONA,',
'                p_c004 => :P162_NRO_INSCRIPCION_AD,',
'                p_c005 => :P162_FEC_DEMANDA,',
'                p_c006 => :P162_TIP_DOCUMENTO,',
'                p_c007 => :P162_PLAZO,',
'                p_c008 => :P162_TIP_CLIENTE,',
'                p_c009 => :P162_COD_SUB_TIPO_CLIENTE,',
'                p_c010 => :P162_COD_CONDICION_VENTA,',
'                p_c011 => :P162_OBS_COBRANZAS,',
'                p_c012 => :P162_FECHA_limite_FACTURACION,',
'                p_c013 => :P162_IND_PREFERENCIAL,',
'                p_c014 => :P162_NRO_JERARQUIA,',
'                p_c015 => :P162_IND_EMP_ASOCIADA,',
'                p_c016 => :P162_COD_SCORING,',
'                p_c017 => :P162_IND_SEGUIMIENTOS,',
'                p_c018 => :P162_OBS_SEGUIMIENTO,',
'                p_c019 => :P162_OBSERVACION_PEDIDO,',
'                p_c020 => :P162_INTESINDAD_COB,',
'                p_c021 => :P162_IND_REMISION,',
'                p_c022 => :P162_SIN_CV,',
'                p_c023 => :P162_IMPRIMIR_DIR_SUCURSAL,',
'                p_c024 => :P162_IND_IMPRIMIR_BARRA,',
'                p_c025 => :P162_IND_LLEVA_OC,',
'                p_c026 => :P162_IND_IMPRIMIR_UNICO_PAGARE,',
'                p_c027 => :P162_IND_GEOREFERENCIADO,',
'                p_c028 => :P162_IND_FINANCIACION,',
'                p_c029 => :P162_PAGARE_POR_FACTURA,',
'                p_c030 => :P162_IND_ENVIA_FACTURA,',
'                p_c031 => :P162_SEGMENTACION,',
'            p_c032 => :P162_IND_ACUERDO_COMERCIAL,',
'            p_c033 => :P162_PORCENTAJE_ACUERDO,                                        ',
'                p_c050 => ''I'');',
'    end if;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     RAISE_APPLICATION_ERROR(-20001,SQLERRM);',
'END;'))
,p_attribute_02=>'P162_COD_EMPRESA,P162_COD_CLIENTE,P162_COD_PERSONA,P162_NRO_INSCRIPCION_AD,P162_FEC_DEMANDA,P162_TIP_DOCUMENTO,P162_PLAZO,P162_TIP_CLIENTE,P162_COD_SUB_TIPO_CLIENTE,P162_COD_CONDICION_VENTA,P162_OBS_COBRANZAS,P162_FECHA_LIMITE_FACTURACION,P162_IND_PR'
||'EFERENCIAL,P162_NRO_JERARQUIA,P162_IND_EMP_ASOCIADA,P162_COD_SCORING,P162_IND_SEGUIMIENTOS,P162_OBS_SEGUIMIENTO,P162_OBSERVACION_PEDIDO,P162_CODIGO_INTESINDAD_COBRANZA,P162_IND_REMISION,P162_SIN_CV,P162_IMPRIMIR_DIR_SUCURSAL,P162_IND_IMPRIMIR_BARRA,P'
||'162_IND_LLEVA_OC,P162_IND_IMPRIMIR_UNICO_PAGARE,P162_IND_GEOREFERENCIADO,P162_IND_FINANCIACION,P162_PAGARE_POR_FACTURA,P162_IND_ENVIA_FACTURA,P162_SEGMENTACION,P162_IND_ACUERDO_COMERCIAL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48088339655927308)
,p_event_id=>wwv_flow_imp.id(47093579110156948)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P162_MESSAGE_ERROR.'
,p_attribute_02=>'Mensaje del sistema'
,p_attribute_03=>'danger'
,p_attribute_04=>'fa-meh'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P162_MESSAGE_ERROR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48088441048927309)
,p_event_id=>wwv_flow_imp.id(47093579110156948)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Se agrego correctamente el cliente, puede proceder a registrar en la base de datos'
,p_attribute_02=>unistr('Mensaje de confirmaci\00F3n')
,p_attribute_03=>'success'
,p_attribute_04=>'fa-smile'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P162_MESSAGE_ERROR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48372451073792523)
,p_name=>'Da_Clic_Ir'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(48937000855377212)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48372545893792524)
,p_event_id=>wwv_flow_imp.id(48372451073792523)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' declare v_parametros varchar2(500);',
' begin',
'    :P162_MESSAGE_ERROR := null;',
'    if :P162_SELEC_PAGINA is not null then',
'         if instr(:P162_PARAMETROS,''COD_CLIENTE'')>0 AND instr(:P162_PARAMETROS,''COD_PERSONA'')>0 then',
'            v_parametros := :P162_COD_PERSONA||'',''||:P162_COD_CLIENTE;',
'         elsif instr(:P162_PARAMETROS,''COD_CLIENTE'')>0 then',
'            v_parametros := :P162_COD_CLIENTE;',
'         elsif instr(:P162_PARAMETROS,''COD_PERSONA'')>0  then',
'            v_parametros := :P162_COD_PERSONA;',
'         end if;',
'         SELECT',
'         APEX_PAGE.GET_URL (p_application => 122,',
'                    p_page   => :P162_SELEC_PAGINA,',
'                    p_items  => :P162_PARAMETROS,',
'                    p_values => v_parametros) "URL"',
'        INTO :P162_URL',
'        FROM DUAL;',
'    else',
unistr('        :P162_MESSAGE_ERROR := ''Seleccione la pag\00EDna a la que quiere ir'';'),
'    end if;',
'end;'))
,p_attribute_02=>'P162_SELEC_PAGINA,P162_COD_PERSONA,P162_COD_CLIENTE,P162_PARAMETROS'
,p_attribute_03=>'P162_URL,P162_MESSAGE_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48372968707792528)
,p_event_id=>wwv_flow_imp.id(48372451073792523)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var vURL = apex.item(''P162_URL'').getValue();',
' window.open(vURL,"Pagina Child","width=1800,height=900,scrollbars=NO") ;'))
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P162_SELEC_PAGINA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48937733216377219)
,p_event_id=>wwv_flow_imp.id(48372451073792523)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P162_MESSAGE_ERROR.'
,p_attribute_02=>unistr('Validaci\00F3n del sistema')
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-window-pointer'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P162_MESSAGE_ERROR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48373049910792529)
,p_name=>'DA_Cambiar_Select_Pagina'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P162_SELEC_PAGINA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48373106036792530)
,p_event_id=>wwv_flow_imp.id(48373049910792529)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P162_SELEC_PAGINA IN (102) THEN ',
'   :P162_PARAMETROS := ''P102_PERS_COD_PERSONA,P102_P_COD_CLIENTE'';',
'ELSIF',
'   :P162_SELEC_PAGINA IN (122) THEN ',
'   :P162_PARAMETROS := ''P''||:P162_SELEC_PAGINA||''_COD_PERSONA,P''||:P162_SELEC_PAGINA||''_COD_CLIENTE'';',
'ELSIF :P162_SELEC_PAGINA IN (129,108,110,113,91,171,167,114) THEN',
'  :P162_PARAMETROS := ''P''||:P162_SELEC_PAGINA||''_COD_PERSONA'';',
'ELSIF :P162_SELEC_PAGINA IN (202) THEN',
'  :P162_PARAMETROS := ''P''||:P162_SELEC_PAGINA||''_PER_COD_PERSONA'';',
'ELSIF :P162_SELEC_PAGINA IN (170,94,164) THEN',
'  :P162_PARAMETROS := ''P''||:P162_SELEC_PAGINA||''_COD_CLIENTE'';',
'ELSIF :P162_SELEC_PAGINA IN (163) THEN',
'  :P162_PARAMETROS := ''P''||:P162_SELEC_PAGINA||''_P_COD_CLIENTE'';',
'END IF;',
'',
''))
,p_attribute_02=>'P162_PARAMETROS,P162_SELEC_PAGINA'
,p_attribute_03=>'P162_PARAMETROS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48940168346377243)
,p_name=>'DA_CLOSE_GAR'
,p_event_sequence=>130
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(48937883473377220)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48940227167377244)
,p_event_id=>wwv_flow_imp.id(48940168346377243)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48937883473377220)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48940343747377245)
,p_name=>'DA_REGISTRAR_GAR'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(48940075113377242)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48940486711377246)
,p_event_id=>wwv_flow_imp.id(48940343747377245)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare v_cantidad numeric(3);',
'begin',
'    select count(c050) INTO v_cantidad from APEX_COLLECTIONS where COLLECTION_NAME = ''COLEC_DATOS_GARANTIA_CLIENTE''',
'        and c050 IN(''I'',''U'');',
'    if v_cantidad is not null and v_cantidad > 0 then',
'        CCCLIENT.sp_registrar_garantias_cliente(pi_cod_cliente => :P162_COD_CLIENTE);',
'    else',
'        RAISE_APPLICATION_ERROR(-20001,''No se detectaron cambios en los datos'');',
'    end if;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     RAISE_APPLICATION_ERROR(-20001,SQLERRM);',
'END;'))
,p_attribute_02=>'P162_COD_CLIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48940585675377247)
,p_event_id=>wwv_flow_imp.id(48940343747377245)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Los cambios fueron registrados correctamente.'
,p_attribute_02=>unistr('Confirmaci\00F3n de registro')
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51664830827045220)
,p_event_id=>wwv_flow_imp.id(48940343747377245)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51664065948045212)
,p_name=>'DA_CLOSE_INTERESES'
,p_event_sequence=>150
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(48940708892377249)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51664197118045213)
,p_event_id=>wwv_flow_imp.id(51664065948045212)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48940708892377249)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51664450846045216)
,p_name=>'DA_REGISTRAR_INTERES'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51664369054045215)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51664562956045217)
,p_event_id=>wwv_flow_imp.id(51664450846045216)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare v_cantidad numeric(3);',
'begin',
'    select count(c050) INTO v_cantidad from APEX_COLLECTIONS where COLLECTION_NAME = ''COLEC_DATOS_INTERESES_CLIENTE''',
'        and c050 IN(''I'',''U'');',
'    if v_cantidad is not null and v_cantidad > 0 then',
'        CCCLIENT.sp_registrar_intereses_cliente(pi_cod_cliente => :P162_COD_CLIENTE);',
'    else',
'        RAISE_APPLICATION_ERROR(-20001,''No se detectaron cambios en los datos'');',
'    end if;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     RAISE_APPLICATION_ERROR(-20001,SQLERRM);',
'END;'))
,p_attribute_02=>'P162_COD_CLIENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51664647927045218)
,p_event_id=>wwv_flow_imp.id(51664450846045216)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Los cambios fueron registrados correctamente.'
,p_attribute_02=>unistr('Confirmaci\00F3n de registro')
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51664771097045219)
,p_event_id=>wwv_flow_imp.id(51664450846045216)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51667731610045249)
,p_name=>'DA_COD_CLIENTE'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P162_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51667825065045250)
,p_event_id=>wwv_flow_imp.id(51667731610045249)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P162_COD_CLIENTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58321708296298819)
,p_name=>'DA_SEGUIMIENTO'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P162_IND_SEGUIMIENTOS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58321864826298820)
,p_event_id=>wwv_flow_imp.id(58321708296298819)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log($v(''P162_IND_SEGUIMIENTOS''));',
'if($v(''P162_IND_SEGUIMIENTOS'')==''N''){',
'    apex.item( "P162_OBS_SEGUIMIENTO" ).hide();',
'}else{',
'    apex.item( "P162_OBS_SEGUIMIENTO" ).show();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58321927338298821)
,p_name=>'PL_FINALIZA_MENSAJE'
,p_event_sequence=>190
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58322039542298822)
,p_event_id=>wwv_flow_imp.id(58321927338298821)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function() {',
'    $(''#APEX_SUCCESS_MESSAGE'').fadeOut(''fast'');',
'}, 3000);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58323358859298835)
,p_name=>'DA_REGISTRAR_DOC'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(58323280411298834)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58323416435298836)
,p_event_id=>wwv_flow_imp.id(58323358859298835)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare v_cantidad numeric(3);',
'begin',
'    select count(c050) INTO v_cantidad from APEX_COLLECTIONS where COLLECTION_NAME = ''COLEC_DATOS_IDENT_PERSONAS''',
'        and c050 IN(''I'',''U'');',
'    if v_cantidad is not null and v_cantidad > 0 then',
'        CCCLIENT.sp_registrar_documento(pi_cod_persona => :P162_COD_PERSONA);',
'    else',
'        RAISE_APPLICATION_ERROR(-20001,''No se detectaron cambios en los datos'');',
'    end if;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     RAISE_APPLICATION_ERROR(-20001,SQLERRM);',
'END;'))
,p_attribute_02=>'P162_COD_PERSONA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58323524402298837)
,p_event_id=>wwv_flow_imp.id(58323358859298835)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Los cambios fueron registrados correctamente.'
,p_attribute_02=>unistr('Confirmaci\00F3n de registro')
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58323669678298838)
,p_event_id=>wwv_flow_imp.id(58323358859298835)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58323713373298839)
,p_name=>'DA_CLOSE_DOCUMENTO'
,p_event_sequence=>210
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(48092340345927348)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58323872620298840)
,p_event_id=>wwv_flow_imp.id(58323713373298839)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48092340345927348)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(280542805578066449)
,p_name=>'BLOQUEA_ACUERDO'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P162_BLOQUEA_ACUERDO'
,p_condition_element=>'P162_BLOQUEA_ACUERDO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(280542961443066450)
,p_event_id=>wwv_flow_imp.id(280542805578066449)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById("BTN_CREAR_ACUERDO").disabled = true;',
'document.getElementById("BTN_CREAR_ACUERDO").disabled = true;',
'',
' ',
'//$(''#P34_COD_LISTA_PRECIO'').css(''pointer-events'',''none'');',
'//$(''#P34_COD_MONEDA'').css(''pointer-events'',''none'');',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(283332600780456101)
,p_event_id=>wwv_flow_imp.id(280542805578066449)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById("BTN_CREAR_ACUERDO").disabled =true;',
'',
'',
' ',
'//$(''#P34_COD_LISTA_PRECIO'').css(''pointer-events'',''none'');',
'//$(''#P34_COD_MONEDA'').css(''pointer-events'',''none'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(283332725471456102)
,p_name=>'BLOQUEA_ACUERDO_1'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P162_BLOQUEA_ACUERDO'
,p_condition_element=>'P162_BLOQUEA_ACUERDO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(283332843964456103)
,p_event_id=>wwv_flow_imp.id(283332725471456102)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(280542066818066441)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(283332903297456104)
,p_event_id=>wwv_flow_imp.id(283332725471456102)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(280542066818066441)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(703387988459265802)
,p_name=>'BLOQUEA_permiso_acuerdo'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P162_BLOQUEA_ACUERDO'
,p_condition_element=>'P162_PERMISO_ACUERDO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(703388057274265803)
,p_event_id=>wwv_flow_imp.id(703387988459265802)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P162_PORCENTAJE_ACUERDO,P162_IND_ACUERDO_COMERCIAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(703388197872265804)
,p_event_id=>wwv_flow_imp.id(703387988459265802)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P162_PORCENTAJE_ACUERDO,P162_IND_ACUERDO_COMERCIAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(703388220860265805)
,p_event_id=>wwv_flow_imp.id(703387988459265802)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P162_PORCENTAJE_ACUERDO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(703388363246265806)
,p_event_id=>wwv_flow_imp.id(703387988459265802)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P162_PORCENTAJE_ACUERDO'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById("P162_PORCENTAJE_ACUERDO").disabled = true;',
'document.getElementById("P162_PORCENTAJE_ACUERDO").disabled = true;',
'',
' ',
'$(''#P162_PORCENTAJE_ACUERDO'').css(''pointer-events'',''none'');',
'$(''#P162_PORCENTAJE_ACUERDO'').css(''pointer-events'',''none'');',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(283333049972456105)
,p_name=>'DA_ACUERDO_COMERCIAL'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P162_IND_ACUERDO_COMERCIAL'
,p_condition_element=>'P162_IND_ACUERDO_COMERCIAL'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(283333159697456106)
,p_event_id=>wwv_flow_imp.id(283333049972456105)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(280542066818066441)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(283333432248456109)
,p_event_id=>wwv_flow_imp.id(283333049972456105)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(280542128067066442)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(283333267720456107)
,p_event_id=>wwv_flow_imp.id(283333049972456105)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(280542128067066442)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(283333547323456110)
,p_event_id=>wwv_flow_imp.id(283333049972456105)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(280542066818066441)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(283333683581456111)
,p_event_id=>wwv_flow_imp.id(283333049972456105)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P162_PORCENTAJE_ACUERDO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(283333729885456112)
,p_event_id=>wwv_flow_imp.id(283333049972456105)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P162_PORCENTAJE_ACUERDO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41145766141693412)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(41145673725693411)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form CCCLIENT - Datos del cliente'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41148272694693437)
,p_process_sequence=>40
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(41148146305693436)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Inicializa form Demanda'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(40113291129434735)
,p_process_sequence=>50
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(40112076388434723)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Inicializa-Form-2'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(51667659919045248)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_REGISTRO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CCCLIENT.sp_registrar_datos_cliente(:P162_SEQ_ID);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     :P162_MESSAGE_ERROR := ''Error al registrar: ''||SQLERRM;',
'     RAISE_APPLICATION_ERROR(20001,''Error al registrar: ''||SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error al registrar'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(40113486873434737)
,p_process_success_message=>'Datos registrados correctamente'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(51667125272045243)
,p_process_sequence=>30
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CARGA_AGENTE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P162_AGENTE_GPV := NULL;',
'    :P162_AGENTE_COBRO := NULL;',
'    :P162_AGENTE_CREDITO := NULL;',
'    :P162_RESP_GEST_COBRO := NULL;',
'',
'    if :P162_COD_CLIENTE is not null then',
'        --Valor carpeta',
'        :P162_VALOR_CARPETA := f_carpeta_valor(:P162_COD_CLIENTE);',
'        --sector economico',
'        select p.cod_sector into :P162_PERS_SECTOR from cc_clientes c',
'            inner join personas p on c.cod_persona = p.cod_persona and c.cod_empresa = :P_COD_EMPRESA',
'                and c.cod_cliente = :P162_COD_CLIENTE;',
'        --Agente GPV',
'        select p.nombre  into :P162_AGENTE_GPV',
'          from CA_AGENTE_CALL A, USUARIOS U , PERSONAS P',
'        WHERE A.COD_EMPRESA= :P_COD_EMPRESA',
'        and a.cod_empresa=u.cod_empresa',
'        and a.cod_usuario=u.cod_usuario',
'        and u.cod_persona=p.cod_persona',
'        and a.cod_vendedor= :P162_COD_VENDEDOR;',
'    end if;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     :P162_AGENTE_GPV := null;    ',
'end;',
'',
'BEGIN',
'    if :P162_COD_CLIENTE is not null then',
'    --Agente de cobro',
'    select ltrim( pe.nombre ) into :P162_AGENTE_COBRO',
'            from cc_agente_cobrador  av,',
'                 cc_agente_cobro     ac, ',
'                 personas pe',
'            where av.cod_empresa  = :P_COD_EMPRESA',
'              and av.cod_cobrador = :P162_COD_COBRADOR',
'              and   av.cod_agente=  ac.cod_agente ',
'              and   av.cod_empresa= ac.cod_empresa ',
'              and   ac.cod_persona= pe.cod_persona;',
'    end if;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     :P162_AGENTE_COBRO := null;  ',
'end;',
'',
'',
'if :P162_COD_CLIENTE is not null then',
'    BEGIN',
'    select ltrim( pe.nombre ) into :P162_AGENTE_CREDITO',
'            from cc_solicitud_credito  av,',
'                 rh_empleados     ac, ',
'                 personas pe',
'            where av.cod_empresa  =:P_COD_EMPRESA',
'              and av.cod_cliente = :P162_COD_CLIENTE  ',
'              and   av.cod_agente_credito=  ac.cod_empleado',
'              and   av.cod_empresa= ac.cod_empresa ',
'              and   ac.cod_persona= pe.cod_persona;',
'    EXCEPTION',
'    WHEN OTHERS THEN',
'        BEGIN          ',
'        select ltrim( pe.nombre ) into :P162_AGENTE_CREDITO',
'                    from CC_AGENTE_CREDIOS  av,',
'                         rh_empleados     ac, ',
'                         personas pe',
'                    where av.cod_empresa  = :P_COD_EMPRESA',
'                      and av.cod_vendedor = :P162_COD_VENDEDOR  ',
'                      and   av.cod_agente=  ac.cod_empleado',
'                      and   av.cod_empresa= ac.cod_empresa ',
'                      and   ac.cod_persona= pe.cod_persona;',
'        EXCEPTION',
'        WHEN OTHERS THEN',
'            :P162_AGENTE_CREDITO := null;',
'        end;',
'    end;',
'',
'    DECLARE VSOLO_GARANTIA VARCHAR2(5);',
'    BEGIN',
'        IF :P162_TIP_CLIENTE=''28''  THEN',
'        begin',
'          select  distinct ''S''',
'          into VSOLO_GARANTIA',
'          from cc_saldos SAL',
'          where cod_empresa= :P_COD_EMPRESA',
'          AND SAL.COD_CLIENTE= :P162_COD_CLIENTE',
'          AND SAL.SALDO_CUOTA>0',
'          AND NVL(SAL.COD_SECTOR,''X'')  IN (''4.1'');',
'          exception',
'            when others then',
'              VSOLO_GARANTIA:=''N'';',
'          end;',
'        ELSE',
'    	    VSOLO_GARANTIA:=''N'';',
'    	END IF;',
'',
'        if :P162_INTESINDAD_COB IN(''T1'',''T2'') THEN',
'            :P162_RESP_GEST_COBRO:=	:P162_COD_COBRADOR;',
'        ELSif :P162_INTESINDAD_COB IN(''T3'',''T4'') THEN',
'            :P162_RESP_GEST_COBRO:=	:P162_AGENTE_COBRO;',
'        ELSif :P162_INTESINDAD_COB IN(''T5'',''T6'') AND   NVL(VSOLO_GARANTIA,''N'')=''S'' THEN',
'            :P162_RESP_GEST_COBRO:=''NOELIA MARIA LOPEZ CUENCA'';',
'        ELSif :P162_INTESINDAD_COB IN(''T5'',''T6'') THEN',
'            :P162_RESP_GEST_COBRO:=''NANCY JULIANA UGARTE MOREL'';',
'        ELSIF  :P162_INTESINDAD_COB IN(''T0'')  THEN',
'        	  :P162_RESP_GEST_COBRO:=''CCG'';',
'        END IF;',
'    END;',
'',
'end if;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(58320600637298808)
,p_process_sequence=>40
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CARGA_SALDOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P162_SALDO_CTA_CTE := 0 ;',
':P162_CHEQUE_DEVUELTO := 0;',
':P162_VALOR_DEPOSITAR := 0;',
':P162_SALDO_ACTUAL := 0;',
':P162_FACTURACION_POSIBLE := 0;',
'BEGIN',
'    if :P162_COD_CLIENTE is not null then',
'        ccclient.sp_obtiene_saldos_clientes(pi_cod_empresa => :P162_COD_EMPRESA,',
'                                            pi_cod_cliente => :P162_COD_CLIENTE,',
'                                            po_saldo_cta_cte => :P162_SALDO_CTA_CTE,',
'                                            po_cheque_devuelto => :P162_CHEQUE_DEVUELTO,',
'                                            po_valor_depositar => :P162_VALOR_DEPOSITAR,',
'                                            po_saldo_actual => :P162_SALDO_ACTUAL,',
'                                            po_facturacion_posible => :P162_FACTURACION_POSIBLE);',
'        :P162_SALDO_CTA_CTE := to_char(:P162_SALDO_CTA_CTE,''999G999G999G999G990D00'');',
'        :P162_CHEQUE_DEVUELTO := to_char(:P162_CHEQUE_DEVUELTO,''999G999G999G999G990D00'');',
'        :P162_VALOR_DEPOSITAR := to_char(:P162_VALOR_DEPOSITAR,''999G999G999G999G990D00'');',
'        :P162_SALDO_ACTUAL := to_char(:P162_SALDO_ACTUAL,''999G999G999G999G990D00'');',
'        :P162_FACTURACION_POSIBLE := to_char(:P162_FACTURACION_POSIBLE,''999G999G999G999G990D00'');',
'    end if;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    :P162_SALDO_CTA_CTE := 0 ;',
'    :P162_CHEQUE_DEVUELTO := 0;',
'    :P162_VALOR_DEPOSITAR := 0;',
'    :P162_SALDO_ACTUAL := 0;',
'    :P162_FACTURACION_POSIBLE := 0;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error al calcular saldos del cliente'
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(59762225100338005)
,p_process_sequence=>50
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CARGA_RUTA_IMAGEN'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'  tiff_image_dir VARCHAR2(80) :=  bs_busca_parametro( ''BS'', ''DIR_FOTOS'' );',
'BEGIN',
'    :P162_RUTA_IMAGEN := tiff_image_dir||LOWER(:P162_COD_CLIENTE)||''.jpg'';',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(43760873658968123)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_DATOS_CLIENTE_1'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_DATOS_CLIENTE_2'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_DATOS_CLIENTE_DIRECCIONES'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_DATOS_CLIENTE_TELEFONOS'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_DATOS_IDENT_PERSONAS'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_DATOS_GARANTIA_CLIENTE'');',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''COLEC_DATOS_INTERESES_CLIENTE'');',
'',
'BEGIN',
'    if :P162_COD_CLIENTE is not null then',
'        CCCLIENT.sp_datos_cliente(pi_cod_empresa => :P_COD_EMPRESA, pi_cod_cliente => :P162_COD_CLIENTE);',
'        :P162_SEQ_ID := 1;',
'        :P162_SEQ_ID_1 := 1;',
'        :P162_SEQ_ID2 := 1;',
'    end if;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'     RAISE_APPLICATION_ERROR(-20001,SQLERRM);',
'END;',
'',
'',
'begin',
'select ''S'' INTO :P162_BLOQUEA_ACUERDO FROM vt_acuerdo_clientes_cab WHERE COD_EMPRESA=:P_COD_EMPRESA AND COD_CLIENTE=:P162_COD_CLIENTE and rownum=1 and estado not in ''ANULADO'' ;',
'exception when others then :P162_BLOQUEA_ACUERDO:=''N'';',
'end;',
':P162_PERMISO_ACUERDO:=busca_permiso( :P_COD_EMPRESA,''CCCLIENT'',:P_COD_USUARIO,''VER_ACUERDO_COM'' ); '))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
