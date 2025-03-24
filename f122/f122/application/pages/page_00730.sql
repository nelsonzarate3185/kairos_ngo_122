prompt --application/pages/page_00730
begin
--   Manifest
--     PAGE: 00730
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
 p_id=>730
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'Ordenes de Trabajo - CC'
,p_alias=>'ORDENES-DE-TRABAJO2'
,p_step_title=>'Ordenes de Trabajo'
,p_allow_duplicate_submissions=>'N'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>'<div id="overlay"></div>'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#util_generico.js',
'#APP_IMAGES#inputmask.js',
'#APP_IMAGES#imask.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"''; ',
'',
'$(''input'').live("keypress", function(e) {',
'                /* ENTER PRESSED*/',
'                if (e.keyCode == 13) {',
'                    /* FOCUS ELEMENT */',
'                    var inputs = $(this).parents("form").eq(0).find(":input");',
'                    var idx = inputs.index(this);',
'',
'                    if (idx == inputs.length - 1) {',
'                        inputs[0].select()',
'                    } else {',
'                        inputs[idx + 1].focus(); //  handles submit buttons',
'                        inputs[idx + 1].select();',
'                    }',
'                    return false;',
'                }',
'            });',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color: #ffed00 !important;',
'   border-color: red !important;',
'}',
'',
'  .tabla_color   td.t-Report-cell /*, .t-Form-label */ {',
'  color: darkblue  !important;',
'  border-color: #003a85;',
'}',
'',
' .t-Form-label   {',
'  color:navy  !important; ',
'}',
'',
'  th.t-Report-colHead,  th.t-Report-colHead a{',
'  background-color:  #fff6a4  !important;',
'  color: #003a85  !important;',
'  border-color: cadetblue;',
'}',
'',
' .a-IRR-header{',
'      background-color: #fff6a4  !important;',
'	  font-weight: bold !important;',
'      border:0.5px solid #16488a !important;',
'   }',
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
'/*',
't-Report-cell {',
'',
'font-size: var(--ut-report-cell-font-size, .95rem);',
'}*/',
'/*.t-Report-colHead {',
'    font-size: var(--ut-report-header-cell-font-size, var(--ut-report-cell-font-size, 1.9rem));',
'',
'}*/',
'td[headers="SER_REP_SOL"], #SER_REP_SOL , td[headers="NRO_REP_SOL"], #NRO_REP_SOL, #SEQ_ID , td[headers="SEQ_ID"]{',
'        display: none;',
'    }',
' ',
'',
'.apex-item-select , .apex-item-text , .apex-item-textarea , .apex-item-display-only{',
'   background-color: #f8f6ea !important; /*#fffef4*/',
'   border-width: 0.5px;',
'   border-color: #b4c6dd !important;   ',
'   font-weight: bold !important;   ',
'   /*color: darkblue!important;      */',
'   border-style: double !important;   ',
'} ',
'',
'',
' ',
' ',
'',
'  #P730_TOTAL_OT_CALL_CALCULADO {',
'    border: 2px solid #000; /* Borde negro de 2px */',
'    border-radius: 5px; /* Bordes redondeados */',
'    padding: 10px; /* Espaciado interno */    ',
'    background-color: #f9f9f9; /* Color de fondo */',
'    color: #333; /* Color del texto */',
'    text-align: right;',
'    font-size: x-large;',
'  }',
'',
'',
'',
'#REG_OT{',
'   background-color: #d0e0f783 !important;}',
'   ',
'#finalizar_ot {',
'    display: none !important;',
'}',
'',
'.t-BreadcrumbRegion {',
'    padding: 1px;',
'}',
'',
'.t-Region .t-Region-body {',
'    padding: 1px; ',
'}',
'.t-Body-content{',
'   background-color:  #487ab8 !important;}',
'',
'',
'.t-Form-fieldContainer:not(.js-show-label) .t-Form-labelContainer .t-Form-label {        ',
'    margin-top: -8px ;       ',
'    } ',
'',
'#P730_SEG_PRESUPUESTO{     ',
'  font-size: x-large ;',
'  background-color: #009688 !important;',
' border-width: 0.5px;',
'    border-color: #8BC34A !important;',
'    /* font-weight: bold !important; */',
'    color: #d30823 !important;',
'    border-style: double !important;',
'	text-align: center;',
'} ',
'',
'',
'',
'',
'',
'',
'    #overlay {',
'    position: fixed;',
'    top: 0;',
'    left: 0;',
'    width: 100%;',
'    height: 100%;',
'    background: rgba(255, 255, 255, 0.437); /* Fondo semitransparente */',
unistr('    z-index: 9999; /* Asegura que la capa de superposici\00F3n est\00E9 en la parte superior */'),
'    display: none; /* Inicialmente oculta la capa */',
'}',
'',
'.icon {',
'font-size: 48 px;',
'  width: 48px;',
'  height: 48px;',
'}',
'',
'#mapa {',
'    border-color: rgb(188, 232, 241);',
'    background-color: rgb(217, 237, 247);',
'    color: rgb(58, 135, 173);',
'    font-weight: bold;',
'    width: 839px;',
'    min-height: 100.667px;',
'    max-height: none;',
'    height: 664px;',
'}',
'',
'',
'.tabla_color   td.t-Report-cell , .t-Form-label  {',
'  color: #003a85  !important;',
'  border-color: #003a85 !important;',
'}',
'',
'  th.t-Report-colHead,  th.t-Report-colHead a{',
'  background-color:  #fff6a4  !important;',
'  color: #003a85  !important;',
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
'',
'tr:last-child td[headers="MONTO_TOTAL"] { ',
'    font-size: large; ',
'//    background: #d9ed92; ',
'}',
'',
' ',
unistr(' /* Centrar texto en el label asociado a un campo de texto espec\00EDfico */'),
'label[for="P730_SEG_PRESUPUESTO"] {',
'    text-align: center;',
'    display: block; /* Asegura que el label sea un bloque para aplicar el centrado */',
unistr('    width: 100%; /* Ajusta seg\00FAn sea necesario */'),
'	color: #d30823;',
'	font-weight: bolder;',
'	font-size: 300%',
'}',
'',
'',
'',
unistr('/* Centrar texto en un campo de texto espec\00EDfico */'),
'/*#P730_SEG_PRESUPUESTO {',
'    text-align: center;',
'}*/',
'',
'',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'JUANSA'
,p_last_upd_yyyymmddhh24miss=>'20250103132617'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(178180343054823648)
,p_plug_name=>'Notifica_Presupuesto'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1060
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(385774119721537756)
,p_plug_name=>'MENU PRINCIPAL'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1000
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(389458717503176833)
,p_plug_name=>'Taller'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>940
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(354956920959971562)
,p_name=>'Repuestos / Mano de Obra'
,p_parent_plug_id=>wwv_flow_imp.id(389458717503176833)
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>2000
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  seq_id,',
'        c001 COD_EMPRESA,',
'        c002 TIP_OT,',
'        c003 SER_OT,',
'        c004 NRO_OT,',
'        c005 COD_ARTICULO,',
'        c006 DESCRIPCION,',
'        c007 CANT_PRESUPUESTADO,',
'        to_number(c008) MONTO_PRESUPUESTO,',
'        c009 CANT_PEDIDO,',
'        c010 CANT_CONFIRMADA,',
'        c011 PEDIDO_VERIFICADO,',
'        c012 FECHA_CONFIRMA,',
'        c013 FECHA_RECEPION,',
'        c014 CANT_UTILIZADO,',
'        c015 IMPORTE_REPUESTO,',
'        c016 IND_RECEPCION,',
'        c017 IND_RECHAZADO,',
'        c018 RECEPCIONADO,',
'        c019 RECHAZADO,',
'        c020 COD_SUCURSAL_ENV,',
'        C021 CANT_PREPARADA,',
'        c022 nro_pedido,',
'        c023 ser_pedido,',
'        c024 tip_pedido,',
'        c025 devolver, ',
'        c026 cant_devuelto,',
'        c027 importe_devuelto,',
'        c028 CON_STOCK,',
'        c029 stock',
'          from apex_collections',
' where collection_name = ''VT_PRODUCTOS'';'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P730_TIP_COMPROBANTE,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE,P730_PARAM_SER_OT,P730_PARAM_NRO_OT'
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
 p_id=>wwv_flow_imp.id(279253093164777219)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>220
,p_column_heading=>'Seq Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279253457576777219)
,p_query_column_id=>2
,p_column_alias=>'COD_EMPRESA'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279250697810777218)
,p_query_column_id=>3
,p_column_alias=>'TIP_OT'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279251087843777218)
,p_query_column_id=>4
,p_column_alias=>'SER_OT'
,p_column_display_sequence=>30
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279251406870777218)
,p_query_column_id=>5
,p_column_alias=>'NRO_OT'
,p_column_display_sequence=>40
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279251895958777218)
,p_query_column_id=>6
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>50
,p_column_heading=>unistr('C\00F3d. Articulo')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279252297796777218)
,p_query_column_id=>7
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>60
,p_column_heading=>unistr('Descripci\00F3n')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279252617405777218)
,p_query_column_id=>8
,p_column_alias=>'CANT_PRESUPUESTADO'
,p_column_display_sequence=>90
,p_column_heading=>'Cantidad Presupuestado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279253822762777219)
,p_query_column_id=>9
,p_column_alias=>'MONTO_PRESUPUESTO'
,p_column_display_sequence=>80
,p_column_heading=>'Monto Presupuesto'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279254226498777219)
,p_query_column_id=>10
,p_column_alias=>'CANT_PEDIDO'
,p_column_display_sequence=>100
,p_column_heading=>'Cantidad Pedido'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279254640553777219)
,p_query_column_id=>11
,p_column_alias=>'CANT_CONFIRMADA'
,p_column_display_sequence=>120
,p_column_heading=>'Cantidad Confirmada'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279255043195777219)
,p_query_column_id=>12
,p_column_alias=>'PEDIDO_VERIFICADO'
,p_column_display_sequence=>130
,p_column_heading=>'Pedido Verificado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279255498590777220)
,p_query_column_id=>13
,p_column_alias=>'FECHA_CONFIRMA'
,p_column_display_sequence=>140
,p_column_heading=>unistr('Fecha Confirmaci\00F3n')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279255828394777220)
,p_query_column_id=>14
,p_column_alias=>'FECHA_RECEPION'
,p_column_display_sequence=>150
,p_column_heading=>unistr('Fecha Recepci\00F3n')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279256286254777220)
,p_query_column_id=>15
,p_column_alias=>'CANT_UTILIZADO'
,p_column_display_sequence=>160
,p_column_heading=>'Cantidad Utilizado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279256685993777220)
,p_query_column_id=>16
,p_column_alias=>'IMPORTE_REPUESTO'
,p_column_display_sequence=>170
,p_column_heading=>'Importe Repuesto'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279257088714777220)
,p_query_column_id=>17
,p_column_alias=>'IND_RECEPCION'
,p_column_display_sequence=>180
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279257435415777220)
,p_query_column_id=>18
,p_column_alias=>'IND_RECHAZADO'
,p_column_display_sequence=>190
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279257841859777221)
,p_query_column_id=>19
,p_column_alias=>'RECEPCIONADO'
,p_column_display_sequence=>200
,p_column_heading=>'Recepcionado'
,p_use_as_row_header=>'N'
,p_column_css_class=>'chk_recep2'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279258202915777221)
,p_query_column_id=>20
,p_column_alias=>'RECHAZADO'
,p_column_display_sequence=>210
,p_column_heading=>'Rechazado'
,p_use_as_row_header=>'N'
,p_column_css_class=>'chk_rechaz2'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279258666221777221)
,p_query_column_id=>21
,p_column_alias=>'COD_SUCURSAL_ENV'
,p_column_display_sequence=>230
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279259072135777221)
,p_query_column_id=>22
,p_column_alias=>'CANT_PREPARADA'
,p_column_display_sequence=>110
,p_column_heading=>'Cantidad Preparada'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279259417289777221)
,p_query_column_id=>23
,p_column_alias=>'NRO_PEDIDO'
,p_column_display_sequence=>250
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279259881082777221)
,p_query_column_id=>24
,p_column_alias=>'SER_PEDIDO'
,p_column_display_sequence=>260
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279260271131777221)
,p_query_column_id=>25
,p_column_alias=>'TIP_PEDIDO'
,p_column_display_sequence=>270
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279260695577777222)
,p_query_column_id=>26
,p_column_alias=>'DEVOLVER'
,p_column_display_sequence=>280
,p_column_heading=>'Devolver'
,p_use_as_row_header=>'N'
,p_column_css_class=>'chk_dev2'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279261087419777222)
,p_query_column_id=>27
,p_column_alias=>'CANT_DEVUELTO'
,p_column_display_sequence=>290
,p_column_heading=>'Cant Devuelto'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279261429497777222)
,p_query_column_id=>28
,p_column_alias=>'IMPORTE_DEVUELTO'
,p_column_display_sequence=>300
,p_column_heading=>'Importe Devuelto'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279261832814777222)
,p_query_column_id=>29
,p_column_alias=>'CON_STOCK'
,p_column_display_sequence=>310
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279262212053777222)
,p_query_column_id=>30
,p_column_alias=>'STOCK'
,p_column_display_sequence=>320
,p_column_heading=>'Stock'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(383694308894271423)
,p_name=>'Problemas'
,p_parent_plug_id=>wwv_flow_imp.id(389458717503176833)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>80
,p_region_css_classes=>'refreshme tabla_color2'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select ',
'seq_id,',
'    c001 AS COD_PC,',
'    NVL(c002,((select descripcion from ca_problemas p where cod_empresa=:P_COD_EMPRESA and COD_PROBLEMA = c001))) AS PROBLEMA_CLIENTE ,',
'    c003 AS COD_PR,',
'    NVL(c004,((select descripcion from ca_problemas p where cod_empresa=:P_COD_EMPRESA and COD_PROBLEMA = c003))) AS PROBLEMA ,',
'    c005 AS COD_SOL  ,',
'    NVL(c006,((select descripcion from CA_SOLUCIONES p where cod_empresa=:P_COD_EMPRESA and COD_SOLUCION = c005))) AS SOLUCION, ',
'    apex_item.checkbox2 ( 2, c007, DECODE(c007, ''S'' , ''CHECKED'' , '''') || '' DISABLED'' ) AS REPARADO',
'',
', null as remove',
'  from apex_collections',
' where collection_name = ''VT_ORDENES_PROBLEMA''',
' order by 1 asc',
'',
' /*',
'         apex_collection.add_member(',
'                                            p_collection_name => ''VT_ORDENES_PROBLEMA'',',
'                                            p_c001 => R.COD_PROBLEMA_CLIENTE,',
'                                            p_c002 => R.PROBL_CLI ,',
'                                            p_c003 => R.COD_PROBLEMA ,',
'                                            p_c004 => R.PROBLEMA ,',
'                                            p_c005 => R.COD_SOLUCION ,',
'                                            p_c006 => R.SOLUCION,',
'                                            p_c007 => R.REPARADO',
'                                            );*/',
'                                            '))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P730_COD_USUARIO_SIN_RP'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Totales'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279262904508777223)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279263330800777223)
,p_query_column_id=>2
,p_column_alias=>'COD_PC'
,p_column_display_sequence=>20
,p_column_heading=>'Cod'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279263767818777223)
,p_query_column_id=>3
,p_column_alias=>'PROBLEMA_CLIENTE'
,p_column_display_sequence=>30
,p_column_heading=>'Problema Cliente'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279264133011777223)
,p_query_column_id=>4
,p_column_alias=>'COD_PR'
,p_column_display_sequence=>40
,p_column_heading=>'Cod'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279264523168777224)
,p_query_column_id=>5
,p_column_alias=>'PROBLEMA'
,p_column_display_sequence=>50
,p_column_heading=>'Problema'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279264907664777224)
,p_query_column_id=>6
,p_column_alias=>'COD_SOL'
,p_column_display_sequence=>60
,p_column_heading=>'Cod'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279265325355777224)
,p_query_column_id=>7
,p_column_alias=>'SOLUCION'
,p_column_display_sequence=>70
,p_column_heading=>'Solucion'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279265709898777224)
,p_query_column_id=>8
,p_column_alias=>'REPARADO'
,p_column_display_sequence=>80
,p_column_heading=>'Reparado'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279266126326777224)
,p_query_column_id=>9
,p_column_alias=>'REMOVE'
,p_column_display_sequence=>90
,p_column_heading=>'Remove'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-ps" aria-hidden="true"></span>'
,p_column_link_attr=>'data-id=#SEQ_ID#'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(389457285997176818)
,p_plug_name=>'CabeceraAAA'
,p_parent_plug_id=>wwv_flow_imp.id(389458717503176833)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(414061354607552731)
,p_plug_name=>'Problemas'
,p_parent_plug_id=>wwv_flow_imp.id(389458717503176833)
,p_region_css_classes=>'refreshme tabla_color'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select ',
'    seq_id,',
'    c001 AS COD_PC,',
'    NVL(c002,((select descripcion from ca_problemas p where cod_empresa=:P_COD_EMPRESA and COD_PROBLEMA = c001))) AS PROBLEMA_CLIENTE ,',
'    c003 AS COD_PR,',
'    NVL(c004,((select descripcion from ca_problemas p where cod_empresa=:P_COD_EMPRESA and COD_PROBLEMA = c003))) AS PROBLEMA ,',
'    c005 AS COD_SOL,',
'    NVL(c006,((select descripcion from CA_SOLUCIONES p where cod_empresa=:P_COD_EMPRESA and COD_SOLUCION = c005))) AS SOLUCION, ',
'    apex_item.checkbox2 (2, c007, DECODE(c007, ''S'' , ''CHECKED'' , '''') || '' DISABLED'' ) AS REPARADO',
'',
', null as remove,',
'    c010 cod_articulo',
'  from apex_collections',
' where collection_name = ''VT_ORDENES_PROBLEMA''',
' order by 1 asc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Problemas'
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
 p_id=>wwv_flow_imp.id(414061434974552732)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:393:&SESSION.::&DEBUG.::P393_COD_ARTICULO,P393_PROBLEMA_CLIENTE,P393_OPERACION,P393_SECUENCIA,P393_CODIGO_PROBLEMA,P393_CODIGO_SOLUCION,P393_VERIFICAR,P393_NRO_COMPROBANTE:#COD_ARTICULO#,#COD_PC#,MODIFICAR,#SEQ_ID#,#COD_PR#,#COD_SOL#,0,&'
||'P370_PARAM_NRO_OT.'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'HSEGOVIA'
,p_internal_uid=>414061434974552732
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279307116988777243)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279307585272777244)
,p_db_column_name=>'COD_PC'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('C\00F3d. Problema Cliente')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279307986738777244)
,p_db_column_name=>'PROBLEMA_CLIENTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Problema Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279308384461777244)
,p_db_column_name=>'COD_PR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('C\00F3d. Problema')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279308721539777244)
,p_db_column_name=>'PROBLEMA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('Problema T\00E9cnico')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279309144830777244)
,p_db_column_name=>'COD_SOL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('C\00F3d. Problema Soluci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279309507680777244)
,p_db_column_name=>'SOLUCION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>unistr('Soluci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279309938455777245)
,p_db_column_name=>'REPARADO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Reparado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279310364525777245)
,p_db_column_name=>'REMOVE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Remove'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279310796971777245)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(414875762132024422)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1356268'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_PC:PROBLEMA_CLIENTE:COD_PR:PROBLEMA:COD_SOL:SOLUCION:'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(610989532014552622)
,p_name=>'Mano de Obra'
,p_region_name=>'GRILLA_MO'
,p_parent_plug_id=>wwv_flow_imp.id(389458717503176833)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>110
,p_region_css_classes=>'refreshme tabla_color'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'seq_id,',
'    c001 AS COD_ARTICULO, ',
'    NVL(c002 , (select descripcion from st_articulos p where cod_empresa=:P_COD_EMPRESA and cod_articulo = c001)) as product_name,',
'        to_number(c003) as MONTO,',
'        to_number(c004) as MONTO_VENTA,',
'        (c005) as COD_TECNICO,',
'       apex_item.checkbox2 ( 2, c006, DECODE(c006, ''S'' , ''CHECKED'' , '''') || '' DISABLED'' )  as GARANTIA,',
'       apex_item.checkbox2 ( 2, c007, DECODE(c007, ''S'' , ''CHECKED'' , '''') || '' DISABLED'' )  as RECLAMO, ',
'       null as remove,',
'       c010 IND_RECLAMO,',
'       c020 MONTO_COMISION_TECNICO,',
'       c021  MONTO_COMISION_jEFE_tECNICO',
'  from apex_collections',
' where collection_name = ''VT_MANO_OBRA''',
' order by 1 asc',
'',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P730_NRO_COMPROBANTE,P730_SER_COMPROBANTE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Totales'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
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
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279311770643777246)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279312101296777246)
,p_query_column_id=>2
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>11
,p_column_heading=>'Codigo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279312580350777246)
,p_query_column_id=>3
,p_column_alias=>'PRODUCT_NAME'
,p_column_display_sequence=>21
,p_column_heading=>'Descripcion de la Mano de Obra'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279312969804777246)
,p_query_column_id=>4
,p_column_alias=>'MONTO'
,p_column_display_sequence=>31
,p_column_heading=>'Monto Base'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279313395945777246)
,p_query_column_id=>5
,p_column_alias=>'MONTO_VENTA'
,p_column_display_sequence=>41
,p_column_heading=>'Monto Venta'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279313715154777247)
,p_query_column_id=>6
,p_column_alias=>'COD_TECNICO'
,p_column_display_sequence=>51
,p_column_heading=>'Tecnico'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279314197180777247)
,p_query_column_id=>7
,p_column_alias=>'GARANTIA'
,p_column_display_sequence=>61
,p_column_heading=>'Garantia'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279314511155777247)
,p_query_column_id=>8
,p_column_alias=>'RECLAMO'
,p_column_display_sequence=>71
,p_column_heading=>'Reclamo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279314995632777247)
,p_query_column_id=>9
,p_column_alias=>'REMOVE'
,p_column_display_sequence=>81
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-mo" aria-hidden="true"></span>'
,p_column_link_attr=>'data-id=#SEQ_ID#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279315301033777247)
,p_query_column_id=>10
,p_column_alias=>'IND_RECLAMO'
,p_column_display_sequence=>91
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279315721576777247)
,p_query_column_id=>11
,p_column_alias=>'MONTO_COMISION_TECNICO'
,p_column_display_sequence=>101
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279316197346777247)
,p_query_column_id=>12
,p_column_alias=>'MONTO_COMISION_JEFE_TECNICO'
,p_column_display_sequence=>111
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(393387146927321617)
,p_plug_name=>'RECLAMOS'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>950
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(394593553519761417)
,p_plug_name=>'B_MOBRA'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>960
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select ',
'    seq_id,',
'    c001 COD_EMPRESA,',
'    c002 TIP_COMPROBANTE,',
'    c003 SER_COMPROBANTE,',
'    c004 NRO_COMPROBANTE,',
'    c005 NRO_ORDEN,',
'    c006 COD_ARTICULO,',
'    c007 PORCENTAJE_CLIENTE,',
'    c008 DESC_ARTICULO,',
'    c009 COD_TECNICO,',
'    c010 NOM_TECNICO,',
'    c011 CANTIDAD,',
'    c012 COD_MONEDA,',
'    c013 DESC_MONEDA,',
'    c014 TIP_CAMBIO,',
'    c015 MONTO,',
'    c016 MONTO_GAR_JT,',
'    c017 TOT_MOBRA_ANT,',
'    c018 GARANTIA,',
'    c019 IND_RECLAMO,',
'    c020 IND_HISTORICO,',
'    c021 SUM_CANT,',
'    c022 MONTO_VENTA,',
'    c023 MONTO_JT_COMISION,',
'    c024  MONTO_COMISION_TECNICO,',
'    c025 MONTO_COMISION_JEFE_TECNICO,',
'    c026 PORCENTAJE_COMISION_JT,',
'    c027 TOTAL_COMISION_TECNICO,',
'    c028 TOTAL_COMISION_JEFE_TECNICO,',
'    c029 COMISION_JT_CUMPLE,  ',
'    c030 TOTAL_COMISION,',
'    c031 MONTO_ADICIONAL,',
'    c032 PORCENTAJE_SPP',
'  from apex_collections',
' where collection_name = ''VT_B_MOBRA'';'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P730_COD_USUARIO_SIN_RP'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'B_MOBRA'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(394593768139761419)
,p_name=>'SEQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEQ_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Seq Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>10
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(394593861711761420)
,p_name=>'COD_EMPRESA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_EMPRESA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Empresa'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(394593961619761421)
,p_name=>'TIP_COMPROBANTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIP_COMPROBANTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Tip Comprobante'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(394594017249761422)
,p_name=>'SER_COMPROBANTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SER_COMPROBANTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ser Comprobante'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(394594180355761423)
,p_name=>'NRO_COMPROBANTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO_COMPROBANTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nro Comprobante'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(394594289724761424)
,p_name=>'NRO_ORDEN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NRO_ORDEN'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nro Orden'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(394594390620761425)
,p_name=>'COD_ARTICULO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_ARTICULO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Articulo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(394594465010761426)
,p_name=>'PORCENTAJE_CLIENTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PORCENTAJE_CLIENTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Porcentaje Cliente'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(394594545901761427)
,p_name=>'DESC_ARTICULO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESC_ARTICULO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Desc Articulo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(394594692932761428)
,p_name=>'COD_TECNICO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_TECNICO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Tecnico'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(394594807086761429)
,p_name=>'NOM_TECNICO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOM_TECNICO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Nom Tecnico'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(394594881266761430)
,p_name=>'CANTIDAD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CANTIDAD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cantidad'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(394594948156761431)
,p_name=>'COD_MONEDA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COD_MONEDA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cod Moneda'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(394595028163761432)
,p_name=>'DESC_MONEDA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESC_MONEDA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Desc Moneda'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(394595169612761433)
,p_name=>'TIP_CAMBIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIP_CAMBIO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Tip Cambio'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(394595273355761434)
,p_name=>'MONTO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MONTO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Monto'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(394595394211761435)
,p_name=>'MONTO_GAR_JT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MONTO_GAR_JT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Monto Gar Jt'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(394595440991761436)
,p_name=>'TOT_MOBRA_ANT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOT_MOBRA_ANT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Tot Mobra Ant'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(394595540913761437)
,p_name=>'GARANTIA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GARANTIA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Garantia'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(394595688666761438)
,p_name=>'IND_RECLAMO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IND_RECLAMO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ind Reclamo'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(394595791806761439)
,p_name=>'IND_HISTORICO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IND_HISTORICO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ind Historico'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(394595823440761440)
,p_name=>'SUM_CANT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUM_CANT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Sum Cant'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(394595923213761441)
,p_name=>'MONTO_VENTA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MONTO_VENTA'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Monto Venta'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(394596029578761442)
,p_name=>'MONTO_JT_COMISION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MONTO_JT_COMISION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Monto Jt Comision'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(394596189781761443)
,p_name=>'MONTO_COMISION_TECNICO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MONTO_COMISION_TECNICO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Monto Comision Tecnico'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(394596251573761444)
,p_name=>'MONTO_COMISION_JEFE_TECNICO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MONTO_COMISION_JEFE_TECNICO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Monto Comision Jefe Tecnico'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>260
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(394596310634761445)
,p_name=>'PORCENTAJE_COMISION_JT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PORCENTAJE_COMISION_JT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Porcentaje Comision Jt'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>270
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(394596418845761446)
,p_name=>'TOTAL_COMISION_TECNICO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_COMISION_TECNICO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Total Comision Tecnico'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>280
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(394596559303761447)
,p_name=>'TOTAL_COMISION_JEFE_TECNICO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_COMISION_JEFE_TECNICO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Total Comision Jefe Tecnico'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>290
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(394596706553761448)
,p_name=>'COMISION_JT_CUMPLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMISION_JT_CUMPLE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Comision Jt Cumple'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>300
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(394596788817761449)
,p_name=>'TOTAL_COMISION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_COMISION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Total Comision'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>310
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(394596836437761450)
,p_name=>'MONTO_ADICIONAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MONTO_ADICIONAL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Monto Adicional'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>320
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(394596932243761451)
,p_name=>'PORCENTAJE_SPP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PORCENTAJE_SPP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Porcentaje Spp'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>330
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(394593689428761418)
,p_internal_uid=>394593689428761418
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(394604746341907952)
,p_interactive_grid_id=>wwv_flow_imp.id(394593689428761418)
,p_static_id=>'1153558'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(394604991635907953)
,p_report_id=>wwv_flow_imp.id(394604746341907952)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(394605477578907956)
,p_view_id=>wwv_flow_imp.id(394604991635907953)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(394593768139761419)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(394606371128907960)
,p_view_id=>wwv_flow_imp.id(394604991635907953)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(394593861711761420)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(394607213438907961)
,p_view_id=>wwv_flow_imp.id(394604991635907953)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(394593961619761421)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(394608158202907963)
,p_view_id=>wwv_flow_imp.id(394604991635907953)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(394594017249761422)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(394609094072907965)
,p_view_id=>wwv_flow_imp.id(394604991635907953)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(394594180355761423)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(394610003823907967)
,p_view_id=>wwv_flow_imp.id(394604991635907953)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(394594289724761424)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(394610816799907969)
,p_view_id=>wwv_flow_imp.id(394604991635907953)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(394594390620761425)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(394611733849907971)
,p_view_id=>wwv_flow_imp.id(394604991635907953)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(394594465010761426)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(394612647224907972)
,p_view_id=>wwv_flow_imp.id(394604991635907953)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(394594545901761427)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(394613519196907974)
,p_view_id=>wwv_flow_imp.id(394604991635907953)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(394594692932761428)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(394614448518907976)
,p_view_id=>wwv_flow_imp.id(394604991635907953)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(394594807086761429)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(394615379259907978)
,p_view_id=>wwv_flow_imp.id(394604991635907953)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(394594881266761430)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(394616242444907980)
,p_view_id=>wwv_flow_imp.id(394604991635907953)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(394594948156761431)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(394617110194907981)
,p_view_id=>wwv_flow_imp.id(394604991635907953)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(394595028163761432)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(394618037313907983)
,p_view_id=>wwv_flow_imp.id(394604991635907953)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(394595169612761433)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(394618917348907985)
,p_view_id=>wwv_flow_imp.id(394604991635907953)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(394595273355761434)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(394619751109907986)
,p_view_id=>wwv_flow_imp.id(394604991635907953)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(394595394211761435)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(394620680098907988)
,p_view_id=>wwv_flow_imp.id(394604991635907953)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(394595440991761436)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(394621517576907990)
,p_view_id=>wwv_flow_imp.id(394604991635907953)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(394595540913761437)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(394622467174907992)
,p_view_id=>wwv_flow_imp.id(394604991635907953)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(394595688666761438)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(394623377300907994)
,p_view_id=>wwv_flow_imp.id(394604991635907953)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(394595791806761439)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(394624247543907995)
,p_view_id=>wwv_flow_imp.id(394604991635907953)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(394595823440761440)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(394625134520907997)
,p_view_id=>wwv_flow_imp.id(394604991635907953)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(394595923213761441)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(394626103254907999)
,p_view_id=>wwv_flow_imp.id(394604991635907953)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(394596029578761442)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(394626966386908001)
,p_view_id=>wwv_flow_imp.id(394604991635907953)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(394596189781761443)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(394627883862908003)
,p_view_id=>wwv_flow_imp.id(394604991635907953)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(394596251573761444)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(394628711983908004)
,p_view_id=>wwv_flow_imp.id(394604991635907953)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(394596310634761445)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(394629656107908006)
,p_view_id=>wwv_flow_imp.id(394604991635907953)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(394596418845761446)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(394630564067908008)
,p_view_id=>wwv_flow_imp.id(394604991635907953)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(394596559303761447)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(394631412040908010)
,p_view_id=>wwv_flow_imp.id(394604991635907953)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(394596706553761448)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(394632369992908012)
,p_view_id=>wwv_flow_imp.id(394604991635907953)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(394596788817761449)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(394633241426908014)
,p_view_id=>wwv_flow_imp.id(394604991635907953)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(394596836437761450)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(394634188281908015)
,p_view_id=>wwv_flow_imp.id(394604991635907953)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(394596932243761451)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(394598251134761464)
,p_plug_name=>'PARAMETER'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>970
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(396748334730119454)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(398592184793441842)
,p_plug_name=>'Rechazos'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>980
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(398959416253055637)
,p_plug_name=>'TIPO CIERRE'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1000
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(401917887571025833)
,p_plug_name=>'Detalle'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1010
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(401920637239025861)
,p_plug_name=>unistr('Detalle de Comisi\00F3n OT')
,p_parent_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>7
,p_plug_display_column=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(465509352491051321)
,p_plug_name=>'detalles'
,p_parent_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(403269355592604515)
,p_plug_name=>'Registros de Seguimientos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1020
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select ',
'    seq_id,',
'    c001 NOMBRE, ',
'    c002 cod_motivo',
'  from apex_collections',
' where collection_name = ''TMP_REG_SEGUIMIENTOS'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Registros de Seguimientos'
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
 p_id=>wwv_flow_imp.id(403269484804604516)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'HSEGOVIA'
,p_internal_uid=>403269484804604516
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279398019390777291)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279398454548777291)
,p_db_column_name=>'NOMBRE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279398802377777291)
,p_db_column_name=>'COD_MOTIVO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cod Motivo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(403422800385795820)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1241738'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOMBRE:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(403269749878604519)
,p_plug_name=>'Registros Call'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>1030
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select ',
'    seq_id,',
'    c001 NOMBRE',
'  from apex_collections',
' where collection_name = ''TMP_REG_CALL'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Registros Call'
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
 p_id=>wwv_flow_imp.id(403269898335604520)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'HSEGOVIA'
,p_internal_uid=>403269898335604520
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279401437431777293)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279401895212777293)
,p_db_column_name=>'NOMBRE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(403423358966795824)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1241744'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOMBRE:'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(403271775725604539)
,p_name=>'Almacenamiento'
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>51
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'refreshme tabla_color'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select ',
'    seq_id,',
'    c001  empleado,',
'    c002  fec_alta,',
'    c003  tipo,',
'    c004  usuario,',
'    c005  OBSERVACION,',
'    c006  posicion',
'  from apex_collections',
' where collection_name = ''TMP_UBICACIONES'';'))
,p_display_condition_type=>'NEVER'
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
 p_id=>wwv_flow_imp.id(279404478165777294)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Seq Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279404861040777294)
,p_query_column_id=>2
,p_column_alias=>'EMPLEADO'
,p_column_display_sequence=>20
,p_column_heading=>'Empleado'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279405278620777295)
,p_query_column_id=>3
,p_column_alias=>'FEC_ALTA'
,p_column_display_sequence=>30
,p_column_heading=>'Fec Alta'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279405616177777295)
,p_query_column_id=>4
,p_column_alias=>'TIPO'
,p_column_display_sequence=>40
,p_column_heading=>'Tipo'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279406050334777295)
,p_query_column_id=>5
,p_column_alias=>'USUARIO'
,p_column_display_sequence=>50
,p_column_heading=>'Usuario'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279406462419777295)
,p_query_column_id=>6
,p_column_alias=>'OBSERVACION'
,p_column_display_sequence=>60
,p_column_heading=>'Observacion'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279406813580777295)
,p_query_column_id=>7
,p_column_alias=>'POSICION'
,p_column_display_sequence=>70
,p_column_heading=>'Posicion'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(404319178079631655)
,p_plug_name=>unistr('Art\00EDculos Presupuestados')
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>990
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(414059906283552716)
,p_plug_name=>'SNC'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1040
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(414059923028552717)
,p_plug_name=>'Solicitud no conforme'
,p_parent_plug_id=>wwv_flow_imp.id(414059906283552716)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(428273727983046040)
,p_plug_name=>'Garantia'
,p_region_name=>'gara'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1050
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(462013550187984115)
,p_plug_name=>'Botones'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>21
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(496486159656989723)
,p_plug_name=>'Mapa'
,p_region_name=>'mapa'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_region_attributes=>'style="border-color: #bce8f1; background-color:#d9edf7; color:#3a87ad; font-weight:bold; width: 1011px;min-height: 0px; max-height: none; height: 702px" '
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1070
,p_plug_source_type=>'PLUGIN_COM.JK64.SIMPLE_GOOGLE_MAP'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'-25,-57'
,p_attribute_02=>'8'
,p_attribute_03=>'600'
,p_attribute_04=>'P730_LATITUD_LONGITUD'
,p_attribute_05=>'16'
,p_attribute_07=>'N'
,p_attribute_08=>'P730_BUSQUEDA'
,p_attribute_09=>'PY'
,p_attribute_11=>'P730_BUSQUEDA_2'
,p_attribute_12=>'Y'
,p_attribute_13=>'13'
,p_attribute_17=>'auto'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(660033672180754053)
,p_plug_name=>'Parametros'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>11
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(662358069865347421)
,p_plug_name=>'Principal'
,p_region_name=>'REG_OT'
,p_region_css_classes=>'CSS_CLASS'
,p_icon_css_classes=>'fa-user'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>41
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(285815053004143343)
,p_plug_name=>unistr('<span class="t-Icon t-Icon--right fa fa-user-wrench" aria-hidden="true"> Servicio T\00E9cnico Autorizado</span>')
,p_parent_plug_id=>wwv_flow_imp.id(662358069865347421)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(339828454235701531)
,p_plug_name=>'Informe Tecnico'
,p_parent_plug_id=>wwv_flow_imp.id(662358069865347421)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(389456948085176815)
,p_plug_name=>'<span class="t-Icon t-Icon--right fa fa-user" aria-hidden="true"> Datos del Cliente</span>'
,p_region_name=>'datos_clientes'
,p_parent_plug_id=>wwv_flow_imp.id(662358069865347421)
,p_region_css_classes=>'CSS_CLASS'
,p_icon_css_classes=>'fa-user'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(389457131413176817)
,p_plug_name=>'Orden'
,p_parent_plug_id=>wwv_flow_imp.id(662358069865347421)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(389457348657176819)
,p_plug_name=>'DISTRIBUIDOR'
,p_parent_plug_id=>wwv_flow_imp.id(662358069865347421)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_region_attributes=>'style="background-color:white"'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(389457747608176823)
,p_plug_name=>'Presup'
,p_parent_plug_id=>wwv_flow_imp.id(662358069865347421)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(414060640747552724)
,p_plug_name=>'Region 1'
,p_parent_plug_id=>wwv_flow_imp.id(389457747608176823)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>140
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(414060781444552725)
,p_plug_name=>'Region 2'
,p_parent_plug_id=>wwv_flow_imp.id(389457747608176823)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>150
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(389458553318176831)
,p_plug_name=>unistr('<span class="t-Icon t-Icon--right fa fa-user-wrench" aria-hidden="true"> Consulta de Orden T\00E9cnica</span>')
,p_region_name=>'orden_tecnica'
,p_parent_plug_id=>wwv_flow_imp.id(662358069865347421)
,p_region_css_classes=>'refreshme tabla_color'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(579831524719542033)
,p_plug_name=>'Comprobantes Adjuntos'
,p_region_name=>'Adjunto'
,p_parent_plug_id=>wwv_flow_imp.id(389458553318176831)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_column=>7
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*select nro_comprobante, comentario,cod_usuario, fecha,sys.dbms_lob.getlength(archivo_adjunto) archivo_adjuntO, MIMETYPE,CREATED_DATE, filename,  archivo_adjuntO imagen',
'from v_imagenes_ot',
'where (numero_ot=:P730_PARAM_NRO_OT or numero_ot is null)',
'AND (serie_ot= :P730_PARAM_SER_OT or serie_ot is null)*/',
'',
'select c.collection_name,c.seq_id,c.c003 file_name,c.c002 as mime_type,dbms_lob.getlength(c.blob001) pdf_blob from  apex_collections c',
'',
'where collection_name = ''CAORDTRA_370_IMAGENES'''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P730_PARAM_SER_OT,P730_PARAM_NRO_OT'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Comprobantes Adjuntos'
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
 p_id=>wwv_flow_imp.id(330122592196269408)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'NZARATE'
,p_internal_uid=>330122592196269408
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(330123566207269418)
,p_db_column_name=>'COLLECTION_NAME'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Collection Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(330123602309269419)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>20
,p_column_identifier=>'K'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(330123770855269420)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>30
,p_column_identifier=>'L'
,p_column_label=>'Archivo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(330123859013269421)
,p_db_column_name=>'MIME_TYPE'
,p_display_order=>40
,p_column_identifier=>'M'
,p_column_label=>'Mime Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(330123980384269422)
,p_db_column_name=>'PDF_BLOB'
,p_display_order=>50
,p_column_identifier=>'N'
,p_column_label=>'Descargar'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'DOWNLOAD:APEX_COLLECTIONS:BLOB001:COLLECTION_NAME::C002:C003:::attachment::'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(332217816099982427)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3322179'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FILE_NAME:PDF_BLOB:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(610607678602109845)
,p_plug_name=>'Problemas'
,p_region_name=>'GRILLA_PS'
,p_parent_plug_id=>wwv_flow_imp.id(389458553318176831)
,p_region_css_classes=>'refreshme tabla_color'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select ',
'    seq_id,',
'    c001 AS COD_PC,',
'    NVL(c002,((select descripcion from ca_problemas p where cod_empresa=:P_COD_EMPRESA and COD_PROBLEMA = c001))) AS PROBLEMA_CLIENTE ,',
'    c003 AS COD_PR,',
'    NVL(c004,((select descripcion from ca_problemas p where cod_empresa=:P_COD_EMPRESA and COD_PROBLEMA = c003))) AS PROBLEMA ,',
'    c005 AS COD_SOL,',
'    NVL(c006,((select descripcion from CA_SOLUCIONES p where cod_empresa=:P_COD_EMPRESA and COD_SOLUCION = c005))) AS SOLUCION, ',
'    apex_item.checkbox2 (2, c007, DECODE(c007, ''S'' , ''CHECKED'' , '''') || '' DISABLED'' ) AS REPARADO',
'',
', null as remove,',
'    c010 cod_articulo',
'  from apex_collections',
' where collection_name = ''VT_ORDENES_PROBLEMA''',
' order by 1 asc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Problemas'
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
 p_id=>wwv_flow_imp.id(398085772794623631)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:393:&SESSION.::&DEBUG.::P393_COD_ARTICULO,P393_PROBLEMA_CLIENTE,P393_OPERACION,P393_SECUENCIA,P393_CODIGO_PROBLEMA,P393_CODIGO_SOLUCION,P393_NRO_COMPROBANTE:#COD_ARTICULO#,#COD_PC#,MODIFICAR,#SEQ_ID#,#COD_PR#,#COD_SOL#,&P370_PARAM_NRO_OT'
||'.'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'HSEGOVIA'
,p_internal_uid=>398085772794623631
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279463966504777321)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279464324886777321)
,p_db_column_name=>'COD_PC'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('C\00F3d. Problema Cliente')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279464772168777321)
,p_db_column_name=>'PROBLEMA_CLIENTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Problema Cliente'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279465160849777321)
,p_db_column_name=>'COD_PR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('C\00F3d. Problema')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279465508214777321)
,p_db_column_name=>'PROBLEMA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Problema Real '
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279465930735777322)
,p_db_column_name=>'COD_SOL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('C\00F3d. Problema Soluci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279466371917777322)
,p_db_column_name=>'SOLUCION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>unistr('Soluci\00F3n')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279466776286777322)
,p_db_column_name=>'REPARADO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Reparado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279467178670777322)
,p_db_column_name=>'REMOVE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Remove'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(279467500930777322)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(398172303484594174)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1189233'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_PC:PROBLEMA_CLIENTE:COD_PR:PROBLEMA:COD_SOL:SOLUCION:'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(404317621790631640)
,p_name=>'Repuestos Utilizados'
,p_parent_plug_id=>wwv_flow_imp.id(662358069865347421)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>100
,p_region_css_classes=>'refreshme  tabla_color'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'seq_id, ',
'(select cod_art_corto from st_articulos p where cod_empresa=:P_COD_EMPRESA and cod_articulo = c001) as codigo_corto,',
'c001 as cod_articulo,',
'NVL(c002,(select descripcion from st_articulos p where cod_empresa=:P_COD_EMPRESA and cod_articulo = c001)) as product_name,',
'        to_number(c003) as CANTIDAD,',
'        to_number(c004) as PRECIO, ',
'        to_number(c005) as total',
'       , null as remove,',
'       ''<button type="button" id="btndev">DEVOLVER</button>'' Devolver',
'  from apex_collections',
' where collection_name = ''VT_REPUESTOS_UTILIZADOS''',
' order by 1 asc'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P730_NRO_COMPROBANTE,P730_SER_COMPROBANTE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'----------- Total'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279458500487777318)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Seq Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279458973977777318)
,p_query_column_id=>2
,p_column_alias=>'CODIGO_CORTO'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279459326127777318)
,p_query_column_id=>3
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>30
,p_column_heading=>'Cod Articulo'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP,11:P11_COD_ARTICULO:#COD_ARTICULO#'
,p_column_linktext=>'#COD_ARTICULO#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279459780941777319)
,p_query_column_id=>4
,p_column_alias=>'PRODUCT_NAME'
,p_column_display_sequence=>40
,p_column_heading=>unistr('Descripci\00F3n')
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279460125330777319)
,p_query_column_id=>5
,p_column_alias=>'CANTIDAD'
,p_column_display_sequence=>50
,p_column_heading=>'Cantidad'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279460562111777319)
,p_query_column_id=>6
,p_column_alias=>'PRECIO'
,p_column_display_sequence=>60
,p_column_heading=>'Precio Lista'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G990'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279460962703777319)
,p_query_column_id=>7
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>70
,p_column_heading=>'Total'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279461342187777319)
,p_query_column_id=>8
,p_column_alias=>'REMOVE'
,p_column_display_sequence=>80
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-ru" aria-hidden="true"></span>'
,p_column_link_attr=>'data-id=#SEQ_ID#'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279461745371777319)
,p_query_column_id=>9
,p_column_alias=>'DEVOLVER'
,p_column_display_sequence=>90
,p_column_heading=>'Devolver'
,p_use_as_row_header=>'N'
,p_column_css_class=>'chk_dev'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(413366679380860664)
,p_plug_name=>'Presupuestos'
,p_parent_plug_id=>wwv_flow_imp.id(662358069865347421)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>110
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(339830390732701550)
,p_plug_name=>'Motivo Rechazo'
,p_parent_plug_id=>wwv_flow_imp.id(413366679380860664)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1000
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(385774784974537762)
,p_plug_name=>'Presupuesto'
,p_parent_plug_id=>wwv_flow_imp.id(413366679380860664)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>990
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(389460552689176851)
,p_plug_name=>'Respuestos Utilizados'
,p_parent_plug_id=>wwv_flow_imp.id(385774784974537762)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>120
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(394989132891036434)
,p_plug_name=>'Pedidos de Repuestos'
,p_parent_plug_id=>wwv_flow_imp.id(385774784974537762)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>50
,p_plug_grid_column_span=>8
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(394989536738036438)
,p_plug_name=>'Solicitud / Entrega de Productos'
,p_parent_plug_id=>wwv_flow_imp.id(385774784974537762)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(396643690513791352)
,p_name=>'Repuestos Devueltos'
,p_region_name=>'B_DETALLE'
,p_parent_plug_id=>wwv_flow_imp.id(385774784974537762)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>130
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select ',
'    seq_id,',
'    c001 COD_ARTICULO,',
'    c002 DESC_ARTICULO,',
'    c003 COD_UNIDAD_MEDIDA,',
'    c004 DESC_UNIDAD_MEDIDA,',
'    c005 CANTIDAD,',
'    c006 CANTIDAD_UB,',
'    c007 TIP_ENT_SAL,',
'    c008 COD_GRUPO_ART,',
'    c009 SER_ENT_SAL,',
'    c010 NRO_ENT_SAL,',
'    c011 FECHA,',
'    c012 MONTO_TOTAL,',
'    c013 PRECIO_LISTA,',
'    c014 TOT_LISTA',
'  from apex_collections',
' where collection_name = ''VT_B_DETALLE'';'))
,p_display_condition_type=>'NEVER'
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
 p_id=>wwv_flow_imp.id(279299362695777240)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Seq Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279299748111777240)
,p_query_column_id=>2
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>20
,p_column_heading=>unistr('C\00F3d. Articulo')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279300122327777240)
,p_query_column_id=>3
,p_column_alias=>'DESC_ARTICULO'
,p_column_display_sequence=>30
,p_column_heading=>unistr('Descripci\00F3n Art\00EDculo')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279300585011777240)
,p_query_column_id=>4
,p_column_alias=>'COD_UNIDAD_MEDIDA'
,p_column_display_sequence=>40
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279300916515777240)
,p_query_column_id=>5
,p_column_alias=>'DESC_UNIDAD_MEDIDA'
,p_column_display_sequence=>50
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279295338077777238)
,p_query_column_id=>6
,p_column_alias=>'CANTIDAD'
,p_column_display_sequence=>60
,p_column_heading=>'Cantidad'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279295714430777238)
,p_query_column_id=>7
,p_column_alias=>'CANTIDAD_UB'
,p_column_display_sequence=>70
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279296182079777238)
,p_query_column_id=>8
,p_column_alias=>'TIP_ENT_SAL'
,p_column_display_sequence=>80
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279296549606777238)
,p_query_column_id=>9
,p_column_alias=>'COD_GRUPO_ART'
,p_column_display_sequence=>90
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279296908603777239)
,p_query_column_id=>10
,p_column_alias=>'SER_ENT_SAL'
,p_column_display_sequence=>100
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279297350545777239)
,p_query_column_id=>11
,p_column_alias=>'NRO_ENT_SAL'
,p_column_display_sequence=>110
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279297721774777239)
,p_query_column_id=>12
,p_column_alias=>'FECHA'
,p_column_display_sequence=>120
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279298161935777239)
,p_query_column_id=>13
,p_column_alias=>'MONTO_TOTAL'
,p_column_display_sequence=>500
,p_column_heading=>'Monto Total'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279298536928777239)
,p_query_column_id=>14
,p_column_alias=>'PRECIO_LISTA'
,p_column_display_sequence=>140
,p_column_heading=>'Precio Lista'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279298925538777239)
,p_query_column_id=>15
,p_column_alias=>'TOT_LISTA'
,p_column_display_sequence=>150
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(610992751991552654)
,p_name=>'Repuestos Solicitados'
,p_region_name=>'GRILLA_RS'
,p_parent_plug_id=>wwv_flow_imp.id(385774784974537762)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>100
,p_region_css_classes=>'refreshme tabla_color'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'seq_id,',
'        c001 as cod_articulo,',
'        nvl(c002,(select descripcion from st_articulos p where cod_empresa=:P_COD_EMPRESA and cod_articulo = c001)) as Descripcion,',
'        (c003) as cantidad,',
'        (c004) as cantidad_pedida,     ',
'        (c005) as cantidad_ot,',
'         apex_item.checkbox2 ( 1, c009, DECODE(c009, ''S'' , ''CHECKED'' , ''UNCHECKED'') || DECODE(c006, ''I'' , '' DISABLED'' , DECODE(c009, ''S'' , '' DISABLED'' , c010, ''S'' , '' DISABLED'' ,'''') ) )  as RECEPCIONADO,',
'         apex_item.checkbox2 ( 2, c010, DECODE(c010, ''S'' , ''CHECKED'' , ''UNCHECKED'') || DECODE(c006, ''I'' , '' DISABLED'' , DECODE(c009, ''S'' , '' DISABLED'' , c010, ''S'' , '' DISABLED'' ,'''') ) )  as RECHAZADO, ',
'         null as remove, ',
'        /* ''<span class="ser_rep_sol">''||(c007)||''</span> ''ser,  */',
'        (c007) as ser_rep_sol,    ',
'        (c008) as nro_rep_sol',
'  from apex_collections',
' where collection_name = ''VT_ORDENES_REPUESTOS_PEDIDOS''',
' order by 1 asc',
'',
'/*'' DISABLED''*/',
''))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P730_COD_USUARIO_SIN_RP'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Totales'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279301659365777241)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Seq'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279302017568777241)
,p_query_column_id=>2
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>20
,p_column_heading=>unistr('C\00F3d. Art\00EDculo')
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP,11:P11_COD_ARTICULO:#COD_ARTICULO#'
,p_column_linktext=>'#COD_ARTICULO#'
,p_column_link_attr=>'class="COD_ARTICULO"'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279302445667777241)
,p_query_column_id=>3
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>30
,p_column_heading=>unistr('Descripci\00F3n')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279302834690777241)
,p_query_column_id=>4
,p_column_alias=>'CANTIDAD'
,p_column_display_sequence=>40
,p_column_heading=>'Cant.Conf'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279303219960777241)
,p_query_column_id=>5
,p_column_alias=>'CANTIDAD_PEDIDA'
,p_column_display_sequence=>50
,p_column_heading=>'Cant.Pedida'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279303612693777241)
,p_query_column_id=>6
,p_column_alias=>'CANTIDAD_OT'
,p_column_display_sequence=>60
,p_column_heading=>'Cant.Recep'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279304033359777242)
,p_query_column_id=>7
,p_column_alias=>'RECEPCIONADO'
,p_column_display_sequence=>70
,p_column_heading=>'Recepcionado'
,p_use_as_row_header=>'N'
,p_column_css_class=>'chk_recep'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279304413383777242)
,p_query_column_id=>8
,p_column_alias=>'RECHAZADO'
,p_column_display_sequence=>80
,p_column_heading=>'Rechazado'
,p_use_as_row_header=>'N'
,p_column_css_class=>'chk_rechaz'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279304875335777242)
,p_query_column_id=>9
,p_column_alias=>'REMOVE'
,p_column_display_sequence=>90
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-rs" aria-hidden="true"></span>'
,p_column_link_attr=>'data-id=#SEQ_ID#'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279305255902777242)
,p_query_column_id=>10
,p_column_alias=>'SER_REP_SOL'
,p_column_display_sequence=>100
,p_column_heading=>'Ser Rep Sol'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279305692824777242)
,p_query_column_id=>11
,p_column_alias=>'NRO_REP_SOL'
,p_column_display_sequence=>110
,p_column_heading=>'Nro Rep Sol'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(611055429916857627)
,p_name=>'Repuestos Utilizados'
,p_region_name=>'GRILLA_RU'
,p_parent_plug_id=>wwv_flow_imp.id(385774784974537762)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>110
,p_region_css_classes=>'refreshme  tabla_color'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'seq_id, ',
'(select cod_art_corto from st_articulos p where cod_empresa=:P_COD_EMPRESA and cod_articulo = c001) as codigo_corto,',
'c001 as cod_articulo,',
'NVL(c002,(select descripcion from st_articulos p where cod_empresa=:P_COD_EMPRESA and cod_articulo = c001)) as product_name,',
'        to_number(c003) as CANTIDAD,',
'        to_number(c004) as PRECIO, ',
'        to_number(c005) as total',
'       , null as remove,',
'       ''<button type="button" id="btndev">DEVOLVER</button>'' Devolver',
'  from apex_collections',
' where collection_name = ''VT_ORDENES_REPUESTOS_UTILIZADOS''',
' order by 1 asc'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P730_NRO_COMPROBANTE,P730_SER_COMPROBANTE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'----------- Total'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279285583696777233)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279285920339777234)
,p_query_column_id=>2
,p_column_alias=>'CODIGO_CORTO'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279286362199777234)
,p_query_column_id=>3
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>4
,p_column_heading=>'Cod Articulo'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP,11:P11_COD_ARTICULO:#COD_ARTICULO#'
,p_column_linktext=>'#COD_ARTICULO#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279286735378777234)
,p_query_column_id=>4
,p_column_alias=>'PRODUCT_NAME'
,p_column_display_sequence=>8
,p_column_heading=>unistr('Descripci\00F3n')
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279287166797777234)
,p_query_column_id=>5
,p_column_alias=>'CANTIDAD'
,p_column_display_sequence=>24
,p_column_heading=>'Cantidad'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279287555718777234)
,p_query_column_id=>6
,p_column_alias=>'PRECIO'
,p_column_display_sequence=>34
,p_column_heading=>'Precio'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G990'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279287935500777234)
,p_query_column_id=>7
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>64
,p_column_heading=>'Total'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279288368114777235)
,p_query_column_id=>8
,p_column_alias=>'REMOVE'
,p_column_display_sequence=>74
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-ru" aria-hidden="true"></span>'
,p_column_link_attr=>'data-id=#SEQ_ID#'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279288736307777235)
,p_query_column_id=>9
,p_column_alias=>'DEVOLVER'
,p_column_display_sequence=>84
,p_column_heading=>'Devolver'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'NEVER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
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
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(662409959364347261)
,p_name=>'Presupuesto'
,p_region_name=>'GRILLA_PRE'
,p_parent_plug_id=>wwv_flow_imp.id(385774784974537762)
,p_template=>wwv_flow_imp.id(40108275410263656)
,p_display_sequence=>80
,p_region_css_classes=>'refreshme tabla_color'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'seq_id,',
'        c001 as cod_articulo,  ',
'        nvl(c002,(select descripcion from st_articulos p where cod_empresa=:P_COD_EMPRESA and cod_articulo = c001)) as desc_articulo, ',
'        c003 as cantidad, ',
'        to_number(c004) as monto_total,  ',
'        apex_item.checkbox2 ( 2, c005, DECODE(c005, ''S'' , ''CHECKED'' , '''') || '' DISABLED'' ) AS EN_STOCK,',
'       null as remove',
'  from apex_collections',
' where collection_name = ''VT_ORDENES_PRESUPUESTO''',
' order by 1 asc',
'',
'',
' /*',
'           apex_collection.add_member(',
'                                            p_collection_name => ''VT_ORDENES_PRESUPUESTO'',',
'                                            p_c001 => R.cod_articulo,',
'                                            p_c002 => R.desc_articulo ,',
'                                            p_c003 => R.cantidad ,',
'                                            p_c004 => R.MONTO_TOTAL,',
'                                            p_c005 => R.EN_STOCK  ',
'                                            );',
' */'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P730_COD_USUARIO_SIN_RP'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Totales'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279291058268777236)
,p_query_column_id=>1
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279291411650777236)
,p_query_column_id=>2
,p_column_alias=>'COD_ARTICULO'
,p_column_display_sequence=>5
,p_column_heading=>'Cod Articulo'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP,11:P11_COD_ARTICULO:#COD_ARTICULO#'
,p_column_linktext=>'#COD_ARTICULO#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279291885260777236)
,p_query_column_id=>3
,p_column_alias=>'DESC_ARTICULO'
,p_column_display_sequence=>15
,p_column_heading=>unistr('Descripci\00F3n del Articulo')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279292262677777236)
,p_query_column_id=>4
,p_column_alias=>'CANTIDAD'
,p_column_display_sequence=>25
,p_column_heading=>'Cantidad'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279292649416777236)
,p_query_column_id=>5
,p_column_alias=>'MONTO_TOTAL'
,p_column_display_sequence=>35
,p_column_heading=>'Monto Total'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_css_style=>'font-size: var(--ut-report-cell-font-size, .95rem);'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279293016061777237)
,p_query_column_id=>6
,p_column_alias=>'EN_STOCK'
,p_column_display_sequence=>45
,p_column_heading=>'En Stock'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_when_cond_type=>'NEVER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(279293494216777237)
,p_query_column_id=>7
,p_column_alias=>'REMOVE'
,p_column_display_sequence=>55
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-pre" aria-hidden="true"></span>'
,p_column_link_attr=>'data-id=#SEQ_ID#'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(428273501760046037)
,p_plug_name=>'Entrega'
,p_parent_plug_id=>wwv_flow_imp.id(662358069865347421)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(700178831678687101)
,p_plug_name=>'Facturas'
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>2010
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(700178921482687102)
,p_name=>'Ver Facturas'
,p_parent_plug_id=>wwv_flow_imp.id(700178831678687101)
,p_template=>wwv_flow_imp.id(40125238939263661)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select cc.fec_comprobante, cc.tip_comprobante, cc.ser_comprobante, cc.nro_comprobante,cc.tot_comprobante,',
'case when  IND_ANTICIPO_OT=''S'' THEN ''ANTICIPO'' WHEN NVL(CC.ESTADO,''N'')=''A'' THEN ''ANULADO'' ELSE NULL END TIPO',
'from vt_ordenes_trabajo ot , VT_COMPROBANTES_CABECERA CC',
'where OT.COD_EMPRESA=:P_COD_EMPRESA',
'AND OT.TIP_COMPROBANTE=''ORT''',
'AND OT.SER_COMPROBANTE= :P730_PARAM_SER_OT',
'and ot.NRO_comprobante=  :P730_PARAM_NRO_OT',
'',
'AND OT.COD_EMPRESA=CC.COD_EMPRESA',
'AND OT.TIP_COMPROBANTE=CC.TIP_COMPROBANTE_REF',
'AND OT.SER_COMPROBANTE=CC.SER_COMPROBANTE_REF',
'AND OT.NRO_COMPROBANTE=CC.NRO_COMPROBANTE_REF',
' '))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P730_PARAM_SER_OT,P730_PARAM_NRO_OT'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(40147995650263667)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'Sin Detalle de Facturas'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(354865629786401885)
,p_query_column_id=>1
,p_column_alias=>'FEC_COMPROBANTE'
,p_column_display_sequence=>10
,p_column_heading=>'Fec Comprobante'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(354866052384401886)
,p_query_column_id=>2
,p_column_alias=>'TIP_COMPROBANTE'
,p_column_display_sequence=>20
,p_column_heading=>'Tip Comprobante'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(354866462349401886)
,p_query_column_id=>3
,p_column_alias=>'SER_COMPROBANTE'
,p_column_display_sequence=>30
,p_column_heading=>'Ser Comprobante'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(354866817743401886)
,p_query_column_id=>4
,p_column_alias=>'NRO_COMPROBANTE'
,p_column_display_sequence=>40
,p_column_heading=>'Nro Comprobante'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(354867212078401886)
,p_query_column_id=>5
,p_column_alias=>'TOT_COMPROBANTE'
,p_column_display_sequence=>50
,p_column_heading=>'Tot Comprobante'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(354867674560401887)
,p_query_column_id=>6
,p_column_alias=>'TIPO'
,p_column_display_sequence=>60
,p_column_heading=>'Tipo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279417067441777300)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(662358069865347421)
,p_button_name=>'crea_clientes'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187078917263678)
,p_button_image_alt=>'Crea Clientes'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279267233344777225)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(389457285997176818)
,p_button_name=>'Finalizar_orden'
,p_button_static_id=>'Finalizar_orden'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Finalizar OT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-22-text'
,p_grid_new_row=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279281322264777231)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(394989132891036434)
,p_button_name=>'pedir_repuesto'
,p_button_static_id=>'pedir_repuesto'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Pedir Repuesto'
,p_button_redirect_url=>'f?p=&APP_ID.:327:&SESSION.::&DEBUG.::P327_NRO_COMPROBANTE_REF,P327_SER_COMPROBANTE_REF,P327_TIP_COMPROBANTE_REF,P327_COD_SUCURSAL_ENV,P327_LINEA,P327_CATEGORIA:&P730_NRO_COMPROBANTE_REF.,&P730_SER_COMPROBANTE.,&P730_TIP_COMPROBANTE.,&P730_COD_SUCURSAL_DIST.,&P730_LINEA_ARTICULOS.,&P730_CATEGORIA_ARTICULO.'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279457068069777317)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(389460552689176851)
,p_button_name=>'Repuestos_utilizados'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Repuestos Utilizados'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(300676447544698506)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(579831524719542033)
,p_button_name=>'Adjuntar'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--stretch:t-Button--padLeft:t-Button--padRight:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Adjuntar Facturas'
,p_button_redirect_url=>'f?p=&APP_ID.:749:&SESSION.::&DEBUG.::P749_NRO_TICKET,P749_SERIE:&P730_PARAM_NRO_OT.,&P730_SER_COMPROBANTE.'
,p_button_css_classes=>'u-color-13-bg'
,p_icon_css_classes=>'fa-file-text'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279267661256777225)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(389457285997176818)
,p_button_name=>'Finalizar_OT'
,p_button_static_id=>'finalizar_ot'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Finalizar OT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-22-text'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279281761090777232)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(394989132891036434)
,p_button_name=>'Pedidos'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Pedidos'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279361046249777275)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(398959416253055637)
,p_button_name=>'Aceptar_cierre'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279410138354777297)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(414059923028552717)
,p_button_name=>'no_conforme'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generar Sol. No Conforme'
,p_button_redirect_url=>'f?p=&APP_ID.:146:&SESSION.::&DEBUG.::P146_NRO_COMPROBANTE_REF,P146_SER_COMPROBANTE_REF,P146_TIP_COMPROBANTE_REF,P146_ACCION,P146_TIPO_COMPROBANTE:&P730_PARAM_NRO_OT.,&P730_SER_COMPROBANTE.,ORT,N,OT'
,p_grid_new_row=>'N'
,p_grid_column=>10
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(285815647261143349)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(394989536738036438)
,p_button_name=>'Envia_Presupuesto'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Envia Presupuesto'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P730_IND_CORREO_PRESU'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-mail-forward'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(295814972801820950)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(579831524719542033)
,p_button_name=>'refrescar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--stretch:t-Button--padLeft:t-Button--padRight:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refrescar'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279282158979777232)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(394989132891036434)
,p_button_name=>'repuestos_devueltos'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Repuestos Devueltos'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279361426162777275)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(398959416253055637)
,p_button_name=>'Salir'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salir'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279411282570777298)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(428273727983046040)
,p_button_name=>'Cerrar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cerrar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279283661811777233)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(394989536738036438)
,p_button_name=>'Repuestos_utilizado'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Repuestos Utilizados'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279407571974777296)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(404319178079631655)
,p_button_name=>'DEVOLVER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Devolver'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279358763161777274)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(398592184793441842)
,p_button_name=>'RECHAZAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Rechazar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279407902238777296)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(404319178079631655)
,p_button_name=>'Cancelar_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279462414206777320)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(428273501760046037)
,p_button_name=>'Entregar_OT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Entregar OT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279268009503777225)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(389457285997176818)
,p_button_name=>'Reclamos'
,p_button_static_id=>'Reclamos'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reclamos'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-22-text'
,p_grid_new_row=>'N'
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279359150647777274)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(398592184793441842)
,p_button_name=>'Cancelar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279423620287777303)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(389458553318176831)
,p_button_name=>'Garantia'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Gar.'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-22-text'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279318840208777249)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(393387146927321617)
,p_button_name=>'Cerrar_reclamos'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cerrar'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(295810463621820905)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(394989536738036438)
,p_button_name=>'APROBAR_PRESUPUESTO'
,p_button_static_id=>'APROBAR_PRESUPUESTO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aprobar Presupuesto'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'vestado_presu varchar2(10);',
'BEGIN',
'',
'begin  select estado_presu',
' into vestado_presu',
'from vt_ordenes_trabajo ot',
'where OT.COD_EMPRESA=:P_COD_EMPRESA',
'AND OT.TIP_COMPROBANTE=''ORT''',
'AND OT.SER_COMPROBANTE= :P730_PARAM_SER_OT ',
'and ot.NRO_comprobante= :P730_PARAM_NRO_OT;',
'exception when others then',
'',
'begin  select estado_presu',
' into vestado_presu',
'from vt_ordenes_trabajo ot',
'where OT.COD_EMPRESA=:P_COD_EMPRESA',
'AND OT.TIP_COMPROBANTE=''ORT''',
'AND OT.SER_COMPROBANTE= :P730_SER_COMPROBANTE ',
'and ot.NRO_comprobante= :P730_NRO_COMPROBANTE;',
'exception when others then',
'null;',
'end;',
'end;',
'',
'IF vestado_presu   IN (''P'') THEN',
'RETURN TRUE;',
'ELSE RETURN FALSE;',
'END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'u-color-19-bg'
,p_icon_css_classes=>'fa-mail-forward'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(178180244451823647)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(394989536738036438)
,p_button_name=>'Notificado_cliente'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Notificado al cliente'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P730_ESTADO_PRESU NOT IN (''A'',''R'',''P'') THEN',
'RETURN FALSE;',
'ELSE RETURN TRUE;',
'END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_icon_css_classes=>'fa-mail-forward'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(295810590893820906)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(394989536738036438)
,p_button_name=>'RECHAZAR_PRESUPUESTO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Rechazar Presupuesto'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'vestado_presu varchar2(10);',
'BEGIN',
'',
'begin  select estado_presu',
' into vestado_presu',
'from vt_ordenes_trabajo ot',
'where OT.COD_EMPRESA=:P_COD_EMPRESA',
'AND OT.TIP_COMPROBANTE=''ORT''',
'AND OT.SER_COMPROBANTE= :P730_PARAM_SER_OT ',
'and ot.NRO_comprobante= :P730_PARAM_NRO_OT;',
'exception when others then',
'',
'begin  select estado_presu',
' into vestado_presu',
'from vt_ordenes_trabajo ot',
'where OT.COD_EMPRESA=:P_COD_EMPRESA',
'AND OT.TIP_COMPROBANTE=''ORT''',
'AND OT.SER_COMPROBANTE= :P730_SER_COMPROBANTE ',
'and ot.NRO_comprobante= :P730_NRO_COMPROBANTE;',
'exception when others then',
'null;',
'end;',
'end;',
'',
'IF vestado_presu   IN (''P'') THEN',
'RETURN TRUE;',
'ELSE RETURN FALSE;',
'END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'u-color-9-bg'
,p_icon_css_classes=>'fa-remove'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(285256523035766570)
,p_button_sequence=>210
,p_button_plug_id=>wwv_flow_imp.id(389456948085176815)
,p_button_name=>'BT_VER_MAPA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--hoverIconPush:t-Button--stretch:t-Button--padLeft:t-Button--padRight:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>' Ver Mapa'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-map'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279268486070777225)
,p_button_sequence=>330
,p_button_plug_id=>wwv_flow_imp.id(389457285997176818)
,p_button_name=>'ENTREGA_OT'
,p_button_static_id=>'ENTREGA_OT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Entregar Producto'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-22-text'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279268879591777226)
,p_button_sequence=>340
,p_button_plug_id=>wwv_flow_imp.id(389457285997176818)
,p_button_name=>'Solicitar_ot'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Solicitar Producto'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-22-text'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(178180522554823650)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(178180343054823648)
,p_button_name=>'Cerrar_notificacion'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(345312140983285202)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(339830390732701550)
,p_button_name=>'CAncelar_rechazo'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(354864982978401883)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(700178831678687101)
,p_button_name=>'CerrarRegion'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cerrar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(339825687607701503)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(178180343054823648)
,p_button_name=>'Aplicar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(345313065248285211)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(662409959364347261)
,p_button_name=>'Imprimir_presupuesto'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir Presupuesto'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	SELECT',
'		1',
'	FROM',
'		ca_entsal_cab c,',
'		ca_entsal_det d,',
'		st_articulos a,',
'		st_motivo_ent_sal mo',
'	WHERE',
'		c.cod_empresa = :P_COD_EMPRESA',
'		AND c.tip_comprobante_ref = ''ORT''',
'		AND c.ser_comprobante_ref = :P730_PARAM_SER_OT',
'		AND c.nro_comprobante_ref = :P730_PARAM_NRO_OT',
'		AND c.cod_empresa = d.cod_empresa',
'		AND d.cod_articulo = ''109''',
'		AND nvl( c.tip_ent_sal, ''DFL'' ) = d.tip_ent_sal',
'			AND nvl( c.ser_ent_sal, ''D'' ) = d.ser_ent_sal',
'				AND c.num_ent_sal = d.num_ent_sal',
'				AND a.cod_empresa = d.cod_empresa',
'				AND a.cod_articulo = d.cod_articulo',
'				AND nvl(D.anulado, ''N'')<> ''S''',
'					AND c.cod_motivo_ent_sal = mo.cod_motivo_ent_sal(+)',
'				GROUP BY',
'					d.cod_articulo,',
'					a.descripcion,',
'					a.cod_grupo_art,',
'					d.garantia,',
'					A.IND_MANEJA_STOCK,',
'					A.COD_RUBRO,',
'					NVL(D.OBSERVACION, C.OBSERVACION)',
'				HAVING',
'					sum( decode( nvl( ind_ent_sal, ''N'' ), ''S'', nvl( d.cantidad, 0 ), nvl( d.cantidad, 0 ) * -1 ) ) > 0'))
,p_button_condition_type=>'NOT_EXISTS'
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(345312072019285201)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(339830390732701550)
,p_button_name=>'Aceptar_rechazo'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279306047899777242)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(610992751991552654)
,p_button_name=>'btn_add_sr'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Solicitar Repuestos'
,p_button_position=>'EDIT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct ''1''',
'from dual;'))
,p_button_condition_type=>'NOT_EXISTS'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279316586694777248)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(610989532014552622)
,p_button_name=>'btn_add_mo'
,p_button_static_id=>'btn_add_mo'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Mano de Obra'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-color-21-bg u-color-43-text'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279266568058777224)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(383694308894271423)
,p_button_name=>'btn_add_ps_1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Problemas'
,p_button_position=>'EDIT'
,p_button_css_classes=>'u-color-22-text'
,p_icon_css_classes=>'fa-plus'
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279289114501777235)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(611055429916857627)
,p_button_name=>'Crear_pedidos'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear Pedido'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279412309894777298)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(462013550187984115)
,p_button_name=>'Volver'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight:t-Button--padLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.:60::'
,p_button_condition=>'P730_INDICADOR_VOLVER'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'u-color-19-bg'
,p_icon_css_classes=>'fa-reply'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279412737629777298)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(462013550187984115)
,p_button_name=>'Volver_PAG_298'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight:t-Button--padLeft:t-Button--padRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:298:&SESSION.::&DEBUG.:60::'
,p_button_condition=>'P730_INDICADOR_VOLVER'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'u-color-19-bg'
,p_icon_css_classes=>'fa-reply'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279413108161777299)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(462013550187984115)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight:t-Button--padLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:729:&SESSION.::&DEBUG.:730:P729_PAGINA:&P730_NRO_PAGINA.'
,p_button_condition=>'P730_INDICADOR_VOLVER'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'u-color-19-bg'
,p_icon_css_classes=>'fa-reply'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279415970866777299)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(462013550187984115)
,p_button_name=>'Reemplazo'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reemplazo'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'u-color-22-text'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279413596462777299)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(462013550187984115)
,p_button_name=>'CANCEL_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight:t-Button--padLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:541:&SESSION.::&DEBUG.:370,400::'
,p_button_condition=>'P730_INDICADOR_VOLVER'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'u-color-19-bg'
,p_icon_css_classes=>'fa-reply'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279413951983777299)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(462013550187984115)
,p_button_name=>'visualizar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight:t-Button--padLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Visualizar OT'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'u-color-22-text'
,p_icon_css_classes=>'fa fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279414376304777299)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(462013550187984115)
,p_button_name=>'Etiqueta'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Etiqueta'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'u-color-22-text'
,p_icon_css_classes=>'fa fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279414787697777299)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(462013550187984115)
,p_button_name=>'Imprimir'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight:t-Button--padLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'u-color-22-text'
,p_icon_css_classes=>'fa fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279415116544777299)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(462013550187984115)
,p_button_name=>'NUEVO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight:t-Button--padLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nuevo'
,p_button_position=>'EDIT'
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'u-color-2-bg u-color-22-text'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(354862999235376481)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(462013550187984115)
,p_button_name=>'ver_facturas'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight:t-Button--padLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Visualizar Facturas'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'u-color-22-text'
,p_icon_css_classes=>'fa-eye'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279415573445777299)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(462013550187984115)
,p_button_name=>'CREATE'
,p_button_static_id=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight:t-Button--padLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Orden'
,p_button_position=>'EDIT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P730_ESTADO_PRESU IN (''C'', ''E'') THEN ',
'    RETURN FALSE;',
'ELSE ',
'    IF inv.CAORDTRA_730.pr_verifica_usuario(p_usuario => :APP_USER,',
'                                        p_nro_ot => :P730_PARAM_NRO_OT) THEN ',
'        RETURN TRUE;',
'    ELSE ',
'        RETURN FALSE;',
'    END IF;',
'END IF;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'u-color-22-text'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279468245255777323)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(610607678602109845)
,p_button_name=>'btn_add_ps'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Problemas'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:393:&SESSION.::&DEBUG.:CR,393:P393_OPERACION,P393_VERIFICAR,P393_NRO_COMPROBANTE,P393_COD_ARTICULO:AGREGAR,1,&P730_PARAM_NRO_OT.,&P730_COD_ARTICULO_OT_CALL.'
,p_button_css_classes=>'u-color-22-text'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(339826390028701510)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(403269355592604515)
,p_button_name=>'Refrescar_seguimiento'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refrescar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(279399966936777292)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(403269355592604515)
,p_button_name=>'Agregar_Seguimientos'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Seguimientos'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:750:&SESSION.::&DEBUG.::P750_TIP_COMPROBANTE,P750_SER_COMPROBANTE,P750_NRO_COMPROBANTE,P750_COD_CLIENTE,P750_NRO_TELEFONO:&P730_TIP_COMPROBANTE.,&P730_PARAM_SER_OT.,&P730_PARAM_NRO_OT.,&P730_COD_CLIENTE.,&P730_TEL_CLIENTE.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(279632062904777388)
,p_branch_name=>unistr('Ir a P\00E1gina 370')
,p_branch_action=>'f?p=&APP_ID.:730:&SESSION.::&DEBUG.:730:P730_OT_MULTIPLE,P730_COD_CLIENTE,P730_NOM_CLIENTE,P730_CI,P730_RUC,P730_TEL_CLIENTE,P730_DIR_CLIENTE,P730_EMAIL,P730_DEPARTAMENTO,P730_CIUDAD,P730_IND_ZONA,P730_COD_ORIGEN,P730_OPERACION,P730_IMPRIMIR,P730_NRO_TICKET,P730_NRO_COMPROBANTE:&P730_OT_MULTIPLE.,&P730_COD_CLIENTE.,&P730_NOM_CLIENTE.,&P730_CI.,&P730_RUC.,&P730_TEL_CLIENTE.,&P730_DIR_CLIENTE.,&P730_EMAIL.,&P730_DEPARTAMENTO.,&P730_CIUDAD.,&P730_IND_ZONA.,&P730_COD_ORIGEN.,&P730_OPERACION.,S,&P730_NRO_TICKET.,&P730_NRO_COMPROBANTE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(279415573445777299)
,p_branch_sequence=>20
,p_branch_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(330124044521269423)
,p_branch_name=>unistr('Ir a P\00E1gina 729')
,p_branch_action=>'f?p=&APP_ID.:729:&SESSION.::&DEBUG.:729:P729_CLIENTE:&P730_COD_CLIENTE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(279415573445777299)
,p_branch_sequence=>30
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(279631282999777387)
,p_branch_name=>'imprimir_ot'
,p_branch_action=>'https://ngosaeca.com.py/reportes/rest_v2/reports/reports/CAORDTRA.html?p_ser_comprobante=&P63_SER_COMPROBANTE.&p_nro_comprobante=&P63_NRO_COMPROBANTE.&j_username=jasperadmin&j_password=jasperadmin'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(279414787697777299)
,p_branch_sequence=>60
,p_branch_condition_type=>'ITEM_IS_NOT_NULL'
,p_branch_condition=>'P730_NRO_COMPROBANTE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(178180189050823646)
,p_name=>'P730_SEG_PRESUPUESTO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(394989536738036438)
,p_prompt=>'Estado de Presupuesto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cattributes_element=>'style="text-align:center;"'
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:margin-top-lg:margin-bottom-lg:margin-left-md:margin-right-lg:t-Form-fieldContainer--radioButtonGrou'
||'p'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(178180440365823649)
,p_name=>'P730_COMENTARIO_NOTIFICACION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(178180343054823648)
,p_prompt=>'Comentario Notificacion'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279249920598777216)
,p_name=>'P730_DEL_ID_RS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(389458717503176833)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279269204229777226)
,p_name=>'P730_ESTADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(389457285997176818)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279269661242777226)
,p_name=>'P730_FEC_CIERRE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(389457285997176818)
,p_prompt=>'Cierre de OT'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279270061665777226)
,p_name=>'P730_IND_CORREO_PRESU'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(394989536738036438)
,p_item_default=>'N'
,p_prompt=>'Presupuesto Enviado via SMS'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Enviado;S,No Enviado'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279270480850777226)
,p_name=>'P730_NCI'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(389457285997176818)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279270888727777226)
,p_name=>'P730_COD_DIRECCION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(389457285997176818)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279271292868777227)
,p_name=>'P730_COD_ARTICULO_OT_1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(389457285997176818)
,p_prompt=>'Codigo Articulo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>4
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'     v_persona NUMBER;',
'     v_contador NUMBER :=  0;',
'',
'BEGIN ',
'    BEGIN ',
'    select U.COD_PERSONA',
'    INTO v_persona',
'    from usuarios u',
'    where u.cod_usuario = :APP_USER',
'    AND COD_EMPRESA = :P_COD_EMPRESA;',
'    EXCEPTION ',
'        WHEN OTHERS THEN ',
'            v_persona := NULL;',
'    END;',
'',
'BEGIN ',
'    SELECT COUNT(*)',
'    INTO v_contador',
'    FROM CM_PROVEEDORES P',
'    WHERE P.COD_EMPRESA=:P_COD_EMPRESA',
'    AND   P.COD_PERSONA=v_persona',
'    AND   P.IND_SERVICIO_TECNICO=''STNGO'';',
'EXCEPTION ',
'        WHEN OTHERS THEN ',
'            v_contador := 0;',
'    END;',
'',
'    IF v_contador > 0 THEN ',
'        RETURN TRUE;',
'    ELSE ',
'        RETURN FALSE;',
'    END IF;',
'',
'END;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-calendar-pointer'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279271691866777227)
,p_name=>'P730_DESCRIPCION_ARTICULO_1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(389457285997176818)
,p_prompt=>unistr('Descripci\00F3n Articulo')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="background-color: #f0ffef; border-color: #4dff00"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279272075325777227)
,p_name=>'P730_COD_PROVEEDOR'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(285815053004143343)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
' select   c.cod_proveedor   ',
'    from cm_proveedores c, personas p, vt_ordenes_trabajo ot',
' where c.cod_empresa = :P_COD_EMPRESA',
'and ot.cod_empresa=c.cod_empresa',
'and ot.cod_proveedor=c.cod_proveedor',
'   and c.cod_persona = p.cod_persona',
'   and ot.ser_comprobante=nvl(:P730_SER_COMPROBANTE,:P730_PARAM_SER_OT)',
'   AND OT.Nro_Comprobante= nvl(:P730_PARAM_NRO_OT,:p730_nro_comprobante)',
'   group by p.nombre  ,  c.cod_proveedor '))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Proveedor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_PROVEEDORES_PAG_730'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    p.nombre                 nombre,',
'    c.cod_proveedor,',
'    ''1- LOCALIDAD-CATEGORIA'' tipo,',
'    1                        orden',
'FROM',
'    cm_proveedores         c,',
'    personas               p,',
'    direc_personas         d,',
'    st_articulos           s,',
'    inv.cc_clientes_rubros cr,',
'    inv.cc_clientes        cl',
'WHERE',
'        c.cod_empresa = :P_COD_EMPRESA',
'    AND c.ind_servicio_tecnico = ''STA''',
'    AND c.cod_persona = p.cod_persona',
'    AND c.cod_persona = d.cod_persona',
'    AND nvl(c.estado, ''A'') NOT IN ( ''I'' )',
'    AND nvl(cr.activo, ''N'') NOT IN ( ''N'' )',
'    AND cr.cod_empresa = c.cod_empresa',
'    AND cr.cod_division = s.cod_division',
'    AND s.cod_articulo IN ( :p730_cod_articulo_ot, :p730_cod_articulo_ot_call )',
'    AND ( :p730_departamento = d.cod_provincia )',
'    AND ( :p730_ciudad = d.cod_ciudad )',
'    AND cl.cod_empresa = c.cod_empresa',
'    AND cl.cod_persona = c.cod_persona',
'    AND cl.cod_empresa = cr.cod_empresa',
'    AND cl.cod_cliente = cr.cod_cliente',
'    AND c.asignable_ot = ''S''',
'GROUP BY',
'    p.nombre,',
'    c.cod_proveedor',
'UNION ALL',
'SELECT',
'    p.nombre                             nombre,',
'    c.cod_proveedor,',
'    ''2- POR ZONA DE COBERTURA-CATEGORIA'' tipo,',
'    2                                    orden',
'FROM',
'    cm_proveedores             c,',
'    personas                   p,',
'    st_articulos               s,',
'    inv.ca_cobertura_localidad loc,',
'    inv.cc_clientes_rubros     cr,',
'    inv.cc_clientes            cl',
'WHERE',
'        c.cod_empresa = :P_COD_EMPRESA',
'    AND c.ind_servicio_tecnico = ''STA''',
'    AND c.cod_persona = p.cod_persona',
'    AND nvl(c.estado, ''A'') NOT IN ( ''I'' )',
'    AND nvl(loc.ind_activo, ''A'') NOT IN ( ''N'' )',
'    AND nvl(cr.activo, ''N'') NOT IN ( ''N'' )',
'    AND cr.cod_empresa = c.cod_empresa',
'    AND cr.cod_division = s.cod_division',
'    AND loc.cod_empresa = c.cod_empresa',
'    AND loc.cod_proveedor = c.cod_proveedor',
'    AND loc.cod_pais = ''PAR''',
'    AND s.cod_articulo IN ( :p730_cod_articulo_ot, :p730_cod_articulo_ot_call )',
'    AND ( nvl(:p730_departamento, ''X'') = nvl(loc.cod_departamento,',
'                                             nvl(:p730_departamento, ''X'')) )',
'    AND ( nvl(:p730_ciudad, ''X'') = nvl(loc.cod_ciudad,',
'                                       nvl(:p730_ciudad, ''X'')) )',
'    AND cl.cod_empresa = c.cod_empresa',
'    AND cl.cod_persona = c.cod_persona',
'    AND cl.cod_empresa = cr.cod_empresa',
'    AND cl.cod_cliente = cr.cod_cliente',
'    AND c.asignable_ot = ''S''',
'GROUP BY',
'    p.nombre,',
'    c.cod_proveedor',
'UNION ALL',
'SELECT',
'    p.nombre       nombre,',
'    c.cod_proveedor,',
'    ''3- TODOS STA'' tipo,',
'    3              orden',
'FROM',
'    cm_proveedores     c,',
'    personas           p,',
'    cc_clientes 		cc',
'WHERE c.cod_empresa = :P_COD_EMPRESA ',
'    AND c.cod_persona = p.cod_persona  ',
'    AND c.asignable_ot = ''S''',
'    AND p.cod_persona = cc.cod_persona',
'    AND cc.cod_empresa = c.cod_empresa ',
'    AND cc.tip_cliente IN(''28'',''77'')',
'GROUP BY',
'    p.nombre,',
'    c.cod_proveedor',
'ORDER BY',
'    4 ASC, 1 ASC'))
,p_lov_cascade_parent_items=>'P730_COD_ARTICULO_OT,P730_COD_ARTICULO_OT_CALL,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE,P730_PARAM_NRO_OT,P730_PARAM_SER_OT,P730_DEPARTAMENTO,P730_CIUDAD'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'800'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279272446376777227)
,p_name=>'P730_NRO_BOLETA_AM'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(389457285997176818)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279272840804777228)
,p_name=>'P730_LUGAR_ENTREGA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(389457285997176818)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279273299379777228)
,p_name=>'P730_TELEFONO_DIST'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(389457285997176818)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279273643842777228)
,p_name=>'P730_OBERVACION'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(389457285997176818)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279274024898777228)
,p_name=>'P730_CONCLUSION'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(389457285997176818)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279274439247777228)
,p_name=>'P730_ESTADO_PRESU'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(389458553318176831)
,p_prompt=>'Estado Presupuesto'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select descripcion, cod_estado from ca_estado_ot e where cod_empresa= :P_COD_EMPRESA'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'readonly="readonly"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279274883645777228)
,p_name=>'P730_COD_ARTICULO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(389457285997176818)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279275270813777229)
,p_name=>'P730_COD_MARCA'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(389457285997176818)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279275667826777229)
,p_name=>'P730_COD_LISTA_PRECIO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(389457285997176818)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279276095162777229)
,p_name=>'P730_SENIA'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(389457285997176818)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279276424990777229)
,p_name=>'P730_MONTO_ADELANTO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(389457285997176818)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279276860163777229)
,p_name=>'P730_IND_ADELANTO'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(389457285997176818)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279277223357777229)
,p_name=>'P730_PER_RECLAMO'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(389457285997176818)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279277648181777229)
,p_name=>'P730_MONTO_VENTA'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(389457285997176818)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279278056257777230)
,p_name=>'P730_NCR'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(389457285997176818)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279278405701777230)
,p_name=>'P730_CAMBIO'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(389457285997176818)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279278875520777230)
,p_name=>'P730_IND_CARNEO'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(389457285997176818)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279279248881777230)
,p_name=>'P730_TOT_REPUESTOS'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(389457285997176818)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279279645759777230)
,p_name=>'P730_ESTADO_AUX'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(389457285997176818)
,p_use_cache_before_default=>'NO'
,p_item_default=>'V'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279280086380777230)
,p_name=>'P730_SOLICITA'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(389457285997176818)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279282521142777232)
,p_name=>'P730_MUESTRA_REPORTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(394989132891036434)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279284019118777233)
,p_name=>'P730_TOTAL_OT_CALL_C_G'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(394989536738036438)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279284436392777233)
,p_name=>'P730_TOTAL_OT_CALL_S_G'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(394989536738036438)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279284831054777233)
,p_name=>'P730_TOTAL_OT_CALL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(394989536738036438)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279289583300777235)
,p_name=>'P730_DELETE_PROMO_2_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(611055429916857627)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279289965789777235)
,p_name=>'P730_DEL_ID_RU'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(611055429916857627)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279290313069777235)
,p_name=>'P730_CANTIDAD_DETALLE_2_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(611055429916857627)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279293860752777237)
,p_name=>'P730_DELETE_PROMO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(662409959364347261)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279294204478777237)
,p_name=>'P730_DEL_ID_PRE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(662409959364347261)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279294610702777237)
,p_name=>'P730_CANTIDAD_DETALLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(662409959364347261)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279306451465777243)
,p_name=>'P730_CANT_RS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(610992751991552654)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279316900862777248)
,p_name=>'P730_DELETE_PROMO_1_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(610989532014552622)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279317301786777248)
,p_name=>'P730_DEL_ID_MO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(610989532014552622)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279317704524777248)
,p_name=>'P730_TOT_MOBRA'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(610989532014552622)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279318151616777248)
,p_name=>'P730_IR_A_MO'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(610989532014552622)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279319272504777249)
,p_name=>'P730_ESTADO_RECLAMO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(393387146927321617)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:CREADO;CREADO,PROCESADO;PROCESADO,FINALIZADO;FINALIZADO'
,p_lov_display_null=>'YES'
,p_cHeight=>1
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
 p_id=>wwv_flow_imp.id(279319609397777249)
,p_name=>'P730_COD_PROBLEMA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(393387146927321617)
,p_prompt=>'Problema'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_PROBLEMAS_CAORDTRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.COD_PROBLEMA||'' - ''||P.DESCRIPCION DESCRIPCION, P.COD_PROBLEMA ,''1'' T',
'FROM  CA_PROBLEMAS P, CA_PROBLEMAS_ARTICULOS A, ST_ARTICULOS AR',
'WHERE P.COD_EMPRESA=A.COD_EMPRESA',
'AND P.COD_PROBLEMA =A.COD_PROBLEMA',
'AND AR.COD_EMPRESA=P.COD_EMPRESA',
'AND AR.COD_ARTICULO=NVL(:P370_COD_ARTICULO_OT,:P370_COD_ARTICULO_CALL) ',
'AND A.COD_ARTICULO  =NVL(:P370_COD_ARTICULO_OT,:P370_COD_ARTICULO_CALL)',
'AND P.COD_EMPRESA = :P_COD_EMPRESA',
'AND A.COD_ARTICULO  =NVL(:P370_COD_ARTICULO_OT,:P370_COD_ARTICULO_CALL)',
'AND AR.COD_CATEGORIA NOT IN (SELECT CPS.COD_CATEGORIA',
'FROM CA_CATEGORIAS_PRO_SOL CPS',
'WHERE CPS.COD_EMPRESA=AR.COD_EMPRESA',
'AND CPS.COD_CATEGORIA=AR.COD_CATEGORIA)',
'UNION ALL',
'SELECT P.COD_PROBLEMA||'' - ''||P.DESCRIPCION DESCRIPCION, P.COD_PROBLEMA,''2''',
'FROM  CA_PROBLEMAS P ,ST_ARTICULOS AR',
'WHERE P.COD_EMPRESA = :P_COD_EMPRESA',
'AND P.COD_PROBLEMA NOT IN NVL((SELECT A.COD_PROBLEMA',
'FROM   CA_PROBLEMAS_ARTICULOS A ',
' WHERE  P.COD_EMPRESA=A.COD_EMPRESA',
'AND P.COD_PROBLEMA =A.COD_PROBLEMA',
'AND A.COD_ARTICULO  = NVL(:P370_COD_ARTICULO_OT,:P370_COD_ARTICULO_CALL)',
'),''1'')',
'AND P.COD_EMPRESA = :P_COD_EMPRESA',
'AND AR.COD_CATEGORIA NOT IN (SELECT CPS.COD_CATEGORIA',
'FROM CA_CATEGORIAS_PRO_SOL CPS',
'WHERE CPS.COD_EMPRESA=AR.COD_EMPRESA',
'AND CPS.COD_CATEGORIA=AR.COD_CATEGORIA)',
'',
'AND AR.COD_EMPRESA=P.COD_EMPRESA',
'AND AR.COD_ARTICULO=NVL(:P370_COD_ARTICULO_OT,:P370_COD_ARTICULO_CALL)',
'',
'UNION ALL',
'SELECT P.COD_PROBLEMA||'' - ''||P.DESCRIPCION DESCRIPCION, P.COD_PROBLEMA ,''1'' T',
'FROM  CA_PROBLEMAS P, CA_PROBLEMAS_ARTICULOS A, ST_ARTICULOS AR, CA_CATEGORIAS_PRO_SOL CPS',
'WHERE P.COD_EMPRESA=A.COD_EMPRESA',
'AND P.COD_PROBLEMA =A.COD_PROBLEMA',
'AND AR.COD_EMPRESA=P.COD_EMPRESA',
'AND AR.COD_ARTICULO=NVL(:P370_COD_ARTICULO_OT,:P370_COD_ARTICULO_CALL) ',
'AND A.COD_ARTICULO  =NVL(:P370_COD_ARTICULO_OT,:P370_COD_ARTICULO_CALL)',
'',
'AND P.COD_EMPRESA = :P_COD_EMPRESA',
'AND A.COD_ARTICULO  =NVL(:P370_COD_ARTICULO_OT,:P370_COD_ARTICULO_CALL)',
'AND AR.COD_EMPRESA=CPS.COD_EMPRESA',
'AND AR.COD_CATEGORIA= CPS.COD_CATEGORIA',
'AND P.COD_PROBLEMA=CPS.COD_PROBLEMA',
'GROUP BY P.DESCRIPCION, P.COD_PROBLEMA',
'UNION ALL',
'SELECT P.COD_PROBLEMA||'' - ''||P.DESCRIPCION DESCRIPCION, P.COD_PROBLEMA,''2''',
'FROM  CA_PROBLEMAS P ,ST_ARTICULOS AR, CA_CATEGORIAS_PRO_SOL CPS',
'WHERE P.COD_EMPRESA = :P_COD_EMPRESA',
'AND P.COD_PROBLEMA NOT IN NVL((SELECT A.COD_PROBLEMA',
'FROM   CA_PROBLEMAS_ARTICULOS A ',
' WHERE  P.COD_EMPRESA=A.COD_EMPRESA',
'AND P.COD_PROBLEMA =A.COD_PROBLEMA',
'',
'',
'AND A.COD_ARTICULO  = NVL(:P370_COD_ARTICULO_OT,:P370_COD_ARTICULO_CALL)',
'),''1'')',
'AND P.COD_EMPRESA = :P_COD_EMPRESA',
'',
'',
'AND AR.COD_EMPRESA=P.COD_EMPRESA',
'AND AR.COD_ARTICULO=NVL(:P370_COD_ARTICULO_OT,:P370_COD_ARTICULO_CALL)',
'AND AR.COD_EMPRESA=CPS.COD_EMPRESA',
'AND AR.COD_CATEGORIA= CPS.COD_CATEGORIA',
'AND P.COD_PROBLEMA=CPS.COD_PROBLEMA',
'GROUP BY P.DESCRIPCION, P.COD_PROBLEMA',
'ORDER BY 3,1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P730_COD_ARTICULO_OT_CALL,P730_COD_ARTICULO_OT,P730_COD_ARTICULO_OT_1'
,p_ajax_items_to_submit=>'P730_COD_ARTICULO_OT_CALL,P730_COD_ARTICULO_OT,P730_COD_ARTICULO_OT_1'
,p_ajax_optimize_refresh=>'N'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279320071712777250)
,p_name=>'P730_COD_SOLUCION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(393387146927321617)
,p_prompt=>unistr('Soluci\00F3n')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_SOLUCIONES_CAORDTRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT p.cod_solucion||'' - ''||p.descripcion descripcion, p.cod_solucion, ''1'' t',
'  FROM ca_soluciones p, ca_soluciones_articulos a, st_articulos ar',
' WHERE p.cod_empresa = a.cod_empresa',
'   AND p.cod_solucion = a.cod_solucion',
'   AND ar.cod_empresa = p.cod_empresa',
'   AND nvl(p.estado, ''S'') <> ''N''',
'   AND ar.cod_articulo = :P370_COD_ARTICULO_OT',
'      ',
'   AND a.cod_articulo = :P370_COD_ARTICULO_OT',
'      ',
'   AND p.cod_empresa = :P_COD_EMPRESA',
'   AND a.cod_articulo = :P370_COD_ARTICULO_OT',
'      ',
'   AND ar.cod_categoria NOT IN',
'       (SELECT cps.cod_categoria',
'          FROM ca_categorias_pro_sol cps',
'         WHERE cps.cod_empresa = ar.cod_empresa',
'           AND cps.cod_categoria = ar.cod_categoria)',
'',
'UNION ALL',
'SELECT p.cod_solucion||'' - ''||p.descripcion  descripcion, p.cod_solucion, ''2''',
'  FROM ca_soluciones p, st_articulos ar',
' WHERE p.cod_empresa = :P_COD_EMPRESA',
'      ',
'   AND nvl(p.estado, ''S'') <> ''N''',
'   AND p.cod_solucion NOT IN',
'       nvl((SELECT a.cod_solucion',
'             FROM ca_soluciones_articulos a',
'            WHERE p.cod_empresa = a.cod_empresa',
'              AND p.cod_solucion = a.cod_solucion',
'                 ',
'              AND a.cod_articulo = :P370_COD_ARTICULO_OT),',
'           ''1'')',
'   AND p.cod_empresa = :P_COD_EMPRESA',
'      ',
'   AND nvl(p.estado, ''S'') <> ''N''',
'   AND ar.cod_empresa = p.cod_empresa',
'   AND ar.cod_articulo = :P370_COD_ARTICULO_OT',
'   AND ar.cod_categoria NOT IN',
'       (SELECT cps.cod_categoria',
'          FROM ca_categorias_pro_sol cps',
'         WHERE cps.cod_empresa = ar.cod_empresa',
'           AND cps.cod_categoria = ar.cod_categoria)',
'UNION ALL',
'SELECT p.cod_solucion||'' - ''||p.descripcion descripcion, p.cod_solucion, ''1'' t',
'  FROM ca_soluciones           p,',
'       ca_soluciones_articulos a,',
'       st_articulos            ar,',
'       ca_categorias_pro_sol   cps',
' WHERE p.cod_empresa = a.cod_empresa',
'   AND p.cod_solucion = a.cod_solucion',
'   AND ar.cod_empresa = p.cod_empresa',
'   AND nvl(p.estado, ''S'') <> ''N''',
'   AND ar.cod_articulo = :P370_COD_ARTICULO_OT',
'      ',
'   AND a.cod_articulo = :P370_COD_ARTICULO_OT',
'      ',
'   AND p.cod_empresa = :P_COD_EMPRESA',
'   AND a.cod_articulo = :P370_COD_ARTICULO_OT',
'      ',
'   AND cps.cod_empresa = ar.cod_empresa',
'   AND cps.cod_categoria = ar.cod_categoria',
'   AND cps.cod_solucion = p.cod_solucion',
'   --AND cps.cod_problema = :b_detalle_prob_gen.cod_problema',
' GROUP BY p.descripcion, p.cod_solucion',
'UNION ALL',
'SELECT p.cod_solucion||'' - ''||p.descripcion descripcion, p.cod_solucion, ''2''',
'  FROM ca_soluciones p, st_articulos ar, ca_categorias_pro_sol cps',
' WHERE p.cod_empresa = :P_COD_EMPRESA',
'      ',
'   AND nvl(p.estado, ''S'') <> ''N''',
'   AND p.cod_solucion NOT IN',
'       nvl((SELECT a.cod_solucion',
'             FROM ca_soluciones_articulos a',
'            WHERE p.cod_empresa = a.cod_empresa',
'              AND p.cod_solucion = a.cod_solucion',
'                 ',
'              AND a.cod_articulo = :P370_COD_ARTICULO_OT),',
'           ''1'')',
'   AND p.cod_empresa = :P_COD_EMPRESA',
'      ',
'   AND nvl(p.estado, ''S'') <> ''N''',
'   AND ar.cod_empresa = p.cod_empresa',
'   AND ar.cod_articulo = :P370_COD_ARTICULO_OT',
'      ',
'   AND cps.cod_empresa = ar.cod_empresa',
'   AND cps.cod_categoria = ar.cod_categoria',
'   AND cps.cod_solucion = p.cod_solucion',
'   --AND cps.cod_problema = :b_cabecera.cod_problema',
' GROUP BY p.descripcion, p.cod_solucion',
' ORDER BY 3, 1',
' ',
' '))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P730_COD_ARTICULO_OT_CALL,P730_COD_ARTICULO_OT,P_COD_EMPRESA,P730_COD_ARTICULO_OT_1'
,p_ajax_items_to_submit=>'P730_COD_ARTICULO_OT_CALL,P730_COD_ARTICULO_OT,P_COD_EMPRESA,P730_COD_ARTICULO_OT_1'
,p_ajax_optimize_refresh=>'N'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279320441284777250)
,p_name=>'P730_DESC_MOTIVO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(393387146927321617)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279320891905777250)
,p_name=>'P730_SOLUCION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(393387146927321617)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279321215722777250)
,p_name=>'P730_COMENTARIO_RECLAMO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(393387146927321617)
,p_prompt=>'Comentario'
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
 p_id=>wwv_flow_imp.id(279321609123777251)
,p_name=>'P730_FECHA_FINALIZACION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(393387146927321617)
,p_prompt=>'Fecha Estado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers '
,p_tag_attributes=>'onfocusout="this.value= isValidDate(this.value);"  onkeyup = "setDateFormat(this);" '
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279336514729777264)
,p_name=>'P730_P_TIP_SERVICIO_PARAM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(394598251134761464)
,p_prompt=>'Nuevo'
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
 p_id=>wwv_flow_imp.id(279336935578777264)
,p_name=>'P730_P_NRO_SERVICIO_PARAM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(394598251134761464)
,p_prompt=>'Nuevo'
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
 p_id=>wwv_flow_imp.id(279337686419777264)
,p_name=>'P730_TIP_ORDEN_TRABAJO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279338051406777265)
,p_name=>'P730_SER_ORDEN_TRABAJO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279338469584777265)
,p_name=>'P730_RUBRO_MO'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279338878491777266)
,p_name=>'P730_COD_MONEDA_BASE'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279339206524777266)
,p_name=>'P730_CLIENTE_CONTADO'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279339678582777266)
,p_name=>'P730_RUBRO_SERV_TECNICO'
,p_item_sequence=>670
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279340079706777266)
,p_name=>'P730_TIP_MOTIVO_ANULACION'
,p_item_sequence=>680
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279340455840777266)
,p_name=>'P730_PERMITE_ANULAR'
,p_item_sequence=>690
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279340886123777267)
,p_name=>'P730_MODIFICA_FECHA_CIERRE'
,p_item_sequence=>700
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279341210938777267)
,p_name=>'P730_ESTADO_COMPLICADO'
,p_item_sequence=>710
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279341692414777267)
,p_name=>'P730_REPUESTO'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279342004050777267)
,p_name=>'P730_MODIFICA_GARANTIA'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279342458869777267)
,p_name=>'P730_AGREGA_REPUESTOS_OT_PRE'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279342861590777267)
,p_name=>'P730_MODIFICA_CLIENTE'
,p_item_sequence=>740
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279343246304777268)
,p_name=>'P730_ACTUALIZA_COD_ARTICULO'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279343612030777268)
,p_name=>'P730_MODIFICA_FECHA_ENTREGA'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279344024998777268)
,p_name=>'P730_REIMPRIME'
,p_item_sequence=>770
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279344484600777268)
,p_name=>'P730_FECHAOT'
,p_item_sequence=>780
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279344894047777268)
,p_name=>'P730_CONSULTA_FECHAOT'
,p_item_sequence=>790
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279345283061777268)
,p_name=>'P730_CONSULTA_FEC_CIERRE'
,p_item_sequence=>800
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279345685357777268)
,p_name=>'P730_CARGA_NROOT'
,p_item_sequence=>810
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279346094281777269)
,p_name=>'P730_TICKET'
,p_item_sequence=>820
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279346443947777269)
,p_name=>'P730_CARGA_MO_GARANTIA'
,p_item_sequence=>830
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279346815631777269)
,p_name=>'P730_MODIFICA_PRECIO_MO'
,p_item_sequence=>840
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279347234431777269)
,p_name=>'P730_CIERRA_LINEA_CRITICA'
,p_item_sequence=>850
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279347671256777269)
,p_name=>'P730_RECLAMO_JEFE'
,p_item_sequence=>860
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279348082313777269)
,p_name=>'P730_ARTICULO'
,p_item_sequence=>870
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279348481703777270)
,p_name=>'P730_NRO_COMPROBANTE_REF'
,p_item_sequence=>880
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279348866672777270)
,p_name=>'P730_SEGUIMIENTO'
,p_item_sequence=>890
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279349267253777270)
,p_name=>'P730_MARCA_PRO'
,p_item_sequence=>900
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279349619014777270)
,p_name=>'P730_CATEGORIA_PRODUCTO'
,p_item_sequence=>910
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279350011181777270)
,p_name=>'P730_FAMILIA_PRODUCTO'
,p_item_sequence=>920
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279350438439777271)
,p_name=>'P730_DESC_ARTICULO_CALL'
,p_item_sequence=>930
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279350808681777271)
,p_name=>'P730_DESC_DISTRIBUIDOR'
,p_item_sequence=>940
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279351235872777271)
,p_name=>'P730_SEGMENTO_CLIENTE'
,p_item_sequence=>950
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279351657284777271)
,p_name=>'P730_NOM_USUARIO'
,p_item_sequence=>960
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279352017074777271)
,p_name=>'P730_DERIVADO'
,p_item_sequence=>970
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279352437173777271)
,p_name=>'P730_DESC_DERIVADO'
,p_item_sequence=>980
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279352859477777271)
,p_name=>'P730_COD_USU_PRESUP_GPV'
,p_item_sequence=>990
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279353204549777272)
,p_name=>'P730_FECHA_PROPUESTA_GPV'
,p_item_sequence=>1000
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279353624882777272)
,p_name=>'P730_COD_USU_VERIFICADO_STA'
,p_item_sequence=>1050
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279354010240777272)
,p_name=>'P730_COD_USU_APROBACION_GPV'
,p_item_sequence=>1070
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279354476639777272)
,p_name=>'P730_FECHA_APROBADO_GPV'
,p_item_sequence=>1080
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279354830245777272)
,p_name=>'P730_COD_USUAROP_ES_COMPLICADO'
,p_item_sequence=>1110
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279355216624777272)
,p_name=>'P730_AUTORIZADO_GAR_POR'
,p_item_sequence=>1130
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279355699437777272)
,p_name=>'P730_FEC_AUTORIZADO_GAR_POR'
,p_item_sequence=>1140
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279356011913777273)
,p_name=>'P730_HORA_AUTORIZADO_GAR_POR'
,p_item_sequence=>1150
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279356477992777273)
,p_name=>'P730_CANTIDAD_DEV'
,p_item_sequence=>1160
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279356893169777273)
,p_name=>'P730_IMPRIMIR'
,p_item_sequence=>1170
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279357295907777273)
,p_name=>'P730_GARANT'
,p_item_sequence=>1180
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279357616602777273)
,p_name=>'P730_OCULTAR'
,p_item_sequence=>1190
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279358049804777273)
,p_name=>'P730_NRO_PAGINA'
,p_item_sequence=>1200
,p_item_plug_id=>wwv_flow_imp.id(396748334730119454)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279359561457777274)
,p_name=>'P730_ARTICULO_RECHAZO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(398592184793441842)
,p_prompt=>'Producto'
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
 p_id=>wwv_flow_imp.id(279359979451777274)
,p_name=>'P730_COD_MOTIVO_RECHAZO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(398592184793441842)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_MOTIVO_RECHAZO_CAORDTRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_motivo || '' - '' || descripcion descripcion, cod_motivo codigo',
'FROM ca_motivos_devolucion_repuesto',
'WHERE cod_empresa = :P_COD_EMPRESA'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279360335167777274)
,p_name=>'P730_COMENTARIO_RECHAZADO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(398592184793441842)
,p_prompt=>'Comentario'
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
 p_id=>wwv_flow_imp.id(279361832312777275)
,p_name=>'P730_TIPO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(398959416253055637)
,p_item_default=>'CR'
,p_prompt=>'Nuevo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:CERRADAS_REPARADAS;CR,CERRADAS_SIN_SOLUCION;CSS,CERRADAS_PRESUPUESTO_RECHAZADO;CPR,CERRADAS_SIN_REPUESTOS;CSR'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279362582509777276)
,p_name=>'P730_CREADO_POR'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Creado por'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279362810272777276)
,p_name=>'P730_FEC_CREACION'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>unistr('Fecha Creaci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279363272432777276)
,p_name=>'P730_HORA_CREACION'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>unistr('Hora creaci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279363613890777276)
,p_name=>'P730_FECHA_CREACION_GPV'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>unistr('Fecha creaci\00F3n GPV')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279364018162777276)
,p_name=>'P730_COD_USUARIO_CREACION_GPV'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>unistr('Usuario creaci\00F3n GPV')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279364447958777276)
,p_name=>'P730_PRESUPUESTADO_POR'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Presupuestado por'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279364818942777276)
,p_name=>'P730_FEC_PRESUPUESTADO'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Fecha Presupuestado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279365207051777277)
,p_name=>'P730_HORA_PRESUPUESTO'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Hora Presupuesto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279365625793777277)
,p_name=>'P730_FEC_MODIF_PRESUPUESTO'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Fecha Modif. Presupuesto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279366079231777277)
,p_name=>'P730_FECHA_PRESUPUESTO_GPV'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Fecha Presupuesto GPV'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279366487921777277)
,p_name=>'P730_COD_USUARIO_PRESUPUESTO_GPV'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Usuario presupuesto GPV'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279366843912777277)
,p_name=>'P730_PENDIENTE_POR'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Pendiente Por'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279367228015777277)
,p_name=>'P730_FEC_PENDIENTE'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Fecha Pendiente'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(279367606627777278)
,p_name=>'P730_HORA_PENDIENTE'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Hora Pendiente'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279368045820777278)
,p_name=>'P730_FEC_MODIF_PENDIENTE'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Fecha Modif. Pendiente'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279368425896777278)
,p_name=>'P730_REPARADO_IM_POR'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>unistr('Reparaci\00F3n Inmediato')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279368805995777278)
,p_name=>'P730_FEC_IM'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Fecha IM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279369200325777278)
,p_name=>'P730_HORA_IM'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Hora IM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279369666140777278)
,p_name=>'P730_APROBADO_POR'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Aprobado por'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279370023715777279)
,p_name=>'P730_FEC_APROBACION'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>unistr('Fecha Aprobaci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279370481304777279)
,p_name=>'P730_HORA_APROBADA'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Hora Aprobada'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279370890498777279)
,p_name=>'P730_RECHAZADO_POR'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Rechazado por'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279371218688777279)
,p_name=>'P730_FEC_RECHAZO'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Fecha Rechazo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279371683959777279)
,p_name=>'P730_HORA_RECHAZADO'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Hora rechazado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279372027436777279)
,p_name=>'P730_FEC_MODIF_RECHAZADO'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Fec. Modif. Rechazado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279372443218777280)
,p_name=>'P730_FECHA_RECHAZO_GPV'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Fecha Rechazo GPV'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279372861166777280)
,p_name=>'P730_COD_USUARIO_RECHAZO_GPV'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>unistr('C\00F3d. Usuario rechazo GPV')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279373202027777280)
,p_name=>'P730_FINALIZADO_POR'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Cerrado por'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279373699323777280)
,p_name=>'P730_FEC_FINALIZADO'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Fecha Cerrado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279374006157777280)
,p_name=>'P730_HORA_FINALIZADO'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Hora Cerrado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279374436729777280)
,p_name=>'P730_FEC_MODIF_CERRADO'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Fec. Modif. Cerrado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279374818807777281)
,p_name=>'P730_FECHA_CERRADO_GPV'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Fecha cerrado GPV'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279375265114777281)
,p_name=>'P730_COD_USUARIO_CERRADO_GPV'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>unistr('C\00F3d. usuario cerrado GPV')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279375607033777281)
,p_name=>'P730_VERIFICADO_POR'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Verificado por'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279376056929777281)
,p_name=>'P730_FEC_VERIFICADO'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Fecha verificado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279376431678777281)
,p_name=>'P730_HORA_VERIFICACION'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>unistr('Hora Verificaci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279376878620777281)
,p_name=>'P730_FEC_MODIF_VERIFICADO'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Fec. modif. verificado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279377281757777282)
,p_name=>'P730_ENTREGADO_POR'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Entregado por'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279377679783777282)
,p_name=>'P730_FEC_ENTREGADO'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Fecha entregado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279378090600777282)
,p_name=>'P730_HORA_ENTREGADO'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Hora entregado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279378497468777282)
,p_name=>'P730_RETIRADO_POR'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Retirado por'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279378820219777282)
,p_name=>'P730_FECHA_RETIRADO'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Fecha retirado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279379267195777282)
,p_name=>'P730_HORA_RETIRADO'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Hora retirado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279379605170777282)
,p_name=>'P730_COD_USUARIO_SIN_RP'
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Sin Repuesto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279380019396777283)
,p_name=>'P730_FEC_SIN_REPUESTO'
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Fecha sin repuesto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279380421996777283)
,p_name=>'P730_HORA_SIN_REPUESTO'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Hora sin repuesto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279380816819777283)
,p_name=>'P730_USUARIO_PED_REP'
,p_item_sequence=>680
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Pedido Repuesto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279381271650777283)
,p_name=>'P730_FECHA_PED_REP'
,p_item_sequence=>690
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Fecha Repuesto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279381696267777283)
,p_name=>'P730_HORA_PED_REP'
,p_item_sequence=>700
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Hora Repuesto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279382000993777283)
,p_name=>'P730_COD_USUARIO_ESTADO_COMPLI'
,p_item_sequence=>710
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>unistr('C\00F3d. usuario estado complicado')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279382414340777283)
,p_name=>'P730_FECHA_ESTADO_COMPLICADO'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Fecha estado complicado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279382874963777284)
,p_name=>'P730_COD_USUARIO_RENDICION'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>unistr('Usuario rendici\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279383261251777284)
,p_name=>'P730_FEC_RENDIDO'
,p_item_sequence=>740
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Fecha Rendido'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279383670201777284)
,p_name=>'P730_IND_RENDIDO'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'IND Rendido'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279384043421777284)
,p_name=>'P730_FECHA_LIQUIDA'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>unistr('Liquidaci\00F3n')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279384491233777284)
,p_name=>'P730_USUARIO_LIQUIDA'
,p_item_sequence=>770
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Usuario Liquida'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279384846017777284)
,p_name=>'P730_FECHA_VERIFICADO_STA'
,p_item_sequence=>780
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Verificado STA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279385247867777285)
,p_name=>'P730_COD_USUARIO_VERIFICADO_STA'
,p_item_sequence=>790
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>unistr('C\00F3d. usuario verificado STA')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279385690050777285)
,p_name=>'P730_FECHA_MODIFICADO_GARANTIA'
,p_item_sequence=>800
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Modificado Gar'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279386083785777285)
,p_name=>'P730_COD_USUARIO_MOD_GAR'
,p_item_sequence=>810
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Cod. usuario mod. gar'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279386473783777285)
,p_name=>'P730_FECHA_ABANDONADO'
,p_item_sequence=>820
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Abandonado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279386843282777285)
,p_name=>'P730_COD_USUARIO_ABANDONADO'
,p_item_sequence=>830
,p_item_plug_id=>wwv_flow_imp.id(401917887571025833)
,p_prompt=>'Usuario Abandono'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279387534580777286)
,p_name=>'P730_TOTAL_COMISION_TECNICO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(401920637239025861)
,p_prompt=>unistr('Comisi\00F3n T\00E9cnico')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279387952993777286)
,p_name=>'P730_TOTAL_COMISION_JEFE_TECNICO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(401920637239025861)
,p_prompt=>unistr('Comisi\00F3n Jefe T\00E9cnico')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279388307469777286)
,p_name=>'P730_TOTAL_COMISION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(401920637239025861)
,p_prompt=>unistr('Total Comisi\00F3n OT')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279389039406777286)
,p_name=>'P730_FECHA_SNC_GPV'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_imp.id(465509352491051321)
,p_prompt=>'Fecha SNG GPV'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279389443648777287)
,p_name=>'P730_COD_USUARIO_SNC_GPV'
,p_item_sequence=>670
,p_item_plug_id=>wwv_flow_imp.id(465509352491051321)
,p_prompt=>unistr('C\00F3d. usuario SNG GPV')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279389829914777287)
,p_name=>'P730_USR_IND_SNC'
,p_item_sequence=>680
,p_item_plug_id=>wwv_flow_imp.id(465509352491051321)
,p_prompt=>'Usuario SNC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279390299980777287)
,p_name=>'P730_FEC_IND_SNC'
,p_item_sequence=>690
,p_item_plug_id=>wwv_flow_imp.id(465509352491051321)
,p_prompt=>'Fecha SNC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279390973464777288)
,p_name=>'P730_COLL_BPS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(660033672180754053)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279391363437777288)
,p_name=>'P730_COLL_BMO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(660033672180754053)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279391778910777288)
,p_name=>'P730_COLL_BRS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(660033672180754053)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279392127452777288)
,p_name=>'P730_COLL_BPRE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(660033672180754053)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279392510344777288)
,p_name=>'P730_COLL_BRU'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(660033672180754053)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279392966209777288)
,p_name=>'P730_PARAM_SER_OT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(660033672180754053)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279393322413777289)
,p_name=>'P730_PARAM_NRO_OT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(660033672180754053)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279393753478777289)
,p_name=>'P730_ID_PEDIDO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(660033672180754053)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
':P730_USUARIO||TO_CHAR(SYSDATE,''DDMMYYYYHHMMSS'') ID',
'FROM DUAL'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279394125738777289)
,p_name=>'P730_USUARIO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(660033672180754053)
,p_source=>'&APP_USER.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279394586942777289)
,p_name=>'P730_VCIUDAD'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(660033672180754053)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279394938874777289)
,p_name=>'P730_DESCARGA_DATOS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(660033672180754053)
,p_item_default=>'''N'''
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279395331482777289)
,p_name=>'P730_PARAM_ID_TKT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(660033672180754053)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279395779926777290)
,p_name=>'P730_LATITUDE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(660033672180754053)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_imp.id(279396109143777290)
,p_name=>'P730_LONGITUDE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(660033672180754053)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279396581942777290)
,p_name=>'P730_COD_PROV'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(660033672180754053)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279396948197777290)
,p_name=>'P730_INDICADOR_VOLVER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(660033672180754053)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279397371310777290)
,p_name=>'P730_TIP_COMPROBANTE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(660033672180754053)
,p_item_default=>'ORT'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279400388558777292)
,p_name=>'P730_MOTIVO_SEGUIMIENTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(403269355592604515)
,p_item_default=>'T'
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_SEGUIMIENTOS_CAORDTRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT d.cod_motivo codigo_rapido, m.descripcion  nombre ,1 orden',
' from ca_llamadas_cabecera c, ca_llamadas_detalle d, ca_motivo_lla m',
'where c.cod_empresa     = :P_COD_EMPRESA',
' and  c.nro_llamada     = d.nro_llamada',
' and d.cod_motivo       = m.cod_motivo',
' and (d.tip_comprobante = :P370_TIP_COMPROBANTE)',
' and (d.ser_comprobante = :P370_SER_COMPROBANTE)',
' and (d.nro_comprobante = :P370_NRO_COMPROBANTE) ',
' group by d.cod_motivo,descripcion',
'UNION ALL',
'select c.cod_motivo codigo_rapido, m.descripcion desc_motivo,2',
' from CA_LLAMADAS_SALIENTES c , ca_motivo_lla m',
'where c.cod_empresa     = :P_COD_EMPRESA',
' and C.cod_motivo       = m.cod_motivo',
' and c.tip_comprobante = :P370_TIP_COMPROBANTE',
' and c.ser_comprobante = :P370_SER_COMPROBANTE',
' and c.nro_comprobante = :P370_NRO_COMPROBANTE',
' AND C.MOTIVO_PRINCIPAL IS NULL ',
' group by c.cod_motivo,descripcion',
'UNION ALL',
' ',
'SELECT ''SNC'' codigo_rapido,''SOLICITUD NO CONFORME'' nombre,2',
' from ca_seguimiento_conformidad c ,  ca_conformidad t',
'where t.cod_empresa     =  :P_COD_EMPRESA',
'and t.cod_empresa=c.cod_empresa',
'and t.nro_solicitud=c.nro_solicitud',
'',
' and T.tip_comprobante_ref = :P370_TIP_COMPROBANTE',
' and T.ser_comprobante_ref = :P370_SER_COMPROBANTE',
' and t.nro_comprobante_ref = :P370_NRO_COMPROBANTE ',
' AND ROWNUM=1',
'UNION ALL',
'SELECT ''T'' codigo_rapido,''TODOS'' nombre,3',
'FROM DUAL',
'ORDER BY 3 desc'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P_COD_EMPRESA,P730_TIP_COMPROBANTE,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P730_TIP_COMPROBANTE,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279400765179777292)
,p_name=>'P730_USUARIO_SEGUIMIENTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(403269355592604515)
,p_item_default=>'T'
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_USUARIO_SEGUIMIENTOS_CAORDTRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_usuario codigo_rapido,cod_usuario nombre,1 orden',
' from ca_llamadas_cabecera c, ca_llamadas_detalle d, ca_motivo_lla m',
'where c.cod_empresa     = :P_COD_EMPRESA',
' and  c.nro_llamada     = d.nro_llamada',
' and d.cod_motivo       = m.cod_motivo',
' and (d.tip_comprobante = :P370_TIP_COMPROBANTE)',
' and (d.ser_comprobante = :P370_SER_COMPROBANTE)',
' and (d.nro_comprobante = :P370_NRO_COMPROBANTE) ',
' group by cod_usuario',
'UNION ALL',
'select cod_usuario, cod_usuario,2',
' from CA_LLAMADAS_SALIENTES c , ca_motivo_lla m',
'where c.cod_empresa     = :P_COD_EMPRESA',
' and C.cod_motivo       = m.cod_motivo',
' and c.tip_comprobante = :P370_TIP_COMPROBANTE',
' and c.ser_comprobante = :P370_SER_COMPROBANTE',
' and c.nro_comprobante = :P370_NRO_COMPROBANTE ',
'  group by cod_usuario',
'',
'UNION ALL',
'SELECT ''T'' codigo_rapido,''TODOS'' nombre,3',
'FROM DUAL',
'ORDER BY 3 desc'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P_COD_EMPRESA,P730_TIP_COMPROBANTE,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P730_TIP_COMPROBANTE,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279402529873777293)
,p_name=>'P730_MOTIVO_PRINCIPAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(403269749878604519)
,p_item_default=>'T'
,p_prompt=>'Motivo Principal'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_MOTIVO_PRINCIPAL_CAORDTRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.MOTIVO_PRINCIPAL codigo, C.MOTIVO_PRINCIPAL nombre ,1 orden',
' from CA_LLAMADAS_SALIENTES c , ca_motivo_lla m',
'where c.cod_empresa     = :P_COD_EMPRESA',
' and C.cod_motivo       = m.cod_motivo',
' and c.tip_comprobante = :P370_TIP_COMPROBANTE',
' and c.ser_comprobante = :P370_SER_COMPROBANTE',
' and c.nro_comprobante = :P370_NRO_COMPROBANTE',
' AND C.MOTIVO_PRINCIPAL IS NOT NULL ',
' group by c.MOTIVO_PRINCIPAL',
'UNION ALL',
'SELECT ''T'' codigo_rapido,''TODOS'' nombre,3',
'FROM DUAL',
'ORDER BY 3 desc'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P_COD_EMPRESA,P730_TIP_COMPROBANTE,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P730_TIP_COMPROBANTE,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279402935308777293)
,p_name=>'P730_MOTIVO_SECUNDARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(403269749878604519)
,p_item_default=>'T'
,p_prompt=>'Motivo Secundario'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_MOTIVO_SECUNDARIO_CAORDTRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.MOTIVO_SECUNDARIO codigo, C.MOTIVO_SECUNDARIO nombre ,1 orden',
' from CA_LLAMADAS_SALIENTES c , ca_motivo_lla m',
'where c.cod_empresa     = :P_COD_EMPRESA',
' and C.cod_motivo       = m.cod_motivo',
' and c.tip_comprobante = :P370_TIP_COMPROBANTE',
' and c.ser_comprobante = :P370_SER_COMPROBANTE',
' and c.nro_comprobante = :P370_NRO_COMPROBANTE',
' AND C.MOTIVO_PRINCIPAL IS not  NULL ',
' and C.MOTIVO_SECUNDARIO is not null',
'',
'and (c.motivo_principal = :P370_MOTIVO_PRINCIPAL OR ( NVL(:P370_MOTIVO_PRINCIPAL,''T'')=''T''))',
' and (c.motivo_secundario = :P370_MOTIVO_SECUNDARIO OR ( NVL(:P370_MOTIVO_SECUNDARIO,''T'')=''T''))',
' and (c.cod_motivo = :P370_COD_MOTIVO OR ( NVL(:P370_COD_MOTIVO,''T'')=''T''))',
'',
'',
' group by c.MOTIVO_SECUNDARIO',
'',
'UNION ALL',
'SELECT ''T'' codigo_rapido,''TODOS'' nombre,3',
'FROM DUAL',
'',
'ORDER BY 3 desc,2'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P_COD_EMPRESA,P730_TIP_COMPROBANTE,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE,P730_MOTIVO_PRINCIPAL'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P730_TIP_COMPROBANTE,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE,P730_MOTIVO_PRINCIPAL'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279403395948777294)
,p_name=>'P730_COD_MOTIVO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(403269749878604519)
,p_item_default=>'T'
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_MOTIVO_CAORDTRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.COD_MOTIVO codigo, DESCRIPCION nombre ,1 orden',
'',
'from CA_LLAMADAS_SALIENTES c , ca_motivo_lla m',
'where c.cod_empresa     = :P_COD_EMPRESA',
' and C.cod_motivo       = m.cod_motivo',
' and c.tip_comprobante = :P370_TIP_COMPROBANTE',
' and c.ser_comprobante = :P370_SER_COMPROBANTE',
' and c.nro_comprobante = :P370_NRO_COMPROBANTE',
' and c.motivo_principal is not null',
'and (c.motivo_principal = :P370_MOTIVO_PRINCIPAL OR ( NVL(:P370_MOTIVO_PRINCIPAL,''T'')=''T''))',
' and (c.motivo_secundario = :P370_MOTIVO_SECUNDARIO OR ( NVL(:P370_MOTIVO_SECUNDARIO,''T'')=''T''))',
' and (c.cod_motivo = :P370_COD_MOTIVO OR ( NVL(:P370_COD_MOTIVO,''T'')=''T''))',
'',
'GROUP BY c.COD_MOTIVO,DESCRIPCION',
'',
'',
'UNION ALL',
'SELECT ''T'' codigo_rapido,''TODOS'' nombre,3',
'FROM DUAL',
'order by 3 desc'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P_COD_EMPRESA,P730_TIP_COMPROBANTE,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE,P730_MOTIVO_PRINCIPAL,P730_MOTIVO_SECUNDARIO'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P730_TIP_COMPROBANTE,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE,P730_MOTIVO_PRINCIPAL,P730_MOTIVO_SECUNDARIO'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279403790762777294)
,p_name=>'P730_USUARIO_CALL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(403269749878604519)
,p_item_default=>'T'
,p_prompt=>'Usuario'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_USUARIO_CALL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_usuario codigo_rapido, cod_usuario nombre,2 orden',
' from CA_LLAMADAS_SALIENTES c , ca_motivo_lla m',
'where c.cod_empresa     = :P_COD_EMPRESA',
' and C.cod_motivo       = m.cod_motivo',
' and c.tip_comprobante = :P370_TIP_COMPROBANTE',
' and c.ser_comprobante = :P370_SER_COMPROBANTE',
' and c.nro_comprobante = :P370_NRO_COMPROBANTE ',
' and c.motivo_principal is not null',
'  group by cod_usuario',
'',
'UNION ALL',
'SELECT ''T'' codigo_rapido,''TODOS'' nombre,3',
'FROM DUAL',
'ORDER BY 3 desc',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P_COD_EMPRESA,P730_TIP_COMPROBANTE,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE'
,p_ajax_items_to_submit=>'P_COD_EMPRESA,P730_TIP_COMPROBANTE,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279408377612777296)
,p_name=>'P730_ARTICULO_DEV'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(404319178079631655)
,p_prompt=>'Producto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279408749005777296)
,p_name=>'P730_CANTIDAD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(404319178079631655)
,p_prompt=>'Cantidad'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>5
,p_tag_css_classes=>'allow_only_numbers'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279409187205777296)
,p_name=>'P730_COD_MOTIVO_DEV'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(404319178079631655)
,p_prompt=>'Motivo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_MOTIVO_DEVOLUCION_CAORDTRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cod_motivo||'' - ''||descripcion descripcion, cod_motivo codigo ',
'FROM ca_motivos_devolucion_repuesto',
'where cod_empresa = :P_COD_EMPRESA'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279410530585777297)
,p_name=>'P730_NO_CONFORME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(414059923028552717)
,p_prompt=>'Solicitud no Conforme'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279411618614777298)
,p_name=>'P730_DATOS_GARANTIA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(428273727983046040)
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279416378157777300)
,p_name=>'P730_CERRADO'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(462013550187984115)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279417733368777301)
,p_name=>'P730_COD_CLIENTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(389456948085176815)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_CLIENTES_CAORDTRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre, PR.numero RUC, PI.numero CI, cod_cliente',
'from cc_clientes c, ',
'     personas p, ',
'     --telef_personas pt, ',
'     ident_personas pi ,',
'     ident_personas pR ',
'where c.cod_empresa = nvl(:P_COD_EMPRESA,''1'')',
'and c.cod_persona = p.cod_persona',
'---and p.cod_persona = pt.cod_persona(+) ',
'and p.cod_persona = pi.cod_persona(+) ',
'and NVL(pi.cod_ident(+),''CI'')=''CI''',
'and p.cod_persona = pR.cod_persona(+) ',
'and NVL(pR.cod_ident(+),''RUC'')=''RUC''',
'--and nvl(c.estado,''X'') IN (''A'',''I'') ',
''))
,p_cSize=>10
,p_cMaxlength=>15
,p_tag_attributes=>'style="background-color:   #f0ffef   ; width:60px"'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
,p_attribute_07=>'Clientes'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279418102502777301)
,p_name=>'P730_NOM_CLIENTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(389456948085176815)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre'
,p_source=>'NOM_CLIENTE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279418594737777301)
,p_name=>'P730_CI'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(389456948085176815)
,p_prompt=>'CI'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-address-card-o'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279418961588777301)
,p_name=>'P730_RUC'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(389456948085176815)
,p_prompt=>'RUC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-address-card-o'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279419356758777301)
,p_name=>'P730_PREFIJO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(389456948085176815)
,p_prompt=>'Prefijo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select token1,replace(token1,''09'',''+5959'') val',
' from (',
'SELECT TRIM(regexp_substr(''0961,0962,0963,0964,0965,0966,0971,0972,0973,0974,0975,0976,0981,0982,0983,0984,0985,0986,0987,0991,0992,0993,0994,0995,0996''',
', ''[^,]+'', 1, LEVEL)) AS token1',
'FROM DUAL',
'CONNECT BY regexp_substr(''0961,0962,0963,0964,0965,0966,0971,0972,0973,0974,0975,0976,0981,0982,0983,0984,0985,0986,0987,0991,0992,0993,0994,0995,0996'', ''[^,]+'', 1, LEVEL) IS NOT NULL',
')',
'union all',
' select token1,replace(token1,''09'',''5959'') val',
' from (',
'SELECT TRIM(regexp_substr(''0961,0962,0963,0964,0965,0966,0971,0972,0973,0974,0975,0976,0981,0982,0983,0984,0985,0986,0987,0991,0992,0993,0994,0995,0996''',
', ''[^,]+'', 1, LEVEL)) AS token1',
'FROM DUAL',
'CONNECT BY regexp_substr(''0961,0962,0963,0964,0965,0966,0971,0972,0973,0974,0975,0976,0981,0982,0983,0984,0985,0986,0987,0991,0992,0993,0994,0995,0996'', ''[^,]+'', 1, LEVEL) IS NOT NULL',
')'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-phone'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279419727474777301)
,p_name=>'P730_TEL_CLIENTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(389456948085176815)
,p_prompt=>'Telefono'
,p_placeholder=>'XXXXXX'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>6
,p_cMaxlength=>6
,p_tag_attributes=>'onkeydown="return isNumber(event);" style="background-color: #f0ffef; border-color: #4dff00"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279420103327777302)
,p_name=>'P730_DIR_CLIENTE'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(389456948085176815)
,p_prompt=>'Dir Cliente'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="background-color: #f0ffef; border-color: #4dff00"'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-map-o'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279420584762777302)
,p_name=>'P730_COD_CONDICION_VENTA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(389456948085176815)
,p_item_default=>'36'
,p_prompt=>unistr('Condici\00F3n Venta')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_CONDICION_VENTA_CAORDTRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.cod_condicion_venta||'' - ''||c.descripcion  descricion,',
'       c.cod_condicion_venta,',
'       c.plazo',
'  from cc_descuento_tipo_cliente d,',
'       cc_condiciones_ventas c',
' where d.cod_empresa = :P_COD_EMPRESA',
'   and d.tip_cliente = bs_busca_parametro(''VT'', ''VT_TIPO_PERS_EMP'')',
'   and c.cod_empresa         = d.cod_empresa',
'   and c.cod_condicion_venta = d.cod_condicion_venta',
' order by plazo asc',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279420966335777302)
,p_name=>'P730_COD_SUCURSAL_DIST'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(389458553318176831)
,p_prompt=>'Sucursal Dist.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.cod_SUCURSAL||'' - ''||p.nombre||'' ''|| p.direccion descri, ',
'     ',
'       p.cod_SUCURSAL',
'      ',
'from BS_SUCURSAL_CLIENTE p',
'where p.cod_empresa= :P_COD_EMPRESA',
'and p.cod_cliente=:P730_COD_DISTRIBUIDOR'))
,p_lov_cascade_parent_items=>'P730_COD_DISTRIBUIDOR'
,p_ajax_items_to_submit=>'P730_COD_DISTRIBUIDOR'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279421374833777302)
,p_name=>'P730_EMAIL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(389456948085176815)
,p_prompt=>'Email'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="background-color: #f0ffef; border-color: #4dff00"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279421780713777302)
,p_name=>'P730_DEPARTAMENTO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(389456948085176815)
,p_prompt=>'Departamento'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PR.DESCRIPCION, PR.COD_PROVINCIA',
'from provincias pr',
'where pr.cod_pais=''PAR''',
'order by 1'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279422138107777302)
,p_name=>'P730_CIUDAD'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(389456948085176815)
,p_item_default=>'P730_VCIUDAD'
,p_item_default_type=>'ITEM'
,p_prompt=>'Ciudad'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CT.DESCRIPCION, CT.COD_CIUDAD',
'from CIUDADES CT',
'where ct.cod_pais=''PAR''',
'AND (:P730_DEPARTAMENTO= CT.COD_PROVINCIA )',
'--AND (:P730_VCIUDAD is null or :P730_VCIUDAD= CT.COD_ciudad )',
'order by 1'))
,p_lov_cascade_parent_items=>'P730_DEPARTAMENTO'
,p_ajax_items_to_submit=>'P730_DEPARTAMENTO'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_css_classes=>'refreshme'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279422530543777302)
,p_name=>'P730_IND_ZONA'
,p_is_required=>true
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(389456948085176815)
,p_prompt=>'zona'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:INTERIOR;I,CAPITAL;C'
,p_cattributes_element=>'style="background-color:#f1faee !important"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279424062509777304)
,p_name=>'P730_SER_COMPROBANTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(389458553318176831)
,p_item_default=>'P'
,p_prompt=>'Serie'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly style="background-color: #f0ffef; border-color: #4dff00"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279424415265777304)
,p_name=>'P730_NRO_COMPROBANTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(389458553318176831)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('N\00BA de Orden')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly style="background-color: #f0ffef; border-color: #4dff00"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279424892594777304)
,p_name=>'P730_GARANTIA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(389458553318176831)
,p_item_default=>'S'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279425268291777304)
,p_name=>'P730_OT_MULTIPLE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_prompt=>'Crear varias OTs para el mismo Cliente'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_grid_column=>7
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279425693837777304)
,p_name=>'P730_NRO_GARANTIA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(389458553318176831)
,p_prompt=>'Nro Garantia'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>15
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279426089581777305)
,p_name=>'P730_FEC_COMPROBANTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(389458553318176831)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>unistr('Fecha de Creaci\00F3n de OT')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="background-color: #f0ffef; border-color: #4dff00"'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279426473714777305)
,p_name=>'P730_COD_ARTICULO2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279426820418777305)
,p_name=>'P730_CONT_OT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279427282656777305)
,p_name=>'P730_NOM_PROVEEDOR'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279427624258777305)
,p_name=>'P730_ESTADO_PRESU_REAL'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279428015696777305)
,p_name=>'P730_COD_SUCURSAL'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279428474261777306)
,p_name=>'P730_COD_MOTIVO_RECLAMO_JEFE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279428896681777306)
,p_name=>'P730_ANULADO'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279429237936777306)
,p_name=>'P730_COD_MOTIVO_ANU'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279429670433777306)
,p_name=>'P730_COD_MOTIVO_RECHAZO_PRESU'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279430004736777306)
,p_name=>'P730_IND_RECLAMO_STA'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279430403349777306)
,p_name=>'P730_COD_MOTIVO_RECLAMO_STA'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279430830959777306)
,p_name=>'P730_COD_MOTIVO_RECLAMO_SPP'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279431246116777307)
,p_name=>'P730_COD_ARTICULO_CALL'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279431685398777307)
,p_name=>'P730_FEC_MODIF_APROBADO'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279432053701777307)
,p_name=>'P730_IND_LIQUIDA'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279432498361777307)
,p_name=>'P730_IND_ABANDONADO'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279432864007777307)
,p_name=>'P730_TOT_REPUESTOS_CALL'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_imp.id(279433259525777307)
,p_name=>'P730_COD_MOTIVO_COMPRA_NUEVA'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279433603124777308)
,p_name=>'P730_TIENE_REPUESTOS'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279434008453777308)
,p_name=>'P730_CELULAR_CONTACTO'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279434445224777308)
,p_name=>'P730_CORREO_CONTACTO'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279434892074777308)
,p_name=>'P730_COD_FORMA'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279435239898777308)
,p_name=>'P730_PORC_IVA'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279435694978777308)
,p_name=>'P730_IND_ADICIONAL'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279436078183777308)
,p_name=>'P730_LINEA_PRODUCTO'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279436409694777309)
,p_name=>'P730_ERROR'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279436825387777309)
,p_name=>'P730_SITIO'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279437264841777309)
,p_name=>'P730_TOTA_OT_CALL'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279437668352777309)
,p_name=>'P730_IND_CORREO_PE'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279438006736777309)
,p_name=>'P730_IND_ENVIADO'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279438456769777309)
,p_name=>'P730_OPERACION'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279438858537777310)
,p_name=>'P730_PORCENTAJE_SPP'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279439242659777310)
,p_name=>'P730_TOT_MOBRA_ANT'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279439683664777310)
,p_name=>'P730_IND_GARANTIA'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279440024533777310)
,p_name=>'P730_SUC_DIST_AUX'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279440414869777310)
,p_name=>'P730_VOLVER'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279440885796777310)
,p_name=>'P730_IND_SNC'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279441284364777310)
,p_name=>'P730_SER_OT_ANTERIOR'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_imp.id(389457131413176817)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279441959928777311)
,p_name=>'P730_COD_DISTRIBUIDOR'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(389458553318176831)
,p_prompt=>'Distribuidor'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_DISTRIBUIDOR_CAORDTRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  nombre ||'' -'' ||cod_cliente nombre, cod_cliente',
'from cc_clientes c, personas p',
'where c.cod_empresa = :P_COD_EMPRESA',
'and c.cod_persona = p.cod_persona ',
'and nvl(c.estado,''X'') in (''A'',''C'',''B'') ',
'',
'order by nombre'))
,p_cSize=>30
,p_tag_attributes=>'style="background-color: #f0ffef; border-color: #aaeb8e"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
,p_attribute_07=>'Distribuidores'
,p_attribute_10=>'NOMBRE:P730_NOMBRE_DISTRIBUIDOR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279442321559777311)
,p_name=>'P730_NOMBRE_DISTRIBUIDOR'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(389458553318176831)
,p_prompt=>'Nombre Distribuidor'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="background-color: #f0ffef; border-color: #4dff00"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-right-sm'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279442737479777311)
,p_name=>'P730_NRO_FACTURA'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(389458553318176831)
,p_prompt=>unistr('N\00BA Factura Salida NGO')
,p_format_mask=>'"''999-999-9999"'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279443118030777311)
,p_name=>'P730_FECHA_FACTURA'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(389458553318176831)
,p_prompt=>'Fecha Fact. Salida NGO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers '
,p_tag_attributes=>'onfocusout="this.value= isValidDate(this.value);"  onkeyup = "setDateFormat(this);" '
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279443570213777311)
,p_name=>'P730_OT_ANTERIOR'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(389457348657176819)
,p_prompt=>'OT Anterior'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279443933807777312)
,p_name=>'P730_SERIE_PRODUCTO'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(389457348657176819)
,p_prompt=>'Serie Producto'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279444332193777312)
,p_name=>'P730_NRO_COMPROBANTE_DISTR'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(389458553318176831)
,p_prompt=>unistr('N\00BA Factura del Cliente')
,p_placeholder=>'Formato esperado: 0010011234567'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>13
,p_tag_attributes=>'onkeydown="return isNumber(event);" style="background-color: #f0ffef; border-color: #4dff00"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279444788411777312)
,p_name=>'P730_CANT_OT'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(389457348657176819)
,p_prompt=>'Cant. OT'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279445128028777312)
,p_name=>'P730_FECHA_CO_DISTRIBUIDOR'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(389458553318176831)
,p_prompt=>'Fecha de Factura del Cliente'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow_only_numbers '
,p_tag_attributes=>'onfocusout="this.value= isValidDate(this.value);"  onkeyup = "setDateFormat(this);" '
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279445510057777312)
,p_name=>'P730_CONTADOR_FACT_ART_DIST'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(389457348657176819)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279445951305777312)
,p_name=>'P730_AGENTE'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(389457348657176819)
,p_prompt=>'Agente asignado para contacto al cliente'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-left-sm:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279446304029777312)
,p_name=>'P730_TIPO_CIERRE'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(389457348657176819)
,p_prompt=>'<strong>    TIPO DE CIERRE</strong>'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC2:Cerradas Reparadas;CR,Cerradas Sin Soluci\00F3n;CSS,Cerradas Pres. Rechazadas;CPR,Cerradas Sin Repuestos;CSR,Nada')
,p_cattributes_element=>'style="background-color:#f1faee !important"'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-left-sm:margin-right-sm'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'5'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279446796877777313)
,p_name=>'P730_IND_RECLAMO'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(389457348657176819)
,p_prompt=>'Reclamo'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-top-md:margin-left-sm'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279447198807777313)
,p_name=>'P730_TIPO_RECLAMO'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(389457348657176819)
,p_prompt=>'Tipo Reclamo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Reclamo Mostrador;RMO,Reclamo SPP;RSPP,Reclamo Reingreso;RRE,Reclamo STA;RSTA'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279447510949777313)
,p_name=>'P730_COSTO_SERVICIO'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(389457348657176819)
,p_prompt=>unistr('Costo de Revisi\00F3n:')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-right-sm'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279448579910777314)
,p_name=>'P730_PRESUPUESTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(414060640747552724)
,p_prompt=>'Presupuesto (S/N)'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-left-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279448999766777314)
,p_name=>'P730_IND_DELIVERY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(414060640747552724)
,p_prompt=>'SPP (S/N)'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279449362450777314)
,p_name=>'P730_IND_RETIRADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(414060640747552724)
,p_prompt=>'Retirado'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279449759168777314)
,p_name=>'P730_FEC_ESTADO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(414060640747552724)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279450199240777314)
,p_name=>'P730_FEC_RETIRADO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(414060640747552724)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279450524745777314)
,p_name=>'P730_IND_ENTREGA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(414060640747552724)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279451291711777315)
,p_name=>'P730_TRANSPPORTADOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(414060781444552725)
,p_prompt=>'<strong>   ORIGEN TICKET</strong>'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:SPP;S,LOGISTICA;L,TRANSPORTADORA;T'
,p_cattributes_element=>'style="background-color:#f1faee !important"'
,p_grid_column=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-left-sm'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279451683068777315)
,p_name=>'P730_NRO_ORDEN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(414060781444552725)
,p_prompt=>unistr('N\00BA Ord. Retiro Ticket')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279452035566777315)
,p_name=>'P730_NRO_TICKET'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(414060781444552725)
,p_prompt=>unistr('N\00BA Ticket')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:margin-right-sm'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279452732225777316)
,p_name=>'P730_COD_ORIGEN'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(389458553318176831)
,p_prompt=>'Origen'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ORIGENES_CAORDTRA_730'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select o.cod_origen||'' - ''||o.descripcion descripcion, o.cod_origen, o.descripcion  descri',
'from vt_origenes o,',
'     cm_proveedores p,',
'     usuarios u',
'where o.cod_empresa=:P_COD_EMPRESA',
'and o.activo=''S''',
'and o.cod_empresa=p.cod_empresa',
'and o.origen=p.ind_servicio_tecnico',
'and p.cod_persona=u.cod_persona',
'and (v(''APP_USER'') not in (''FABIOARV'',''RICHARDISA'',''NORBERTORO'',''ALEMCE'',''JOSEALF'',''EVERAQUI'') or (v(''APP_USER'') in (''FABIOARV'',''RICHARDISA'',''NORBERTORO'',''ALEMCE'',''JOSEALF'',''EVERAQUI'') and o.cod_origen in(''38'',''15'')))',
'and u.cod_usuario=v(''APP_USER'')',
'union all ',
'select o.cod_origen||'' -  ''||o.descripcion descripcion, o.cod_origen, o.descripcion decri',
'from vt_origenes o  ',
'where o.cod_empresa=:P_COD_EMPRESA',
'and o.activo=''S''',
'AND o.cod_origen IN(''2'',''25'',''27'')',
'and not exists (',
'      Select distinct ''1''',
'      from  cm_proveedores p,',
'            usuarios u',
'      where p.cod_empresa=:P_COD_EMPRESA ',
'      and p.ind_servicio_tecnico is not null',
'      and p.cod_persona=u.cod_persona',
'      and u.cod_usuario=v(''APP_USER'')',
'     )'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>7
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_icon_css_classes=>'fa-user-headset'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279453194501777316)
,p_name=>'P730_CANAL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(389458553318176831)
,p_prompt=>'Canal'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279453524823777316)
,p_name=>'P730_COD_ARTICULO_OT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(389458553318176831)
,p_prompt=>'Codigo Articulo'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'LOV_ARTICULOS_CAORDTRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION,',
'      COD_ARTICULO,',
'      cod_art_corto',
'FROM (',
'select descripcion, cod_articulo,cod_art_corto ,1 ORDEN',
'from st_articulos a where cod_empresa =  nvl(:P_COD_EMPRESA,''1'')',
'--and a.precio_base>0',
'--and a.costo_prom>0',
'and a.descripcion is not null',
'',
'and (( a.cod_rubro =''PR'' AND A.COD_ART_CORTO IS NOT NULL) OR a.cod_rubro in (''RE'',''MU''))',
'--and a.cod_rubro in (''PR'')',
'--AND A.COD_ART_CORTO IS NOT NULL',
'',
') ORDER BY ORDEN,1',
'',
''))
,p_tag_attributes=>'style="background-color: #f0ffef; border-color: #aaeb8e"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-calendar-pointer'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279453933897777316)
,p_name=>'P730_DESCRIPCION_ARTICULO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(389458553318176831)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279454317360777316)
,p_name=>'P730_CATEGORIA_ARTICULO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(389458553318176831)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279454744298777316)
,p_name=>'P730_LINEA_ARTICULOS'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(389458553318176831)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279455170774777317)
,p_name=>'P730_NRO_COMPRA'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(389458553318176831)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279455527143777317)
,p_name=>'P730_FEC_COMPRA'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(389458553318176831)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279455934387777317)
,p_name=>'P730_DESCRI_ORIGEN'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(389458553318176831)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279456322974777317)
,p_name=>'P730_COD_ORIGEN_AUX'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(389458553318176831)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279457425485777318)
,p_name=>'P730_OBSERV'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(389460552689176851)
,p_prompt=>'OBS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279457855160777318)
,p_name=>'P730_ESTADO_AN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(389460552689176851)
,p_prompt=>'Anulado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_column=>10
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279462827256777320)
,p_name=>'P730_ESTADO_ENTREGA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(428273501760046037)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279463217974777320)
,p_name=>'P730_FEC_ENTREGA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(428273501760046037)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279468634697777323)
,p_name=>'P730_COMENTARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(610607678602109845)
,p_prompt=>'Comentario'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>150
,p_cMaxlength=>1000
,p_cHeight=>5
,p_colspan=>8
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279469091350777323)
,p_name=>'P730_DEL_PS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(610607678602109845)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279469483942777323)
,p_name=>'P730_DEL_ID_PS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(610607678602109845)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279469856446777323)
,p_name=>'P730_CANTIDAD_PROBLEMA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(610607678602109845)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279470207570777323)
,p_name=>'P730_TOTAL_OT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(610607678602109845)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Total'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_grid_column=>10
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(279470670364777324)
,p_name=>'P730_TOTAL_OT_AUX'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(610607678602109845)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(285245069150611304)
,p_name=>'P730_PREFIJO_ALT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(389456948085176815)
,p_prompt=>'Prefijo Alt'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select token1,replace(token1,''09'',''+5959'') val',
' from (',
'SELECT TRIM(regexp_substr(''0961,0962,0963,0964,0965,0966,0971,0972,0973,0974,0975,0976,0981,0982,0983,0984,0985,0986,0991,0992,0993,0994,0995,0996''',
', ''[^,]+'', 1, LEVEL)) AS token1',
'FROM DUAL',
'CONNECT BY regexp_substr(''0961,0962,0963,0964,0965,0966,0971,0972,0973,0974,0975,0976,0981,0982,0983,0984,0985,0986,0991,0992,0993,0994,0995,0996'', ''[^,]+'', 1, LEVEL) IS NOT NULL',
')'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-phone'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(285245159171611305)
,p_name=>'P730_TEL_CLIENTE_1'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(389456948085176815)
,p_prompt=>'Telefono Alternativo'
,p_placeholder=>'XXXXXX'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>6
,p_cMaxlength=>6
,p_tag_attributes=>'onkeydown="return isNumber(event);" style="background-color: #f0ffef; border-color: #4dff00"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(285245268198611306)
,p_name=>'P730_COD_ARTICULO_OT_CALL'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(389458553318176831)
,p_prompt=>'Codigo Articulo Call'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_ARTICULOS_CAORDTRA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION,',
'      COD_ARTICULO,',
'      cod_art_corto',
'FROM (',
'select descripcion, cod_articulo,cod_art_corto ,1 ORDEN',
'from st_articulos a where cod_empresa =  nvl(:P_COD_EMPRESA,''1'')',
'--and a.precio_base>0',
'--and a.costo_prom>0',
'and a.descripcion is not null',
'',
'and (( a.cod_rubro =''PR'' AND A.COD_ART_CORTO IS NOT NULL) OR a.cod_rubro in (''RE'',''MU''))',
'--and a.cod_rubro in (''PR'')',
'--AND A.COD_ART_CORTO IS NOT NULL',
'',
') ORDER BY ORDEN,1',
'',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'NINGUNO'
,p_cSize=>30
,p_tag_attributes=>'style="background-color: #f0ffef; border-color: #aaeb8e"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-calendar-pointer'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(285245388939611307)
,p_name=>'P730_DESCRIPCION_ARTICULO_CALL'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(389458553318176831)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(285255461751631180)
,p_name=>'P730_BUSQUEDA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(496486159656989723)
,p_prompt=>'Busqueda'
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
 p_id=>wwv_flow_imp.id(285255832964631183)
,p_name=>'P730_LATITUD_LONGITUD'
,p_is_required=>true
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(389456948085176815)
,p_prompt=>'Coordenadas'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186937130263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(285811018746143303)
,p_name=>'P730_DIRECCION_SUCURSAL'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(389458553318176831)
,p_prompt=>'Direccion Dist.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
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
 p_id=>wwv_flow_imp.id(285815105307143344)
,p_name=>'P730_DEPARTAMENTO_STA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(285815053004143343)
,p_item_default=>'P730_DEPARTAMENTO'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(285815207983143345)
,p_name=>'P730_CIUDAD_STA'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(285815053004143343)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(285815381515143346)
,p_name=>'P730_LOCALIDAD_COBERTURA'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(285815053004143343)
,p_prompt=>'Cobertura'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CT.DESCRIPCION, CT.COD_CIUDAD',
'from CIUDADES CT',
'where ct.cod_pais=''PAR''',
'AND (:P730_DEPARTAMENTO is null or :P730_DEPARTAMENTO= CT.COD_PROVINCIA )',
'AND (:P730_CIUDAD is null or :P730_CIUDAD= CT.COD_ciudad )'))
,p_lov_cascade_parent_items=>'P730_DEPARTAMENTO,P730_CIUDAD'
,p_ajax_items_to_submit=>'P730_DEPARTAMENTO,P730_CIUDAD'
,p_ajax_optimize_refresh=>'N'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_css_classes=>'refreshme'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(295812020932820921)
,p_name=>'P730_COD_MOTIVO_RECHAZO_PRES'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(339830390732701550)
,p_prompt=>'Motivo Rechazo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select descripcion,cod_motivo_anu',
'        ',
'         from CA_MOTIVO_OT',
'         where cod_empresa    = ''1''',
'                      and tip_motivo=''PRESUPUESTO'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(330125859686269441)
,p_name=>'P730_REFERENCIAS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(389456948085176815)
,p_prompt=>'Referencia Direccion'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="background-color: #f0ffef; border-color: #4dff00"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_icon_css_classes=>'fa-map-o'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(339827436694701521)
,p_name=>'P730_BUSQUEDA_2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(496486159656989723)
,p_prompt=>'Busqueda Direccion'
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
,p_attribute_06=>'UPPER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(339828585444701532)
,p_name=>'P730_INFORME_TECNICO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(339828454235701531)
,p_prompt=>'informe Tecnico'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(345312904954285210)
,p_name=>'P730_TOTAL_OT_CALL_CALCULADO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(394989536738036438)
,p_prompt=>'Total del Presupuesto'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(354844028537285937)
,p_name=>'P730_IND_SRP'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(389458553318176831)
,p_prompt=>'SRP (S/N)'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(279471133016777326)
,p_validation_name=>'validar_codigo_cliente'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''S''',
'from cc_clientes a',
'where a.cod_empresa=:P_COD_EMPRESA',
'and a.cod_cliente=:P730_COD_CLIENTE'))
,p_validation_type=>'EXISTS'
,p_error_message=>'No se encuentra el codigo de cliente'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(279417733368777301)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(279471585320777327)
,p_validation_name=>unistr('Valida garant\00EDa')
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'begin null; end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(279472371196777327)
,p_validation_name=>'valida_mo'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P730_COD_PROVEEDOR IS NULL THEN',
'    RETURN ''Debe seleccionar un Proveedor/Tecnico'';',
'',
'else',
'    declare',
'            DUMMY VARCHAR2(100);',
'    begin          ',
'            select DISTINCT ''1''',
'                    INTO DUMMY  ',
'                  from apex_collections',
'                 where collection_name = ''VT_MANO_OBRA''',
'                 and exists (',
'                                select DISTINCT ''1''',
'                                from vt_tecnicos t,',
'                                     cm_proveedores p',
'                                where t.cod_empresa=:P_COD_EMPRESA',
'                                and  t.cod_empresa=p.cod_empresa',
'                                and  t.cod_persona=p.cod_persona',
'                                and  p.cod_proveedor=:P730_COD_PROVEEDOR',
'                                and  t.cod_tecnico = c005',
'                                and  t.cod_tecnico <> ''29''',
'                                );       ',
'                                             ',
'                    begin',
'                         select DISTINCT c005',
'                          INTO DUMMY  ',
'                          from apex_collections',
'                         where collection_name = ''VT_MANO_OBRA''',
'                         and c005 <> ''29'';',
'                         ',
'                            RETURN NULL;',
'                    exception',
'                        when no_data_found then --- solo tiene cod 29',
'                                RETURN NULL;',
'                        when too_many_rows then',
'                                RETURN ''Existen MO cargadas para varios Tecnicos'';',
'                        when others then  ',
'                            RETURN sqlerrm;  ',
'                    end;',
'                     ',
'            RETURN NULL;',
'    exception ',
'        when no_data_found then',
'      NULL;--      RETURN ''No existe MO cargada para el Tecnico'';',
'        when others then',
'            RETURN sqlerrm;',
'    end;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(279415573445777299)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279479094185777332)
,p_name=>'nombre'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P730_COD_CLIENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279479556332777333)
,p_event_id=>wwv_flow_imp.id(279479094185777332)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_NOM_CLIENTE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre',
'from cc_clientes c, personas p, telef_personas pt, ident_personas pi ',
'where c.cod_empresa = :P_COD_EMPRESA',
'and c.cod_persona = p.cod_persona',
'and p.cod_persona = pt.cod_persona(+) ',
'and p.cod_persona = pi.cod_persona(+) ',
'--and nvl(c.estado,''X'') not in ''I'' ',
'and c.cod_cliente=:P730_COD_CLIENTE',
'AND ROWNUM=1',
'order by nombre',
';'))
,p_attribute_07=>'P730_COD_CLIENTE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(285814721381143340)
,p_name=>'nombre_load'
,p_event_sequence=>20
,p_condition_element=>'P730_COD_CLIENTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285814813427143341)
,p_event_id=>wwv_flow_imp.id(285814721381143340)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_NOM_CLIENTE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nombre',
'from cc_clientes c, personas p, telef_personas pt, ident_personas pi ',
'where c.cod_empresa = :P_COD_EMPRESA',
'and c.cod_persona = p.cod_persona',
'and p.cod_persona = pt.cod_persona(+) ',
'and p.cod_persona = pi.cod_persona(+) ',
'--and nvl(c.estado,''X'') not in ''I'' ',
'and c.cod_cliente=:P730_COD_CLIENTE',
'AND ROWNUM=1',
'order by nombre',
';'))
,p_attribute_07=>'P730_COD_CLIENTE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279479975077777333)
,p_name=>'CARGA_VALORES'
,p_event_sequence=>30
,p_condition_element=>'P730_OPERACION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'MODIFICAR'
,p_bind_type=>'live'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279480470197777333)
,p_event_id=>wwv_flow_imp.id(279479975077777333)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var spinner = apex.util.showSpinner();',
'',
'document.getElementById(''overlay'').style.display = ''block'';'))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279495437688777339)
,p_event_id=>wwv_flow_imp.id(279479975077777333)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P730_PARAM_NRO_OT IS NULL AND :P730_PARAM_SER_OT IS NULL  THEN',
'declare',
'vusuario varchar2(600):= :APP_USER;',
'begin',
':P730_SER_COMPROBANTE:=''P'';',
':P730_FEC_COMPROBANTE:=TO_CHAR(SYSDATE,''DD/MM/YYYY'');',
':P730_GARANTIA:=''S'';',
':P730_DEPARTAMENTO:=null;',
':P730_CIUDAD:=null;      ',
'end;',
'else',
'declare',
'vproveedor varchar2(30);',
'begin',
'select OT.FEC_COMPROBANTE,OT.NRO_COMPROBANTE,OT.SER_COMPROBANTE ,NVL(OT.IND_GARANTIA,''N''),OT.SERIE,OT.COD_ORIGEN,',
'OT.COD_ARTICULO,OT.NRO_COMPROBANTE_DISTR ,OT.FECHA_CO_DISTRIBUIDOR,ot.cod_distribuidor,ot.cod_proveedor, ot.CONDICION,OT.COD_CLIENTE, ',
'OT.GARANTIA_OT,OT.COD_SUCURSAL_DIST ,OT.COD_DEPARTAMENTO,OT.COD_CIUDAD,OT.estado_presu,ot.observ,ot.comentario,presupuesto,ind_delivery,',
'ind_retirado,ind_zona,OT.COD_CONDICION_VENTA,TOT_REPUESTOS_CALL,fec_presupuestado,FEC_RECHAZO,FEC_APROBACION,TIPO_CIERRE,IND_RECLAMO,COD_ORIGEN,',
'CERRADO,CREADO_POR,FEC_CREACION,HORA_CREACION,PRESUPUESTADO_POR,FEC_PRESUPUESTADO,HORA_PRESUPUESTO,FEC_MODIF_PRESUPUESTO,PENDIENTE_POR,FEC_PENDIENTE,',
'HORA_PENDIENTE,FEC_MODIF_PENDIENTE,REPARADO_IM_POR,FEC_IM,HORA_IM,APROBADO_POR,FEC_APROBACION,HORA_APROBADA,RECHAZADO_POR,FEC_RECHAZO,HORA_RECHAZADO,',
'FEC_MODIF_RECHAZADO,FINALIZADO_POR,FEC_FINALIZADO,HORA_FINALIZADO,FEC_MODIF_CERRADO,VERIFICADO_POR,FEC_VERIFICADO,HORA_VERIFICACION,FEC_MODIF_VERIFICADO,',
'ENTREGADO_POR,FEC_ENTREGADO,HORA_ENTREGADO,RETIRADO_POR,FECHA_RETIRADO,HORA_RETIRADO,COD_USUARIO_SIN_RP,FEC_SIN_REPUESTO,HORA_SIN_REPUESTO,USUARIO_PED_REP,',
'FECHA_PED_REP,HORA_PED_REP,COD_USUARIO_ESTADO_COMPLICADO,FECHA_ESTADO_COMPLICADO,COD_USUARIO_RENDICION,FEC_RENDIDO,IND_RENDIDO,FECHA_LIQUIDA,USUARIO_LIQUIDA,',
'FECHA_MODIFICADO_GARANTIA,COD_USUARIO_MOD_GAR,FECHA_ABANDONADO,COD_USUARIO_ABANDONADO,FECHA_CO_DISTRIBUIDOR,NRO_COMPROBANTE_DISTR,',
'COD_SUCURSAL_DIST, ubicacion,COD_ARTICULO_CALL',
'INTO :P730_FEC_COMPROBANTE,:P730_NRO_COMPROBANTE,:P730_SER_COMPROBANTE,:P730_GARANTIA,:P730_SERIE_PRODUCTO,:P730_COD_ORIGEN,:P730_COD_ARTICULO_OT,:P730_NRO_FACTURA,:P730_FECHA_FACTURA,',
':P730_COD_DISTRIBUIDOR,vproveedor,:P730_COMENTARIO,:P730_COD_CLIENTE,:P730_NRO_GARANTIA,:P730_COD_SUCURSAL_DIST,:P730_DEPARTAMENTO,:P730_vCIUDAD,:P730_ESTADO_PRESU,:P730_OBERVACION',
',:P730_CONCLUSION,:P730_PRESUPUESTO,:P730_IND_DELIVERY,:P730_IND_RETIRADO,:P730_IND_ZONA,:P730_COD_CONDICION_VENTA,:p730_TOT_REPUESTOS_CALL,:P730_FEC_PRESUPUESTADO,:P730_FEC_RECHAZO,',
':P730_FEC_APROBACION,:P730_TIPO_CIERRE,:P730_IND_RECLAMO,:P730_COD_ORIGEN,:P730_CERRADO,:P730_CREADO_POR,:P730_FEC_CREACION,:P730_HORA_CREACION,:P730_PRESUPUESTADO_POR,:P730_FEC_PRESUPUESTADO,',
':P730_HORA_PRESUPUESTO,:P730_FEC_MODIF_PRESUPUESTO,:P730_PENDIENTE_POR,:P730_FEC_PENDIENTE,:P730_HORA_PENDIENTE,:P730_FEC_MODIF_PENDIENTE,:P730_REPARADO_IM_POR,:P730_FEC_IM,',
':P730_HORA_IM,:P730_APROBADO_POR,:P730_FEC_APROBACION,:P730_HORA_APROBADA,:P730_RECHAZADO_POR,:P730_FEC_RECHAZO,:P730_HORA_RECHAZADO,:P730_FEC_MODIF_RECHAZADO,:P730_FINALIZADO_POR,',
':P730_FEC_FINALIZADO,:P730_HORA_FINALIZADO,:P730_FEC_MODIF_CERRADO,:P730_VERIFICADO_POR,:P730_FEC_VERIFICADO,:P730_HORA_VERIFICACION,:P730_FEC_MODIF_VERIFICADO,:P730_ENTREGADO_POR,',
':P730_FEC_ENTREGADO,:P730_HORA_ENTREGADO,:P730_RETIRADO_POR,:P730_FECHA_RETIRADO,:P730_HORA_RETIRADO,:P730_COD_USUARIO_SIN_RP,:P730_FEC_SIN_REPUESTO,:P730_HORA_SIN_REPUESTO,',
':P730_USUARIO_PED_REP,:P730_FECHA_PED_REP,:P730_HORA_PED_REP,:P730_COD_USUARIO_ESTADO_COMPLI,:P730_FECHA_ESTADO_COMPLICADO,:P730_COD_USUARIO_RENDICION,:P730_FEC_RENDIDO,',
':P730_IND_RENDIDO,:P730_FECHA_LIQUIDA,:P730_USUARIO_LIQUIDA,:P730_FECHA_MODIFICADO_GARANTIA,:P730_COD_USUARIO_MOD_GAR,:P730_FECHA_ABANDONADO,',
':P730_COD_USUARIO_ABANDONADO,',
':P730_FECHA_CO_DISTRIBUIDOR,',
':P730_NRO_COMPROBANTE_DISTR,',
':P730_COD_SUCURSAL_DIST,:P730_LATITUD_LONGITUD,',
':P730_COD_ARTICULO_OT_CALL',
'from vt_ordenes_trabajo ot',
'where OT.COD_EMPRESA=:P_COD_EMPRESA',
'AND OT.TIP_COMPROBANTE=''ORT''',
'AND OT.SER_COMPROBANTE= :P730_PARAM_SER_OT ',
'and ot.NRO_comprobante= :P730_PARAM_NRO_OT;',
'exception',
'when others then     ',
'NULL;',
'END;',
'END IF;',
''))
,p_attribute_02=>'P730_PARAM_SER_OT,P730_PARAM_NRO_OT,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE'
,p_attribute_03=>'P730_FEC_COMPROBANTE,P730_NRO_COMPROBANTE,P730_SER_COMPROBANTE,P730_GARANT,P730_SERIE_PRODUCTO,P730_COD_ORIGEN,P730_NRO_FACTURA,P730_FECHA_FACTURA,P730_COD_DISTRIBUIDOR,P730_COMENTARIO_NOTIFICACION,P730_COD_CLIENTE,P730_NOM_CLIENTE,P730_NRO_GARANTIA,'
||'P730_COD_SUCURSAL_DIST,P730_DEPARTAMENTO,P730_DESCARGA_DATOS,P730_CONCLUSION,P730_OBERVACION,P730_PRESUPUESTO,P730_IND_DELIVERY,P730_IND_ZONA,P730_IND_RETIRADO,P730_ESTADO_PRESU,P730_COD_CONDICION_VENTA,P730_TOT_REPUESTOS_CALL,P730_FEC_PRESUPUESTADO,'
||'P730_FEC_RECHAZO,P730_FEC_APROBACION,P730_TIPO_CIERRE,P730_IND_RECLAMO,P730_CERRADO,P730_COD_USUARIO_ESTADO_COMPLI,P730_CERRADO, P730_CREADO_POR, P730_FEC_CREACION, P730_HORA_CREACION, P730_PRESUPUESTADO_POR, P730_FEC_PRESUPUESTADO, P730_HORA_PRESUPU'
||'ESTO, P730_FEC_MODIF_PRESUPUESTO, P730_PENDIENTE_POR, P730_FEC_PENDIENTE, P730_HORA_PENDIENTE, P730_FEC_MODIF_PENDIENTE, P730_REPARADO_IM_POR, P730_FEC_IM, P730_HORA_IM, P730_APROBADO_POR, P730_FEC_APROBACION, P730_HORA_APROBADA, P730_RECHAZADO_POR, '
||'P730_FEC_RECHAZO, P730_HORA_RECHAZADO, P730_FEC_MODIF_RECHAZADO, P730_FINALIZADO_POR, P730_FEC_FINALIZADO, P730_HORA_FINALIZADO, P730_FEC_MODIF_CERRADO, P730_VERIFICADO_POR, P730_FEC_VERIFICADO, P730_HORA_VERIFICACION, P730_FEC_MODIF_VERIFICADO, P730'
||'_ENTREGADO_POR, P730_FEC_ENTREGADO, P730_HORA_ENTREGADO, P730_RETIRADO_POR, P730_FECHA_RETIRADO, P730_HORA_RETIRADO, P730_COD_USUARIO_SIN_RP, P730_FEC_SIN_REPUESTO, P730_HORA_SIN_REPUESTO, P730_USUARIO_PED_REP, P730_FECHA_PED_REP, P730_HORA_PED_REP, '
||'P730_COD_USUARIO_ESTADO_COMPLI, P730_FECHA_ESTADO_COMPLICADO, P730_COD_USUARIO_RENDICION, P730_FEC_RENDIDO, P730_IND_RENDIDO, P730_FECHA_LIQUIDA, P730_USUARIO_LIQUIDA, P730_FECHA_MODIFICADO_GARANTIA, P730_COD_USUARIO_MOD_GAR, P730_FECHA_ABANDONADO, P'
||'730_COD_USUARIO_ABANDONADO,P730_FECHA_CO_DISTRIBUIDOR,P730_NRO_COMPROBANTE_DISTR,P730_LATITUD_LONGITUD,P730_COD_ARTICULO_OT_CALL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295814720241820948)
,p_event_id=>wwv_flow_imp.id(279479975077777333)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P730_PARAM_NRO_OT IS NULL AND :P730_PARAM_SER_OT IS NULL  THEN',
'declare',
'vusuario varchar2(600):= :APP_USER;',
'begin',
':P730_SER_COMPROBANTE:=''P'';',
':P730_FEC_COMPROBANTE:=TO_CHAR(SYSDATE,''DD/MM/YYYY'');',
':P730_GARANTIA:=''S'';',
':P730_DEPARTAMENTO:=null;',
':P730_CIUDAD:=null;      ',
'end;',
'else',
'declare',
'vproveedor varchar2(30);',
'begin',
'select OT.CI, OT.DIRECCION, OT.CORREO_CONTACTO, ',
'decode(length(ot.TELEFONO),13,SUBSTR(TO_CHAR(ot.TELEFONO),1,7),'''')PREFIJO,SUBSTR(TO_CHAR(ot.TELEFONO), -6) TELEFONO,',
'ot.cod_departamento, ot.cod_ciudad, ot.ruc, referencias',
'INTO :P730_CI,:P730_DIR_CLIENTE,:P730_EMAIL,',
':P730_TEL_CLIENTE,:P730_PREFIJO,:P730_DEPARTAMENTO,:P730_VCIUDAD,:P730_RUC,:P730_REFERENCIAS',
'from vt_ordenes_trabajo ot',
'where OT.COD_EMPRESA=:P_COD_EMPRESA',
'AND OT.TIP_COMPROBANTE=''ORT''',
'AND OT.SER_COMPROBANTE= :P730_PARAM_SER_OT ',
'and ot.NRO_comprobante= :P730_PARAM_NRO_OT;',
'exception',
'when others then     ',
'NULL;',
'END;',
'',
'',
'declare',
'   l_blob blob;',
'  l_MIME_TYPE varchar2(300);',
'  l_FILENAME varchar2(300);',
'  vcomentario varchar2(4000);',
'begin',
'   ',
'      apex_collection.create_collection(p_collection_name    => ''CAORDTRA_370_IMAGENES''',
'                                    ,p_truncate_if_exists       => ''YES''',
'                                      );',
'   -------------aca crea al cliente',
'   apex_collection.create_collection(p_collection_name    => ''CAORDTRA_370_IMAGENES''',
'                                    ,p_truncate_if_exists       => ''YES''',
'                                      );',
'   declare cursor ccab is ',
'   --begin',
' SELECT a.archivo_adjunto  l_blob, a.mimetype l_MIME_TYPE, FILENAME l_FILENAME, a.comentario vcomentario',
'    --INTO l_blob, l_MIME_TYPE, l_FILENAME, vcomentario',
'    FROM VT_ADJUNTO_ORDEN_TRABAJO a',
'    WHERE      (  :P730_PARAM_SER_OT = a.ser_comprobante)',
'         AND ( :P730_PARAM_NRO_OT = a.nro_comprobante);',
'begin',
'for x in ccab loop',
'',
'    ',
'     ',
'    if x.l_blob is not null then',
'     apex_collection.add_member(p_collection_name => ''CAORDTRA_370_IMAGENES'',',
'                                p_c001            => x.vcomentario,',
'                                p_c002           => x.l_MIME_TYPE,',
'                                p_c003            => x.l_FILENAME,                                ',
'                                p_blob001         => x.l_blob ',
'                              );',
'                              end if;',
'                              end loop;',
'                              end;',
'end;',
'',
'END IF;',
'',
''))
,p_attribute_02=>'P730_PARAM_SER_OT,P730_PARAM_NRO_OT,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE'
,p_attribute_03=>'P730_CI,P730_DIR_CLIENTE,P730_CORREO_CONTACTO,P730_TEL_CLIENTE,P730_PREFIJO,P730_DEPARTAMENTO,P730_VCIUDAD,P730_EMAIL,P730_RUC,P730_REFERENCIAS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(339826738471701514)
,p_event_id=>wwv_flow_imp.id(279479975077777333)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P730_PARAM_NRO_OT IS NULL AND :P730_PARAM_SER_OT IS NULL  THEN',
':P730_SEG_PRESUPUESTO:=''P'';',
'else',
'declare',
'vproveedor varchar2(30);',
'begin',
'select CASE WHEN ESTADO_PRESU=''R'' THEN ''PRESUPUESTO RECHAZADO'' WHEN ESTADO_PRESU=''A'' THEN ''PRESUPUESTO APROBADO''',
'WHEN (SELECT ''S'' FROM   ca_llamadas_salientes c ',
'         WHERE c.cod_empresa = :P_COD_EMPRESA         ',
'           AND c.tip_comprobante = ''ORT''',
'           AND c.ser_comprobante = :P730_PARAM_SER_OT',
'           AND c.nro_comprobante = :P730_PARAM_NRO_OT',
'           AND C.COD_MOTIVO=''1451''',
'           AND ROWNUM=1)=''S'' THEN ''INFORMADO AL CLIENTE'' ELSE ''PENDIENTE'' END',
'INTO  :P730_SEG_PRESUPUESTO',
'from vt_ordenes_trabajo ot',
'where OT.COD_EMPRESA=:P_COD_EMPRESA',
'AND OT.TIP_COMPROBANTE=''ORT''',
'AND OT.SER_COMPROBANTE= :P730_PARAM_SER_OT ',
'and ot.NRO_comprobante= :P730_PARAM_NRO_OT;',
'exception',
'when others then     ',
'NULL;',
'END;',
'',
'',
'begin',
'SELECT  ',
'               c.observacion ',
'               into :P730_INFORME_TECNICO',
'          FROM ca_llamadas_salientes c, ca_motivo_lla m',
'         WHERE c.cod_empresa = :P_COD_EMPRESA',
'           AND c.cod_motivo = m.cod_motivo',
'           AND c.tip_comprobante = ''ORT''',
'           AND c.ser_comprobante = :P730_PARAM_SER_OT',
'           AND c.nro_comprobante = :P730_PARAM_NRO_OT',
'           AND C.COD_MOTIVO=''59'';',
'           exception when others',
'           then ',
'           :P730_INFORME_TECNICO:=''N/A'';',
'           end;',
' ',
'',
'END IF;'))
,p_attribute_02=>'P730_PARAM_SER_OT,P730_PARAM_NRO_OT,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE'
,p_attribute_03=>'P730_SEG_PRESUPUESTO,P730_INFORME_TECNICO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279495948726777339)
,p_event_id=>wwv_flow_imp.id(279479975077777333)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'             DECLARE',
'                    CURSOR REG IS',
'                       SELECT OT.COD_ARTICULO,',
'                             AR.descripcion,',
'                             OT.MONTO,',
'                             OT.MONTO_VENTA,',
'                             OT.COD_TECNICO,',
'                             NVL(OT.GARANTIA,''N'') GARANTIA,',
'                             NVL(OT.IND_RECLAMO,''N'') RECLAMO',
'                        FROM VT_ORDENES_TRABAJO_MO OT,',
'                             st_articulos AR ',
'                        WHERE OT.COD_EMPRESA=:P_COD_EMPRESA',
'                        AND   OT.TIP_COMPROBANTE=''ORT''',
'                        AND   OT.SER_COMPROBANTE= :P730_PARAM_SER_OT--:P730_SER_COMPROBANTE',
'                        AND   OT.NRO_COMPROBANTE= :P730_PARAM_NRO_OT  --:P730_NRO_COMPROBANTE ',
'                        AND   OT.cod_empresa = AR.cod_empresa',
'                        AND   OT.COD_ARTICULO = AR.COD_ARTICULO  ;',
'                BEGIN',
'                        if not apex_collection.collection_exists(''VT_MANO_OBRA'') then ',
'                            apex_collection.create_collection(''VT_MANO_OBRA'');',
'                        else',
'                            apex_collection.truncate_collection(''VT_MANO_OBRA'');',
'                        end if;',
'',
'                    FOR R IN REG LOOP ',
'                        apex_collection.add_member(',
'                                            p_collection_name => ''VT_MANO_OBRA'',',
'                                            p_c001 => R.COD_ARTICULO,',
'                                            p_c002 => R.descripcion ,',
'                                            p_c003 => R.MONTO,',
'                                            p_c004 => R.MONTO_VENTA ,',
'                                            p_c005 => R.COD_TECNICO ,',
'                                            p_c006 => R.GARANTIA,',
'                                            p_c007 => R.RECLAMO,',
'                                            p_c014 => ''S''',
'                                            );',
'                 ',
'                    END LOOP;',
'',
'                    begin',
'                     select SUM(to_number(c004))',
'                     INTO :P730_TOT_MOBRA',
'                      from apex_collections',
'                     where collection_name = ''VT_MANO_OBRA'';',
'                     exception ',
'                    when others then ',
'                        null;',
'                    end;',
'',
'                EXCEPTION',
'                    WHEN OTHERS THEN',
'                        NULL;',
'                END;',
'',
' '))
,p_attribute_02=>'P730_PARAM_SER_OT,P730_PARAM_NRO_OT,P730_NRO_COMPROBANTE,P730_SER_COMPROBANTE'
,p_attribute_03=>'P730_TOT_MOBRA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279494964540777339)
,p_event_id=>wwv_flow_imp.id(279479975077777333)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-------------------- Repuestos solicitados',
'',
' declare ',
'        cursor reg is',
'                 select d.cod_articulo, ',
'                  a.descripcion desc_articulo,',
'                  sum(  nvl( d.cantidad_confirmada, 0)  ) cantidad,',
'                  sum(  nvl( d.cantidad_ot, 0)  ) cantidad_ot,  ',
'                  sum(  nvl( d.cantidad, 0)  ) cantidad_pedida,  ',
'                  NVL(MAX(D.verificado),''N'') VERIFICADO ,',
'                  c.NRO_comprobante NRO, ',
'                  c.ser_comprobante SER ,',
'                  c.cod_sucursal_env SUC',
'             from CA_PEDIDO_REPUESTO_CAB c, ',
'                  CA_PEDIDO_REPUESTO_det d, ',
'                  st_articulos a',
'            where c.cod_empresa = :P_COD_EMPRESA',
'              and c.tip_comprobante_ref = ''ORT''',
'              and c.ser_comprobante_ref = :P730_PARAM_SER_OT ',
'              and c.nro_comprobante_ref = :P730_PARAM_NRO_OT ',
'              and c.cod_empresa = d.cod_empresa',
'              and nvl( c.tip_comprobante, ''DFL'' ) = d.TIP_comprobante',
'              and nvl( c.ser_comprobante, ''D'' ) = d.SER_comprobante',
'              and c.nro_comprobante = d.NRO_comprobante',
'              and a.cod_empresa = d.cod_empresa',
'              and a.cod_articulo = d.cod_articulo',
'              and NVL(:P730_COD_ORIGEN,''1'') NOT IN (''2'',''13'')           ',
'              group by d.cod_articulo, ',
'                       a.descripcion ,',
'                       c.NRO_comprobante, ',
'                       c.ser_comprobante,',
'                       c.cod_sucursal_env',
'              order by a.descripcion;',
'    VIND_RECEP CHAR(1);',
'    VIND_RECH CHAR(1);',
' BEGIN',
'',
'                        if not apex_collection.collection_exists(''VT_ORDENES_REPUESTOS_PEDIDOS'') then ',
'                            apex_collection.create_collection(''VT_ORDENES_REPUESTOS_PEDIDOS'');',
'                        else',
'                            apex_collection.truncate_collection(''VT_ORDENES_REPUESTOS_PEDIDOS'');',
'                        end if;',
'',
'                    FOR R IN REG LOOP ',
'                        if nvl(R.cantidad_ot,0)>0 then',
'                            VIND_RECEP := ''S'';',
'                            VIND_RECH := ''N'';',
'                        else',
'                            VIND_RECEP := ''N'';',
'                            VIND_RECH:= ''N'';',
'                        end if;',
'                            ',
'                        IF R.cantidad = 0 AND R.verificado = ''S'' AND R.CANTIDAD_OT = 0 THEN       				',
'                                VIND_RECH := ''S'';',
'                        END IF;',
'',
'',
'                        apex_collection.add_member(',
'                                            p_collection_name => ''VT_ORDENES_REPUESTOS_PEDIDOS'',',
'                                            p_c001 => R.cod_articulo,',
'                                            p_c002 => R.desc_articulo ,',
'                                            p_c003 => R.cantidad ,',
'                                            p_c004 => R.cantidad_pedida,',
'                                            p_c005 => R.cantidad_ot ,',
'                                            P_C006  => ''S'',',
'                                            p_c007 => R.ser,',
'                                            p_c008 => R.NrO ,',
'                                            p_c009 => VIND_RECEP,',
'                                            p_c010 => VIND_RECH,',
'                                            p_c011 => R.SUC',
'                                            );',
'             ',
'                    END LOOP;',
'                EXCEPTION',
'                    WHEN OTHERS THEN',
'                        NULL;',
' END;'))
,p_attribute_02=>'P730_COD_ORIGEN,P730_COD_USUARIO_SIN_RP P730_PARAM_SER_OT,P730_PARAM_NRO_OT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279494482138777338)
,p_event_id=>wwv_flow_imp.id(279479975077777333)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'------------- REOUESTOS SOLICITADOS',
'',
' IF :P730_COLL_BRS IS NULL THEN',
'    :P730_COLL_BRS:=1;',
'    apex_collection.create_OR_TRUNCATE_collection(''VT_ORDENES_REPUESTOS_PEDIDOS1'');',
'ELSE ',
' ',
'                                    declare',
'                                            cursor reg is  ',
'                                                    select  c001 as COD_ARTICULO, ',
'                                                            NVL(c002 , (select descripcion from st_articulos p where cod_empresa=:P_COD_EMPRESA and cod_articulo = c001)) as product_name,',
'                                                            c003 as cantidad, ',
'                                                            NVL(c004,0) as conf ,',
'                                                            NVL(c005,0) as recep, ',
'                                                            c006 as operacion ',
'                                                    from apex_collections ',
'                                                    where collection_name = ''VT_ORDENES_REPUESTOS_PEDIDOS1''   ;',
'    ',
'                                    begin',
'',
'                                FOR R IN REG LOOP ',
'                                apex_collection.add_member(',
'                                                    p_collection_name => ''VT_ORDENES_REPUESTOS_PEDIDOS'',',
'                                                    p_c001 => R.COD_ARTICULO,',
'                                                    p_c002 => r.product_name ,',
'                                                    p_c003 => R.conf,',
'                                                    p_c004 => R.cantidad ,',
'                                                    p_c005 => R.recep ,',
'                                                    p_c006 => r.operacion',
'                                                    );',
'                        ',
'                                END LOOP;',
'',
'                end;',
'         ',
' END IF;'))
,p_attribute_02=>'P730_COLL_BRS'
,p_attribute_03=>'P730_COLL_BRS'
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
 p_id=>wwv_flow_imp.id(279493930369777338)
,p_event_id=>wwv_flow_imp.id(279479975077777333)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-------------------- Repuestos UTILIZADOS',
' declare ',
'        cursor reg is',
'                select cod_articulo,',
'                       desc_articulo,  ',
'                       cantidad, ',
'                       PRECIO_LISTA,',
'                       total',
'              from VW_OT_REP_UTILIZADOS_APEX',
'             where  ser_comprobante = NVL(:P730_SER_COMPROBANTE,:P730_PARAM_SER_OT)',
'               and  nro_comprobante = NVL(:P730_nro_COMPROBANTE,:P730_PARAM_nro_OT)  ; ',
'',
' BEGIN',
'                        if not apex_collection.collection_exists(''VT_ORDENES_REPUESTOS_UTILIZADOS'') then ',
'                            apex_collection.create_collection(''VT_ORDENES_REPUESTOS_UTILIZADOS'');',
'                        else',
'                            apex_collection.truncate_collection(''VT_ORDENES_REPUESTOS_UTILIZADOS'');',
'                        end if;',
'',
'                    FOR R IN REG LOOP ',
'                        apex_collection.add_member(',
'                                            p_collection_name => ''VT_ORDENES_REPUESTOS_UTILIZADOS'',',
'                                            p_c001 => R.cod_articulo,',
'                                            p_c002 => R.desc_articulo ,',
'                                            p_c003 => R.cantidad ,',
'                                            p_c004 => R.precio_lista,',
'                                            p_c005 => R.total  ',
'                                            );',
'                  ',
'                    END LOOP;',
'                EXCEPTION',
'                    WHEN OTHERS THEN',
'                        NULL;',
' END;'))
,p_attribute_02=>'P730_COD_ORIGEN,P730_COD_USUARIO_SIN_RP P730_PARAM_SER_OT,P730_PARAM_NRO_OT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279492922006777338)
,p_event_id=>wwv_flow_imp.id(279479975077777333)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'------- PRESUPUESTO ',
'',
'DECLARE',
'CURSOR REG IS ',
'SELECT COD_ARTICULO,  DESC_ARTICULO,  CANTIDAD,  MONTO_TOTAL , COD_RUBRO  ,CANTIDAD_CONFIRMADA,	OBSERVACION,',
'              DECODE(NVL(AAA.IND_MANEJA_STOCK,''N''),''N'',''S'',NVL((SELECT DISTINCT ''S'' ',
'                                                            FROM    st_existencia_art  EE',
'                                                            WHERE   AAA.COD_ARTICULO=EE.COD_ARTICULO',
'                                                            AND     EE.COD_EMPRESA=:P_COD_EMPRESA ',
'                                                            AND     EE.COD_SUCURSAL IN (''101'',''1015'',''76'',''102'',''260'',''190'',''05'',''248'') ',
'                                                            group by EE.COD_ARTICULO',
'                                                            HAVING 		SUM(eE.cant_dispon)>=AAA.cantidad ),''N'')) EN_STOCK',
'FROM ',
'(',
'        select d.cod_articulo, a.descripcion desc_articulo, ',
'             sum( decode( nvl( ind_ent_sal, ''N'' ), ''S'', nvl( d.cantidad, 0 ), nvl( d.cantidad, 0 ) * -1 ) ) cantidad,',
'             sum( decode( nvl( ind_ent_sal, ''N'' ), ''S'', nvl( d.cantidad, 0 ), nvl( d.cantidad, 0 ) * -1 ) * nvl( d.precio_venta, 0 ) ) monto_total, ',
'              A.COD_RUBRO,A.IND_MANEJA_STOCK,',
'             sum( decode( nvl( ind_ent_sal, ''N'' ), ''S'', nvl( d.cantidad_CONFIRMADA, 0 ), nvl( d.cantidad_CONFIRMADA, 0 ) * -1 ) )CANTIDAD_CONFIRMADA,',
'              NVL(D.OBSERVACION, C.OBSERVACION)OBSERVACION             ',
'             from ca_entsal_cab c, ca_entsal_det d, st_articulos a, st_motivo_ent_sal mo',
'            where c.cod_empresa = :P_COD_EMPRESA',
'              and c.tip_comprobante_ref = ''ORT''',
'              and c.ser_comprobante_ref = :P730_PARAM_SER_OT',
'              and c.nro_comprobante_ref = :P730_PARAM_NRO_OT',
'              and c.cod_empresa = d.cod_empresa',
'              and nvl( c.tip_ent_sal, ''DFL'' ) = d.tip_ent_sal',
'              and nvl( c.ser_ent_sal, ''D'' ) = d.ser_ent_sal',
'              and c.num_ent_sal = d.num_ent_sal',
'              and a.cod_empresa = d.cod_empresa',
'              and a.cod_articulo = d.cod_articulo',
'              and nvl(D.anulado,''N'')<>''S''',
'              and c.cod_motivo_ent_sal = mo.cod_motivo_ent_sal(+)',
'            group by d.cod_articulo, a.descripcion, a.cod_grupo_art,d.garantia,A.IND_MANEJA_STOCK,',
'             A.COD_RUBRO,',
'              NVL(D.OBSERVACION, C.OBSERVACION)',
'            having sum( decode( nvl( ind_ent_sal, ''N'' ), ''S'', nvl( d.cantidad, 0 ), nvl( d.cantidad, 0 ) * -1 ) ) > 0',
'            )AAA',
'            order by AAa.desc_articulo',
'            ;',
'',
'',
' BEGIN',
'',
'                        if not apex_collection.collection_exists(''VT_ORDENES_PRESUPUESTO'') then ',
'                            apex_collection.create_collection(''VT_ORDENES_PRESUPUESTO'');',
'                        else',
'                            apex_collection.truncate_collection(''VT_ORDENES_PRESUPUESTO'');',
'                        end if;',
'',
'                    FOR R IN REG LOOP ',
'                        apex_collection.add_member(',
'                                            p_collection_name => ''VT_ORDENES_PRESUPUESTO'',',
'                                            p_c001 => R.cod_articulo,',
'                                            p_c002 => R.desc_articulo ,',
'                                            p_c003 => R.cantidad ,',
'                                            p_c004 => R.MONTO_TOTAL,',
'                                            p_c005 => R.EN_STOCK  ',
'                                            );',
'                  ',
'                    END LOOP;',
'                EXCEPTION',
'                    WHEN OTHERS THEN',
'                        NULL;',
' END;'))
,p_attribute_02=>'P730_PARAM_SER_OT,P730_PARAM_NRO_OT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279493465732777338)
,p_event_id=>wwv_flow_imp.id(279479975077777333)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'------------- PRESUPUESTO',
'',
' IF :P730_COLL_BPRE IS NULL THEN',
'    :P730_COLL_BPRE:=1;',
'    apex_collection.create_OR_TRUNCATE_collection(''VT_ORDENES_PRESUPUESTO1'');',
'ELSE ',
' ',
'                                    declare',
'                                            cursor reg is  ',
'                                                    select  c001 as COD_ARTICULO, ',
'                                                            NVL(c002 , (select descripcion from st_articulos p where cod_empresa=:P_COD_EMPRESA and cod_articulo = c001)) as product_name,',
'                                                            c003 as cantidad, ',
'                                                            c004 as precio ,',
'                                                            c005 as total, ',
'                                                            c006 as operacion ',
'                                                    from apex_collections ',
'                                                    where collection_name = ''VT_ORDENES_PRESUPUESTO1''   ;',
'    ',
'                                    begin',
'',
'                                FOR R IN REG LOOP ',
'                                apex_collection.add_member(',
'                                                    p_collection_name => ''VT_ORDENES_PRESUPUESTO'',',
'                                                    p_c001 => R.COD_ARTICULO,',
'                                                    p_c002 => r.product_name ,',
'                                                    p_c003 => R.cantidad ,',
'                                                    p_c004 => R.total ,',
'                                                    --p_c005 => R.total ,',
'                                                    p_c006 => r.operacion',
'                                                    );',
'                        ',
'                                END LOOP;',
'',
'                end;',
'         ',
' END IF;',
''))
,p_attribute_02=>'P730_COLL_BPRE'
,p_attribute_03=>'P730_COLL_BPRE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279481497063777334)
,p_event_id=>wwv_flow_imp.id(279479975077777333)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_COD_PROVEEDOR'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nvl(:P730_COD_PROV, NVL((select   ot.cod_proveedor  ',
'            from vt_ordenes_trabajo ot',
'            where OT.COD_EMPRESA=:P_COD_EMPRESA',
'            AND   OT.TIP_COMPROBANTE=''ORT''',
'            AND   OT.SER_COMPROBANTE = NVL(:P730_PARAM_SER_OT,:P730_SER_COMPROBANTE)',
'            and   ot.NRO_comprobante= NVL(:P730_PARAM_NRO_OT,:P730_NRO_COMPROBANTE))   , (select distinct p.cod_proveedor ',
'                            from usuarios u,',
'                                cm_proveedores p',
'                            where u.cod_usuario= v(''app_user'')',
'                            AND   u.cod_persona=p.cod_persona',
'                            AND   p.cod_empresa=:P_COD_EMPRESA',
'                            AND   NVL(p.ESTADO,''A'')NOT IN (''I'') ',
'                            AND   p.ind_servicio_tecnico =''STNGO'' ))',
')DD',
'FROM',
'DUAL;'))
,p_attribute_07=>'P730_PARAM_NRO_OT,P730_PARAM_SER_OT,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE,P730_COD_PROV'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279480935939777333)
,p_event_id=>wwv_flow_imp.id(279479975077777333)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_VCIUDAD,P730_DEL_ID_RS'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279481946780777334)
,p_event_id=>wwv_flow_imp.id(279479975077777333)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'------------------------- PROBLEMA SOLUCION',
'             DECLARE',
'                    CURSOR REG IS',
'                     SELECT nvl(OT.COD_PROBLEMA,'''')COD_PROBLEMA,',
'                            nvl(P1.DESCRIPCION,'''') PROBLEMA,',
'                            nvl(OT.COD_SOLUCION,'''')COD_SOLUCION,',
'                            nvl(SL.DESCRIPCION,'''') SOLUCION,',
'                            nvl(OT.COD_PROBLEMA_CLIENTE,'''')COD_PROBLEMA_CLIENTE,',
'                            nvl(P2.DESCRIPCION,'''') PROBL_CLI,',
'                            nvl(OT.REPARADO,'''')REPARADO',
'                        FROM VT_ORDENES_TRABAJO_PROB_GEN OT,',
'                            ca_problemas P1,',
'                            ca_problemas P2,',
'                            CA_SOLUCIONES SL',
'                        WHERE OT.COD_EMPRESA=:P_COD_EMPRESA',
'                        AND   OT.TIP_COMPROBANTE=''ORT''',
'                        AND   OT.SER_COMPROBANTE=:P730_PARAM_SER_OT ',
'                        AND   OT.NRO_COMPROBANTE=:P730_PARAM_NRO_OT ',
'                        AND   OT.cod_empresa = P1.cod_empresa(+)',
'                        AND   OT.cod_problema = P1.cod_problema(+)',
'                        AND   OT.cod_empresa = P2.cod_empresa(+)',
'                        AND   OT.COD_PROBLEMA_CLIENTE = P2.cod_problema(+)',
'                        AND   OT.cod_empresa = SL.cod_empresa(+)',
'                        AND   OT.COD_SOLUCION = SL.COD_SOLUCION(+);',
'                BEGIN',
'                        if not apex_collection.collection_exists(''VT_ORDENES_PROBLEMA'') then ',
'                            apex_collection.create_collection(''VT_ORDENES_PROBLEMA'');',
'                            ',
'                         else',
'                            apex_collection.truncate_collection(''VT_ORDENES_PROBLEMA''); ',
'                                                     ',
'                        end if; ',
'',
'                    FOR R IN REG LOOP ',
'                        apex_collection.add_member(',
'                                            p_collection_name => ''VT_ORDENES_PROBLEMA'',',
'                                            p_c001 => R.COD_PROBLEMA_CLIENTE,',
'                                            p_c002 => R.PROBL_CLI ,',
'                                            p_c003 => R.COD_PROBLEMA ,',
'                                            p_c004 => R.PROBLEMA ,',
'                                            p_c005 => R.COD_SOLUCION ,',
'                                            p_c006 => R.SOLUCION,',
'                                            p_c007 => R.REPARADO,',
'                                            P_c008 => ''S'',',
'                                            p_c010 =>  :P730_COD_ARTICULO_OT',
'                                            );',
'                 ',
'                    END LOOP;',
'',
'                    ',
'                EXCEPTION',
'                    WHEN OTHERS THEN',
'                        NULL;',
'                END;',
'',
''))
,p_attribute_02=>'P730_PARAM_SER_OT,P730_PARAM_NRO_OT,P730_NRO_COMPROBANTE,P730_SER_COMPROBANTE,P730_COD_ARTICULO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279482421052777334)
,p_event_id=>wwv_flow_imp.id(279479975077777333)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'JAVASCRIPT_EXPRESSION'
,p_affected_elements=>'$(''.refreshme'').trigger(''apexrefresh''); '
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279482983419777334)
,p_event_id=>wwv_flow_imp.id(279479975077777333)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(610607678602109845)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279483468204777334)
,p_event_id=>wwv_flow_imp.id(279479975077777333)
,p_event_result=>'TRUE'
,p_action_sequence=>160
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'select SUM(to_number(c005))',
'INTO :P730_TOT_REPUESTOS',
'  from apex_collections',
' where collection_name = ''VT_ORDENES_REPUESTOS_UTILIZADOS'';',
' exception ',
'when others then ',
'    null;',
'end;',
'',
''))
,p_attribute_03=>'P730_TOT_REPUESTOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279483933891777335)
,p_event_id=>wwv_flow_imp.id(279479975077777333)
,p_event_result=>'TRUE'
,p_action_sequence=>170
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN',
'    SELECT HORA_INGRESO, HORA_SALIDA',
'      INTO :P730_HORA_ENTREGADO, :P730_HORA_FINALIZADO',
'      FROM VT_OT_TIEMPO',
'     WHERE COD_EMPRESA = :P_COD_EMPRESA',
'       AND TIP_COMPROBANTE = :P730_TIP_COMPROBANTE',
'       AND SER_COMPROBANTE = :P730_SER_COMPROBANTE',
'       AND NRO_COMPROBANTE = :P730_NRO_COMPROBANTE',
'       AND TO_CHAR(FECHA_INGRESO, ''DD/MM/YYYY'') =',
'           TO_CHAR(SYSDATE, ''DD/MM/YYYY'')',
'       AND ROWNUM = 1;',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      :P730_HORA_ENTREGADO := NULL;',
'      :P730_HORA_FINALIZADO := NULL;',
'  END;',
'',
'',
'',
'  IF :P730_DERIVADO = ''F'' THEN',
'    :P730_DESC_DERIVADO := ''DERIVADO A FACTURACION'';',
'  ELSIF :P730_DERIVADO = ''CO'' THEN',
'    :P730_DESC_DERIVADO := ''DERIVADO A COBRANZAS'';',
'  ELSIF :P730_DERIVADO = ''CR'' THEN',
'    :P730_DESC_DERIVADO := ''DERIVADO A CREDITOS'';',
'  ELSIF :P730_DERIVADO = ''DI'' THEN',
'    :P730_DESC_DERIVADO := ''DERIVADO A DIRECTORIO'';',
'  ELSIF :P730_DERIVADO = ''RH'' THEN',
'    :P730_DESC_DERIVADO := ''DERIVADO A RRHH'';',
'  ELSIF :P730_DERIVADO = ''CA'' THEN',
'    :P730_DESC_DERIVADO := ''DERIVADO A CANJE'';',
'  ELSIF :P730_DERIVADO = ''AN'' THEN',
'    :P730_DESC_DERIVADO := ''DERIVACION ANULADO'';',
'  ELSIF :P730_DERIVADO = ''AF'' THEN',
'    :P730_DESC_DERIVADO := ''AUTORIZADO A FACTURACION'';',
'  END IF;',
' ',
'  inv.caordtra.pr_carga_detalle_gpv(p_cod_usuario_presupuesto_gpv => :P730_COD_USU_PRESUP_GPV,',
'                                   p_fecha_presupuesto_gpv       => :P730_FECHA_PROPUESTA_GPV,',
'                                   p_cod_empresa                 => :P_COD_EMPRESA,',
'                                   p_tip_comprobante             => :P730_TIP_COMPROBANTE,',
'                                   p_ser_comprobante             => :P730_SER_COMPROBANTE,',
'                                   p_nro_comprobante             => :P730_NRO_COMPROBANTE,',
'                                   p_cod_usuario_cerrado_gpv     =>  :P730_COD_USUARIO_CERRADO_GPV,',
'                                   p_fecha_cerrado_gpv           =>  :P730_FECHA_CERRADO_GPV,',
'                                   p_cod_usuario_snc_gpv         => :P730_COD_USUARIO_SNC_GPV,',
'                                   p_fecha_snc_gpv               => :P730_FECHA_SNC_GPV,',
'                                   p_cod_origen                  => :P730_COD_ORIGEN,',
'                                   p_cod_usuario_verificado_sta  => :p730_cod_usu_verificado_sta,',
'                                   p_fecha_verificado_sta        => :p730_fecha_verificado_sta);',
'',
'   :P730_cod_usu_aprobacion_gpv := :P730_aprobado_por;',
'  :P730_fecha_aprobado_gpv         := :P730_fec_aprobacion;',
'',
'  :P730_cod_usuario_rechazo_gpv := :P730_rechazado_por;',
'  :P730_fecha_rechazo_gpv       := :P730_fec_rechazo;',
'',
'  :P730_cod_usuario_cerrado_gpv := :P730_finalizado_por;',
'  :P730_fecha_cerrado_gpv       := :P730_FECHA_FINALIZACION;',
''))
,p_attribute_02=>'P_COD_EMPRESA,P730_TIP_COMPROBANTE,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE,P730_DERIVADO,P730_COD_ORIGEN,P730_APROBADO_POR,P730_FEC_APROBACION,P730_RECHAZADO_POR,P730_FEC_RECHAZO,P730_FINALIZADO_POR,P730_FECHA_FINALIZACION'
,p_attribute_03=>'P730_HORA_ENTREGADO,P730_HORA_FINALIZADO,P730_DESC_DERIVADO,P730_COD_USU_PRESUP_GPV,P730_FECHA_PROPUESTA_GPV,P730_COD_USUARIO_CERRADO_GPV,P730_FECHA_CERRADO_GPV,P730_COD_USUARIO_SNC_GPV,P730_FECHA_SNC_GPV,P730_COD_USU_VERIFICADO_STA,P730_FECHA_VERIFI'
||'CADO_STA,P730_COD_USU_APROBACION_GPV,P730_FECHA_APROBADO_GPV,P730_COD_USUARIO_RECHAZO_GPV,P730_FECHA_RECHAZO_GPV'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279484489852777335)
,p_event_id=>wwv_flow_imp.id(279479975077777333)
,p_event_result=>'TRUE'
,p_action_sequence=>180
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :P730_SEGUIMIENTO   := ''N'';',
'  :P730_COD_ARTICULO2 := :P730_COD_ARTICULO_OT;',
'  ----------------------------------------------------',
'  inv.caordtra_370.pr_verifica_repuestos(p_cod_empresa       =>  :P_COD_EMPRESA,',
'                                    p_tip_comprobante    => :P730_TIP_COMPROBANTE,',
'                                    p_ser_comprobante    => :P730_SER_COMPROBANTE,',
'                                    p_nro_comprobante    =>  :P730_NRO_COMPROBANTE,',
'                                    p_cod_origen        => :P730_COD_ORIGEN,',
'                                    p_tiene_repuestos   =>  :P730_TIENE_REPUESTOS,',
'                                    p_actualiza_cod_articulo => :P730_ACTUALIZA_COD_ARTICULO); --VERIFICAMOS SI LA OT TIENE O NO PEDIDO DE REPUESTOS A PEDIDO DE ALMA VILLALBA. GASPAR M. 16/03/2022',
'  ----------------------------------------------------',
'  DECLARE',
'    VPATH_EXP   VARCHAR2(600);',
'    VPATH_SPARE VARCHAR2(600);',
'  BEGIN',
'    SELECT DESCRIPCION,',
'           PATH_SPARE,',
'           PATH_EXP,',
'           COD_MARCA,',
'           COD_LINEA,',
'           COD_CATEGORIA,',
'           COD_FAMILIA',
'      INTO :P730_DESCRIPCION_ARTICULO,',
'           VPATH_SPARE,',
'           VPATH_EXP,',
'           :P730_MARCA_PRO,',
'           :P730_LINEA_PRODUCTO,',
'           :P730_CATEGORIA_PRODUCTO,',
'           :P730_FAMILIA_PRODUCTO',
'      FROM ST_ARTICULOS',
'     WHERE COD_EMPRESA = :P_COD_EMPRESA',
'       AND COD_ARTICULO = :P730_COD_ARTICULO_OT;',
'  ',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      :P730_DESCRIPCION_ARTICULO := NULL;',
'  END;',
'  ----------------------------------------------------',
'  inv.caordtra_370.pr_sumar_totales_mo(p_cod_empresa       =>  :P_COD_EMPRESA,',
'                                    p_tip_comprobante    => :P730_TIP_COMPROBANTE,',
'                                    p_ser_comprobante    => :P730_SER_COMPROBANTE,',
'                                    p_nro_comprobante    =>  :P730_NRO_COMPROBANTE,',
'                                        p_tot_mobra       => :P730_TOT_MOBRA);',
'',
'  ',
' ',
'  inv.caordtra_370.pr_sumar_totales_rep(p_cod_empresa  =>  :P_COD_EMPRESA,',
'p_tip_comprobante => :P730_TIP_COMPROBANTE,',
'p_ser_comprobante => :P730_SER_COMPROBANTE,',
'p_nro_comprobante => :P730_NRO_COMPROBANTE,',
'p_tot_repuestos       => :P730_TOT_REPUESTOS);',
'  ----------------------------------------------------',
'   IF nvl(:P730_IND_ADELANTO,''N'') = ''S'' THEN',
'   :P730_TOTAL_OT := NVL(:P730_TOT_MOBRA, 0) +',
'            NVL(:P730_TOT_REPUESTOS, 0) -',
'            NVL(:P730_SENIA, 0) -',
'            NVL(:P730_MONTO_ADELANTO, 0);',
'  ELSE',
'    :P730_TOTAL_OT := NVL(:P730_TOT_MOBRA, 0) +',
'                            NVL(:P730_TOT_REPUESTOS, 0) -',
'                            NVL(:P730_SENIA, 0);',
' END IF;',
'  ----------------------------------------------------',
'  :P730_TOTAL_OT_CALL := NVL(:P730_TOT_REPUESTOS_CALL, 0);',
'  :P730_TOTAL_OT_AUX := :P730_TOTAL_OT;',
'  ----------------------------------------------------',
'  ',
'END;',
''))
,p_attribute_02=>'P730_COD_ARTICULO_OT,P_COD_EMPRESA,P730_TIP_COMPROBANTE,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE,P730_COD_ORIGEN,P730_ACTUALIZA_COD_ARTICULO,P730_TOT_REPUESTOS_CALL'
,p_attribute_03=>'P730_SEGUIMIENTO,P730_COD_ARTICULO2,P730_TIENE_REPUESTOS,P730_TOTAL_OT,P730_TOTAL_OT_CALL,P730_TOTAL_OT_AUX,P730_TOT_REPUESTOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279484934029777335)
,p_event_id=>wwv_flow_imp.id(279479975077777333)
,p_event_result=>'TRUE'
,p_action_sequence=>190
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.caordtra_370.pr_suma_presupuesto_call(p_cod_empresa       => :P_COD_EMPRESA,',
'                                     p_tip_comprobante   => :P730_TIP_COMPROBANTE,',
'                                     p_ser_comprobante   => :P730_PARAM_SER_OT,',
'                                     p_nro_comprobante   => :P730_PARAM_NRO_OT,',
'                                     p_total_ot_call_c_g => :P730_TOTAL_OT_CALL_C_G,',
'                                     p_total_ot_call_s_g => :P730_TOTAL_OT_CALL_S_G,',
'                                     p_mensaje_error     => :P0_MENSAJE_VALIDACION);'))
,p_attribute_02=>'P_COD_EMPRESA,P730_TIP_COMPROBANTE,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE,P730_PARAM_NRO_OT,P730_PARAM_SER_OT'
,p_attribute_03=>'P730_TOTAL_OT_CALL_C_G,P730_TOTAL_OT_CALL_S_G,P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279485468748777335)
,p_event_id=>wwv_flow_imp.id(279479975077777333)
,p_event_result=>'TRUE'
,p_action_sequence=>200
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.caordtra_370.pr_busca_llamadas(p_cod_empresa        => :P_COD_EMPRESA,',
'                              p_tip_comprobante     => :P730_TIP_COMPROBANTE,',
'                              p_ser_comprobante     => :P730_SER_COMPROBANTE,',
'                              p_nro_comprobante     => :P730_NRO_COMPROBANTE,',
'                              p_usuario_seguimiento => :P730_USUARIO_SEGUIMIENTO,',
'                              p_motivo_seguimiento  => :P730_MOTIVO_SEGUIMIENTO,',
'                              p_motivo_secundario   => :P730_MOTIVO_SECUNDARIO,',
'                              p_motivo_principal    => :P730_MOTIVO_PRINCIPAL,',
'                              p_cod_motivo          => :P730_COD_MOTIVO);'))
,p_attribute_02=>'P_COD_EMPRESA,P730_TIP_COMPROBANTE,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE,P730_USUARIO_SEGUIMIENTO,P730_MOTIVO_SEGUIMIENTO,P730_MOTIVO_SECUNDARIO,P730_MOTIVO_PRINCIPAL,P730_COD_MOTIVO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279485937734777335)
,p_event_id=>wwv_flow_imp.id(279479975077777333)
,p_event_result=>'TRUE'
,p_action_sequence=>210
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(403269355592604515)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279486476078777336)
,p_event_id=>wwv_flow_imp.id(279479975077777333)
,p_event_result=>'TRUE'
,p_action_sequence=>220
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(403269749878604519)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295813453313820935)
,p_event_id=>wwv_flow_imp.id(279479975077777333)
,p_event_result=>'TRUE'
,p_action_sequence=>230
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(579831524719542033)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279486937239777336)
,p_event_id=>wwv_flow_imp.id(279479975077777333)
,p_event_result=>'TRUE'
,p_action_sequence=>240
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.caordtra_370.pr_carga_ubicaciones(p_cod_empresa      =>  :P_COD_EMPRESA,',
'                                   p_tip_comprobante => :P730_TIP_COMPROBANTE,',
'                                   p_ser_comprobante => :P730_SER_COMPROBANTE,',
'                                   p_nro_comprobante =>  :P730_NRO_COMPROBANTE,',
'                                   p_mensaje_error   => :P0_MENSAJE_VALIDACION);',
'',
'',
''))
,p_attribute_02=>'P_COD_EMPRESA,P730_TIP_COMPROBANTE,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE'
,p_attribute_03=>'P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279487418403777336)
,p_event_id=>wwv_flow_imp.id(279479975077777333)
,p_event_result=>'TRUE'
,p_action_sequence=>250
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(403271775725604539)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279487997637777336)
,p_event_id=>wwv_flow_imp.id(279479975077777333)
,p_event_result=>'TRUE'
,p_action_sequence=>260
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_DESCRIPCION_ARTICULO,P730_COD_MARCA'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DESCRIPCION ,cod_marca ',
'FROM ST_ARTICULOS ',
'WHERE COD_EMPRESA=:P_COD_EMPRESA',
'--AND COD_RUBRO=''PR''',
'AND DESCRIPCION IS NOT NULL',
'AND COD_ARTICULO = :P730_COD_ARTICULO_OT'))
,p_attribute_07=>'P730_COD_ARTICULO_OT'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279488494033777336)
,p_event_id=>wwv_flow_imp.id(279479975077777333)
,p_event_result=>'TRUE'
,p_action_sequence=>270
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_solicitud VARCHAR2(300);',
'BEGIN ',
'    BEGIN ',
'        select a.nro_solicitud ',
'        INTO v_solicitud',
'        from CA_CONFORMIDAD  a',
'        where a.nro_comprobante_ref  = :P730_NRO_COMPROBANTE',
'        and a.tip_comprobante_ref  = ''ORT'';',
'    EXCEPTION  ',
'        WHEN OTHERS THEN ',
'            v_solicitud  := NULL;',
'            :P730_NO_CONFORME := ''No cuenta con solicitu no conforme'';',
'    END;',
'',
'    IF v_solicitud IS NOT NULL THEN',
'        :P730_NO_CONFORME := ''Cuenta con solicitud no conforme Nro. ''|| v_solicitud;',
'    ELSE ',
'        :P730_NO_CONFORME := ''No cuenta con solicitud no conforme'';',
'    END IF;',
'',
'END;'))
,p_attribute_02=>'P730_NRO_COMPROBANTE'
,p_attribute_03=>'P730_NO_CONFORME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279489460720777337)
,p_event_id=>wwv_flow_imp.id(279479975077777333)
,p_event_result=>'TRUE'
,p_action_sequence=>280
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'	',
' ',
'             ',
' select u.cod_usuario',
'             into :P730_AGENTE',
'from ca_agente_call_ot  a, usuarios u, personas p',
'where u.cod_empresa=:P_COD_EMPRESA',
'and u.cod_empresa=a.cod_empresa',
'and u.cod_usuario=a.cod_usuario',
'and u.cod_persona=p.cod_persona',
'and a.cod_empresa=a.cod_empresa',
'and a.tip_comprobante=:P730_TIP_COMPROBANTE',
'and a.ser_comprobante=:P730_SER_COMPROBANTE',
'and a.nro_comprobante=:P730_NRO_COMPROBANTE',
'and rownum=1;',
'exception',
'	when others then ',
'	begin ',
' select u.cod_usuario',
'    into :P730_AGENTE ',
'    from ca_agente_call a, usuarios u, personas p, cc_clientes cc',
'where cc.cod_empresa=:P_COD_EMPRESA',
'and cc.cod_empresa=a.cod_empresa',
'and u.cod_empresa=a.cod_empresa',
'and u.cod_usuario=a.cod_usuario',
'and u.cod_persona=p.cod_persona',
'and u.cod_empresa=cc.cod_empresa',
'and cc.cod_cliente=:P730_COD_CLIENTE',
'and a.cod_vendedor=cc.cod_vendedor;',
'exception',
'	when others then ',
'	 :P730_AGENTE:=''CALLMANAG'';',
'	',
'end;',
'end;'))
,p_attribute_02=>'P730_TIP_COMPROBANTE,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE,P730_COD_CLIENTE,P730_COD_ORIGEN'
,p_attribute_03=>'P730_AGENTE'
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
 p_id=>wwv_flow_imp.id(279489978631777337)
,p_event_id=>wwv_flow_imp.id(279479975077777333)
,p_event_result=>'TRUE'
,p_action_sequence=>290
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.caordtra_370.pr_obtiene_informaciones(p_tip_comprobante =>  ''ORT'',',
'                                   p_ser_comprobante => :P730_PARAM_SER_OT,',
'                                   p_nro_comprobante => :P730_PARAM_NRO_OT,',
'                                   p_cod_empresa     => ''1'');',
'',
'',
'if :P730_ESTADO_PRESU in (''E'',''C'', ''CE'') THEN ',
':P730_OCULTAR := 1;',
'ELSE ',
':P730_OCULTAR := 0;',
'END  IF;',
'',
':P730_ESTADO_AUX := :P730_ESTADO_PRESU;'))
,p_attribute_02=>'P730_PARAM_SER_OT,P730_PARAM_NRO_OT,P730_ESTADO_PRESU'
,p_attribute_03=>'P730_OCULTAR,P730_ESTADO_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279490489432777337)
,p_event_id=>wwv_flow_imp.id(279479975077777333)
,p_event_result=>'TRUE'
,p_action_sequence=>300
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'vusuario varchar2(600):= :APP_USER;',
'vproveedor varchar2(30);',
'begin',
'select ',
'COD_SUCURSAL_DIST, OBSERV, usr_ind_snc, fec_ind_snc, NRO_TICKET, ind_reclamo,TIPO_RECLAMO, cod_problema_reclamo,',
'                 cod_solucion_reclamo,',
'                 comentario_reclamo,',
'                 fecha_finalizacion_reclamo,',
'                 IND_CORREO_PRESU,',
'                 CONT_OT,',
'                 OT_ANTERIOR,',
'                 ESTADO_RECLAMO,',
'                 ESTADO_PRESU',
'INTO ',
':P730_COD_SUCURSAL_DIST, :P730_OBSERV, :P730_USR_IND_SNC, :P730_FEC_IND_SNC, :P730_NRO_TICKET, :P730_IND_RECLAMO,:P730_TIPO_RECLAMO, :P730_COD_PROBLEMA, :P730_COD_SOLUCION,:P730_COMENTARIO_RECLAMO, :P730_FECHA_FINALIZACION, :P730_IND_CORREO_PRESU,',
':P730_CANT_OT,',
':P730_OT_ANTERIOR,',
':P730_ESTADO_RECLAMO,',
':P730_ESTADO_PRESU',
'from vt_ordenes_trabajo ot',
'where OT.COD_EMPRESA=:P_COD_EMPRESA',
'AND OT.TIP_COMPROBANTE=''ORT''',
'AND OT.SER_COMPROBANTE= :P730_PARAM_SER_OT ',
'and ot.NRO_comprobante= :P730_PARAM_NRO_OT;',
'exception',
'when others then     ',
'NULL;',
'END;',
'',
''))
,p_attribute_02=>'P730_PARAM_SER_OT,P730_PARAM_NRO_OT'
,p_attribute_03=>'P730_COD_SUCURSAL_DIST,P730_OBSERV,P730_USR_IND_SNC,P730_FEC_IND_SNC,P730_NRO_TICKET,P730_IND_RECLAMO,P730_TIPO_RECLAMO,P730_COD_PROBLEMA,P730_COD_SOLUCION,P730_COMENTARIO_RECLAMO,P730_FECHA_FINALIZACION,P730_IND_CORREO_PRESU,P730_CANT_OT,P730_OT_ANT'
||'ERIOR,P730_ESTADO_RECLAMO,P730_ESTADO_PRESU'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279488922447777336)
,p_event_id=>wwv_flow_imp.id(279479975077777333)
,p_event_result=>'TRUE'
,p_action_sequence=>310
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin select OT.estado_presu, NVL(OT.IND_GARANTIA, ''N''), ot.fec_cierre, ot.estado_presu, ot.cod_proveedor,COD_MOTIVO_RECHAZO_PRESU, ot.nro_ticket, ot.cerrado, ot.ind_reclamo',
'INTO :P730_ESTADO_PRESU, :P730_GARANTIA, :P730_FEC_CIERRE, :P730_ESTADO, :P730_COD_PROVEEDOR, :P730_COD_MOTIVO_RECHAZO_PRESU, :P730_NRO_TICKET, :P730_CERRADO, :P730_IND_RECLAMO',
'from vt_ordenes_trabajo ot',
'where OT.COD_EMPRESA=:P_COD_EMPRESA',
'AND   OT.TIP_COMPROBANTE=''ORT''',
'AND   OT.SER_COMPROBANTE = :P730_PARAM_SER_OT ',
'and   ot.NRO_comprobante= :P730_PARAM_NRO_OT;',
'',
':P730_ESTADO_AUX := :P730_ESTADO_PRESU;',
'',
'',
'begin',
'	select costo_revision_stngo',
'	  into :P730_COSTO_SERVICIO',
'	  from st_articulos s, ',
'	       st_division_articulos c',
'   where s.cod_empresa = :P_COD_EMPRESA',
'     and cod_articulo = :P730_COD_ARTICULO_OT  ',
'     and c.cod_division=s.cod_division;',
'     ',
'exception ',
'	when others then ',
'	 :P730_COSTO_SERVICIO :=0;',
'end;',
'exception when others then null; end;'))
,p_attribute_02=>'P730_PARAM_SER_OT,P730_PARAM_NRO_OT,P730_COD_ARTICULO_OT'
,p_attribute_03=>'P730_ESTADO_PRESU,P730_ESTADO_AUX,P730_COSTO_SERVICIO,P730_GARANTIA,P730_FEC_ESTADO,P730_ESTADO,P730_FEC_CIERRE,P730_COD_PROVEEDOR,P730_COD_MOTIVO_RECHAZO_PRES,P730_NRO_TICKET,P730_CERRADO,P730_IND_RECLAMO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279490977932777337)
,p_event_id=>wwv_flow_imp.id(279479975077777333)
,p_event_result=>'TRUE'
,p_action_sequence=>320
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.create_or_truncate_collection(p_collection_name => ''ARTICULO'');',
'',
'apex_collection.add_member(p_collection_name => ''ARTICULO'',',
'                               p_c001            => :P730_COD_ARTICULO_OT,',
'                               p_c002            => :P730_NRO_COMPROBANTE,',
'                               p_c003            => :P730_SER_COMPROBANTE,',
'                               p_c004            => :P730_LINEA_ARTICULOS,',
'                               p_c005            => :P730_CATEGORIA_ARTICULO);'))
,p_attribute_02=>'P730_COD_ARTICULO_OT,P730_NRO_COMPROBANTE,P730_SER_COMPROBANTE,P730_LINEA_ARTICULOS,P730_CATEGORIA_ARTICULO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279491484776777337)
,p_event_id=>wwv_flow_imp.id(279479975077777333)
,p_event_result=>'TRUE'
,p_action_sequence=>330
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(354956920959971562)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279491925985777337)
,p_event_id=>wwv_flow_imp.id(279479975077777333)
,p_event_result=>'TRUE'
,p_action_sequence=>340
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var v_nro_comprobante = apex.item("P730_PARAM_NRO_OT").getValue();',
'var v_ser_comprobante = apex.item("P730_PARAM_SER_OT").getValue();',
'',
'apex.server.process(',
' ''VALIDA_ESTADO'', ',
' { x01: v_nro_comprobante,',
'   x02: v_ser_comprobante}, ',
' {',
' success: function (pData) { ',
'     if (pData.p_estado === "C") {',
'         document.getElementById(''CREATE'').style.visibility = ''hidden'';',
'         document.getElementById(''Reclamos'').style.visibility = ''hidden'';',
'         document.getElementById(''Finalizar_orden'').style.visibility = ''hidden'';',
'         document.getElementById(''ENTREGA_OT'').style.visibility = ''hidden'';',
'         ',
'         document.getElementById(''pedir_repuesto'').style.visibility = ''hidden''; ',
'         document.getElementById(''btn_add_mo'').style.visibility = ''hidden'';',
'        /* document.getElementById(''agregar_repuesto'').style.visibility = ''hidden'';*/',
'     }  ',
'     ',
'    ',
' }, ',
' });'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279492474855777338)
,p_event_id=>wwv_flow_imp.id(279479975077777333)
,p_event_result=>'TRUE'
,p_action_sequence=>350
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#apex_wait_overlay").remove();',
'$(".u-Processing").remove();',
'',
'',
'document.getElementById(''overlay'').style.display = ''none'';',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285815595598143348)
,p_event_id=>wwv_flow_imp.id(279479975077777333)
,p_event_result=>'TRUE'
,p_action_sequence=>360
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P730_DEPARTAMENTO_STA:=:P730_DEPARTAMENTO;',
'end;'))
,p_attribute_02=>'P730_DEPARTAMENTO'
,p_attribute_03=>'P730_DEPARTAMENTO_STA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279497265906777340)
,p_name=>'datos_cliente'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P730_COD_CLIENTE'
,p_condition_element=>'P730_COD_CLIENTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279497700397777340)
,p_event_id=>wwv_flow_imp.id(279497265906777340)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   if :P730_PARAM_NRO_OT is null then',
'begin',
':P730_COD_DIRECCION := null;',
':P730_DIR_CLIENTE := null;',
':P730_RUC := null;',
':P730_EMAIL := null;',
':P730_NCI := null;',
':P730_CI := null;',
'declare ',
'    vciudad varchar2(30);',
'    vdepartamento varchar2(30);',
'    begin ',
'        select	     ',
'            d.cod_direccion cod_dir, ',
'            d.detalle||''-''||ci.descripcion dir_cliente,  ',
'            i.numero,',
'            CI.COD_PROVINCIA,',
'            cI.COD_CIUDAD,',
'            --p.direc_electronica,',
'            CASE ',
'                WHEN REGEXP_LIKE(p.direc_electronica, ''^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'') ',
'                    THEN p.direc_electronica ',
'                    ELSE NULL ',
'                END AS direc_electronica,',
'                                        NC.numero',
'                                        ,C.COD_LISTA_PRECIO,',
'                                        NC.NUMERO',
'                                       INTO',
'                                                        :P730_COD_DIRECCION,',
'                                                        :P730_DIR_CLIENTE, ',
'                                                        :P730_RUC,',
'                                                        vdepartamento,',
'                                                        vciudad,',
'                                                        :P730_EMAIL,',
'                                                        :P730_NCI,',
'                                                        :P730_COD_LISTA_PRECIO,',
'                                                        :P730_CI',
'',
'                                    from cc_clientes c, personas p, cc_causales b,',
'                                        direc_personas d, ',
'                                        telef_personas t, ',
'                                        ident_personas i, ',
'                                        ident_personas NC, ',
'                                        CIUDADES CI',
'                                where c.cod_empresa = :P_COD_EMPRESA',
'                                and c.cod_cliente = :P730_cod_cliente',
'                                and c.cod_persona = p.cod_persona',
'                                and c.cod_causal  = b.cod_causal(+)',
'                                and c.cod_persona = d.cod_persona(+)',
'                                and nvl(d.por_defecto(+),''N'') = ''S''',
'                                and c.cod_persona             = t.cod_persona(+)',
'                                and nvl(t.por_defecto(+),''N'') = ''S''',
'                                and c.cod_persona           = i.cod_persona(+)',
'                                and nvl(i.cod_ident(+),''X'') = ''RUC''',
'                                AND CI.COD_PAIS (+)     = D.COD_PAIS',
'                                AND CI.COD_PROVINCIA (+)= D.COD_PROVINCIA',
'                                AND CI.COD_CIUDAD (+)   = D.COD_CIUDAD',
'                                and c.cod_persona           = NC.cod_persona(+)',
'                                and nvl(NC.cod_ident(+),''X'') = ''CI''',
'                                and rownum = 1;',
'                            if :P730_PARAM_NRO_OT is null then',
'                                :P730_DEPARTAMENTO:=vdepartamento;',
'                               :P730_vCIUDAD:=vciudad;',
'                                :P730_CIUDAD:=vciudad;',
'                            end if;                            ',
'                    EXCEPTION',
'                        WHEN OTHERS THEN',
'                                :P730_COD_DIRECCION:=null;',
'                                :P730_DIR_CLIENTE:=null; ',
'                                :P730_RUC:=null;',
'                                :P730_DEPARTAMENTO:=null;',
'                                :P730_CIUDAD:=null;',
'                                :P730_EMAIL:=null;',
'                                :P730_NCI:=null;',
'                                :P730_COD_LISTA_PRECIO:=NULL;',
'                                :P730_CI :=  null;',
'                    END;',
'                end;',
'END IF;                '))
,p_attribute_02=>'P730_COD_CLIENTE'
,p_attribute_03=>'P730_COD_DIRECCION,P730_DIR_CLIENTE,P730_TEL_CLIENTE,P730_RUC,P730_DEPARTAMENTO,P730_CIUDAD,P730_EMAIL,P730_NCI,P730_CI'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279498267279777340)
,p_event_id=>wwv_flow_imp.id(279497265906777340)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'        if :P730_PARAM_NRO_OT is not null and :P730_PARAM_SER_OT is  not null then',
'                select SUBSTR(TO_CHAR(ot.TELEFONO), -6) ,decode(length(ot.TELEFONO),13,SUBSTR(TO_CHAR(ot.TELEFONO),1,7),'''')',
'                into :P730_TEL_CLIENTE, :P730_PREFIJO',
'                    from vt_ordenes_trabajo ot',
'                    where OT.COD_EMPRESA = :P_COD_EMPRESA',
'                    AND OT.TIP_COMPROBANTE = ''ORT''',
'                    AND OT.SER_COMPROBANTE = :P730_PARAM_SER_OT',
'                    and ot.NRO_comprobante = :P730_PARAM_NRO_OT; ',
'',
'         else',
'          declare',
'            vtipcliente varchar2(10);',
'          begin ',
'                    select  distinct t.codigo_area , REGEXP_REPLACE(t.num_telefono, ''[^0-9]'', ''''), c.tip_cliente',
'                    into :P730_PREFIJO, :P730_TEL_CLIENTE, vtipcliente',
'                    from cc_clientes c, telef_personas t',
'                    where c.cod_empresa = :P_COD_EMPRESA',
'                    and c.cod_cliente = :P730_cod_cliente',
'                    and c.cod_persona = t.cod_persona',
'                    and por_defecto =''S''',
'                    and rownum = ''1''',
'                    ;',
'                ',
'               /* if nvl(vtipcliente,''0'')<>''1'' and  nvl(vtipcliente,''0'')<>''27'' then',
'                     :P730_PREFIJO:=null;',
'                     :P730_TEL_CLIENTE:=null;',
'                end if;*/',
'           exception',
'            when others then',
'                     :P730_PREFIJO:=null;',
'                     :P730_TEL_CLIENTE:=null;',
'           end;',
'        end if;',
'',
'exception ',
'    when others then',
'          :P730_TEL_CLIENTE:=  null;',
'end;',
'',
'if (:P730_DEPARTAMENTO=''11'' or :P730_DEPARTAMENTO=''18'') THEN',
'		:P730_IND_ZONA:=''C'';',
'ELSIF :P730_DEPARTAMENTO IS NOT NULL THEN                   ',
'		:P730_IND_ZONA :=''I'';',
'ELSE',
'	:P730_IND_ZONA:=NULL;',
'END IF;'))
,p_attribute_02=>'P730_COD_CLIENTE,P730_PARAM_SER_OT,P730_PARAM_NRO_OT,P730_DEPARTAMENTO'
,p_attribute_03=>'P730_TEL_CLIENTE,P730_IND_ZONA,P730_PREFIJO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279498709156777340)
,p_event_id=>wwv_flow_imp.id(279497265906777340)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'vusuario varchar2(600):= :APP_USER;',
'vproveedor varchar2(30);',
'begin',
'select ',
'COD_SUCURSAL_DIST',
'INTO ',
':P730_COD_SUCURSAL_DIST',
'from vt_ordenes_trabajo ot',
'where OT.COD_EMPRESA=:P_COD_EMPRESA',
'AND OT.TIP_COMPROBANTE=''ORT''',
'AND OT.SER_COMPROBANTE= :P730_PARAM_SER_OT ',
'and ot.NRO_comprobante= :P730_PARAM_NRO_OT;',
'exception',
'when others then     ',
'NULL;',
'END;',
''))
,p_attribute_02=>'P730_PARAM_SER_OT,P730_PARAM_NRO_OT'
,p_attribute_03=>'P730_COD_SUCURSAL_DIST'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P730_PARAM_NRO_OT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(285814391837143336)
,p_name=>'datos_cliente_load'
,p_event_sequence=>50
,p_condition_element=>'P730_COD_CLIENTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285814455938143337)
,p_event_id=>wwv_flow_imp.id(285814391837143336)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   if :P730_PARAM_NRO_OT is null then',
'begin',
'',
'',
':P730_COD_DIRECCION := null;',
':P730_DIR_CLIENTE := null;',
':P730_RUC := null;',
':P730_EMAIL := null;',
':P730_NCI := null;',
':P730_CI := null;',
'declare ',
'vciudad varchar2(30);',
'                        vdepartamento varchar2(30);',
'                    begin ',
'                            select	     ',
'                                        d.cod_direccion cod_dir, ',
'                                        d.detalle||''-''||ci.descripcion dir_cliente,  ',
'                                        i.numero,',
'                                        CI.COD_PROVINCIA,',
'                                        cI.COD_CIUDAD,',
'                                        p.direc_electronica',
'                                        ,NC.numero',
'                                        ,C.COD_LISTA_PRECIO,',
'                                        NC.NUMERO',
'                                       INTO',
'                                                        :P730_COD_DIRECCION,',
'                                                        :P730_DIR_CLIENTE, ',
'                                                        :P730_RUC,',
'                                                        vdepartamento,',
'                                                        vciudad,',
'                                                        :P730_EMAIL,',
'                                                        :P730_NCI,',
'                                                        :P730_COD_LISTA_PRECIO,',
'                                                        :P730_CI',
'',
'                                    from cc_clientes c, personas p, cc_causales b,',
'                                        direc_personas d, ',
'                                        telef_personas t, ',
'                                        ident_personas i, ',
'                                        ident_personas NC, ',
'                                        CIUDADES CI',
'                                where c.cod_empresa = :P_COD_EMPRESA',
'                                and c.cod_cliente = :P730_cod_cliente',
'                                and c.cod_persona = p.cod_persona',
'                                and c.cod_causal  = b.cod_causal(+)',
'                                and c.cod_persona = d.cod_persona(+)',
'                                and nvl(d.por_defecto(+),''N'') = ''S''',
'                                and c.cod_persona             = t.cod_persona(+)',
'                                and nvl(t.por_defecto(+),''N'') = ''S''',
'                                and c.cod_persona           = i.cod_persona(+)',
'                                and nvl(i.cod_ident(+),''X'') = ''RUC''',
'                                AND CI.COD_PAIS (+)     = D.COD_PAIS',
'                                AND CI.COD_PROVINCIA (+)= D.COD_PROVINCIA',
'                                AND CI.COD_CIUDAD (+)   = D.COD_CIUDAD',
'                                and c.cod_persona           = NC.cod_persona(+)',
'                                and nvl(NC.cod_ident(+),''X'') = ''CI''',
'                                and rownum = 1;',
'                            if :P730_PARAM_NRO_OT is null then',
'                                :P730_DEPARTAMENTO:=vdepartamento;',
'                           --     :P730_vCIUDAD:=vciudad;',
'                                :P730_CIUDAD:=vciudad;',
'                            end if;',
'                            ',
'                    EXCEPTION',
'                        WHEN OTHERS THEN',
'                                :P730_COD_DIRECCION:=null;',
'                                :P730_DIR_CLIENTE:=null; ',
'                                :P730_RUC:=null;',
'                           --     :P730_DEPARTAMENTO:=null;',
'                             --   :P730_CIUDAD:=null;',
'                                :P730_EMAIL:=null;',
'                                :P730_NCI:=null;',
'                                :P730_COD_LISTA_PRECIO:=NULL;',
'                                :P730_CI :=  null;',
'                    END;',
'                end;',
'END IF;                '))
,p_attribute_02=>'P730_COD_CLIENTE'
,p_attribute_03=>'P730_COD_DIRECCION,P730_DIR_CLIENTE,P730_TEL_CLIENTE,P730_RUC,P730_DEPARTAMENTO,P730_CIUDAD,P730_EMAIL,P730_NCI,P730_CI'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285814508494143338)
,p_event_id=>wwv_flow_imp.id(285814391837143336)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'        if :P730_PARAM_NRO_OT is not null and :P730_PARAM_SER_OT is  not null then',
'        begin',
'                select SUBSTR(TO_CHAR(ot.TELEFONO), -6) ,decode(length(ot.TELEFONO),13,SUBSTR(TO_CHAR(ot.TELEFONO),1,7),'''')',
'                into :P730_TEL_CLIENTE, :P730_PREFIJO',
'                    from vt_ordenes_trabajo ot',
'                    where OT.COD_EMPRESA = :P_COD_EMPRESA',
'                    AND OT.TIP_COMPROBANTE = ''ORT''',
'                    AND OT.SER_COMPROBANTE = :P730_PARAM_SER_OT',
'                    and ot.NRO_comprobante = :P730_PARAM_NRO_OT; ',
'  exception',
'            when others then',
'                     :P730_TEL_CLIENTE:=null;',
'                     :P730_PREFIJO:=null;',
'           end;',
'         else',
'          declare',
'            vtipcliente varchar2(10);',
'          begin ',
'                    select  distinct t.codigo_area , REGEXP_REPLACE(t.num_telefono, ''[^0-9]'', ''''), c.tip_cliente',
'                    into :P730_PREFIJO, :P730_TEL_CLIENTE, vtipcliente',
'                    from cc_clientes c, telef_personas t',
'                    where c.cod_empresa = :P_COD_EMPRESA',
'                    and c.cod_cliente = :P730_cod_cliente',
'                    and c.cod_persona = t.cod_persona',
'                    and por_defecto =''S''',
'                    and rownum = ''1''',
'                    ;',
'                ',
'                if nvl(vtipcliente,''0'')<>''1'' and  nvl(vtipcliente,''0'')<>''27'' then',
'                     :P730_PREFIJO:=null;',
'                     :P730_TEL_CLIENTE:=null;',
'                end if;',
'           exception',
'            when others then',
'                     :P730_PREFIJO:=null;',
'                     :P730_TEL_CLIENTE:=null;',
'           end;',
'        end if;',
'',
'exception ',
'    when others then',
'          :P730_TEL_CLIENTE:=  null;',
'end;',
'',
'if (:P730_DEPARTAMENTO=''11'' or :P730_DEPARTAMENTO=''18'') THEN',
'		:P730_IND_ZONA:=''C'';',
'ELSIF :P730_DEPARTAMENTO IS NOT NULL THEN                   ',
'		:P730_IND_ZONA :=''I'';',
'ELSE',
'	:P730_IND_ZONA:=NULL;',
'END IF;'))
,p_attribute_02=>'P730_COD_CLIENTE,P730_PARAM_SER_OT,P730_PARAM_NRO_OT,P730_DEPARTAMENTO'
,p_attribute_03=>'P730_TEL_CLIENTE,P730_IND_ZONA,P730_PREFIJO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285814629088143339)
,p_event_id=>wwv_flow_imp.id(285814391837143336)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'vusuario varchar2(600):= :APP_USER;',
'vproveedor varchar2(30);',
'begin',
'select ',
'COD_SUCURSAL_DIST',
'INTO ',
':P730_COD_SUCURSAL_DIST',
'from vt_ordenes_trabajo ot',
'where OT.COD_EMPRESA=:P_COD_EMPRESA',
'AND OT.TIP_COMPROBANTE=''ORT''',
'AND OT.SER_COMPROBANTE= :P730_PARAM_SER_OT ',
'and ot.NRO_comprobante= :P730_PARAM_NRO_OT;',
'exception',
'when others then     ',
'NULL;',
'END;',
''))
,p_attribute_02=>'P730_PARAM_SER_OT,P730_PARAM_NRO_OT'
,p_attribute_03=>'P730_COD_SUCURSAL_DIST'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P730_PARAM_NRO_OT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(285811122699143304)
,p_name=>'datos_distribuidores'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P730_COD_DISTRIBUIDOR'
,p_condition_element=>'P730_COD_DISTRIBUIDOR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285811250276143305)
,p_event_id=>wwv_flow_imp.id(285811122699143304)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'',
':P730_DIRECCION_SUCURSAL:= null; ',
'                    declare ',
'                        vciudad varchar2(30);',
'                        vdepartamento varchar2(30);',
'                    begin ',
'                            select	     ',
'                                       ',
'                                        d.detalle||''-''||ci.descripcion dir_cliente ',
'                                      ',
'                                       INTO :P730_DIRECCION_SUCURSAL ',
'',
'                                    from cc_clientes c, personas p, cc_causales b,',
'                                        direc_personas d, ',
'                                        telef_personas t, ',
'                                        ident_personas i, ',
'                                        ident_personas NC, ',
'                                        CIUDADES CI',
'                                where c.cod_empresa = :P_COD_EMPRESA',
'                                and c.cod_cliente = :P730_COD_DISTRIBUIDOR',
'                                and c.cod_persona = p.cod_persona',
'                                and c.cod_causal  = b.cod_causal(+)',
'                                and c.cod_persona = d.cod_persona(+)',
'                                and nvl(d.por_defecto(+),''N'') = ''S''',
'                                and c.cod_persona             = t.cod_persona(+)',
'                                and nvl(t.por_defecto(+),''N'') = ''S''',
'                                and c.cod_persona           = i.cod_persona(+)',
'                                and nvl(i.cod_ident(+),''X'') = ''RUC''',
'                                AND CI.COD_PAIS (+)     = D.COD_PAIS',
'                                AND CI.COD_PROVINCIA (+)= D.COD_PROVINCIA',
'                                AND CI.COD_CIUDAD (+)   = D.COD_CIUDAD',
'                                and c.cod_persona           = NC.cod_persona(+)',
'                                and nvl(NC.cod_ident(+),''X'') = ''CI''',
'                                and rownum = 1;',
'',
'                           ',
'                            ',
'                    EXCEPTION',
'                        WHEN OTHERS THEN',
'                                :P730_DIRECCION_SUCURSAL:=null; ',
'                    END;',
'                end;'))
,p_attribute_02=>'P730_COD_DISTRIBUIDOR'
,p_attribute_03=>'P730_DIRECCION_SUCURSAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285811498196143307)
,p_event_id=>wwv_flow_imp.id(285811122699143304)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'vusuario varchar2(600):= :APP_USER;',
'vproveedor varchar2(30);',
'begin',
'select ',
'COD_SUCURSAL_DIST',
'INTO ',
':P730_COD_SUCURSAL_DIST',
'from vt_ordenes_trabajo ot',
'where OT.COD_EMPRESA=:P_COD_EMPRESA',
'AND OT.TIP_COMPROBANTE=''ORT''',
'AND OT.SER_COMPROBANTE= :P730_PARAM_SER_OT ',
'and ot.NRO_comprobante= :P730_PARAM_NRO_OT;',
'exception',
'when others then     ',
'NULL;',
'END;',
''))
,p_attribute_02=>'P730_PARAM_SER_OT,P730_PARAM_NRO_OT'
,p_attribute_03=>'P730_COD_SUCURSAL_DIST'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P730_PARAM_NRO_OT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279496323952777339)
,p_name=>'datos_sucursales'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P730_COD_SUCURSAL_DIST'
,p_condition_element=>'P730_COD_SUCURSAL_DIST'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279496834444777339)
,p_event_id=>wwv_flow_imp.id(279496323952777339)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'	select  p.direccion, p.telefono',
'	 into  :P730_lugar_entrega, :P730_telefono_dist',
'	from cc_clientes c, BS_SUCURSAL_CLIENTE p',
'	where c.cod_empresa=:P_COD_EMPRESA',
'	and c.cod_cliente=:P730_cod_cliente',
'	and c.cod_persona=p.cod_persona',
'	and p.cod_sucursal=:P730_cod_sucursal_dist',
'	;',
'exception',
'	when others then 	',
'	 :P730_lugar_entrega:=:P730_cod_sucursal_dist||''-''||:P730_cod_cliente;',
'     ---, :P730_telefono_dist',
'end;'))
,p_attribute_02=>'P730_COD_SUCURSAL_DIST,P730_COD_CLIENTE'
,p_attribute_03=>'P730_LUGAR_ENTREGA,P730_TELEFONO_DIST'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279499184251777340)
,p_name=>'OBTIENE_DESCRIPCION_ARTICULO'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P730_COD_ARTICULO_OT'
,p_condition_element=>'P730_COD_ARTICULO_OT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279501198610777341)
,p_event_id=>wwv_flow_imp.id(279499184251777340)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_MANO_OBRA''); '
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
 p_id=>wwv_flow_imp.id(279499698173777340)
,p_event_id=>wwv_flow_imp.id(279499184251777340)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_DESCRIPCION_ARTICULO,P730_COD_MARCA'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DESCRIPCION ,cod_marca ',
'FROM ST_ARTICULOS ',
'WHERE COD_EMPRESA=:P_COD_EMPRESA',
'--AND COD_RUBRO=''PR''',
'AND DESCRIPCION IS NOT NULL',
'AND COD_ARTICULO = :P730_COD_ARTICULO_OT'))
,p_attribute_07=>'P730_COD_ARTICULO_OT'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279500131519777341)
,p_event_id=>wwv_flow_imp.id(279499184251777340)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P730_cod_origen is not null and :P730_cod_origen  is not null then',
'',
'    if :P730_cod_origen  in  (''1'',''20'',''3'',''9'',''32'',''36'')  then     ',
'        :P730_COD_PROVEEDOR:=f_asigna_tecnico(:P730_COD_ARTICULO_OT , null);  ',
'',
'    elsif :P730_cod_origen  in  (''38'',''15'')  then  ',
'            begin',
'                    select cod_proveedor',
'                    into  :P730_COD_PROVEEDOR',
'                    from usuarios u,',
'                        cm_proveedores p',
'                    where u.cod_usuario=v(''APP_USER'')',
'                    and u.cod_persona = p.cod_persona',
'                    and p.cod_empresa=:P_COD_EMPRESA',
'                    and rownum=1',
'                    ;',
'',
'            exception',
'                when others then',
'                         :P730_COD_PROVEEDOR:=null;',
'            end;',
'',
'    else',
'        :P730_COD_PROVEEDOR:='''';',
'    end if;',
'',
'',
'else',
'        :P730_COD_PROVEEDOR:='''';',
'end if;'))
,p_attribute_02=>'P730_COD_ORIGEN,P730_COD_ARTICULO_OT'
,p_attribute_03=>'P730_COD_PROVEEDOR'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279500622789777341)
,p_event_id=>wwv_flow_imp.id(279499184251777340)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_PARAM_ARTI''); ',
'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_PARAM_OBRA''); ',
'',
'apex_collection.add_member(',
'                    p_collection_name => ''VT_PARAM_ARTI'',',
'                    p_c001            => :P730_COD_ARTICULO_OT,',
'                    p_c002            => ''AGREGAR'');',
'',
'',
'apex_collection.add_member(',
'                    p_collection_name => ''VT_PARAM_OBRA'',',
'                    p_c001            => :P730_COD_ORIGEN,',
'                    p_c002            => :P730_COD_MARCA,',
'                    p_c003            => :P730_COD_ARTICULO_OT);'))
,p_attribute_02=>'P730_COD_ARTICULO_OT,P730_COD_ORIGEN,P730_COD_MARCA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279501653471777341)
,p_event_id=>wwv_flow_imp.id(279499184251777340)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'vorigen varchar2(200);',
'begin',
'if :P730_COD_PROVEEDOR is not null then',
'/*begin',
'select ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ), ind_servicio_tecnico',
'into :P730_NOM_PROVEEDOR, VORIGEN',
'from cm_proveedores c, personas p',
'where c.cod_empresa   = :P_COD_EMPRESA',
'and c.cod_proveedor = :P730_COD_PROVEEDOR',
'and c.cod_persona   = p.cod_persona',
'AND NVL(C.ESTADO,''A'')NOT IN (''I'')',
'and nvl(c.estado   ,''S'') NOT IN (''I'',''N'') ',
'and ind_servicio_tecnico is not null;',
'exception',
'when no_data_found then',
':P0_MENSAJE_VALIDACION  := ''No existe el codigo de Proveedor'';',
':P730_NOM_PROVEEDOR :=null;',
'return;',
'',
'end;*/NULL;',
'else',
':P730_NOM_PROVEEDOR :=null;',
'end if;',
'if :P730_COD_ORIGEN in( ''1'' ,''3'',''20'',''9'',''32'')',
'and :APP_USER not in (''GESTIONST'')  then  ',
'if VORIGEN NOT IN(''STNGO'')  then ',
':P0_MENSAJE_VALIDACION := ''No se puede asignar el codigo del proveedor para el origen seleccionado'';',
'RETURN;',
'end if;',
'end if;	',
'',
'',
':P730_TOT_MOBRA := 0;',
'',
'if :P730_COD_PROVEEDOR is not null then',
'if :P730_COD_ORIGEN in (''1'',''3'',''24'',''11'',''29'',''20'',''9'',''36'') and ',
'nvl(:P730_TOT_MOBRA,0)=0 and :P730_NRO_COMPROBANTE is null then ',
'',
'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_MANO_OBRA''); ',
'',
'inv.caordtra_370.pr_agrega_mano_obra(p_cod_empresa             => :P_COD_EMPRESA,',
'p_cod_origen =>  :P730_COD_ORIGEN,',
'p_cod_cliente  =>  :P730_COD_CLIENTE,',
'p_cod_articulo => :P730_COD_ARTICULO_OT,',
'p_tot_mobra => :P730_TOT_MOBRA,',
'p_fec_comprobante  =>  :P730_FEC_COMPROBANTE,',
'p_ind_garantia  => :P730_GARANTIA,',
'p_rubro_mo => :P730_RUBRO_MO,',
'p_cod_moneda_base =>  :P730_COD_MONEDA_BASE,',
'p_porc_iva =>  :P730_PORC_IVA,',
'p_cod_proveedor  => :P730_COD_PROVEEDOR,',
'p_fec_aprobacion => :P730_FEC_APROBACION,',
'p_fec_rechazo =>  :P730_FEC_RECHAZO,',
'p_fec_cierre =>  :P730_FEC_CIERRE,',
'p_fecha_estado_complicado => :P730_FECHA_ESTADO_COMPLICADO,',
'p_fec_pendiente           => :P730_FEC_PENDIENTE,',
'p_per_reclamo =>  :P730_PER_RECLAMO,',
'p_cod_forma               =>  :P730_COD_FORMA,',
'p_cod_usuario             =>  :APP_USER,',
'p_ind_reclamo             => :P730_IND_RECLAMO,',
'p_nro_comprobante         =>  :P730_NRO_COMPROBANTE);  ',
'',
'inv.caordtra.pr_agregar_mo_flete(p_cod_origen       => :P730_COD_ORIGEN,',
'p_ind_zona        =>  :P730_IND_ZONA,',
'p_cod_empresa     => :P_COD_EMPRESA,',
'p_rubro_mo        =>  :P730_RUBRO_MO,',
'p_cod_moneda_base => :P730_COD_MONEDA_BASE,',
'p_porc_iva        =>  :P730_PORC_IVA,',
'p_monto_venta     => :P730_MONTO_VENTA,',
'p_tot_mobra       => :P730_TOT_MOBRA,',
'p_cod_proveedor   => :P730_COD_PROVEEDOR);',
'end if;',
'end if;',
'',
'if :P730_COD_PROVEEDOR is not null then',
'if :P730_COD_ORIGEN in (''27'') and ',
'nvl(:P730_TOT_MOBRA,0)=0 and :P730_NRO_COMPROBANTE is null then ',
'',
'inv.caordtra_370.pr_agrega_mo_sta(p_cod_empresa              => :P_COD_EMPRESA,',
'       p_cod_origen              => :P730_COD_ORIGEN,',
'       p_cod_cliente             =>  :P730_COD_CLIENTE,',
'       p_cod_articulo            =>  :P730_COD_ARTICULO_OT,',
'       p_tot_mobra                => :P730_TOT_MOBRA,',
'       p_fec_comprobante =>  :P730_FEC_COMPROBANTE,',
'       p_ind_garantia => :P730_GARANTIA,',
'       p_rubro_mo  =>  :P730_RUBRO_MO,',
'       p_cod_moneda_base  => :P730_COD_MONEDA_BASE,',
'       p_porc_iva =>  :P730_PORC_IVA,',
'       p_cod_proveedor  => :P730_COD_PROVEEDOR,',
'       p_fecha_modificado_garantia => :P730_FECHA_MODIFICADO_GARANTIA,',
'       p_fec_aprobacion => :P730_FEC_APROBACION,',
'       p_fec_rechazo =>  :P730_FEC_RECHAZO,',
'       p_fec_cierre =>  :P730_FEC_CIERRE,',
'       p_fecha_estado_complicado   => :P730_FECHA_ESTADO_COMPLICADO,',
'       p_fec_pendiente  => :P730_FEC_PENDIENTE,',
'       p_per_reclamo =>  :P730_PER_RECLAMO,',
'       p_cod_forma =>  :P730_COD_FORMA,',
'       p_cod_usuario =>  :APP_USER,',
'       p_ind_reclamo => :P730_IND_RECLAMO,',
'       p_nro_comprobante =>  :P730_NRO_COMPROBANTE);',
'       null;',
'',
'end if;',
'end if;',
'begin',
'     select SUM(to_number(c004))',
'     INTO :P730_TOT_MOBRA',
'      from apex_collections',
'     where collection_name = ''VT_MANO_OBRA'';',
'     exception ',
'    when others then ',
'        null;',
'    end;',
'end;  '))
,p_attribute_02=>'P730_COD_PROVEEDOR,P_COD_EMPRESA,P730_COD_ORIGEN,P730_TOT_MOBRA,P730_NRO_COMPROBANTE,P730_COD_CLIENTE,P730_COD_ARTICULO_OT_1,P730_FEC_COMPROBANTE,P730_GARANT,P730_RUBRO_MO,P730_COD_MONEDA_BASE,P730_PORC_IVA,P730_FEC_APROBACION,P730_FEC_RECHAZO,P730_F'
||'EC_CIERRE,P730_COD_USUARIO_RENDICION,P730_FEC_PENDIENTE,P730_PER_RECLAMO,P730_COD_FORMA,P730_IND_RECLAMO,P730_IND_ZONA,P730_MONTO_VENTA,P730_FECHA_ABANDONADO'
,p_attribute_03=>'P730_NOM_PROVEEDOR,P0_MENSAJE_VALIDACION,P730_TOT_MOBRA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279502190560777341)
,p_event_id=>wwv_flow_imp.id(279499184251777340)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(610989532014552622)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279502684756777342)
,p_event_id=>wwv_flow_imp.id(279499184251777340)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
' SELECT cod_linea, cod_categoria, COD_MARCA',
' into :P730_LINEA_ARTICULOS, :P730_CATEGORIA_ARTICULO, :P730_MARCA_PRO',
'   FROM st_articulos',
'  WHERE cod_empresa = :P_COD_EMPRESA',
'    AND cod_articulo = :P730_COD_ARTICULO_OT;',
'EXCEPTION ',
'    WHEN OTHERS THEN ',
'        :P730_LINEA_ARTICULOS :=  null;',
'        :P730_CATEGORIA_ARTICULO := null;',
'END;'))
,p_attribute_02=>'P730_COD_ARTICULO_OT,P_COD_EMPRESA'
,p_attribute_03=>'P730_LINEA_ARTICULOS,P730_CATEGORIA_ARTICULO,P730_MARCA_PRO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279503160336777342)
,p_event_id=>wwv_flow_imp.id(279499184251777340)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_COD_ARTICULO_OT_1'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P730_COD_ARTICULO_OT'
,p_attribute_07=>'P730_COD_ARTICULO_OT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279503601972777342)
,p_event_id=>wwv_flow_imp.id(279499184251777340)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P730_COD_ARTICULO_OT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279504627110777342)
,p_event_id=>wwv_flow_imp.id(279499184251777340)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.create_or_truncate_collection(p_collection_name => ''ARTICULO'');',
'',
'apex_collection.add_member(p_collection_name => ''ARTICULO'',',
'                               p_c001            => :P730_COD_ARTICULO_OT,',
'                               p_c002            => :P730_NRO_COMPROBANTE,',
'                               p_c003            => :P730_SER_COMPROBANTE,',
'                               p_c004            => :P730_LINEA_ARTICULOS,',
'                               p_c005            => :P730_CATEGORIA_ARTICULO);'))
,p_attribute_02=>'P730_COD_ARTICULO_OT,P730_NRO_COMPROBANTE,P730_SER_COMPROBANTE,P730_LINEA_ARTICULOS,P730_CATEGORIA_ARTICULO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279504156464777342)
,p_event_id=>wwv_flow_imp.id(279499184251777340)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT  COD_PROVEEDOR',
'    INTO :P730_COD_PROVEEDOR',
'    FROM VT_ORDENES_TRABAJO C',
'   WHERE COD_EMPRESA = :P_COD_EMPRESA',
'     AND C.TIP_COMPROBANTE = :P730_TIP_COMPROBANTE',
'     AND C.GARANTIA_OT = :P730_NRO_GARANTIA',
'     ---AND NVL(C.FECHA_RETIRADO, C.FEC_ENTREGA) > SYSDATE - 31',
'     ',
'     and c.FEC_COMPROBANTE > ''01/04/2023''',
'     and (   (nvl(ind_garantia,''N'')=''S'' AND  (C.FECHA_RETIRADO is not null and C.FECHA_RETIRADO>SYSDATE-31 ))',
'             OR (nvl(ind_garantia,''N'')=''N'' AND (C.FEC_ENTREGA is not null and C.FEC_ENTREGA >SYSDATE-31 ))',
'             )',
'     AND COD_ORIGEN IN (''1'', ''3'')',
'     AND ROWNUM = 1;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P730_NRO_GARANTIA,P730_TIP_COMPROBANTE'
,p_attribute_03=>'P730_COD_PROVEEDOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P730_NRO_GARANTIA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279505049328777342)
,p_name=>'OBTIENE_DESCRIPCION_ARTICULO_2'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P730_COD_ARTICULO_OT_CALL'
,p_condition_element=>'P730_COD_ARTICULO_OT_CALL'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(330125900008269442)
,p_event_id=>wwv_flow_imp.id(279505049328777342)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P730_COD_ARTICULO_OT_CALL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295814683597820947)
,p_event_id=>wwv_flow_imp.id(279505049328777342)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'      apex_collection.create_collection(p_collection_name    => ''VT_ORDENES_PROBLEMA''',
'                                    ,p_truncate_if_exists       => ''YES''',
'                                      );'))
,p_attribute_02=>'P730_COD_ARTICULO_OT_CALL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(337528057591921303)
,p_event_id=>wwv_flow_imp.id(279505049328777342)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(610607678602109845)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279505559892777343)
,p_event_id=>wwv_flow_imp.id(279505049328777342)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_MANO_OBRA''); '
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279506037072777343)
,p_event_id=>wwv_flow_imp.id(279505049328777342)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_DESCRIPCION_ARTICULO_CALL,P730_COD_MARCA'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DESCRIPCION ,cod_marca ',
'FROM ST_ARTICULOS ',
'WHERE COD_EMPRESA=:P_COD_EMPRESA',
'--AND COD_RUBRO=''PR''',
'AND DESCRIPCION IS NOT NULL',
'AND COD_ARTICULO = :P730_COD_ARTICULO_OT_CALL'))
,p_attribute_07=>'P730_COD_ARTICULO_OT_CALL'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279506579190777343)
,p_event_id=>wwv_flow_imp.id(279505049328777342)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P730_cod_origen is not null and :P730_cod_origen  is not null then',
'',
'    if :P730_cod_origen  in  (''1'',''20'',''3'',''9'',''32'',''36'')  then     ',
'        :P730_COD_PROVEEDOR:=f_asigna_tecnico(:P730_COD_ARTICULO_OT_CALL , null);  ',
'',
'    elsif :P730_cod_origen  in  (''38'',''15'')  then  ',
'            begin',
'                    select cod_proveedor',
'                    into  :P730_COD_PROVEEDOR',
'                    from usuarios u,',
'                        cm_proveedores p',
'                    where u.cod_usuario=v(''APP_USER'')',
'                    and u.cod_persona = p.cod_persona',
'                    and p.cod_empresa=:P_COD_EMPRESA',
'                    and rownum=1',
'                    ;',
'',
'            exception',
'                when others then',
'                         :P730_COD_PROVEEDOR:=null;',
'            end;',
'',
'    else',
'        :P730_COD_PROVEEDOR:='''';',
'    end if;',
'',
'',
'else',
'        :P730_COD_PROVEEDOR:='''';',
'end if;'))
,p_attribute_02=>'P730_COD_ORIGEN,P730_COD_ARTICULO_OT_CALL'
,p_attribute_03=>'P730_COD_PROVEEDOR'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279507006913777343)
,p_event_id=>wwv_flow_imp.id(279505049328777342)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_PARAM_ARTI''); ',
'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_PARAM_OBRA''); ',
'',
'apex_collection.add_member(',
'                    p_collection_name => ''VT_PARAM_ARTI'',',
'                    p_c001            => :P730_COD_ARTICULO_OT_CALL,',
'                    p_c002            => ''AGREGAR'');',
'',
'',
'apex_collection.add_member(',
'                    p_collection_name => ''VT_PARAM_OBRA'',',
'                    p_c001            => :P730_COD_ORIGEN,',
'                    p_c002            => :P730_COD_MARCA,',
'                    p_c003            => :P730_COD_ARTICULO_OT_CALL);'))
,p_attribute_02=>'P730_COD_ARTICULO_OT,P730_COD_ORIGEN,P730_COD_MARCA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279507562061777343)
,p_event_id=>wwv_flow_imp.id(279505049328777342)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'vorigen varchar2(200);',
'begin',
'if :P730_COD_PROVEEDOR is not null then',
'begin',
'select ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ), ind_servicio_tecnico',
'into :P730_NOM_PROVEEDOR, VORIGEN',
'from cm_proveedores c, personas p',
'where c.cod_empresa   = ''1''--:P_COD_EMPRESA',
'and c.cod_proveedor = :P730_COD_PROVEEDOR',
'and c.cod_persona   = p.cod_persona',
'AND NVL(C.ESTADO,''A'')NOT IN (''I'')',
'and nvl(c.estado   ,''S'') NOT IN (''I'',''N'') ',
'and ind_servicio_tecnico is not null;',
'exception',
'when no_data_found then',
':P0_MENSAJE_VALIDACION  := ''No existe el codigo de Proveedor art_call: cod: ''||:P730_COD_PROVEEDOR;',
'return;',
'end;',
'else',
':P730_NOM_PROVEEDOR :=null;',
'end if;',
'if :P730_COD_ORIGEN in( ''1'' ,''3'',''20'',''9'',''32'') then  ',
'if VORIGEN NOT IN(''STNGO'')  then ',
':P0_MENSAJE_VALIDACION := ''No se puede asignar el codigo del proveedor para el origen seleccionado'';',
'RETURN;',
'end if;',
'end if;	',
':P730_TOT_MOBRA := 0;',
'if :P730_COD_PROVEEDOR is not null then',
'if :P730_COD_ORIGEN in (''1'',''3'',''24'',''11'',''29'',''20'',''9'',''36'') and ',
'nvl(:P730_TOT_MOBRA,0)=0 and :P730_NRO_COMPROBANTE is null then ',
'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_MANO_OBRA''); ',
'inv.caordtra.pr_agrega_mano_obra(p_cod_empresa             => :P_COD_EMPRESA,',
'p_cod_origen =>  :P730_COD_ORIGEN,',
'p_cod_cliente  =>  :P730_COD_CLIENTE,',
'p_cod_articulo => NVL(:P730_COD_ARTICULO_OT,:P730_COD_ARTICULO_OT_CALL),',
'p_tot_mobra => :P730_TOT_MOBRA,',
'p_fec_comprobante  =>  :P730_FEC_COMPROBANTE,',
'p_ind_garantia  => :P730_GARANTIA,',
'p_rubro_mo => :P730_RUBRO_MO,',
'p_cod_moneda_base =>  :P730_COD_MONEDA_BASE,',
'p_porc_iva =>  :P730_PORC_IVA,',
'p_cod_proveedor  => :P730_COD_PROVEEDOR,',
'p_fec_aprobacion => :P730_FEC_APROBACION,',
'p_fec_rechazo =>  :P730_FEC_RECHAZO,',
'p_fec_cierre =>  :P730_FEC_CIERRE,',
'p_fecha_estado_complicado => :P730_FECHA_ESTADO_COMPLICADO,',
'p_fec_pendiente           => :P730_FEC_PENDIENTE,',
'p_per_reclamo =>  :P730_PER_RECLAMO,',
'p_cod_forma               =>  :P730_COD_FORMA,',
'p_cod_usuario             =>  :APP_USER,',
'p_ind_reclamo             => :P730_IND_RECLAMO,',
'p_nro_comprobante         =>  :P730_NRO_COMPROBANTE);  ',
'inv.caordtra.pr_agregar_mo_flete(p_cod_origen       => :P730_COD_ORIGEN,',
'p_ind_zona        =>  :P730_IND_ZONA,',
'p_cod_empresa     => :P_COD_EMPRESA,',
'p_rubro_mo        =>  :P730_RUBRO_MO,',
'p_cod_moneda_base => :P730_COD_MONEDA_BASE,',
'p_porc_iva        =>  :P730_PORC_IVA,',
'p_monto_venta     => :P730_MONTO_VENTA,',
'p_tot_mobra       => :P730_TOT_MOBRA,',
'p_cod_proveedor   => :P730_COD_PROVEEDOR);',
'end if;',
'end if;',
'if :P730_COD_PROVEEDOR is not null then',
'if :P730_COD_ORIGEN in (''27'') and ',
'nvl(:P730_TOT_MOBRA,0)=0 and :P730_NRO_COMPROBANTE is null then ',
'inv.caordtra.pr_agrega_mo_sta(p_cod_empresa              => :P_COD_EMPRESA,',
'       p_cod_origen              => :P730_COD_ORIGEN,',
'       p_cod_cliente             =>  :P730_COD_CLIENTE,',
'       p_cod_articulo            =>   NVL(:P730_COD_ARTICULO_OT,:P730_COD_ARTICULO_OT_CALL),',
'       p_tot_mobra                => :P730_TOT_MOBRA,',
'       p_fec_comprobante =>  :P730_FEC_COMPROBANTE,',
'       p_ind_garantia => :P730_GARANTIA,',
'       p_rubro_mo  =>  :P730_RUBRO_MO,',
'       p_cod_moneda_base  => :P730_COD_MONEDA_BASE,',
'       p_porc_iva =>  :P730_PORC_IVA,',
'       p_cod_proveedor  => :P730_COD_PROVEEDOR,',
'       p_fecha_modificado_garantia => :P730_FECHA_MODIFICADO_GARANTIA,',
'       p_fec_aprobacion => :P730_FEC_APROBACION,',
'       p_fec_rechazo =>  :P730_FEC_RECHAZO,',
'       p_fec_cierre =>  :P730_FEC_CIERRE,',
'       p_fecha_estado_complicado   => :P730_FECHA_ESTADO_COMPLICADO,',
'       p_fec_pendiente  => :P730_FEC_PENDIENTE,',
'       p_per_reclamo =>  :P730_PER_RECLAMO,',
'       p_cod_forma =>  :P730_COD_FORMA,',
'       p_cod_usuario =>  :APP_USER,',
'       p_ind_reclamo => :P730_IND_RECLAMO,',
'       p_nro_comprobante =>  :P730_NRO_COMPROBANTE);',
'   end if;',
'end if;',
'begin',
'     select SUM(to_number(c004))',
'     INTO :P730_TOT_MOBRA',
'      from apex_collections',
'     where collection_name = ''VT_MANO_OBRA'';',
'     exception ',
'    when others then ',
'        null;',
'    end;',
'end;  '))
,p_attribute_02=>'P730_COD_PROVEEDOR,P_COD_EMPRESA,P730_COD_ORIGEN,P730_TOT_MOBRA,P730_NRO_COMPROBANTE,P730_COD_CLIENTE,P730_COD_ARTICULO_OT_1,P730_FEC_COMPROBANTE,P730_GARANT,P730_RUBRO_MO,P730_COD_MONEDA_BASE,P730_PORC_IVA,P730_FEC_APROBACION,P730_FEC_RECHAZO,P730_F'
||'EC_CIERRE,P730_COD_USUARIO_RENDICION,P730_FEC_PENDIENTE,P730_PER_RECLAMO,P730_COD_FORMA,P730_IND_RECLAMO,P730_IND_ZONA,P730_MONTO_VENTA,P730_FECHA_ABANDONADO'
,p_attribute_03=>'P730_NOM_PROVEEDOR,P0_MENSAJE_VALIDACION,P730_TOT_MOBRA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279508082881777343)
,p_event_id=>wwv_flow_imp.id(279505049328777342)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(610989532014552622)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279508589891777344)
,p_event_id=>wwv_flow_imp.id(279505049328777342)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
' SELECT cod_linea, cod_categoria, COD_MARCA',
' into :P730_LINEA_ARTICULOS, :P730_CATEGORIA_ARTICULO, :P730_MARCA_PRO',
'   FROM st_articulos',
'  WHERE cod_empresa = :P_COD_EMPRESA',
'    AND cod_articulo = :P730_COD_ARTICULO_OT;',
'EXCEPTION ',
'    WHEN OTHERS THEN ',
'        :P730_LINEA_ARTICULOS :=  null;',
'        :P730_CATEGORIA_ARTICULO := null;',
'END;'))
,p_attribute_02=>'P730_COD_ARTICULO_OT,P_COD_EMPRESA'
,p_attribute_03=>'P730_LINEA_ARTICULOS,P730_CATEGORIA_ARTICULO,P730_MARCA_PRO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279509082462777344)
,p_event_id=>wwv_flow_imp.id(279505049328777342)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_COD_ARTICULO_OT_1'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P730_COD_ARTICULO_OT'
,p_attribute_07=>'P730_COD_ARTICULO_OT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279509573332777344)
,p_event_id=>wwv_flow_imp.id(279505049328777342)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.create_or_truncate_collection(p_collection_name => ''ARTICULO'');',
'',
'apex_collection.add_member(p_collection_name => ''ARTICULO'',',
'                               p_c001            => :P730_COD_ARTICULO_OT,',
'                               p_c002            => :P730_NRO_COMPROBANTE,',
'                               p_c003            => :P730_SER_COMPROBANTE,',
'                               p_c004            => :P730_LINEA_ARTICULOS,',
'                               p_c005            => :P730_CATEGORIA_ARTICULO);'))
,p_attribute_02=>'P730_COD_ARTICULO_OT,P730_NRO_COMPROBANTE,P730_SER_COMPROBANTE,P730_LINEA_ARTICULOS,P730_CATEGORIA_ARTICULO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279510082475777344)
,p_event_id=>wwv_flow_imp.id(279505049328777342)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT  COD_PROVEEDOR',
'    INTO :P730_COD_PROVEEDOR',
'    FROM VT_ORDENES_TRABAJO C',
'   WHERE COD_EMPRESA = :P_COD_EMPRESA',
'     AND C.TIP_COMPROBANTE = :P730_TIP_COMPROBANTE',
'     AND C.GARANTIA_OT = :P730_NRO_GARANTIA',
'     ---AND NVL(C.FECHA_RETIRADO, C.FEC_ENTREGA) > SYSDATE - 31',
'     ',
'     and c.FEC_COMPROBANTE > ''01/04/2023''',
'     and (   (nvl(ind_garantia,''N'')=''S'' AND  (C.FECHA_RETIRADO is not null and C.FECHA_RETIRADO>SYSDATE-31 ))',
'             OR (nvl(ind_garantia,''N'')=''N'' AND (C.FEC_ENTREGA is not null and C.FEC_ENTREGA >SYSDATE-31 ))',
'             )',
'     AND COD_ORIGEN IN (''1'', ''3'')',
'     AND ROWNUM = 1;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P730_NRO_GARANTIA,P730_TIP_COMPROBANTE'
,p_attribute_03=>'P730_COD_PROVEEDOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P730_NRO_GARANTIA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279510465904777344)
,p_name=>'OBTIENE_DESCRIPCION_ARTICULO_1'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P730_COD_ARTICULO_OT_1'
,p_condition_element=>'P730_COD_ARTICULO_OT_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279511492740777345)
,p_event_id=>wwv_flow_imp.id(279510465904777344)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_DESCRIPCION_ARTICULO_1,P730_COD_MARCA'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DESCRIPCION ,cod_marca ',
'FROM ST_ARTICULOS ',
'WHERE COD_EMPRESA=:P_COD_EMPRESA',
'--AND COD_RUBRO=''PR''',
'AND DESCRIPCION IS NOT NULL',
'AND COD_ARTICULO = :P730_COD_ARTICULO_OT_1'))
,p_attribute_07=>'P730_COD_ARTICULO_OT_1'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279511972074777345)
,p_event_id=>wwv_flow_imp.id(279510465904777344)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_DESCRIPCION_ARTICULO_1,P730_COD_MARCA,P730_COD_PROVEEDOR'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279510942584777344)
,p_event_id=>wwv_flow_imp.id(279510465904777344)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P730_cod_origen is not null and :P730_cod_origen  is not null then',
'',
'    if :P730_cod_origen  in  (''1'',''20'',''3'',''9'',''32'',''36'')  then     ',
'        :P730_COD_PROVEEDOR:=f_asigna_tecnico(:P730_COD_ARTICULO_OT_1 , null);  ',
'',
'    elsif :P730_cod_origen  in  (''38'',''15'')  then  ',
'            begin',
'                    select cod_proveedor',
'                    into  :P730_COD_PROVEEDOR',
'                    from usuarios u,',
'                        cm_proveedores p',
'                    where u.cod_usuario=v(''APP_USER'')',
'                    and u.cod_persona = p.cod_persona',
'                    and p.cod_empresa=:P_COD_EMPRESA',
'                    and rownum=1',
'                    ;',
'',
'            exception',
'                when others then',
'                         :P730_COD_PROVEEDOR:=null;',
'            end;',
'',
'    else',
'        :P730_COD_PROVEEDOR:='''';',
'    end if;',
'',
'',
'else',
'        :P730_COD_PROVEEDOR:='''';',
'end if;'))
,p_attribute_02=>'P730_COD_ORIGEN,P730_COD_ARTICULO_OT_1'
,p_attribute_03=>'P730_COD_PROVEEDOR'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279512325744777345)
,p_name=>'DELETE_DETALLE'
,p_event_sequence=>110
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-ps'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279514824019777346)
,p_event_id=>wwv_flow_imp.id(279512325744777345)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro de borrar la linea'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279512825375777345)
,p_event_id=>wwv_flow_imp.id(279512325744777345)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_DEL_ID_PS'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'');'
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279513308284777345)
,p_event_id=>wwv_flow_imp.id(279512325744777345)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    vabm char(1);',
'    vcodprcl varchar2(30);',
'    vcodprbl varchar2(30);',
'    vcodsol  varchar2(30);',
'    vid number; ',
'    vmensaje varchar2(3200);',
'    error exception;',
'begin ',
'        IF TO_NUMBER(:P730_DEL_ID_PS)<>0 THEN',
'                select c001 as COD_PROB_CLI,',
'                       c003 as COD_PROBLEMA,',
'                       c005 as COD_SOLUCION,',
'                       c008 as op',
'                into vcodprcl,',
'                     vcodprbl,',
'                     vcodsol,',
'                     vabm',
'                FROM APEX_collections',
'                WHERE collection_name = ''VT_ORDENES_PROBLEMA''',
'                and SEQ_ID = TO_NUMBER(:P730_DEL_ID_PS);',
'            if vabm =''I'' then --- si es I entonces es un nuevo item para insertar, solo requiere borrar del temporal  VT_ORDENES_PROBLEMA1',
'                    BEGIN',
'                         ',
'                            APEX_COLLECTION.DELETE_MEMBER(',
'                            p_collection_name => ''VT_ORDENES_PROBLEMA'',',
'                            p_seq => :P730_DEL_ID_PS);',
'   ',
'                    exception',
'                        when others then',
'                                vmensaje:=sqlerrm;',
'                                 raise error ;',
'                    END;',
'            else',
'                APEX_COLLECTION.DELETE_MEMBER(',
'                            p_collection_name => ''VT_ORDENES_PROBLEMA'',',
'                            p_seq => :P730_DEL_ID_PS);',
'                begin',
'                    delete',
'                    from  inv.vt_ordenes_trabajo_prob_gen',
'                    where cod_empresa=:P_COD_EMPRESA',
'                     AND  tip_comprobante=''ORT''',
'                     AND  ser_comprobante=:P730_SER_COMPROBANTE',
'                     AND  nro_comprobante=:P730_NRO_COMPROBANTE  ',
'                     AND  cod_problema_cliente = vcodprcl;',
'                    COMMIT;',
'                    ',
'                exception',
'                    when others then',
'                                vmensaje:=sqlerrm;',
'                                 raise error ;',
'                end;',
'            end if;',
'',
'        END IF; ',
'exception',
'    when error then',
'            apex_error.add_error(p_message               => ''Error: ''||vmensaje,',
'	                   p_display_location      => apex_error.c_inline_in_notification',
'                   ); ',
'    when others then            ',
'       apex_error.add_error(p_message               => ''Error: ''||sqlerrm,',
'	                   p_display_location      => apex_error.c_inline_in_notification',
'                   ); ',
'',
'end;',
'           '))
,p_attribute_02=>'P730_DEL_ID_PS,P730_NRO_COMPROBANTE,P730_SER_COMPROBANTE'
,p_attribute_03=>'P730_COD_USUARIO_SIN_RP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279513845780777346)
,p_event_id=>wwv_flow_imp.id(279512325744777345)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279514343129777346)
,p_event_id=>wwv_flow_imp.id(279512325744777345)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(610607678602109845)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279515294598777346)
,p_name=>'DELETE_REP_SOL'
,p_event_sequence=>120
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-rs'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279515742117777346)
,p_event_id=>wwv_flow_imp.id(279515294598777346)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro de borrar el repuesto?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279516227917777346)
,p_event_id=>wwv_flow_imp.id(279515294598777346)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_DEL_ID_RS'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'');'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279516768422777347)
,p_event_id=>wwv_flow_imp.id(279515294598777346)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  VABM   CHAR(1);',
'  VCOD   VARCHAR2(30);',
'  VID    NUMBER;',
'  VRECEP CHAR(1);',
'  VRECH  CHAR(1);',
'  ERROR EXCEPTION;',
'  VMENSAJE VARCHAR2(3200);',
'  VSER_PER VARCHAR2(30);',
'  VNRO_PER NUMBER;',
'BEGIN',
'  IF TO_NUMBER(:P730_DEL_ID_RS) <> 0 THEN',
'    SELECT C001 AS COD_PROB_CLI,',
'           C006 AS OP,',
'           C007 AS SER_PER,',
'           C008 AS NRO_PER,',
'           C009 AS RECEP,',
'           C010 AS RECH',
'      INTO VCOD, VABM, VSER_PER, VNRO_PER, VRECEP, VRECH',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''VT_ORDENES_REPUESTOS_PEDIDOS''',
'       AND SEQ_ID = TO_NUMBER(:P730_DEL_ID_RS);',
'  ',
'    IF VABM = ''I'' THEN',
'      --- SI ES I ENTONCES ES UN NUEVO ITEM PARA INSERTAR, SOLO REQUIERE BORRAR DEL TEMPORAL  VT_ORDENES_PROBLEMA1',
'      BEGIN',
'       ',
'      ',
'        APEX_COLLECTION.DELETE_MEMBER(P_COLLECTION_NAME => ''VT_ORDENES_REPUESTOS_PEDIDOS'',',
'                                      P_SEQ             => :P730_DEL_ID_RS);',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          VMENSAJE := SQLERRM;',
'          RAISE ERROR;',
'      END;',
'    ELSE',
'      IF VRECEP = ''S'' OR VRECH = ''S'' THEN',
'        VMENSAJE := ''No se puede desconfirmar el repuesto'';',
'        RAISE ERROR;',
'      ELSE',
'        BEGIN',
'          SACA_REPUESTOS_OT(''1'',',
'                            ''PER'',',
'                            VSER_PER,',
'                            VNRO_PER,',
'                            VCOD,',
'                            ''05'',',
'                            ''ANULADO - APEX'');',
'        ',
'        EXCEPTION',
'          WHEN OTHERS THEN',
'            VMENSAJE := SQLERRM;',
'            RAISE ERROR;',
'        END;',
'      END IF;',
'    END IF;',
'  ELSE',
'    VMENSAJE := :P730_DEL_ID_RS;',
'    RAISE ERROR;',
'  END IF;',
'EXCEPTION',
'  WHEN ERROR THEN',
'    APEX_ERROR.ADD_ERROR(P_MESSAGE          => ''Error: '' || VMENSAJE,',
'                         P_DISPLAY_LOCATION => APEX_ERROR.C_INLINE_IN_NOTIFICATION);',
'  ',
'END;',
''))
,p_attribute_02=>'P730_DEL_ID_RS,P730_NRO_COMPROBANTE'
,p_attribute_03=>'P730_COD_USUARIO_SIN_RP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279517200010777347)
,p_event_id=>wwv_flow_imp.id(279515294598777346)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(610992751991552654)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279517617259777347)
,p_name=>'DELETE_PRESUP'
,p_event_sequence=>130
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-pre'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279518195568777347)
,p_event_id=>wwv_flow_imp.id(279517617259777347)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro de borrar la linea'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279518699709777347)
,p_event_id=>wwv_flow_imp.id(279517617259777347)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_DEL_ID_PRE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'');'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279519185756777347)
,p_event_id=>wwv_flow_imp.id(279517617259777347)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    vabm char(1);',
'    vcod varchar2(30);',
'    vid number;',
'begin ',
'        IF TO_NUMBER(:P730_DEL_ID_PRE)<>0 THEN',
'                select c001 ,',
'                       nvl(c006,''S'')  ',
'                into vcod,',
'                     vabm',
'                FROM APEX_collections',
'                WHERE collection_name = ''VT_ORDENES_PRESUPUESTO''',
'                and SEQ_ID = TO_NUMBER(:P730_DEL_ID_PRE);',
'',
'            if vabm =''I'' then --- si es I entonces es un nuevo item para insertar, solo requiere borrar del temporal  VT_ORDENES_PROBLEMA1',
'                    BEGIN',
'                                select SEQ_ID ',
'                                into vid',
'                                FROM APEX_collections',
'                                WHERE collection_name = ''VT_ORDENES_PRESUPUESTO1''',
'                                and  c001 = vcod ;',
'',
'                                        APEX_COLLECTION.DELETE_MEMBER(',
'                                        p_collection_name => ''VT_ORDENES_PRESUPUESTO1'',',
'                                        p_seq => vid);',
'                    exception',
'                        when others then',
'                                null;',
'                    END;',
'            else',
'                begin',
'                    borra_repuesto_presupuesto(''ORT'' ,',
'                                            :P730_SER_COMPROBANTE ,',
'                                            :P730_nro_comprobante ,',
'                                            vcod',
'',
'                                );',
'                    COMMIT;',
'                    ',
'                exception',
'                    when others then',
'                            null;',
'                end;',
'            end if;',
'',
'        END IF; ',
'exception',
'    when others then',
'             apex_application.g_print_success_message := ''<span class="notification"> Error. No se ha podido eliminar el item $(vcod) del presupuesto.</span>'';',
'end;',
'           '))
,p_attribute_02=>'P730_DEL_ID_PRE,P730_NRO_COMPROBANTE,P730_SER_COMPROBANTE'
,p_attribute_03=>'P730_COD_USUARIO_SIN_RP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279519682528777348)
,p_event_id=>wwv_flow_imp.id(279517617259777347)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279520077366777348)
,p_name=>'DELETE_MANO_OBRA'
,p_event_sequence=>140
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-mo'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279520526750777348)
,p_event_id=>wwv_flow_imp.id(279520077366777348)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro de borrar la linea'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279521085910777348)
,p_event_id=>wwv_flow_imp.id(279520077366777348)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_DEL_ID_MO'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'');'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279521522900777349)
,p_event_id=>wwv_flow_imp.id(279520077366777348)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    vabm char(1);',
'    vcodART varchar2(300); ',
'    vcodTEC  varchar2(300);',
'    vid number;',
'    error exception;',
'    verror   varchar2(3200);',
'',
'begin ',
'        IF TO_NUMBER(:P730_DEL_ID_MO)<>0 THEN ',
'                select c001 as COD_ARTICULO,',
'                       c005 as COD_TECNICO,',
'                       c014 as op,',
'                       SEQ_ID',
'                into vcodART,',
'                     vcodTEC, ',
'                     vabm,',
'                     vid',
'                FROM APEX_collections',
'                WHERE collection_name = ''VT_MANO_OBRA''',
'                and SEQ_ID = TO_NUMBER(:P730_DEL_ID_MO);',
'',
'            if vabm =''I'' then --- si es I entonces es un nuevo item para insertar, solo requiere borrar del temporal  VT_ORDENES_PROBLEMA1',
'                    BEGIN',
'                               APEX_COLLECTION.DELETE_MEMBER(',
'                                        p_collection_name => ''VT_MANO_OBRA'',',
'                                        p_seq => vid);',
'                    exception',
'                        when others then',
'                                verror:=sqlerrm;',
'                                raise error;',
'                    END;',
'            else',
'                begin',
'',
'                    delete',
'                    from  inv.VT_ORDENES_TRABAJO_MO',
'                    where cod_empresa=:P_COD_EMPRESA',
'                     AND  tip_comprobante=''ORT''',
'                     AND  ser_comprobante=:P730_SER_COMPROBANTE',
'                     AND  nro_comprobante=:P730_NRO_COMPROBANTE  ',
'                     AND  cod_ARTICULO = vcodART ',
'                     --AND  cod_TECNICO =vcodTEC',
'                    ;',
'',
'                    APEX_COLLECTION.DELETE_MEMBER(',
'                                        p_collection_name => ''VT_MANO_OBRA'',',
'                                        p_seq => vid);',
'                    COMMIT;',
'                    ',
'                exception',
'                    when others then',
'                                verror:=sqlerrm;',
'                                raise error;',
'                end;',
'            end if;',
'',
'        END IF; ',
'exception',
'    when error then ',
'    apex_error.add_error(p_message               => ''Error: ''||verror,',
'	                   p_display_location      => apex_error.c_inline_in_notification',
'                   );',
'',
'end;',
'           '))
,p_attribute_02=>'P730_DEL_ID_MO,P730_NRO_COMPROBANTE,P730_SER_COMPROBANTE'
,p_attribute_03=>'P730_COD_USUARIO_SIN_RP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279522014918777349)
,p_event_id=>wwv_flow_imp.id(279520077366777348)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(610989532014552622)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279522474527777349)
,p_name=>'DELETE_REP_UTIL'
,p_event_sequence=>150
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete-ru'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279523958447777349)
,p_event_id=>wwv_flow_imp.id(279522474527777349)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta seguro de borrar la linea'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279524459052777350)
,p_event_id=>wwv_flow_imp.id(279522474527777349)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_DEL_ID_RU'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''id'');'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279522991049777349)
,p_event_id=>wwv_flow_imp.id(279522474527777349)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    vabm char(1);',
'    vcod  varchar2(30);',
'    vcant NUMBER; ',
'    vid number;  ',
'begin ',
'        IF TO_NUMBER(:P730_DEL_ID_RU)<>0 THEN',
'                select c001 as COD ,',
'                       c003 as CANT ,',
'                       c008 as op',
'                into vcod ,',
'                     vcant, ',
'                     vabm',
'                FROM APEX_collections',
'                WHERE collection_name = ''VT_ORDENES_REPUESTOS_UTILIZADOS''',
'                and SEQ_ID = TO_NUMBER(:P730_DEL_ID_RU);',
'',
'            if vabm =''I'' then --- si es I entonces es un nuevo item para insertar, solo requiere borrar del temporal  VT_ORDENES_PROBLEMA1',
'                    BEGIN',
'                                select SEQ_ID ',
'                                into vid',
'                                FROM APEX_collections',
'                                WHERE collection_name = ''VT_ORDENES_REPUESTOS_UTILIZADOS1''',
'                                and  c001 = vcod;',
'',
'                                        APEX_COLLECTION.DELETE_MEMBER(',
'                                        p_collection_name => ''VT_ORDENES_REPUESTOS_UTILIZADOS1'',',
'                                        p_seq => vid);',
'                    exception',
'                        when others then',
'                                null;',
'                    END;',
'            else',
'                if :P730_COD_ORIGEN in(''2'',''13'',''12'',''27'',''40'') THEN',
'                    borra_repuesto_ot_web(''ORT'' ,:P730_ser_comprobante ,:P730_nro_comprobante ,vcod );',
'',
'                elsIF  :P730_COD_ORIGEN in(''1'',''15'',''20'',''3'',''24'',''9'',''11'',''32'',''33'',''42'')	and nvl(:P730_cerrado,''N'')<>''S'' THEN',
'',
'                    sp_devolucion_repuesto_ot(:P730_COD_PROVEEDOR,''ORT'' ,:P730_ser_comprobante ,',
'                                :P730_nro_comprobante ,vcod ,vcant ,''05'');',
'                end if;',
'               ',
'            end if;',
'',
'        END IF; ',
'exception',
'    when others then',
'              apex_error.add_error(p_message  => ''Error: Al intenetar dar de baja el codigo '',',
'	                                p_display_location      => apex_error.c_inline_in_notification',
'                                );',
'',
'end;',
'           '))
,p_attribute_02=>'P730_DEL_ID_RU,P730_NRO_COMPROBANTE,P730_COD_ORIGEN'
,p_attribute_03=>'P730_COD_USUARIO_SIN_RP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279523471708777349)
,p_event_id=>wwv_flow_imp.id(279522474527777349)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279524847883777350)
,p_name=>'crea_cliente'
,p_event_sequence=>160
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279525355750777350)
,p_event_id=>wwv_flow_imp.id(279524847883777350)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_MODAL PAGE LOOKUP BUTTON'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(279417067441777300)
,p_attribute_01=>'P730_COD_CLIENTE'
,p_attribute_02=>'92'
,p_attribute_03=>'P730_COD_CLIENTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279525729247777350)
,p_name=>'OBTIENE_DATOS_GARANTIAS'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P730_NRO_GARANTIA'
,p_bind_type=>'live'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279526266517777350)
,p_event_id=>wwv_flow_imp.id(279525729247777350)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_COD_DISTRIBUIDOR,P730_NRO_FACTURA,P730_FECHA_FACTURA,P730_IND_RECLAMO,P730_IND_GARANTIA,P730_ESTADO_PRESU,P0_MENSAJE_VALIDACION,P730_COD_ARTICULO_OT,P730_NOMBRE_DISTRIBUIDOR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279526782830777350)
,p_event_id=>wwv_flow_imp.id(279525729247777350)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:P730_PRESUPUESTO,''N'') = ''S'' then',
'  ',
'      :P730_FEC_ESTADO   := sysdate;',
'   	  :P730_VERIFICADO_POR    := :APP_USER;',
' 	  :P730_FEC_VERIFICADO  := sysdate;',
' 	  :P730_HORA_VERIFICACION := to_char(sysdate,''HH24:MI:SS'');',
'       :P730_ESTADO_PRESU := ''V'';',
'       :P730_ESTADO_AUX := ''V'';',
'       else',
'',
'   :P730_IND_CORREO_PRESU := ''N'';',
'   :P730_ESTADO_PRESU := ''RI'';',
' ',
'end if;',
'',
'',
''))
,p_attribute_02=>'P730_PRESUPUESTO'
,p_attribute_03=>'P730_FEC_ESTADO,P730_VERIFICADO_POR,P730_FEC_VERIFICADO,P730_HORA_VERIFICACION,P730_IND_CORREO_PRESU,P730_ESTADO_PRESU,P730_ESTADO_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279527235973777351)
,p_event_id=>wwv_flow_imp.id(279525729247777350)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P730_OT_ANTERIOR := NULL;',
':P730_SER_OT_ANTERIOR := NULL;',
':P0_MENSAJE_VALIDACION := NULL;',
'BEGIN',
'  DECLARE',
'    VNUM NUMBER;',
'  BEGIN',
'    SELECT MAX(T.GARANTIA_OT)',
'      INTO VNUM',
'      FROM VT_ORDENES_TRABAJO T',
'     WHERE T.COD_EMPRESA = :P_COD_EMPRESA',
'       AND GARANTIA_OT = LTRIM(RTRIM(:P730_NRO_GARANTIA))',
'       AND :P730_NRO_GARANTIA IS NOT NULL;',
'  ',
'    IF VNUM IS NOT NULL THEN',
'      :P0_MENSAJE_VALIDACION := '' Ya Existe el nro de Garantia !! '';',
'    ',
'    END IF;',
'  EXCEPTION',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'END;',
'',
'',
'',
'BEGIN',
'  SELECT COUNT(*) + 1',
'    INTO :P730_CONT_OT',
'    FROM VT_ORDENES_TRABAJO C',
'   WHERE COD_EMPRESA = :P_COD_EMPRESA',
'     AND C.TIP_COMPROBANTE = ''ORT''',
'        --AND C.SER_COMPROBANTE = :B_CABECERA.SER_COMPROBANTE',
'     AND C.GARANTIA_OT = :P730_NRO_GARANTIA',
'     AND :P730_NRO_GARANTIA IS NOT NULL;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    :P730_CONT_OT := 1;',
'END;',
'',
'',
'BEGIN',
'  /*BUSCA OT ANTERIOR*/',
'  IF :P730_CONT_OT > 1 THEN',
'  ',
'    BEGIN',
'    ',
'      SELECT C.NRO_COMPROBANTE, C.SER_COMPROBANTE',
'        INTO :P730_OT_ANTERIOR, :P730_SER_OT_ANTERIOR',
'        FROM VT_ORDENES_TRABAJO C',
'       WHERE COD_EMPRESA = :P_COD_EMPRESA',
'         AND C.TIP_COMPROBANTE = ''ORT''',
'         AND C.GARANTIA_OT = :P730_NRO_GARANTIA',
'         AND TO_CHAR(C.FEC_COMPROBANTE, ''DD/MM/YYYY'') =',
'             (SELECT TO_CHAR(MAX(C.FEC_COMPROBANTE), ''DD/MM/YYYY'')',
'                FROM VT_ORDENES_TRABAJO C',
'               WHERE COD_EMPRESA =:P_COD_EMPRESA',
'                 AND C.TIP_COMPROBANTE = ''ORT''',
'                    --AND C.SER_COMPROBANTE = :B_CABECERA.SER_COMPROBANTE',
'                 AND C.GARANTIA_OT = :P730_NRO_GARANTIA',
'                 AND :P730_NRO_GARANTIA IS NOT NULL)',
'         AND :P730_NRO_GARANTIA IS NOT NULL;',
'    ',
'    EXCEPTION',
'    ',
'      WHEN OTHERS THEN',
'      ',
'        :P730_OT_ANTERIOR     := NULL;',
'        :P730_SER_OT_ANTERIOR := NULL;',
'    END;',
'  ',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P730_CONT_OT,P730_NRO_GARANTIA'
,p_attribute_03=>'P730_OT_ANTERIOR,P730_SER_OT_ANTERIOR,P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279527712645777351)
,p_event_id=>wwv_flow_imp.id(279525729247777350)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P730_NRO_COMPROBANTE is null then',
'if :P730_NRO_GARANTIA is not null then',
'declare ',
'    vcod varchar(30);',
'begin',
'        select S.COD_ARTICULO,C.COD_CLIENTE, c.nro_comprobante, c.fec_comprobante',
'        into vcod, :P730_COD_DISTRIBUIDOR,:P730_NRO_FACTURA,:P730_FECHA_FACTURA',
'        from st_garantia_productos_det a,',
'            st_articulos s,',
'            VT_COMPROBANTES_CABECERA C            ',
'    where a.cod_empresa = :P_COD_EMPRESA',
'        and a.nro_garantia =:P730_NRO_GARANTIA',
'        and a.cod_empresa = s.cod_empresa',
'        and a.cod_articulo = s.cod_articulo',
'        AND A.COD_EMPRESA=C.COD_EMPRESA',
'        AND A.TIP_COMPROBANTE=C.TIP_COMPROBANTE',
'        AND A.SER_COMPROBANTE=C.SER_COMPROBANTE',
'        AND A.NRO_COMPROBANTE=C.NRO_COMPROBANTE',
'        AND ROWNUM=1;',
'        if vcod<>NVL(:P730_COD_ARTICULO_OT_CALL,''NNN'') then',
'            :P730_COD_ARTICULO_OT_CALL:=vcod;',
'            apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_ORDENES_PROBLEMA'');',
'            apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_ORDENES_PRESUPUESTO1'');',
'            apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_MANO_OBRA1'');  ',
'        end IF;',
'    EXCEPTION',
'        WHEN no_data_found THEN ',
'            :P730_COD_ARTICULO_OT_CALL:=null; ',
'            :P730_COD_DISTRIBUIDOR:=null;',
'            :P730_NRO_FACTURA := null;',
'            :P730_FECHA_FACTURA := null;',
'        WHEN OTHERS THEN ',
'            :P730_COD_ARTICULO_OT_CALL:=null; ',
'            :P730_COD_DISTRIBUIDOR:=null;',
'            :P730_NRO_FACTURA := null;',
'            :P730_FECHA_FACTURA := null;',
'    end;',
'end if;',
'else',
'declare',
'dummy char(1);',
'begin ',
'    select  distinct ''1'' ',
'    INTO DUMMY',
'    from vt_ordenes_trabajo ot',
'    where OT.COD_EMPRESA=:P_COD_EMPRESA',
'    AND   OT.TIP_COMPROBANTE=''ORT''',
'    AND   OT.SER_COMPROBANTE = :P730_SER_COMPROBANTE',
'    and   OT.NRO_comprobante= :P730_NRO_COMPROBANTE',
'    and   OT.GARANTIA_OT = :P730_NRO_GARANTIA;',
'exception',
'    WHEN no_data_found THEN ',
'                begin',
'                    select S.COD_ARTICULO,C.COD_CLIENTE',
'                        into :P730_COD_ARTICULO_OT_CALL, :P730_COD_DISTRIBUIDOR',
'                        from st_garantia_productos_det a,',
'                            st_articulos              s,',
'                            VT_COMPROBANTES_CABECERA C                                ',
'                    where a.cod_empresa = :P_COD_EMPRESA',
'                        and a.nro_garantia =:P730_NRO_GARANTIA',
'                        and a.cod_empresa = s.cod_empresa',
'                        and a.cod_articulo = s.cod_articulo',
'                        AND A.COD_EMPRESA=C.COD_EMPRESA',
'                        AND A.TIP_COMPROBANTE=C.TIP_COMPROBANTE',
'                        AND A.SER_COMPROBANTE=C.SER_COMPROBANTE',
'                        AND A.NRO_COMPROBANTE=C.NRO_COMPROBANTE',
'                        AND ROWNUM=1;       ',
'                exception          ',
'                WHEN OTHERS THEN ',
'                    :P730_COD_ARTICULO_OT_CALL:=null; ',
'                    :P730_COD_DISTRIBUIDOR:=null;',
'                end;    ',
'    WHEN OTHERS THEN ',
'        :P730_COD_ARTICULO_OT_CALL:=null; ',
'        :P730_COD_DISTRIBUIDOR:=null;',
'end;',
'end if;',
':P0_MENSAJE_VALIDACION := null;',
'BEGIN',
'select ''S'',nvl(ind_garantia,''N''),cod_proveedor',
'INTO :P730_IND_RECLAMO, :P730_IND_GARANTIA,:P730_COD_PROVEEDOR',
'from vt_ordenes_trabajo c',
'where cod_empresa     = :P_COD_EMPRESA',
'and c.tip_comprobante = :P730_TIP_COMPROBANTE',
'AND C.GARANTIA_OT     = :P730_NRO_GARANTIA',
'and ((nvl(ind_garantia,''N'')=''S'' AND  (C.FECHA_RETIRADO is not null and C.FECHA_RETIRADO>SYSDATE-31 ))',
'     OR (nvl(ind_garantia,''N'')=''N'' AND (C.FEC_ENTREGA is not null and C.FEC_ENTREGA >SYSDATE-31 )))',
'and cod_origen in (''1'',''3'')',
'and rownum=1;',
'if :P730_IND_RECLAMO =''S'' then',
'IF NVL(:P730_IND_GARANTIA,''N'')=''S'' THEN',
':P730_ESTADO_PRESU:=''RU'';',
'END IF;',
':P0_MENSAJE_VALIDACION := '' Orden de Trabajo de tipo Reclamo!! '';  ',
'end if;',
'exception',
'when others then',
':P730_IND_RECLAMO := ''N'';',
':P730_IND_GARANTIA := ''N'';',
':P730_COD_PROVEEDOR := NULL;',
'end;'))
,p_attribute_02=>'P730_NRO_GARANTIA,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE,P730_TIP_COMPROBANTE,P730_COD_PROVEEDOR'
,p_attribute_03=>'P730_COD_DISTRIBUIDOR,P730_NRO_FACTURA,P730_FECHA_FACTURA,P730_IND_RECLAMO,P730_IND_GARANTIA,P730_COD_PROVEEDOR,P730_ESTADO_PRESU,P0_MENSAJE_VALIDACION,P730_COD_ARTICULO_OT_CALL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279528212561777351)
,p_event_id=>wwv_flow_imp.id(279525729247777350)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'select  nombre',
'INTO :P730_NOMBRE_DISTRIBUIDOR',
'from cc_clientes c, personas p',
'where c.cod_empresa = :P_COD_EMPRESA',
'and c.cod_persona = p.cod_persona ',
'--and nvl(c.estado,''X'') in (''A'',''C'',''B'') ',
'AND c.COD_CLIENTE=:P730_COD_DISTRIBUIDOR;',
'EXCEPTION ',
'    WHEN OTHERS THEN ',
'        :P730_NOMBRE_DISTRIBUIDOR := NULL;',
'END;'))
,p_attribute_02=>'P730_COD_DISTRIBUIDOR'
,p_attribute_03=>'P730_NOMBRE_DISTRIBUIDOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279528692381777351)
,p_name=>'carga_dist'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P730_COD_DISTRIBUIDOR'
,p_condition_element=>'P730_COD_DISTRIBUIDOR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279529179612777351)
,p_event_id=>wwv_flow_imp.id(279528692381777351)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_NOMBRE_DISTRIBUIDOR'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  nombre',
'from cc_clientes c, personas p',
'where c.cod_empresa = :P_COD_EMPRESA',
'and c.cod_persona = p.cod_persona ',
'--and nvl(c.estado,''X'') in (''A'',''C'',''B'') ',
'AND  c.COD_CLIENTE=:P730_COD_DISTRIBUIDOR;',
''))
,p_attribute_07=>'P730_COD_DISTRIBUIDOR'
,p_attribute_08=>'N'
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
 p_id=>wwv_flow_imp.id(279529527025777351)
,p_name=>'List_ciudad'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P730_DEPARTAMENTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279530070482777352)
,p_event_id=>wwv_flow_imp.id(279529527025777351)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_CIUDAD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285815434712143347)
,p_event_id=>wwv_flow_imp.id(279529527025777351)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_DEPARTAMENTO_STA'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P730_DEPARTAMENTO_STA:=:P730_DEPARTAMENTO;',
'end;'))
,p_attribute_07=>'P730_DEPARTAMENTO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(330122001340269403)
,p_event_id=>wwv_flow_imp.id(279529527025777351)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_CIUDAD,P730_DEPARTAMENTO_STA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279530492909777352)
,p_name=>'chec_garantia'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P730_GARANT'
,p_condition_element=>'P730_GARANT'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279530953781777352)
,p_event_id=>wwv_flow_imp.id(279530492909777352)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_PRESUPUESTO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'S'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279531485772777352)
,p_event_id=>wwv_flow_imp.id(279530492909777352)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.caordtra_370.pr_validaciones_garantia(p_ind_garantia              =>  :P730_GARANTIA,',
'                                       p_estado_presu             => :P730_ESTADO_PRESU,',
'                                       p_cod_origen               => :P730_COD_ORIGEN,',
'                                       p_fec_estado               =>  :P730_FEC_ESTADO,',
'                                       p_fec_im                   =>  :P730_FEC_IM,',
'                                       p_reparado_im_por          => :P730_REPARADO_IM_POR,',
'                                       p_hora_im                  => :P730_HORA_IM,',
'                                       p_cod_usuario              => :APP_USER,',
'                                       p_cod_empresa              => :P_COD_EMPRESA,',
'                                       p_tot_mobra                => :P730_TOT_MOBRA,',
'                                       p_tot_mobra_ant            => :P730_TOT_MOBRA_ANT,',
'                                       p_cod_cliente              => :P730_COD_CLIENTE,',
'                                       p_rubro_mo                 => :P730_RUBRO_MO,',
'                                       p_cod_moneda_base          =>  :P730_COD_MONEDA_BASE,',
'                                       p_porc_iva                 => :P730_PORC_IVA,',
'                                       p_nro_comprobante          => :P730_NRO_COMPROBANTE,',
'                                       p_mensaje_error            =>  :P0_MENSAJE_VALIDACION,',
'                                       p_cerrado                   => :P730_CERRADO,',
'                                       p_ind_reclamo               => :P730_IND_RECLAMO,',
'                                       p_fec_comprobante           => :P730_FEC_COMPROBANTE,',
'                                       p_fec_rechazo               => :P730_FEC_RECHAZO,',
'                                       p_ser_comprobante           => :P730_SER_COMPROBANTE,',
'                                       p_fecha_modificado_garantia =>  :P730_FECHA_MODIFICADO_GARANTIA,',
'                                       p_fec_aprobacion            => :P730_FEC_APROBACION,',
'                                       p_fec_cierre                =>  :P730_FEC_CIERRE,',
'                                       p_fecha_estado_complicado   => :P730_FECHA_ESTADO_COMPLICADO,',
'                                       p_fec_pendiente             =>  :P730_FEC_PENDIENTE,',
'                                       p_ind_adicional             => :P730_IND_ADICIONAL,',
'                                       p_cod_proveedor             => :P730_COD_PROVEEDOR,',
'                                       p_linea_producto            => :P730_LINEA_PRODUCTO,',
'                                       p_error                     => :P730_ERROR,',
'                                       p_tipo_cierre               => :P730_TIPO_CIERRE);'))
,p_attribute_02=>'P730_GARANT,P730_ESTADO_PRESU,P730_COD_ORIGEN,P_COD_EMPRESA,P730_TOT_MOBRA,P730_COD_CLIENTE,P730_RUBRO_MO,P730_COD_MONEDA_BASE,P730_PORC_IVA,P730_NRO_COMPROBANTE,P730_CERRADO,P730_IND_RECLAMO,P730_FEC_COMPROBANTE,P730_FEC_RECHAZO,P730_SER_COMPROBANTE'
||',P730_FECHA_ABANDONADO,P730_FEC_APROBACION,P730_FEC_CIERRE,P730_COD_USUARIO_RENDICION,P730_FEC_PENDIENTE,P730_IND_ADICIONAL,P730_COD_PROVEEDOR,P730_TIPO'
,p_attribute_03=>'P730_ESTADO_PRESU,P730_FEC_ESTADO,P730_FEC_IM,P730_REPARADO_IM_POR,P730_HORA_IM,P730_TOT_MOBRA,P730_TOT_MOBRA_ANT,P0_MENSAJE_VALIDACION,P730_LINEA_PRODUCTO,P730_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279531937874777352)
,p_event_id=>wwv_flow_imp.id(279530492909777352)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(279423620287777303)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279532486682777352)
,p_event_id=>wwv_flow_imp.id(279530492909777352)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_PRESUPUESTO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279532933034777353)
,p_event_id=>wwv_flow_imp.id(279530492909777352)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(279423620287777303)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279533374942777353)
,p_name=>'btn_volver'
,p_event_sequence=>210
,p_condition_element=>'P730_PARAM_ID_TKT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279533872420777353)
,p_event_id=>wwv_flow_imp.id(279533374942777353)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(279412309894777298)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279534301018777353)
,p_event_id=>wwv_flow_imp.id(279533374942777353)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(279413108161777299)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279534837639777353)
,p_event_id=>wwv_flow_imp.id(279533374942777353)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(279412309894777298)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279535371385777354)
,p_event_id=>wwv_flow_imp.id(279533374942777353)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(279413108161777299)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279535723666777354)
,p_name=>'RS_CONF_RECEP'
,p_event_sequence=>220
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.chk_recep'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279536253020777354)
,p_event_id=>wwv_flow_imp.id(279535723666777354)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'    Desea Confirmar la recepcion del producto?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279536774743777354)
,p_event_id=>wwv_flow_imp.id(279535723666777354)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_DEL_ID_RS'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).closest(''tr'').find(''td[headers="SEQ_ID"]'').text();'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279537269360777354)
,p_event_id=>wwv_flow_imp.id(279535723666777354)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P730_DEL_ID_RS is not null then',
'    declare',
'        vretorno        varchar2(3500); ',
'        vser_comprobante varchar2(15);',
'        vnro_comprobante varchar2(35);',
'        vcod_suc_env    varchar2(5);',
'        vcod_articulo  varchar2(35);',
'        v_cantidad number;',
'        v_cantidad_pedida number;',
'        v_cantidad_ot number;',
'    begin    ',
'                        select c001 as COD_ART, ',
'                                C007 AS SER_PER,',
'                                C008 AS NRO_PER, ',
'                                c011 as SUC,',
'                                c003 as cantidad,',
'                                c004 as cantidad_pedida,',
'                                c005 as cantidad_ot',
'                            into vcod_articulo  , ',
'                                vser_comprobante,',
'                                vnro_comprobante,',
'                                vcod_suc_env, ',
'                                v_cantidad,',
'                                v_cantidad_pedida,',
'                                v_cantidad_ot',
'                            FROM APEX_collections',
'                            WHERE collection_name = ''VT_ORDENES_REPUESTOS_PEDIDOS''',
'                            and SEQ_ID = TO_NUMBER(:P730_DEL_ID_RS);  ',
'                         ',
'          BEGIN',
'              IF NVL(v_cantidad_ot, 0) = 0 THEN',
'                IF NVL(v_cantidad, 0) > 0 THEN',
'                  DECLARE',
'                    VTRASLADO VARCHAR2(500);',
'                  BEGIN',
'                    ',
'                    CREA_ENVIO_REP_OT_DET(:P_COD_EMPRESA,',
'                                          ''PER'',',
'                                          vser_comprobante,',
'                                          vnro_comprobante,',
'                                          vcod_suc_env,',
'                                          VTRASLADO,',
'                                          :P730_NRO_COMPROBANTE,',
'                                          vcod_articulo);',
'                 ',
'                    AGREGAR_REPUESTO_OT_DET(:P_COD_EMPRESA,',
'                                            vcod_suc_env,',
'                                            vnro_comprobante,',
'                                            vcod_articulo);',
'                  ',
'               apex_collection.update_member_attribute(p_collection_name=> ''VT_ORDENES_REPUESTOS_PEDIDOS'', ',
'                    p_seq             => :P730_DEL_ID_RS, ',
'                    p_attr_number     => ''5'', ',
'                    p_attr_value=> v_cantidad); ',
'',
'                 apex_collection.update_member_attribute(p_collection_name=> ''VT_ORDENES_REPUESTOS_PEDIDOS'', ',
'                    p_seq             => :P730_DEL_ID_RS, ',
'                    p_attr_number     => ''9'', ',
'                    p_attr_value       => ''S''); ',
'                  EXCEPTION',
'                    WHEN OTHERS THEN',
'                      :P0_MENSAJE_VALIDACION := SQLERRM;',
'                      NULL;',
'                  END;',
'                ELSE',
'            --      :IND_RECEPCION         := ''N'';',
'                  :P0_MENSAJE_VALIDACION := ''Aun no se genero la confirmacion del pedido'';',
'                END IF;',
'              ',
'              ELSE',
'        --        :IND_RECEPCION         := ''S'';',
'                :P0_MENSAJE_VALIDACION := ''El repuesto ya ha sido recepcionado'';',
'              END IF;',
'',
'            END;',
'       ',
'            ',
'    end;',
'end if;',
' '))
,p_attribute_02=>'P730_DEL_ID_RS,P730_PARAM_NRO_OT,P730_NRO_COMPROBANTE,P_COD_EMPRESA'
,p_attribute_03=>'P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279537793299777354)
,p_event_id=>wwv_flow_imp.id(279535723666777354)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(610992751991552654)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279538136591777355)
,p_name=>'RS_CONF_RECEP_2'
,p_event_sequence=>230
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.chk_recep2'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279538637186777355)
,p_event_id=>wwv_flow_imp.id(279538136591777355)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'    Desea Confirmar la recepcion del producto?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279539129568777355)
,p_event_id=>wwv_flow_imp.id(279538136591777355)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_DEL_ID_RS'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).closest(''tr'').find(''td[headers="SEQ_ID"]'').text();'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279539632243777355)
,p_event_id=>wwv_flow_imp.id(279538136591777355)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P730_DEL_ID_RS is not null then',
'    declare',
'        vretorno        varchar2(3500); ',
'        vser_comprobante varchar2(15);',
'        vnro_comprobante varchar2(35);',
'        vcod_suc_env    varchar2(5);',
'        vcod_articulo  varchar2(35);',
'        v_cantidad number;',
'        v_cantidad_pedida number;',
'        v_cantidad_ot number;',
'        v_cant_preparada  NUMBER;',
'    begin    ',
'                        select c005 as COD_ART, ',
'                                C023 AS SER_PER,',
'                                C022 AS NRO_PER, ',
'                                c020 as SUC,',
'                                c007 as cantidad,',
'                                c009 as cantidad_pedida,',
'                                c010 as cantidad_ot,',
'                                c021 as cant_preparada',
'                            into vcod_articulo  , ',
'                                vser_comprobante,',
'                                vnro_comprobante,',
'                                vcod_suc_env, ',
'                                v_cantidad,',
'                                v_cantidad_pedida,',
'                                v_cantidad_ot,',
'                                v_cant_preparada',
'                            FROM APEX_collections',
'                            WHERE collection_name = ''VT_PRODUCTOS''',
'                            and SEQ_ID = TO_NUMBER(:P730_DEL_ID_RS);  ',
'                         ',
'          BEGIN',
'',
'              IF NVL(v_cantidad_ot, 0) = 0 THEN',
'                IF NVL(v_cant_preparada, 0) > 0 THEN',
'                  DECLARE',
'                    VTRASLADO VARCHAR2(500);',
'                  BEGIN',
'',
'                    ',
'                    CREA_ENVIO_REP_OT_DET(:P_COD_EMPRESA,',
'                                          ''PER'',',
'                                          vser_comprobante,',
'                                          vnro_comprobante,',
'                                          vcod_suc_env,',
'                                          VTRASLADO,',
'                                          :P730_NRO_COMPROBANTE,',
'                                          vcod_articulo);',
'                 ',
'                    AGREGAR_REPUESTO_OT_DET(:P_COD_EMPRESA,',
'                                            vcod_suc_env,',
'                                            vnro_comprobante,',
'                                            vcod_articulo);',
'                  ',
'               apex_collection.update_member_attribute(p_collection_name=> ''VT_PRODUCTOS'', ',
'                    p_seq             => :P730_DEL_ID_RS, ',
'                    p_attr_number     => ''10'', ',
'                    p_attr_value=> v_cant_preparada); ',
'',
'                 apex_collection.update_member_attribute(p_collection_name=> ''VT_PRODUCTOS'', ',
'                    p_seq             => :P730_DEL_ID_RS, ',
'                    p_attr_number     => ''16'', ',
'                    p_attr_value       => ''S''); ',
'                  EXCEPTION',
'                    WHEN OTHERS THEN',
'                      :P0_MENSAJE_VALIDACION := SQLERRM;',
'                      NULL;',
'                  END;',
'                ELSE',
'            --      :IND_RECEPCION         := ''N'';',
'                  :P0_MENSAJE_VALIDACION := ''Aun no se genero la confirmacion del pedido'';',
'                END IF;',
'              ',
'              ELSE',
'        --        :IND_RECEPCION         := ''S'';',
'                :P0_MENSAJE_VALIDACION := ''El repuesto ya ha sido recepcionado'';',
'              END IF;',
'',
'            END;',
'       ',
'            ',
'    end;',
'end if;',
' '))
,p_attribute_02=>'P730_DEL_ID_RS,P730_PARAM_NRO_OT,P730_NRO_COMPROBANTE,P_COD_EMPRESA'
,p_attribute_03=>'P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279540151591777355)
,p_event_id=>wwv_flow_imp.id(279538136591777355)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'inv.caordtra.pr_obtiene_informaciones(p_tip_comprobante =>  ''ORT'',',
'                                   p_ser_comprobante => :P730_PARAM_SER_OT,',
'                                   p_nro_comprobante => :P730_PARAM_NRO_OT,',
'                                   p_cod_empresa     => ''1'');'))
,p_attribute_02=>'P730_PARAM_SER_OT,P730_PARAM_NRO_OT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279540625315777355)
,p_event_id=>wwv_flow_imp.id(279538136591777355)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(354956920959971562)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279541061630777356)
,p_name=>'RS_CONF_RECHAZAR'
,p_event_sequence=>240
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.chk_rechaz'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279541590980777356)
,p_event_id=>wwv_flow_imp.id(279541061630777356)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_DEL_ID_RS'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).closest(''tr'').find(''td[headers="SEQ_ID"]'').text();'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279542045309777356)
,p_event_id=>wwv_flow_imp.id(279541061630777356)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 as COD_ART',
'into :P730_ARTICULO_RECHAZO',
'FROM APEX_collections',
'WHERE collection_name = ''VT_ORDENES_REPUESTOS_PEDIDOS''',
'and SEQ_ID = TO_NUMBER(:P730_DEL_ID_RS);  '))
,p_attribute_02=>'P730_DEL_ID_RS'
,p_attribute_03=>'P730_ARTICULO_RECHAZO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279542550173777356)
,p_event_id=>wwv_flow_imp.id(279541061630777356)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(398592184793441842)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279542925876777356)
,p_name=>'RS_CONF_RECHAZAR_1'
,p_event_sequence=>250
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.chk_rechaz2'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279543428920777356)
,p_event_id=>wwv_flow_imp.id(279542925876777356)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_DEL_ID_RS'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).closest(''tr'').find(''td[headers="SEQ_ID"]'').text();'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279543952177777357)
,p_event_id=>wwv_flow_imp.id(279542925876777356)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c005 as COD_ART',
'into :P730_ARTICULO_RECHAZO',
'FROM APEX_collections',
'WHERE collection_name = ''VT_PRODUCTOS''',
'and SEQ_ID = TO_NUMBER(:P730_DEL_ID_RS);  '))
,p_attribute_02=>'P730_DEL_ID_RS'
,p_attribute_03=>'P730_ARTICULO_RECHAZO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279544445433777357)
,p_event_id=>wwv_flow_imp.id(279542925876777356)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(398592184793441842)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279544868209777357)
,p_name=>'RS_CONF_DEVOLVER'
,p_event_sequence=>260
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.chk_dev'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279545331724777357)
,p_event_id=>wwv_flow_imp.id(279544868209777357)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_DEL_ID_RS'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).closest(''tr'').find(''td[headers="SEQ_ID"]'').text();'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279545894015777357)
,p_event_id=>wwv_flow_imp.id(279544868209777357)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001, c003',
'into :P730_ARTICULO_DEV, :P730_CANTIDAD_DEV',
'FROM APEX_collections',
'WHERE collection_name = ''VT_REPUESTOS_UTILIZADOS''',
'and SEQ_ID = TO_NUMBER(:P730_DEL_ID_RS);  '))
,p_attribute_02=>'P730_DEL_ID_RS'
,p_attribute_03=>'P730_ARTICULO_DEV,P730_CANTIDAD_DEV'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279546306074777357)
,p_event_id=>wwv_flow_imp.id(279544868209777357)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(404319178079631655)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279546737338777357)
,p_name=>'RS_CONF_DEVOLVER_1'
,p_event_sequence=>270
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.chk_dev2'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279547292096777358)
,p_event_id=>wwv_flow_imp.id(279546737338777357)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_DEL_ID_RS'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).closest(''tr'').find(''td[headers="SEQ_ID"]'').text();'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279547799250777358)
,p_event_id=>wwv_flow_imp.id(279546737338777357)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c005, c010',
'into :P730_ARTICULO_DEV, :P730_CANTIDAD_DEV',
'FROM APEX_collections',
'WHERE collection_name = ''VT_PRODUCTOS''',
'and SEQ_ID = TO_NUMBER(:P730_DEL_ID_RS);  '))
,p_attribute_02=>'P730_DEL_ID_RS'
,p_attribute_03=>'P730_ARTICULO_DEV,P730_CANTIDAD_DEV'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279548287260777358)
,p_event_id=>wwv_flow_imp.id(279546737338777357)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(404319178079631655)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279548621930777358)
,p_name=>'RS_CONF_RECEP_1'
,p_event_sequence=>280
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.chk_recep'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279549195092777358)
,p_event_id=>wwv_flow_imp.id(279548621930777358)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(610992751991552654)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279549578964777358)
,p_name=>'Carga mano de obra'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P730_COD_ORIGEN'
,p_condition_element=>'P730_COD_ORIGEN'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279550068433777358)
,p_event_id=>wwv_flow_imp.id(279549578964777358)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P730_cod_origen is not null and :P730_cod_origen  is not null then',
'',
'    if :P730_cod_origen  in  (''1'',''20'',''3'',''9'',''32'',''36'')  then     ',
'        :P730_COD_PROVEEDOR:=f_asigna_tecnico(:P730_COD_ARTICULO_OT , null);  ',
'',
'    elsif :P730_cod_origen  in  (''38'',''15'')  then  ',
'            begin',
'                    select cod_proveedor',
'                    into  :P730_COD_PROVEEDOR',
'                    from usuarios u,',
'                        cm_proveedores p',
'                    where u.cod_usuario=v(''APP_USER'')',
'                    and u.cod_persona = p.cod_persona',
'                    and p.cod_empresa=:P_COD_EMPRESA',
'                    and rownum=1',
'                    ;',
'',
'            exception',
'                when others then',
'                         :P730_COD_PROVEEDOR:=null;',
'            end;',
'',
'    else',
'        :P730_COD_PROVEEDOR:='''';',
'    end if;',
'',
'',
'else',
'        :P730_COD_PROVEEDOR:='''';',
'end if;'))
,p_attribute_02=>'P730_COD_ORIGEN,P730_COD_ARTICULO_OT'
,p_attribute_03=>'P730_COD_PROVEEDOR'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279550485722777359)
,p_name=>unistr('Llama regi\00F3n articulos')
,p_event_sequence=>300
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(279457068069777317)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279550928406777359)
,p_event_id=>wwv_flow_imp.id(279550485722777359)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_REPUESTOS_UTILIZADOS'');',
'inv.caordtra_370.pr_buscar_articulos(p_cod_empresa    => :P_COD_EMPRESA,',
'                                p_tip_comprobante => :P730_TIP_COMPROBANTE,',
'                                p_ser_comprobante => :P730_SER_COMPROBANTE,',
'                                p_nro_comprobante => :P730_NRO_COMPROBANTE,',
'                                p_cod_origen      => :P730_COD_ORIGEN,',
'                                p_cod_proveedor   => :P730_COD_PROVEEDOR,',
'                                p_fec_comprobante => :P730_FEC_COMPROBANTE,',
'                                p_tot_repuestos   => :P730_TOT_REPUESTOS,',
'                                p_cerrado         => :P730_CERRADO,',
'                                p_tot_mobra       => :P730_TOT_MOBRA,',
'                                p_total_ot        => :P730_TOTAL_OT,',
'                                p_senia           => :P730_SENIA,',
'                                p_monto_adelanto  => :P730_MONTO_ADELANTO,',
'                                p_ind_adelanto    => :P730_IND_ADELANTO,',
'                                p_mensaje_error   => :P0_MENSAJE_VALIDACION);'))
,p_attribute_02=>'P_COD_EMPRESA,P730_TIP_COMPROBANTE,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE,P730_COD_ORIGEN,P730_COD_PROVEEDOR,P730_FEC_COMPROBANTE,P730_CERRADO,P730_TOT_MOBRA,P730_SENIA,P730_MONTO_ADELANTO,P730_IND_ADELANTO'
,p_attribute_03=>'P730_TOTAL_OT,P0_MENSAJE_VALIDACION'
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
 p_id=>wwv_flow_imp.id(279551451549777359)
,p_event_id=>wwv_flow_imp.id(279550485722777359)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(404317621790631640)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279551825158777359)
,p_name=>'OBTIENE_DESCRIPCION_ARTICULO_3'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P730_COD_ORIGEN'
,p_condition_element=>'P730_NRO_GARANTIA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279552345867777359)
,p_event_id=>wwv_flow_imp.id(279551825158777359)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_MANO_OBRA''); '
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279552849817777359)
,p_event_id=>wwv_flow_imp.id(279551825158777359)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_DESCRIPCION_ARTICULO,P730_COD_MARCA'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DESCRIPCION ,cod_marca ',
'FROM ST_ARTICULOS ',
'WHERE COD_EMPRESA=:P_COD_EMPRESA',
'--AND COD_RUBRO=''PR''',
'AND DESCRIPCION IS NOT NULL',
'AND COD_ARTICULO = :P730_COD_ARTICULO_OT'))
,p_attribute_07=>'P730_COD_ARTICULO_OT'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279553353851777360)
,p_event_id=>wwv_flow_imp.id(279551825158777359)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P730_cod_origen is not null and :P730_cod_origen  is not null then',
'',
'    if :P730_cod_origen  in  (''1'',''20'',''3'',''9'',''32'',''36'')  then     ',
'        :P730_COD_PROVEEDOR:=f_asigna_tecnico(:P730_COD_ARTICULO_OT , null);  ',
'',
'    elsif :P730_cod_origen  in  (''38'',''15'')  then  ',
'            begin',
'                    select cod_proveedor',
'                    into  :P730_COD_PROVEEDOR',
'                    from usuarios u,',
'                        cm_proveedores p',
'                    where u.cod_usuario=v(''APP_USER'')',
'                    and u.cod_persona = p.cod_persona',
'                    and p.cod_empresa=:P_COD_EMPRESA',
'                    and rownum=1',
'                    ;',
'',
'            exception',
'                when others then',
'                         :P730_COD_PROVEEDOR:=null;',
'            end;',
'',
'    else',
'        :P730_COD_PROVEEDOR:='''';',
'    end if;',
'',
'',
'else',
'        :P730_COD_PROVEEDOR:='''';',
'end if;'))
,p_attribute_02=>'P730_COD_ORIGEN,P730_COD_ARTICULO_OT'
,p_attribute_03=>'P730_COD_PROVEEDOR'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279553864811777360)
,p_event_id=>wwv_flow_imp.id(279551825158777359)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_PARAM_ARTI''); ',
'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_PARAM_OBRA''); ',
'',
'apex_collection.add_member(',
'                    p_collection_name => ''VT_PARAM_ARTI'',',
'                    p_c001            => :P730_COD_ARTICULO_OT,',
'                    p_c002            => ''AGREGAR'');',
'',
'',
'apex_collection.add_member(',
'                    p_collection_name => ''VT_PARAM_OBRA'',',
'                    p_c001            => :P730_COD_ORIGEN,',
'                    p_c002            => :P730_COD_MARCA,',
'                    p_c003            => :P730_COD_ARTICULO_OT);'))
,p_attribute_02=>'P730_COD_ARTICULO_OT,P730_COD_ORIGEN,P730_COD_MARCA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279554313809777360)
,p_event_id=>wwv_flow_imp.id(279551825158777359)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'vorigen varchar2(200);',
'begin',
'if :P730_COD_PROVEEDOR is not null then',
'begin',
'select ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ), ind_servicio_tecnico',
'into :P730_NOM_PROVEEDOR, VORIGEN',
'from cm_proveedores c, personas p',
'where c.cod_empresa   = :P_COD_EMPRESA',
'and c.cod_proveedor = :P730_COD_PROVEEDOR',
'and c.cod_persona   = p.cod_persona',
'AND NVL(C.ESTADO,''A'')NOT IN (''I'')',
'and nvl(c.estado   ,''S'') NOT IN (''I'',''N'') ',
'and ind_servicio_tecnico is not null;',
'exception',
'when no_data_found then',
':P0_MENSAJE_VALIDACION  := ''No existe el codigo de Proveedor'';',
':P730_NOM_PROVEEDOR :=null;',
'return;',
'',
'end;',
'else',
':P730_NOM_PROVEEDOR :=null;',
'end if;',
'if :P730_COD_ORIGEN in( ''1'' ,''3'',''20'',''9'',''32'')',
'and :APP_USER not in (''GESTIONST'')  then  ',
'if VORIGEN NOT IN(''STNGO'')  then ',
':P0_MENSAJE_VALIDACION := ''No se puede asignar el codigo del proveedor para el origen seleccionado'';',
'RETURN;',
'end if;',
'end if;	',
'',
'',
':P730_TOT_MOBRA := 0;',
'',
'if :P730_COD_PROVEEDOR is not null then',
'if :P730_COD_ORIGEN in (''1'',''3'',''24'',''11'',''29'',''20'',''9'',''36'') and ',
'nvl(:P730_TOT_MOBRA,0)=0 and :P730_NRO_COMPROBANTE is null then ',
'',
'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_MANO_OBRA''); ',
'',
'inv.caordtra_370.pr_agrega_mano_obra(p_cod_empresa             => :P_COD_EMPRESA,',
'p_cod_origen =>  :P730_COD_ORIGEN,',
'p_cod_cliente  =>  :P730_COD_CLIENTE,',
'p_cod_articulo => :P730_COD_ARTICULO_OT,',
'p_tot_mobra => :P730_TOT_MOBRA,',
'p_fec_comprobante  =>  :P730_FEC_COMPROBANTE,',
'p_ind_garantia  => :P730_GARANTIA,',
'p_rubro_mo => :P730_RUBRO_MO,',
'p_cod_moneda_base =>  :P730_COD_MONEDA_BASE,',
'p_porc_iva =>  :P730_PORC_IVA,',
'p_cod_proveedor  => :P730_COD_PROVEEDOR,',
'p_fec_aprobacion => :P730_FEC_APROBACION,',
'p_fec_rechazo =>  :P730_FEC_RECHAZO,',
'p_fec_cierre =>  :P730_FEC_CIERRE,',
'p_fecha_estado_complicado => :P730_FECHA_ESTADO_COMPLICADO,',
'p_fec_pendiente           => :P730_FEC_PENDIENTE,',
'p_per_reclamo =>  :P730_PER_RECLAMO,',
'p_cod_forma               =>  :P730_COD_FORMA,',
'p_cod_usuario             =>  :APP_USER,',
'p_ind_reclamo             => :P730_IND_RECLAMO,',
'p_nro_comprobante         =>  :P730_NRO_COMPROBANTE);  ',
'',
'inv.caordtra_370.pr_agregar_mo_flete(p_cod_origen       => :P730_COD_ORIGEN,',
'p_ind_zona        =>  :P730_IND_ZONA,',
'p_cod_empresa     => :P_COD_EMPRESA,',
'p_rubro_mo        =>  :P730_RUBRO_MO,',
'p_cod_moneda_base => :P730_COD_MONEDA_BASE,',
'p_porc_iva        =>  :P730_PORC_IVA,',
'p_monto_venta     => :P730_MONTO_VENTA,',
'p_tot_mobra       => :P730_TOT_MOBRA,',
'p_cod_proveedor   => :P730_COD_PROVEEDOR);',
'end if;',
'end if;',
'',
'if :P730_COD_PROVEEDOR is not null then',
'if :P730_COD_ORIGEN in (''27'') and ',
'nvl(:P730_TOT_MOBRA,0)=0 and :P730_NRO_COMPROBANTE is null then ',
'',
'inv.caordtra_370.pr_agrega_mo_sta(p_cod_empresa              => :P_COD_EMPRESA,',
'       p_cod_origen              => :P730_COD_ORIGEN,',
'       p_cod_cliente             =>  :P730_COD_CLIENTE,',
'       p_cod_articulo            =>  :P730_COD_ARTICULO_OT,',
'       p_tot_mobra                => :P730_TOT_MOBRA,',
'       p_fec_comprobante =>  :P730_FEC_COMPROBANTE,',
'       p_ind_garantia => :P730_GARANTIA,',
'       p_rubro_mo  =>  :P730_RUBRO_MO,',
'       p_cod_moneda_base  => :P730_COD_MONEDA_BASE,',
'       p_porc_iva =>  :P730_PORC_IVA,',
'       p_cod_proveedor  => :P730_COD_PROVEEDOR,',
'       p_fecha_modificado_garantia => :P730_FECHA_MODIFICADO_GARANTIA,',
'       p_fec_aprobacion => :P730_FEC_APROBACION,',
'       p_fec_rechazo =>  :P730_FEC_RECHAZO,',
'       p_fec_cierre =>  :P730_FEC_CIERRE,',
'       p_fecha_estado_complicado   => :P730_FECHA_ESTADO_COMPLICADO,',
'       p_fec_pendiente  => :P730_FEC_PENDIENTE,',
'       p_per_reclamo =>  :P730_PER_RECLAMO,',
'       p_cod_forma =>  :P730_COD_FORMA,',
'       p_cod_usuario =>  :APP_USER,',
'       p_ind_reclamo => :P730_IND_RECLAMO,',
'       p_nro_comprobante =>  :P730_NRO_COMPROBANTE);',
'       null;',
'',
'end if;',
'end if;',
'begin',
'     select SUM(to_number(c004))',
'     INTO :P730_TOT_MOBRA',
'      from apex_collections',
'     where collection_name = ''VT_MANO_OBRA'';',
'     exception ',
'    when others then ',
'        null;',
'    end;',
'end;  '))
,p_attribute_02=>'P730_COD_PROVEEDOR,P_COD_EMPRESA,P730_COD_ORIGEN,P730_TOT_MOBRA,P730_NRO_COMPROBANTE,P730_COD_CLIENTE,P730_COD_ARTICULO_OT_1,P730_FEC_COMPROBANTE,P730_GARANT,P730_RUBRO_MO,P730_COD_MONEDA_BASE,P730_PORC_IVA,P730_FEC_APROBACION,P730_FEC_RECHAZO,P730_F'
||'EC_CIERRE,P730_COD_USUARIO_RENDICION,P730_FEC_PENDIENTE,P730_PER_RECLAMO,P730_COD_FORMA,P730_IND_RECLAMO,P730_IND_ZONA,P730_MONTO_VENTA,P730_FECHA_ABANDONADO'
,p_attribute_03=>'P730_NOM_PROVEEDOR,P0_MENSAJE_VALIDACION,P730_TOT_MOBRA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279554807753777360)
,p_event_id=>wwv_flow_imp.id(279551825158777359)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(610989532014552622)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279555379629777360)
,p_event_id=>wwv_flow_imp.id(279551825158777359)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
' SELECT cod_linea, cod_categoria, COD_MARCA',
' into :P730_LINEA_ARTICULOS, :P730_CATEGORIA_ARTICULO, :P730_MARCA_PRO',
'   FROM st_articulos',
'  WHERE cod_empresa = :P_COD_EMPRESA',
'    AND cod_articulo = :P730_COD_ARTICULO_OT;',
'EXCEPTION ',
'    WHEN OTHERS THEN ',
'        :P730_LINEA_ARTICULOS :=  null;',
'        :P730_CATEGORIA_ARTICULO := null;',
'END;'))
,p_attribute_02=>'P730_COD_ARTICULO_OT,P_COD_EMPRESA'
,p_attribute_03=>'P730_LINEA_ARTICULOS,P730_CATEGORIA_ARTICULO,P730_MARCA_PRO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279555805537777361)
,p_event_id=>wwv_flow_imp.id(279551825158777359)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_COD_ARTICULO_OT_1'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P730_COD_ARTICULO_OT'
,p_attribute_07=>'P730_COD_ARTICULO_OT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279556393132777361)
,p_event_id=>wwv_flow_imp.id(279551825158777359)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P730_COD_ARTICULO_OT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279556848636777361)
,p_event_id=>wwv_flow_imp.id(279551825158777359)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.create_or_truncate_collection(p_collection_name => ''ARTICULO'');',
'',
'apex_collection.add_member(p_collection_name => ''ARTICULO'',',
'                               p_c001            => :P730_COD_ARTICULO_OT,',
'                               p_c002            => :P730_NRO_COMPROBANTE,',
'                               p_c003            => :P730_SER_COMPROBANTE,',
'                               p_c004            => :P730_LINEA_ARTICULOS,',
'                               p_c005            => :P730_CATEGORIA_ARTICULO);'))
,p_attribute_02=>'P730_COD_ARTICULO_OT,P730_NRO_COMPROBANTE,P730_SER_COMPROBANTE,P730_LINEA_ARTICULOS,P730_CATEGORIA_ARTICULO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279557349749777361)
,p_event_id=>wwv_flow_imp.id(279551825158777359)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT  COD_PROVEEDOR',
'    INTO :P730_COD_PROVEEDOR',
'    FROM VT_ORDENES_TRABAJO C',
'   WHERE COD_EMPRESA = :P_COD_EMPRESA',
'     AND C.TIP_COMPROBANTE = :P730_TIP_COMPROBANTE',
'     AND C.GARANTIA_OT = :P730_NRO_GARANTIA',
'     ---AND NVL(C.FECHA_RETIRADO, C.FEC_ENTREGA) > SYSDATE - 31',
'     and c.FEC_COMPROBANTE > ''01/04/2023''',
'     and (   (nvl(ind_garantia,''N'')=''S'' AND  (C.FECHA_RETIRADO is not null and C.FECHA_RETIRADO>SYSDATE-31 ))',
'             OR (nvl(ind_garantia,''N'')=''N'' AND (C.FEC_ENTREGA is not null and C.FEC_ENTREGA >SYSDATE-31 ))',
'             )',
'     AND COD_ORIGEN IN (''1'', ''3'')',
'     AND ROWNUM = 1;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    NULL;',
'END;',
''))
,p_attribute_02=>'P730_NRO_GARANTIA,P730_TIP_COMPROBANTE'
,p_attribute_03=>'P730_COD_PROVEEDOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P730_NRO_GARANTIA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279557746967777361)
,p_name=>unistr('Refresca regi\00F3n Problemas')
,p_event_sequence=>320
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(610607678602109845)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279558267601777361)
,p_event_id=>wwv_flow_imp.id(279557746967777361)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(610607678602109845)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279558776356777362)
,p_event_id=>wwv_flow_imp.id(279557746967777361)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(414061354607552731)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279559174576777362)
,p_name=>unistr('Refresca regi\00F3n Problemas_1')
,p_event_sequence=>330
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(414061354607552731)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279559624018777362)
,p_event_id=>wwv_flow_imp.id(279559174576777362)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(610607678602109845)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279560147866777362)
,p_event_id=>wwv_flow_imp.id(279559174576777362)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(414061354607552731)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279560501783777362)
,p_name=>'Validaciones presupuestos'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P730_PRESUPUESTO'
,p_condition_element=>'P730_PRESUPUESTO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279561076628777362)
,p_event_id=>wwv_flow_imp.id(279560501783777362)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:P730_PRESUPUESTO,''N'') = ''S'' then',
'  ',
'      :P730_FEC_ESTADO   := sysdate;',
'   	  :P730_VERIFICADO_POR    := :APP_USER;',
' 	  :P730_FEC_VERIFICADO  := sysdate;',
' 	  :P730_HORA_VERIFICACION := to_char(sysdate,''HH24:MI:SS'');',
'       :P730_ESTADO_PRESU := ''V'';',
'       :P730_ESTADO_AUX := ''V'';',
'       else',
'',
'   :P730_IND_CORREO_PRESU := ''N'';',
'   :P730_ESTADO_PRESU := ''RI'';',
' ',
'end if;',
'',
'',
''))
,p_attribute_02=>'P730_PRESUPUESTO'
,p_attribute_03=>'P730_FEC_ESTADO,P730_VERIFICADO_POR,P730_FEC_VERIFICADO,P730_HORA_VERIFICACION,P730_IND_CORREO_PRESU,P730_ESTADO_PRESU,P730_ESTADO_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279561554823777363)
,p_event_id=>wwv_flow_imp.id(279560501783777362)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(279281322264777231)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279562088503777363)
,p_event_id=>wwv_flow_imp.id(279560501783777362)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_VERIFICADO_POR, P730_FEC_VERIFICADO, P730_HORA_VERIFICACION, P730_FEC_MODIF_VERIFICADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279562563195777363)
,p_event_id=>wwv_flow_imp.id(279560501783777362)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(279281322264777231)
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279563087915777363)
,p_event_id=>wwv_flow_imp.id(279560501783777362)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P730_GARANTIA = ''S'' THEN ',
'    :P730_ESTADO_PRESU := ''RI'';',
'END IF;'))
,p_attribute_02=>'P730_GARANTIA'
,p_attribute_03=>'P730_ESTADO_PRESU'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279563409455777363)
,p_name=>'Validaciones delivery'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P730_IND_DELIVERY'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279563982486777363)
,p_event_id=>wwv_flow_imp.id(279563409455777363)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:P730_PRESUPUESTO,''N'') = ''S'' then',
'  :P730_ESTADO_PRESU := ''AP'';',
'  :P730_FEC_ESTADO   := sysdate;',
'else',
'  :P730_ESTADO_PRESU := null;',
'  :P730_FEC_ESTADO   := null;',
'end if;'))
,p_attribute_02=>'P730_PRESUPUESTO'
,p_attribute_03=>'P730_FEC_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279564340485777363)
,p_name=>'Valida retirado'
,p_event_sequence=>360
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P730_IND_RETIRADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279564806220777364)
,p_event_id=>wwv_flow_imp.id(279564340485777363)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF NVL(:P730_GARANTIA,''N'')<>''S'' and  NVL(:P730_IND_RECLAMO,''N'')<>''S'' ',
'  AND :P730_COD_ORIGEN in (''20'',''1'',''3'',''9'',''42'') ',
'	and TRUNC(nvl(:P730_TOTAL_OT,0))>0 THEN',
'	  :P0_MENSAJE_VALIDACION := ''Debe estar tildado en garantia para poder entregar la orden.'';',
'	    :P730_RETIRADO_POR    := null;',
' 	    :P730_FECHA_RETIRADO  := null; 	     ',
'        :P730_HORA_RETIRADO  := null;',
'        :P730_IND_RETIRADO:=''N''; ',
'END IF;',
'',
'IF NVL(:P730_CERRADO,''N'')<>''S'' THEN',
'	  :P0_MENSAJE_VALIDACION := ''Debe estar cerrada la orden para poder entregar .'';',
'	  :P730_RETIRADO_POR    := null;',
' 	    :P730_FECHA_RETIRADO  := null; 	     ',
'        :P730_HORA_RETIRADO  := null;',
'        :P730_IND_RETIRADO:=''N''; ',
'END IF;',
'',
'if nvl(:P730_IND_RETIRADO,''N'')=''S'' then',
'	:P730_FEC_RETIRADO:=to_char(sysdate,''dd/mm/yyyy'');',
'	 :P730_RETIRADO_POR := :app_user;',
' 	  :P730_FECHA_RETIRADO := sysdate; 	     ',
'    :P730_HORA_RETIRADO  := to_char(sysdate,''HH24:MI:SS'');',
'     :P730_ESTADO_PRESU := ''E'';',
' ',
'     if nvl(:P730_TOT_REPUESTOS,0)=0  	and nvl(:P730_COD_ORIGEN,''2'') in(''1'',''9'',''11'',''15'',''18'',''20'',''3'',''38'',''23'',''40'') then',
'      :P730_IND_ENTREGA := ''S'';',
'      :P730_FEC_ENTREGA:= sysdate;    ',
'    end if;',
'    ',
'else',
'      :P730_RETIRADO_POR   := null;',
' 	  :P730_FECHA_RETIRADO  := null; 	     ',
'      :P730_HORA_RETIRADO := null;',
'      :P730_ESTADO_PRESU :=''C'';',
'    	',
'     if nvl(:P730_TOT_REPUESTOS,0)=0  	and nvl(:P730_COD_ORIGEN,''2'')in (''20'',''1'',''3'') then',
'      :P730_IND_ENTREGA :=  null; ',
'      :P730_FEC_ENTREGA :=  null; ',
'    end if;',
'end if;	',
''))
,p_attribute_02=>'P730_GARANT,P730_IND_RECLAMO,P730_COD_ORIGEN,P730_TOTAL_OT,P730_CERRADO,P730_IND_RETIRADO'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P730_RETIRADO_POR,P730_FECHA_RETIRADO,P730_HORA_RETIRADO,P730_IND_RETIRADO,P730_FEC_RETIRADO,P730_IND_ENTREGA,P730_FEC_ENTREGA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279565262336777364)
,p_name=>'Refresca detalles'
,p_event_sequence=>370
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(610989532014552622)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279565717063777364)
,p_event_id=>wwv_flow_imp.id(279565262336777364)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(610989532014552622)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279566160124777364)
,p_name=>'Validaciones de proveedor'
,p_event_sequence=>380
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P730_COD_PROVEEDOR'
,p_condition_element=>'P730_COD_PROVEEDOR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279566638194777364)
,p_event_id=>wwv_flow_imp.id(279566160124777364)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'vorigen varchar2(200);',
'begin',
'if :P730_COD_PROVEEDOR is not null then',
'    begin',
'            select ltrim( rtrim( nvl( p.nombre, p.nomb_fantasia ) ) ), ind_servicio_tecnico',
'            into :P730_NOM_PROVEEDOR, VORIGEN',
'            from cm_proveedores c, personas p',
'            where c.cod_empresa   = :P_COD_EMPRESA',
'            and c.cod_proveedor = :P730_COD_PROVEEDOR',
'            and c.cod_persona   = p.cod_persona',
'            AND NVL(C.ESTADO,''A'')NOT IN (''I'')',
'            and nvl(c.estado   ,''S'') NOT IN (''I'',''N'') ',
'            and ind_servicio_tecnico is not null;',
'    exception',
'    when no_data_found then',
'    :P0_MENSAJE_VALIDACION  := ''No existe el codigo de Proveedor'';',
'    :P730_NOM_PROVEEDOR :=null;',
'    raise_application_error(-20000, ''No existe el codigo de Proveedor'' );',
'return;',
'',
'end;',
'else',
':P730_NOM_PROVEEDOR :=null;',
'end if;',
'if :P730_COD_ORIGEN in( ''1'' ,''3'',''20'',''9'',''32'')',
'and :APP_USER not in (''GESTIONST'')  then  ',
'if VORIGEN NOT IN(''STNGO'')  then ',
':P0_MENSAJE_VALIDACION := ''No se puede asignar el codigo del proveedor para el origen seleccionado'';',
'RETURN;',
'end if;',
'end if;	',
'',
'if :P730_COD_PROVEEDOR is not null then',
'if :P730_COD_ORIGEN in (''1'',''3'',''24'',''11'',''29'',''20'',''9'',''36'') and ',
'nvl(:P730_TOT_MOBRA,0)=0 and :P730_NRO_COMPROBANTE is null then ',
'',
'inv.caordtra.pr_agrega_mano_obra(p_cod_empresa => :P_COD_EMPRESA,',
'p_cod_origen =>  :P730_COD_ORIGEN,',
'p_cod_cliente  =>  :P730_COD_CLIENTE,',
'p_cod_articulo =>  :P730_COD_ARTICULO_OT,',
'p_tot_mobra => :P730_TOT_MOBRA,',
'p_fec_comprobante  =>  :P730_FEC_COMPROBANTE,',
'p_ind_garantia  => :P730_GARANTIA,',
'p_rubro_mo => :P730_RUBRO_MO,',
'p_cod_moneda_base =>  :P730_COD_MONEDA_BASE,',
'p_porc_iva =>  :P730_PORC_IVA,',
'p_cod_proveedor         => :P730_COD_PROVEEDOR,',
'p_fec_aprobacion        => :P730_FEC_APROBACION,',
'p_fec_rechazo            =>  :P730_FEC_RECHAZO,',
'p_fec_cierre              =>  :P730_FEC_CIERRE,',
'p_fecha_estado_complicado => :P730_FECHA_ESTADO_COMPLICADO,',
'p_fec_pendiente           => :P730_FEC_PENDIENTE,',
'p_per_reclamo             =>  :P730_PER_RECLAMO,',
'p_cod_forma               =>  :P730_COD_FORMA,',
'p_cod_usuario             =>  :APP_USER,',
'p_ind_reclamo             => :P730_IND_RECLAMO,',
'p_nro_comprobante         =>  :P730_NRO_COMPROBANTE);  ',
'',
'inv.caordtra.pr_agregar_mo_flete(p_cod_origen       => :P730_COD_ORIGEN,',
'p_ind_zona        =>  :P730_IND_ZONA,',
'p_cod_empresa     => :P_COD_EMPRESA,',
'p_rubro_mo        =>  :P730_RUBRO_MO,',
'p_cod_moneda_base => :P730_COD_MONEDA_BASE,',
'p_porc_iva        =>  :P730_PORC_IVA,',
'p_monto_venta     => :P730_MONTO_VENTA,',
'p_tot_mobra       => :P730_TOT_MOBRA,',
'p_cod_proveedor   => :P730_COD_PROVEEDOR);',
'end if;',
'end if;',
'',
'if :P730_COD_PROVEEDOR is not null then',
'if :P730_COD_ORIGEN in (''27'') and ',
'nvl(:P730_TOT_MOBRA,0)=0 and :P730_NRO_COMPROBANTE is null then ',
'',
'inv.caordtra.pr_agrega_mo_sta(p_cod_empresa=> :P_COD_EMPRESA,',
'       p_cod_origen   => :P730_COD_ORIGEN,',
'       p_cod_cliente  =>  :P730_COD_CLIENTE,',
'       p_cod_articulo  =>  :P730_COD_ARTICULO_OT,',
'       p_tot_mobra=> :P730_TOT_MOBRA,',
'       p_fec_comprobante=>  :P730_FEC_COMPROBANTE,',
'       p_ind_garantia=> :P730_GARANTIA,',
'       p_rubro_mo=>  :P730_RUBRO_MO,',
'       p_cod_moneda_base=> :P730_COD_MONEDA_BASE,',
'       p_porc_iva=>  :P730_PORC_IVA,',
'       p_cod_proveedor=> :P730_COD_PROVEEDOR,',
'       p_fecha_modificado_garantia => :P730_FECHA_MODIFICADO_GARANTIA,',
'       p_fec_aprobacion=> :P730_FEC_APROBACION,',
'       p_fec_rechazo=>  :P730_FEC_RECHAZO,',
'       p_fec_cierre=>  :P730_FEC_CIERRE,',
'       p_fecha_estado_complicado   => :P730_FECHA_ESTADO_COMPLICADO,',
'       p_fec_pendiente=> :P730_FEC_PENDIENTE,',
'       p_per_reclamo=>  :P730_PER_RECLAMO,',
'       p_cod_forma=>  :P730_COD_FORMA,',
'       p_cod_usuario=>  :APP_USER,',
'       p_ind_reclamo=> :P730_IND_RECLAMO,',
'       p_nro_comprobante  =>  :P730_NRO_COMPROBANTE);',
'       null;',
'end if;',
'end if;',
'end;  '))
,p_attribute_02=>'P730_COD_PROVEEDOR,P_COD_EMPRESA,P730_COD_ORIGEN,P730_TOT_MOBRA,P730_NRO_COMPROBANTE,P730_COD_CLIENTE,P730_COD_ARTICULO_OT_1,P730_FEC_COMPROBANTE,P730_GARANT,P730_RUBRO_MO,P730_COD_MONEDA_BASE,P730_PORC_IVA,P730_FEC_APROBACION,P730_FEC_RECHAZO,P730_F'
||'EC_CIERRE,P730_COD_USUARIO_RENDICION,P730_FEC_PENDIENTE,P730_PER_RECLAMO,P730_COD_FORMA,P730_IND_RECLAMO,P730_IND_ZONA,P730_MONTO_VENTA,P730_FECHA_ABANDONADO'
,p_attribute_03=>'P730_NOM_PROVEEDOR,P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279567014807777364)
,p_name=>'Carga de pedidos'
,p_event_sequence=>390
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(279281761090777232)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279567564434777365)
,p_event_id=>wwv_flow_imp.id(279567014807777364)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.caordtra_370.pr_carga_pedidos(p_cod_empresa     => :P_COD_EMPRESA,',
'                               p_tip_comprobante => :P730_TIP_COMPROBANTE,',
'                               p_ser_comprobante => :P730_SER_COMPROBANTE,',
'                               p_nro_comprobante => :P730_NRO_COMPROBANTE,',
'                               p_cod_origen      => :P730_COD_ORIGEN,',
'                               p_mensaje_error   => :P0_MENSAJE_VALIDACION);'))
,p_attribute_02=>'P_COD_EMPRESA,P730_TIP_COMPROBANTE,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE,P730_COD_ORIGEN'
,p_attribute_03=>'P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279568087360777365)
,p_event_id=>wwv_flow_imp.id(279567014807777364)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-------------------- Repuestos solicitados',
'',
' declare ',
'        cursor reg is',
'                 select d.cod_articulo, ',
'                  a.descripcion desc_articulo,',
'                  sum(  nvl( d.cantidad_confirmada, 0)  ) cantidad,',
'                  sum(  nvl( d.cantidad_ot, 0)  ) cantidad_ot,  ',
'                  sum(  nvl( d.cantidad, 0)  ) cantidad_pedida,  ',
'                  NVL(MAX(D.verificado),''N'') VERIFICADO ,',
'                  c.NRO_comprobante NRO, ',
'                  c.ser_comprobante SER ,',
'                  c.cod_sucursal_env SUC',
'             from CA_PEDIDO_REPUESTO_CAB c, ',
'                  CA_PEDIDO_REPUESTO_det d, ',
'                  st_articulos a',
'            where c.cod_empresa = :P_COD_EMPRESA',
'              and c.tip_comprobante_ref = ''ORT''',
'              and c.ser_comprobante_ref = :P730_PARAM_SER_OT ',
'              and c.nro_comprobante_ref = :P730_PARAM_NRO_OT ',
'              and c.cod_empresa = d.cod_empresa',
'              and nvl( c.tip_comprobante, ''DFL'' ) = d.TIP_comprobante',
'              and nvl( c.ser_comprobante, ''D'' ) = d.SER_comprobante',
'              and c.nro_comprobante = d.NRO_comprobante',
'              and a.cod_empresa = d.cod_empresa',
'              and a.cod_articulo = d.cod_articulo',
'              and NVL(:P730_COD_ORIGEN,''1'') NOT IN (''2'',''13'')           ',
'              group by d.cod_articulo, ',
'                       a.descripcion ,',
'                       c.NRO_comprobante, ',
'                       c.ser_comprobante,',
'                       c.cod_sucursal_env',
'              order by a.descripcion;',
'    VIND_RECEP CHAR(1);',
'    VIND_RECH CHAR(1);',
' BEGIN',
'',
'                        if not apex_collection.collection_exists(''VT_ORDENES_REPUESTOS_PEDIDOS'') then ',
'                            apex_collection.create_collection(''VT_ORDENES_REPUESTOS_PEDIDOS'');',
'                        else',
'                            apex_collection.truncate_collection(''VT_ORDENES_REPUESTOS_PEDIDOS'');',
'                        end if;',
'',
'                    FOR R IN REG LOOP ',
'                        if nvl(R.cantidad_ot,0)>0 then',
'                            VIND_RECEP := ''S'';',
'                            VIND_RECH := ''N'';',
'                        else',
'                            VIND_RECEP := ''N'';',
'                            VIND_RECH:= ''N'';',
'                        end if;',
'                            ',
'                        IF R.cantidad = 0 AND R.verificado = ''S'' AND R.CANTIDAD_OT = 0 THEN       				',
'                                VIND_RECH := ''S'';',
'                        END IF;',
'',
'',
'                        apex_collection.add_member(',
'                                            p_collection_name => ''VT_ORDENES_REPUESTOS_PEDIDOS'',',
'                                            p_c001 => R.cod_articulo,',
'                                            p_c002 => R.desc_articulo ,',
'                                            p_c003 => R.cantidad ,',
'                                            p_c004 => R.cantidad_pedida,',
'                                            p_c005 => R.cantidad_ot ,',
'                                            P_C006  => ''S'',',
'                                            p_c007 => R.ser,',
'                                            p_c008 => R.NrO ,',
'                                            p_c009 => VIND_RECEP,',
'                                            p_c010 => VIND_RECH,',
'                                            p_c011 => R.SUC',
'                                            );',
'             ',
'                    END LOOP;',
'                EXCEPTION',
'                    WHEN OTHERS THEN',
'                        NULL;',
' END;'))
,p_attribute_02=>'P730_COD_ORIGEN,P730_COD_USUARIO_SIN_RP P730_PARAM_SER_OT,P730_PARAM_NRO_OT'
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
 p_id=>wwv_flow_imp.id(279568576719777365)
,p_event_id=>wwv_flow_imp.id(279567014807777364)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(610992751991552654)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279569033987777365)
,p_event_id=>wwv_flow_imp.id(279567014807777364)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(610992751991552654)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279569418430777365)
,p_name=>'Procedimientos devueltos'
,p_event_sequence=>400
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(279282158979777232)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279569919997777366)
,p_event_id=>wwv_flow_imp.id(279569418430777365)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P730_MUESTRA_REPORTE := ''S'' ;',
'inv.caordtra_370.pr_buscar_articulos_devueltos(p_cod_empresa  => :P_COD_EMPRESA,',
'                                        p_tip_comprobante => :P730_TIP_COMPROBANTE,',
'                                        p_ser_comprobante => :P730_SER_COMPROBANTE,',
'                                        p_nro_comprobante => :P730_NRO_COMPROBANTE,',
'                                        p_cod_origen      => :P730_COD_ORIGEN,',
'                                        p_mensaje_error   => :P0_MENSAJE_VALIDACION,',
'                                        p_cod_proveedor   => :P730_COD_PROVEEDOR,',
'                                        p_fec_comprobante => :P730_FEC_COMPROBANTE,',
'                                        p_tot_repuestos   => :P730_TOT_REPUESTOS,',
'                                        p_cerrado         => :P730_CERRADO,',
'                                        p_total_ot        => :P730_TOTAL_OT,',
'                                        p_tot_mobra       => :P730_TOT_MOBRA,',
'                                        p_senia           => :P730_SENIA,',
'                                        p_ind_adelanto    => :P730_IND_ADELANTO,',
'                                        p_monto_adelanto  => :P730_MONTO_ADELANTO);'))
,p_attribute_02=>'P_COD_EMPRESA,P730_TIP_COMPROBANTE,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE,P730_COD_ORIGEN,P730_COD_PROVEEDOR,P730_FEC_COMPROBANTE,P730_CERRADO,P730_TOTAL_OT,P730_TOT_MOBRA,P730_SENIA,P730_IND_ADELANTO,P730_MONTO_ADELANTO'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P730_TOTAL_OT,P730_MUESTRA_REPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279570407402777366)
,p_event_id=>wwv_flow_imp.id(279569418430777365)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(396643690513791352)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279570865733777366)
,p_name=>unistr('Rechazar art\00EDculos')
,p_event_sequence=>410
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(279358763161777274)
,p_condition_element=>'P730_COD_MOTIVO_RECHAZO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279571378204777366)
,p_event_id=>wwv_flow_imp.id(279570865733777366)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  VMENSAJE VARCHAR2(3200);',
'  VSER_PER VARCHAR2(30);',
'  VNRO_PER NUMBER;',
'  VCOD_ARTICULO VARCHAR2(3200);',
'  VSER_COMPROBANTE VARCHAR2(30);',
'  VNRO_COMPROBANTE VARCHAR2(30);',
'  VCOD_SUC_ENV VARCHAR2(30);',
'  V_CANTIDAD VARCHAR2(30);',
'  V_CANTIDAD_PEDIDA VARCHAR2(30);',
'  V_CANTIDAD_OT VARCHAR2(30);',
'BEGIN',
'    SELECT C001 AS COD_ART,',
'           C007 AS SER_PER,',
'           C008 AS NRO_PER,',
'           C011 AS SUC,',
'           C003 AS CANTIDAD,',
'           C004 AS CANTIDAD_PEDIDA,',
'           C005 AS CANTIDAD_OT',
'      INTO VCOD_ARTICULO,',
'           VSER_COMPROBANTE,',
'           VNRO_COMPROBANTE,',
'           VCOD_SUC_ENV,',
'           V_CANTIDAD,',
'           V_CANTIDAD_PEDIDA,',
'           V_CANTIDAD_OT',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''VT_ORDENES_REPUESTOS_PEDIDOS''',
'       AND SEQ_ID = TO_NUMBER(:P730_DEL_ID_RS);',
'  ',
'    SACA_REPUESTOS_OT(:P_COD_EMPRESA,',
'                      ''PER'',',
'                      VSER_COMPROBANTE,',
'                      VNRO_COMPROBANTE,',
'                      VCOD_ARTICULO,',
'                      :P730_COD_MOTIVO_RECHAZO,',
'                      :P730_COMENTARIO_RECHAZADO);',
'END;',
''))
,p_attribute_02=>'P730_DEL_ID_RS,P_COD_EMPRESA,P730_COD_MOTIVO_RECHAZO,P730_COMENTARIO_RECHAZADO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279571810404777366)
,p_event_id=>wwv_flow_imp.id(279570865733777366)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-------------------- Repuestos solicitados',
'',
' declare ',
'        cursor reg is',
'                 select d.cod_articulo, ',
'                  a.descripcion desc_articulo,',
'                  sum(  nvl( d.cantidad_confirmada, 0)  ) cantidad,',
'                  sum(  nvl( d.cantidad_ot, 0)  ) cantidad_ot,  ',
'                  sum(  nvl( d.cantidad, 0)  ) cantidad_pedida,  ',
'                  NVL(MAX(D.verificado),''N'') VERIFICADO ,',
'                  c.NRO_comprobante NRO, ',
'                  c.ser_comprobante SER ,',
'                  c.cod_sucursal_env SUC',
'             from CA_PEDIDO_REPUESTO_CAB c, ',
'                  CA_PEDIDO_REPUESTO_det d, ',
'                  st_articulos a',
'            where c.cod_empresa = :P_COD_EMPRESA',
'              and c.tip_comprobante_ref = ''ORT''',
'              and c.ser_comprobante_ref = :P730_PARAM_SER_OT ',
'              and c.nro_comprobante_ref = :P730_PARAM_NRO_OT ',
'              and c.cod_empresa = d.cod_empresa',
'              and nvl( c.tip_comprobante, ''DFL'' ) = d.TIP_comprobante',
'              and nvl( c.ser_comprobante, ''D'' ) = d.SER_comprobante',
'              and c.nro_comprobante = d.NRO_comprobante',
'              and a.cod_empresa = d.cod_empresa',
'              and a.cod_articulo = d.cod_articulo',
'              and NVL(:P730_COD_ORIGEN,''1'') NOT IN (''2'',''13'')           ',
'              group by d.cod_articulo, ',
'                       a.descripcion ,',
'                       c.NRO_comprobante, ',
'                       c.ser_comprobante,',
'                       c.cod_sucursal_env',
'              order by a.descripcion;',
'    VIND_RECEP CHAR(1);',
'    VIND_RECH CHAR(1);',
' BEGIN',
'',
'                        if not apex_collection.collection_exists(''VT_ORDENES_REPUESTOS_PEDIDOS'') then ',
'                            apex_collection.create_collection(''VT_ORDENES_REPUESTOS_PEDIDOS'');',
'                        else',
'                            apex_collection.truncate_collection(''VT_ORDENES_REPUESTOS_PEDIDOS'');',
'                        end if;',
'',
'                    FOR R IN REG LOOP ',
'                        if nvl(R.cantidad_ot,0)>0 then',
'                            VIND_RECEP := ''S'';',
'                            VIND_RECH := ''N'';',
'                        else',
'                            VIND_RECEP := ''N'';',
'                            VIND_RECH:= ''N'';',
'                        end if;',
'                            ',
'                        IF R.cantidad = 0 AND R.verificado = ''S'' AND R.CANTIDAD_OT = 0 THEN       				',
'                                VIND_RECH := ''S'';',
'                        END IF;',
'',
'',
'                        apex_collection.add_member(',
'                                            p_collection_name => ''VT_ORDENES_REPUESTOS_PEDIDOS'',',
'                                            p_c001 => R.cod_articulo,',
'                                            p_c002 => R.desc_articulo ,',
'                                            p_c003 => R.cantidad ,',
'                                            p_c004 => R.cantidad_pedida,',
'                                            p_c005 => R.cantidad_ot ,',
'                                            P_C006  => ''S'',',
'                                            p_c007 => R.ser,',
'                                            p_c008 => R.NrO ,',
'                                            p_c009 => VIND_RECEP,',
'                                            p_c010 => VIND_RECH,',
'                                            p_c011 => R.SUC',
'                                            );',
'             ',
'                    END LOOP;',
'                EXCEPTION',
'                    WHEN OTHERS THEN',
'                        NULL;',
' END;'))
,p_attribute_02=>'P730_COD_ORIGEN,P730_COD_USUARIO_SIN_RP P730_PARAM_SER_OT,P730_PARAM_NRO_OT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279573316893777367)
,p_event_id=>wwv_flow_imp.id(279570865733777366)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.FOS.NOTIFICATIONS'
,p_attribute_01=>'warning'
,p_attribute_02=>'static'
,p_attribute_03=>unistr('Atenci\00F3n')
,p_attribute_04=>'Debe ingresar un motivo para realizar el rechazo'
,p_attribute_07=>'autodismiss:prevent-duplicates:remove-notifications:escape-html:newest-on-top:client-side-substitutions:dismiss-on-click:dismiss-on-button'
,p_attribute_08=>'top-right'
,p_attribute_09=>'Y'
,p_attribute_11=>'4'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279572345780777366)
,p_event_id=>wwv_flow_imp.id(279570865733777366)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(610992751991552654)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279572878932777366)
,p_event_id=>wwv_flow_imp.id(279570865733777366)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(398592184793441842)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279573759465777367)
,p_name=>unistr('Rechazar art\00EDculos_1')
,p_event_sequence=>420
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(279358763161777274)
,p_condition_element=>'P730_COD_MOTIVO_RECHAZO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279574219212777367)
,p_event_id=>wwv_flow_imp.id(279573759465777367)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  VMENSAJE VARCHAR2(3200);',
'  VSER_PER VARCHAR2(30);',
'  VNRO_PER NUMBER;',
'  VCOD_ARTICULO VARCHAR2(3200);',
'  VSER_COMPROBANTE VARCHAR2(30);',
'  VNRO_COMPROBANTE VARCHAR2(30);',
'  VCOD_SUC_ENV VARCHAR2(30);',
'  V_CANTIDAD VARCHAR2(30);',
'  V_CANTIDAD_PEDIDA VARCHAR2(30);',
'  V_CANTIDAD_OT VARCHAR2(30);',
'BEGIN',
'    SELECT C005 AS COD_ART,',
'           C023 AS SER_PER,',
'           C022 AS NRO_PER,',
'           C020 AS SUC,',
'           C010 AS CANTIDAD,',
'           C009 AS CANTIDAD_PEDIDA,',
'           C007 AS CANTIDAD_OT',
'      INTO VCOD_ARTICULO,',
'           VSER_COMPROBANTE,',
'           VNRO_COMPROBANTE,',
'           VCOD_SUC_ENV,',
'           V_CANTIDAD,',
'           V_CANTIDAD_PEDIDA,',
'           V_CANTIDAD_OT',
'      FROM APEX_COLLECTIONS',
'     WHERE COLLECTION_NAME = ''VT_PRODUCTOS''',
'       AND SEQ_ID = TO_NUMBER(:P730_DEL_ID_RS);',
'  ',
'    SACA_REPUESTOS_OT(:P_COD_EMPRESA,',
'                      ''PER'',',
'                      VSER_COMPROBANTE,',
'                      VNRO_COMPROBANTE,',
'                      VCOD_ARTICULO,',
'                      :P730_COD_MOTIVO_RECHAZO,',
'                      :P730_COMENTARIO_RECHAZADO);',
'END;',
''))
,p_attribute_02=>'P730_DEL_ID_RS,P_COD_EMPRESA,P730_COD_MOTIVO_RECHAZO,P730_COMENTARIO_RECHAZADO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279574784785777367)
,p_event_id=>wwv_flow_imp.id(279573759465777367)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.FOS.NOTIFICATIONS'
,p_attribute_01=>'warning'
,p_attribute_02=>'static'
,p_attribute_03=>unistr('Atenci\00F3n')
,p_attribute_04=>'Debe ingresar un motivo para realizar el rechazo'
,p_attribute_07=>'autodismiss:prevent-duplicates:remove-notifications:escape-html:newest-on-top:client-side-substitutions:dismiss-on-click:dismiss-on-button'
,p_attribute_08=>'top-right'
,p_attribute_09=>'Y'
,p_attribute_11=>'4'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279575234336777368)
,p_event_id=>wwv_flow_imp.id(279573759465777367)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.caordtra.pr_obtiene_informaciones(p_tip_comprobante =>  ''ORT'',',
'                                   p_ser_comprobante => :P730_PARAM_SER_OT,',
'                                   p_nro_comprobante => :P730_PARAM_NRO_OT,',
'                                   p_cod_empresa     => ''1'');'))
,p_attribute_02=>'P730_COD_ORIGEN,P730_COD_USUARIO_SIN_RP P730_PARAM_SER_OT,P730_PARAM_NRO_OT,P730_PARAM_SER_OT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279575766678777368)
,p_event_id=>wwv_flow_imp.id(279573759465777367)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(354956920959971562)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279576266766777368)
,p_event_id=>wwv_flow_imp.id(279573759465777367)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(398592184793441842)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279576689761777368)
,p_name=>unistr('Cierra regi\00F3n de Rechazos')
,p_event_sequence=>430
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(279359150647777274)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279577186275777368)
,p_event_id=>wwv_flow_imp.id(279576689761777368)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(610992751991552654)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279577686743777368)
,p_event_id=>wwv_flow_imp.id(279576689761777368)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(398592184793441842)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279578005673777368)
,p_name=>'Finaliza OT'
,p_event_sequence=>440
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(279267661256777225)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279578567893777369)
,p_event_id=>wwv_flow_imp.id(279578005673777368)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Calculos.',
'begin',
' inv.caordtra_370.pr_valida_mano_de_obra(p_cod_empresa => :P_COD_EMPRESA,',
'p_cod_origen => :P730_COD_ORIGEN,',
'p_cod_cliente => :P730_COD_CLIENTE,',
'p_cerrado => :P730_CERRADO,',
'p_ind_reclamo => :P730_IND_RECLAMO,',
'p_tot_mobra => :P730_TOT_MOBRA,',
'p_fec_comprobante => :P730_FEC_COMPROBANTE,',
'p_ind_garantia => :P730_GARANTIA,',
'p_rubro_mo => :P730_RUBRO_MO,',
'p_cod_moneda_base => :P730_COD_MONEDA_BASE,',
'p_porc_iva => :P730_PORC_IVA,',
'p_fec_rechazo => :P730_FEC_RECHAZO,',
'p_ser_comprobante          => :P730_SER_COMPROBANTE,',
'p_nro_comprobante           => :P730_NRO_COMPROBANTE,',
'p_fecha_modificado_garantia => :P730_FECHA_MODIFICADO_GARANTIA,',
'p_fec_aprobacion            => :P730_FEC_APROBACION,',
'p_fec_cierre                => :P730_FEC_CIERRE,',
'p_fecha_estado_complicado   => :P730_FECHA_ESTADO_COMPLICADO,',
'p_fec_pendiente             => :P730_FEC_PENDIENTE,',
'p_ind_adicional             => :P730_IND_ADICIONAL,',
'p_cod_proveedor             => :P730_COD_PROVEEDOR,',
'p_linea_producto            => :P730_LINEA_PRODUCTO,',
'p_error                     => :P730_ERROR,',
'p_tipo_cierre               => :P730_TIPO_CIERRE,',
'p_mensaje_error             => :P0_MENSAJE_VALIDACION);',
'inv.caordtra.pr_sumar_totales_mo(p_cod_empresa  =>  :P_COD_EMPRESA,',
'p_tip_comprobante => :P730_TIP_COMPROBANTE,',
'p_ser_comprobante => :P730_SER_COMPROBANTE,',
'p_nro_comprobante => :P730_NRO_COMPROBANTE,',
'p_tot_mobra       => :P730_TOT_MOBRA);',
'exception',
'when others then ',
':P730_ESTADO_PRESU:=:P730_ESTADO_AUX;',
':P0_MENSAJE_VALIDACION:=sqlerrm;',
'end;',
'',
'begin',
'inv.caordtra_370.pr_sumar_totales_rep(p_cod_empresa  =>  :P_COD_EMPRESA,',
'p_tip_comprobante => :P730_TIP_COMPROBANTE,',
'p_ser_comprobante => :P730_SER_COMPROBANTE,',
'p_nro_comprobante => :P730_NRO_COMPROBANTE,',
'p_tot_repuestos       => :P730_TOT_REPUESTOS);',
'exception',
'when others then ',
':P730_ESTADO_PRESU:=:P730_ESTADO_AUX;',
':P0_MENSAJE_VALIDACION:=sqlerrm;',
'end;',
'begin',
'inv.caordtra.pr_suma_presupuesto_call(p_cod_empresa    =>  :P_COD_EMPRESA,',
'                                   p_tip_comprobante   => :P730_TIP_COMPROBANTE,',
'                                   p_ser_comprobante   => :P730_SER_COMPROBANTE,',
'                                   p_nro_comprobante   => :P730_NRO_COMPROBANTE,',
'                                   p_total_ot_call_c_g => :P730_TOTAL_OT_CALL_C_G,',
'                                   p_total_ot_call_s_g => :P730_TOTAL_OT_CALL_S_G,',
'                                   p_mensaje_error     => :P0_MENSAJE_VALIDACION);',
'exception',
'when others then ',
':P730_ESTADO_PRESU:=:P730_ESTADO_AUX;',
':P0_MENSAJE_VALIDACION:=sqlerrm;',
'end;',
'',
''))
,p_attribute_02=>'P_COD_EMPRESA,P730_COD_ORIGEN,P730_COD_CLIENTE,P730_CERRADO,P730_IND_RECLAMO,P730_TOT_MOBRA,P730_FEC_COMPROBANTE,P730_GARANT,P730_RUBRO_MO,P730_COD_MONEDA_BASE,P730_PORC_IVA,P730_FEC_RECHAZO,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE_DISTR,P730_NRO_CO'
||'MPROBANTE,P730_FECHA_ABANDONADO,P730_FEC_APROBACION,P730_FEC_CIERRE,P730_COD_USUARIO_RENDICION,P730_FEC_PENDIENTE,P730_IND_ADICIONAL,P730_COD_PROVEEDOR,P730_LINEA_PRODUCTO,P730_TIPO,P730_ESTADO_AUX,P730_ESTADO_PRESU'
,p_attribute_03=>'P730_ERROR,P0_MENSAJE_VALIDACION,P730_TOTAL_OT_CALL_C_G,P730_TOTAL_OT_CALL_S_G,P730_ESTADO_PRESU'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279579082751777369)
,p_event_id=>wwv_flow_imp.id(279578005673777368)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'verror_importe exception;',
'begin',
'IF nvl(:P730_GARANTIA, ''N'') <> ''S''THEN',
'if ((nvl(:P730_TOT_MOBRA,0)+nvl(:P730_TOT_REPUESTOS,0) - nvl(:P730_TOT_REPUESTOS_CALL,0)>10000 ',
'or nvl(:P730_TOT_MOBRA,0)+nvl( :P730_TOT_REPUESTOS,0) - nvl(:P730_TOT_REPUESTOS_CALL,0)<-10000) ',
'and nvl(:P730_TOT_REPUESTOS_CALL,0)>0)',
'and NVL(:P730_CERRADO,''N'')<>''S''',
'and nvl(:P730_TIPO_CIERRE,''CR'') in (''CR'') ',
'AND NVL(:P730_IND_RECLAMO,''N'')<>''S''',
'and :P730_FEC_RECHAZO is null then',
'raise verror_importe;',
'end if;',
'END IF;',
'',
'exception',
'when verror_importe then ',
':P730_ESTADO_PRESU:=:P730_ESTADO_AUX;',
':P0_MENSAJE_VALIDACION :=''La ot no puede ser finalizada, existe diferencia entre el presupuesto y el cierre..'';',
'RETURN;',
'when others then',
'null;',
'end;',
'begin',
'IF :P730_COD_ORIGEN in(''1'',''15'',''20'') THEN	',
'DECLARE',
'VEXISTE VARCHAR2(60);',
'verror exception;',
'BEGIN',
'begin',
'SELECT ''S''',
'INTO VEXISTE',
'FROM CA_PEDIDO_REPUESTO_CAB C, ',
'CA_PEDIDO_REPUESTO_DET D,',
'ST_ARTICULOS S',
'WHERE C.COD_EMPRESA=:P_COD_EMPRESA',
'AND C.TIP_COMPROBANTE_REF=:P730_TIP_COMPROBANTE',
'AND C.SER_COMPROBANTE_REF=:P730_SER_COMPROBANTE',
'AND C.NRO_COMPROBANTE_REF=:P730_NRO_COMPROBANTE',
'AND C.COD_EMPRESA=D.COD_EMPRESA',
'AND C.TIP_COMPROBANTE=D.TIP_COMPROBANTE',
'AND C.SER_COMPROBANTE=D.SER_COMPROBANTE',
'AND C.NRO_COMPROBANTE=D.NRO_COMPROBANTE',
'AND NVL(D.CANTIDAD,0)>0',
'AND NVL(D.TRASLADADO,''N'')=''S''',
'AND D.COD_EMPRESA=S.COD_EMPRESA',
'AND D.COD_ARTICULO=S.COD_ARTICULO',
'AND NVL(D.CANTIDAD_CONFIRMADA,0)>0',
'AND NVL(D.CANTIDAD_CONFIRMADA,0)>NVL(D.CANTIDAD_OT,0)',
'AND ROWNUM=1;',
'if nvl(vexiste,''N'')=''S'' THEN',
'RAISE VERROR;',
'end if;',
'exception',
'when VERROR then',
':P730_ESTADO_PRESU:=:P730_ESTADO_AUX;',
':P0_MENSAJE_VALIDACION:= ''Debe confirmar los repuestos para cerrar la orden de trabajo.'';',
'RETURN;',
'when others then ',
'VEXISTE:=''N'';',
'end;',
'',
'IF NVL(VEXISTE,''N'')=''S'' THEN',
':P730_ESTADO_PRESU:=:P730_ESTADO_AUX;',
':P0_MENSAJE_VALIDACION:=''Debe confirmar los repuestos para cerrar la orden de trabajo.'';',
'RETURN;',
'END IF;',
'END;',
'END IF;',
'end;',
':P730_TIPO_CIERRE:=null;',
'null;',
'begin',
'inv.caordtra.pr_cierra_orden(p_cod_empresa=>:P_COD_EMPRESA,',
'p_ser_comprobante=>:P730_SER_COMPROBANTE,',
'p_nro_comprobante=>:P730_NRO_COMPROBANTE,',
'p_tip_comprobante=>:P730_TIP_COMPROBANTE,',
'p_monto_adelanto=>:P730_MONTO_ADELANTO,',
'p_ind_adelanto=>:P730_IND_ADELANTO,',
'p_total_ot=>:P730_TOTAL_OT,',
'p_tot_mobra=>:P730_TOT_MOBRA,',
'p_tot_repuestos=>:P730_TOT_REPUESTOS,',
'p_senia=>:P730_SENIA,',
'p_ind_garantia=>:P730_GARANTIA,',
'p_tipo_cierre=>:P730_TIPO_CIERRE,',
'p_cerrado=>:P730_CERRADO,',
'p_ind_reclamo=>:P730_IND_RECLAMO,',
'p_fec_rechazo=>:P730_FEC_RECHAZO,',
'p_cod_origen=>:P730_COD_ORIGEN,',
'p_tipo_reclamo=>:P730_TIPO_RECLAMO,',
'p_cod_motivo_reclamo_spp=>:P730_COD_MOTIVO_RECLAMO_SPP,',
'p_cod_motivo_reclamo_jefe=>:P730_COD_MOTIVO_RECLAMO_JEFE,',
'p_linea_producto=>:P730_LINEA_PRODUCTO,',
'p_cod_proveedor=>:P730_COD_PROVEEDOR,',
'p_comentario=>:P730_CONCLUSION,',
'p_fec_cierre=>:P730_FEC_CIERRE,',
'p_estado_presu=>:P730_ESTADO_PRESU,',
'p_fec_estado=>:P730_FEC_ESTADO,',
'p_finalizado_por=>:P730_FINALIZADO_POR,',
'p_cod_usuario=>:APP_USER,',
'p_fec_finalizado=>:P730_FECHA_FINALIZACION,',
'p_fec_modif_cerrado=>:P730_FEC_MODIF_CERRADO,',
'p_hora_finalizado=>:P730_HORA_FINALIZADO,',
'p_cod_articulo=>:P730_COD_ARTICULO_OT,',
'p_ind_entrega=>:P730_IND_ENTREGA,',
'p_ncr=>:P730_NCR,',
'p_cambio=>:P730_CAMBIO,',
'p_ind_carneo=>:P730_IND_CARNEO,',
'p_cod_cliente=>:P730_COD_CLIENTE,',
'p_tot_repuestos_call=>:P730_TOT_REPUESTOS_CALL,',
'p_mensaje_error=>:P0_MENSAJE_VALIDACION,',
'p_nom_cliente=>:P730_NOM_CLIENTE,',
'p_celular_contacto=>:P730_CELULAR_CONTACTO,',
'p_correo_contacto=>:P730_CORREO_CONTACTO);',
'exception',
'when others then ',
':P730_ESTADO_PRESU:=:P730_ESTADO_AUX;',
':P0_MENSAJE_VALIDACION:=sqlerrm;',
'end;',
''))
,p_attribute_02=>'P730_GARANT,P730_TOT_MOBRA,P730_TOT_REPUESTOS_CALL,P730_CERRADO,P730_TIPO,P730_IND_RECLAMO,P730_FEC_RECHAZO,P730_COD_ORIGEN,P_COD_EMPRESA,P730_TIP_COMPROBANTE,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE,P730_IND_ADELANTO,P730_SENIA,P730_TIPO_RECLAMO,P7'
||'30_COD_MOTIVO_RECLAMO_SPP,P730_COD_MOTIVO_RECLAMO_JEFE,P730_LINEA_PRODUCTO,P730_COD_PROVEEDOR,P730_COMENTARIO_NOTIFICACION,P730_FECHA_FINALIZACION,P730_COD_ARTICULO_OT,P730_IND_ENTREGA,P730_NCR,P730_CAMBIO,P730_IND_CARNEO,P730_COD_CLIENTE,P730_NOM_CL'
||'IENTE,P730_CELULAR_CONTACTO,P730_CORREO_CONTACTO,P730_CONCLUSION,P730_ESTADO_AUX'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P730_TIPO,P730_MONTO_ADELANTO,P730_TOTAL_OT,P730_CERRADO,P730_COMENTARIO_NOTIFICACION,P730_FEC_CIERRE,P730_ESTADO_PRESU,P730_FEC_ESTADO,P730_FINALIZADO_POR,P730_FECHA_FINALIZACION,P730_FEC_MODIF_CERRADO,P730_HORA_FINALIZADO,P730'
||'_CELULAR_CONTACTO,P730_CORREO_CONTACTO,P730_FEC_IM,P730_HORA_IM,P730_REPARADO_IM_POR,P730_VERIFICADO_POR,P730_FEC_VERIFICADO,P730_HORA_VERIFICACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279579410212777369)
,p_name=>'Entrega OT'
,p_event_sequence=>450
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(279462414206777320)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279579997685777369)
,p_event_id=>wwv_flow_imp.id(279579410212777369)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'----------------------------------------------------------------------------------',
'begin',
'IF nvl( :P730_IND_ENTREGA, ''N'' ) = ''N''  AND :P730_COD_ORIGEN=''1'' THEN',
'	IF NVL(:P730_TOT_REPUESTOS,0)>0 THEN',
'		  :P0_MENSAJE_VALIDACION := ''Debe facturar para poder entregar la ot.'';',
'	    return;',
'	END IF;',
'END IF;',
'exception',
'	when others then',
'	:P0_MENSAJE_VALIDACION :=  sqlerrm;',
'end;',
'----------------------------------------------------------------------------------',
'begin',
'IF nvl( :P730_IND_ENTREGA, ''N'' ) = ''N'' THEN',
'  IF nvl( :P730_CERRADO,''N'') <> ''S'' THEN',
'    :P0_MENSAJE_VALIDACION  :=  ''Debe cerrar la orden de trabajo para poder entregar.'';',
'    return;',
'  ELSE',
'   :P730_IND_ENTREGA     := ''S'';',
'   :P730_FEC_ENTREGA     := sysdate;    ',
'   :P730_ENTREGADO_POR   := :app_user;',
'   :P730_FEC_ENTREGADO   := sysdate; ',
'   :P730_HORA_ENTREGADO := to_char(sysdate,''HH24:MI:SS'');',
'  END IF;',
'END IF;',
'exception',
'	when others then',
'	:P0_MENSAJE_VALIDACION  := sqlerrm;',
'end;',
''))
,p_attribute_02=>'P730_IND_ENTREGA,P730_COD_ORIGEN,P730_CERRADO'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P730_IND_ENTREGA,P730_FEC_ENTREGA,P730_ENTREGADO_POR,P730_FEC_ENTREGADO,P730_HORA_ENTREGADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279580392746777369)
,p_name=>'Condicional'
,p_event_sequence=>460
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(279361046249777275)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279582395864777370)
,p_event_id=>wwv_flow_imp.id(279580392746777369)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\00BFDesea finalizar la Orden de Trabajo?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279580877111777369)
,p_event_id=>wwv_flow_imp.id(279580392746777369)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :p730_tipo = ''CR''  then ',
'    :P730_TIPO_CIERRE := ''CR'';',
'    :P730_ESTADO_PRESU  :=  ''C'';',
'    :P730_FEC_ESTADO := sysdate;',
'    :P730_FINALIZADO_POR      := :APP_USER;',
'ELSIF :p730_tipo = ''CSS''  then ',
'    :P730_TIPO_CIERRE := ''CSS'';',
'    :P730_ESTADO_PRESU  :=  ''C'';',
'    :P730_FEC_ESTADO := sysdate;',
'    :P730_FINALIZADO_POR      := :APP_USER;',
'ELSIF :p730_tipo = ''CPR''  then ',
'    :P730_TIPO_CIERRE := ''CPR'';',
'    :P730_ESTADO_PRESU  :=  ''C'';',
'    :P730_FEC_ESTADO := sysdate;',
'    :P730_FINALIZADO_POR      := :APP_USER;',
'ELSIF :p730_tipo = ''CSR''  then ',
'    :P730_TIPO_CIERRE := ''CSR'';',
'    :P730_ESTADO_PRESU  :=  ''C'';',
'    :P730_FEC_ESTADO := sysdate;',
'    :P730_FINALIZADO_POR      := :APP_USER;',
'END IF;'))
,p_attribute_02=>'P730_TIPO'
,p_attribute_03=>'P730_TIPO_CIERRE,P730_ESTADO_PRESU,P730_FEC_ESTADO,P730_FINALIZADO_POR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279581309230777370)
,p_event_id=>wwv_flow_imp.id(279580392746777369)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function(){ ',
'$(''#finalizar_ot'').trigger(''click''); ',
'}); '))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279581838807777370)
,p_event_id=>wwv_flow_imp.id(279580392746777369)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(398959416253055637)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279582759000777370)
,p_name=>unistr('Llamada a condici\00F3n cierre')
,p_event_sequence=>470
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(279267233344777225)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279583205838777370)
,p_event_id=>wwv_flow_imp.id(279582759000777370)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(398959416253055637)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279583651288777370)
,p_name=>unistr('Cierre de ventana condici\00F3n cierre')
,p_event_sequence=>480
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(279361426162777275)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279584174971777371)
,p_event_id=>wwv_flow_imp.id(279583651288777370)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(398959416253055637)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279584558159777371)
,p_name=>'Repuesto utilizados'
,p_event_sequence=>490
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(279283661811777233)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279585039856777371)
,p_event_id=>wwv_flow_imp.id(279584558159777371)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.caordtra.pr_buscar_articulos_pre(p_cod_empresa     => :P_COD_EMPRESA,',
'                                      p_tip_comprobante    => :P730_TIP_COMPROBANTE,',
'                                      p_ser_comprobante    => :P730_SER_COMPROBANTE,',
'                                      p_nro_comprobante    => :P730_NRO_COMPROBANTE,',
'                                      p_tot_repuestos_call => :P730_TOT_REPUESTOS_CALL,',
'                                      p_total_ot_call_c_g  => :P730_TOTAL_OT_CALL_C_G,',
'                                      p_total_ot_call_s_g  => :P730_TOTAL_OT_CALL_S_G,',
'                                      p_ind_adelanto       => :P730_IND_ADELANTO,',
'                                      p_total_ot           => :P730_TOTAL_OT,',
'                                      p_tot_mobra          => :P730_TOT_MOBRA,',
'                                      p_tot_repuestos      => :P730_TOT_REPUESTOS,',
'                                      p_senia              => :P730_SENIA,',
'                                      p_mensaje_error      => :P0_MENSAJE_VALIDACION);',
'',
''))
,p_attribute_02=>'P_COD_EMPRESA,P730_TIP_COMPROBANTE,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE,P730_TOT_REPUESTOS_CALL,P730_TOTAL_OT_CALL_C_G,P730_TOTAL_OT_CALL_S_G,P730_IND_ADELANTO,P730_TOT_MOBRA,P730_TOT_REPUESTOS,P730_SENIA'
,p_attribute_03=>'P730_TOT_REPUESTOS_CALL,P730_TOTAL_OT_CALL_C_G,P730_TOTAL_OT_CALL_S_G,P730_TOTAL_OT,P0_MENSAJE_VALIDACION'
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
 p_id=>wwv_flow_imp.id(279585551220777371)
,p_event_id=>wwv_flow_imp.id(279584558159777371)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(611055429916857627)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279585959797777371)
,p_name=>'Crea pedido'
,p_event_sequence=>500
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(279289114501777235)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279586490437777372)
,p_event_id=>wwv_flow_imp.id(279585959797777371)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'vnro_pedido number(18);',
'vsucursal varchar2(20);',
'vmensaje VARCHAR2(300);',
'VEXISTE VARCHAR2(2):=''N''; ',
'begin',
'CREA_PEDIDO_REPUESTO_STNGO(:P_COD_EMPRESA,',
'                           :P730_COD_PROVEEDOR    ,',
'                            :P730_TIP_COMPROBANTE  ,',
'                            :P730_SER_COMPROBANTE  ,',
'                            :P730_NRO_COMPROBANTE  ,',
'                            NVL(:P730_GARANTIA,''N''),',
'                            :P730_ESTADO_PRESU,',
'                           vmensaje         ',
'                           );',
'',
' ',
'  :P0_MENSAJE_VALIDACION :=  vmensaje;',
'  EXCEPTION',
'  	WHEN OTHERS THEN',
'  	  :P0_MENSAJE_VALIDACION :=   SQLERRM;',
'end ;'))
,p_attribute_02=>'P_COD_EMPRESA,P730_COD_PROVEEDOR,P730_TIP_COMPROBANTE,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE,P730_GARANT,P730_ESTADO_PRESU'
,p_attribute_03=>'P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279586850470777372)
,p_name=>'Valida estado'
,p_event_sequence=>510
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P730_ESTADO_PRESU'
,p_condition_element=>'P730_ESTADO_PRESU'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279587338678777372)
,p_event_id=>wwv_flow_imp.id(279586850470777372)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'inv.caordtra_370.pr_validaciones_estado(p_estado_presu               => :P730_ESTADO_PRESU,',
'                     p_estado_presu_real         => :P730_ESTADO_PRESU_REAL,',
'                     p_fec_cierre                => :P730_FEC_CIERRE,',
'                     p_fec_entregado             => :P730_FEC_ENTREGADO,',
'                     p_fec_presupuestado         => :P730_FEC_PRESUPUESTADO,',
'                     p_fec_estado                => :P730_FEC_ESTADO,',
'                     p_creado_por                => :P730_CREADO_POR,',
'                     p_fec_creacion              => :P730_FEC_CREACION,',
'                     p_cod_usuario               => :APP_USER,',
'                     p_hora_creacion             => :P730_HORA_CREACION,',
'                     p_entregado_por             => :P730_ENTREGADO_POR,',
'                     p_presupuestado_por         =>  :P730_PRESUPUESTADO_POR,',
'                     p_hora_presupuesto          =>  :P730_HORA_PRESUPUESTO,',
'                     p_pendiente_por             =>  :P730_PENDIENTE_POR,',
'                     p_fec_pendiente             => :P730_FEC_PENDIENTE,',
'                     p_hora_pendiente            => :P730_HORA_PENDIENTE,',
'                     p_aprobado_por              => :P730_APROBADO_POR,',
'                     p_cod_empresa               => :P_COD_EMPRESA,',
'                     p_cod_forma                 =>  ''CAORDTRA'',',
'                     p_fec_aprobacion            =>  :P730_FEC_APROBACION,',
'                     p_hora_aprobada             =>  :P730_HORA_APROBADA,',
'                     p_fecha_estado_complicado   =>  :P730_FECHA_ESTADO_COMPLICADO,',
'                     p_cod_usuario_es_complicado =>  :P730_COD_USUAROP_ES_COMPLICADO,',
'                     p_fecha_modificado_garantia => :P730_FECHA_MODIFICADO_GARANTIA,',
'                     p_cod_usuario_mod_gar       =>  :P730_COD_USUARIO_MOD_GAR,',
'                     p_rechazado_por             => :P730_RECHAZADO_POR,',
'                     p_fec_rechazo               => :P730_FEC_RECHAZO,',
'                     p_hora_rechazado            =>  :P730_HORA_RECHAZADO,',
'                     p_verificado_por            => :P730_VERIFICADO_POR,',
'                     p_fec_verificado            =>  :P730_FEC_VERIFICADO,',
'                     p_hora_verificacion         => :P730_HORA_VERIFICACION,',
'                     p_autorizado_gar_por        => :P730_AUTORIZADO_GAR_POR,',
'                     p_fec_autorizado_gar_por    => :P730_FEC_AUTORIZADO_GAR_POR,',
'                     p_hora_autorizado_gar_por   => :P730_HORA_AUTORIZADO_GAR_POR,',
'                     p_presupuesto               => :P730_PRESUPUESTO,',
'                     p_cod_usuario_sin_rp        => :P730_COD_USUARIO_SIN_RP,',
'                     p_fec_sin_repuesto          => :P730_FEC_SIN_REPUESTO,',
'                     p_hora_sin_repuesto         => :P730_HORA_SIN_REPUESTO,',
'                     p_fec_im                    => :P730_FEC_IM,',
'                     p_reparado_im_por           => :P730_REPARADO_IM_POR,',
'                     p_tot_repuestos_call        => :P730_TOT_REPUESTOS_CALL,',
'                     p_mensaje_error             => :P0_MENSAJE_VALIDACION,',
'                     p_tip_comprobante           => :P730_TIP_COMPROBANTE,',
'                     p_ser_comprobante           => :P730_SER_COMPROBANTE,',
'                     p_nro_comprobante           => :P730_NRO_COMPROBANTE,',
'                     p_usuario                   => :APP_USER);',
'',
'',
'                     IF :P0_MENSAJE_VALIDACION IS NOT NULL THEN ',
'                         :P730_ESTADO_PRESU := :P730_ESTADO_AUX;',
'                     END IF;',
'EXCEPTION ',
'        WHEN OTHERS THEN ',
'            :P730_ESTADO_PRESU := :P730_ESTADO_AUX;',
'            :P0_MENSAJE_VALIDACION := sqlerrm;',
'END;'))
,p_attribute_02=>'P730_ESTADO_PRESU,P730_ESTADO_PRESU_REAL,P730_FEC_CIERRE,P730_FEC_ENTREGADO,P730_FEC_PRESUPUESTADO,P730_HORA_CREACION,P730_ENTREGADO_POR,P730_PENDIENTE_POR,P730_APROBADO_POR,P_COD_EMPRESA,P730_VERIFICADO_POR,P730_AUTORIZADO_GAR_POR,P730_COD_USUARIO_S'
||'IN_RP,P730_TOT_REPUESTOS_CALL,P730_TIP_COMPROBANTE,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE,P730_ESTADO_AUX'
,p_attribute_03=>'P730_ESTADO_PRESU,P730_ESTADO_PRESU_REAL,P730_FEC_PRESUPUESTADO,P730_FEC_ESTADO,P730_CREADO_POR,P730_FEC_CREACION,P730_HORA_CREACION,P730_PRESUPUESTADO_POR,P730_HORA_PRESUPUESTO,P730_PENDIENTE_POR,P730_FEC_PENDIENTE,P730_HORA_PENDIENTE,P730_APROBADO_'
||'POR,P730_FEC_APROBACION,P730_HORA_APROBADA,P730_COD_USUARIO_RENDICION,P730_COD_USUAROP_ES_COMPLICADO,P730_FECHA_ABANDONADO,P730_COD_USUARIO_MOD_GAR,P730_RECHAZADO_POR,P730_FEC_RECHAZO,P730_HORA_RECHAZADO,P730_VERIFICADO_POR,P730_FEC_VERIFICADO,P730_H'
||'ORA_VERIFICACION,P730_AUTORIZADO_GAR_POR,P730_FEC_AUTORIZADO_GAR_POR,P730_HORA_AUTORIZADO_GAR_POR,P730_COD_USUARIO_SIN_RP,P730_FEC_SIN_REPUESTO,P730_HORA_SIN_REPUESTO,P730_FEC_IM,P730_REPARADO_IM_POR,P0_MENSAJE_VALIDACION,P730_ESTADO_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279587767740777372)
,p_name=>'Obtiene montos de presupuestos'
,p_event_sequence=>530
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(394989536738036438)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279588221129777373)
,p_event_id=>wwv_flow_imp.id(279587767740777372)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P730_TOTAL_OT_CALL_S_G := inv.caordtra_370.calcular_total(p_nro_comprobante => nvl(:P730_NRO_COMPROBANTE, :P730_PARAM_NRO_OT),',
'                                                         p_ser_comprobante => :P730_SER_COMPROBANTE,',
'                                                         pcod_empresa => ''1'');',
'',
'',
''))
,p_attribute_02=>'P730_NRO_COMPROBANTE,P730_SER_COMPROBANTE,P_COD_EMPRESA,P730_PARAM_NRO_OT'
,p_attribute_03=>'P730_TOTAL_OT_CALL_S_G'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279588770981777373)
,p_event_id=>wwv_flow_imp.id(279587767740777372)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'    v_contador  NUMBER := 0;',
'BEGIN',
'    BEGIN',
'        SELECT count(*)',
'            INTO v_contador',
'         FROM ca_entsal_det d, ca_entsal_cab a',
'        WHERE a.cod_empresa = d.cod_empresa',
'          AND a.cod_empresa = :P_COD_EMPRESA',
'          AND a.nro_comprobante_ref = :P730_NRO_COMPROBANTE',
'          AND a.ser_comprobante_ref = :P730_SER_COMPROBANTE',
'          AND a.tip_comprobante_ref = ''ORT''',
'          AND a.num_ent_sal = d.num_ent_sal',
'          AND a.ser_ent_sal = d.ser_ent_sal;',
'          EXCEPTION ',
'            WHEN OTHERS THEN  ',
'                v_contador := 0;',
'           ',
'    END;',
'    IF v_contador >  0 THEN ',
'        :P730_ESTADO_PRESU := ''P'';',
'        :P730_FEC_PRESUPUESTADO := SYSDATE;',
'    END IF;',
'END;',
'',
'',
'  inv.caordtra_370.pr_sumar_totales_rep(p_cod_empresa  =>  ''1'',',
'p_tip_comprobante => ''ORT'',',
'p_ser_comprobante => :P730_SER_COMPROBANTE,',
'p_nro_comprobante => :P730_NRO_COMPROBANTE,',
'p_tot_repuestos       => :P730_TOT_REPUESTOS);'))
,p_attribute_02=>'P730_NRO_COMPROBANTE,P730_SER_COMPROBANTE,P_COD_EMPRESA,P730_TOT_REPUESTOS'
,p_attribute_03=>'P730_ESTADO_PRESU,P730_FEC_PRESUPUESTADO,P730_TOT_REPUESTOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279589208153777373)
,p_event_id=>wwv_flow_imp.id(279587767740777372)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.caordtra.pr_buscar_articulos_pre(p_cod_empresa     => ''1'',',
'                                      p_tip_comprobante    => :P730_TIP_COMPROBANTE,',
'                                      p_ser_comprobante    => :P730_SER_COMPROBANTE,',
'                                      p_nro_comprobante    => :P730_NRO_COMPROBANTE,',
'                                      p_tot_repuestos_call => :P730_TOT_REPUESTOS_CALL,',
'                                      p_total_ot_call_c_g  => :P730_TOTAL_OT_CALL_C_G,',
'                                      p_total_ot_call_s_g  => :P730_TOTAL_OT_CALL_S_G,',
'                                      p_ind_adelanto       => :P730_IND_ADELANTO,',
'                                      p_total_ot           => :P730_TOTAL_OT,',
'                                      p_tot_mobra          => :P730_TOT_MOBRA,',
'                                      p_tot_repuestos      => :P730_TOT_REPUESTOS,',
'                                      p_senia              => :P730_SENIA,',
'                                      p_mensaje_error      => :P0_MENSAJE_VALIDACION);',
'',
':P730_TOTAL_OT_CALL := :P730_TOT_REPUESTOS_CALL;'))
,p_attribute_02=>'P_COD_EMPRESA,P730_TIP_COMPROBANTE,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE,P730_TOT_REPUESTOS_CALL,P730_TOTAL_OT_CALL_C_G,P730_TOTAL_OT_CALL_S_G,P730_IND_ADELANTO,P730_TOT_MOBRA,P730_TOT_REPUESTOS,P730_SENIA'
,p_attribute_03=>'P730_TOT_REPUESTOS_CALL,P730_TOTAL_OT_CALL_C_G,P730_TOTAL_OT,P0_MENSAJE_VALIDACION,P730_TOTA_OT_CALL,P730_TOTAL_OT_CALL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279589656871777373)
,p_name=>'SETEA MONTOS'
,p_event_sequence=>540
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P730_TOTAL_OT_CALL_S_G'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279590164743777373)
,p_event_id=>wwv_flow_imp.id(279589656871777373)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_TOTAL_OT_CALL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P730_TOTAL_OT_CALL_S_G'
,p_attribute_07=>'P730_TOTAL_OT_CALL_S_G'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279591460827777374)
,p_name=>'Validaciones de devoluciones'
,p_event_sequence=>550
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(279407571974777296)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279591986734777374)
,p_event_id=>wwv_flow_imp.id(279591460827777374)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF NVL(:P730_CANTIDAD, 0) <= NVL(:P730_CANTIDAD_DEV, 0) THEN',
'    IF :P730_COD_MOTIVO_DEV IS NOT NULL THEN',
'      SP_DEVOLUCION_REPUESTO_OT(:P730_COD_PROVEEDOR,',
'                                :P730_TIP_COMPROBANTE,',
'                                :P730_SER_COMPROBANTE,',
'                                :P730_NRO_COMPROBANTE,',
'                                :P730_ARTICULO_DEV,',
'                                :P730_CANTIDAD,',
'                                :P730_COD_MOTIVO_DEV);',
'    ',
'      apex_collection.create_or_truncate_collection(p_collection_name => ''VT_REPUESTOS_UTILIZADOS'');',
'    inv.caordtra_370.pr_buscar_articulos(p_cod_empresa    => :P_COD_EMPRESA,',
'                                    p_tip_comprobante => :P730_TIP_COMPROBANTE,',
'                                    p_ser_comprobante => :P730_SER_COMPROBANTE,',
'                                    p_nro_comprobante => :P730_NRO_COMPROBANTE,',
'                                    p_cod_origen      => :P730_COD_ORIGEN,',
'                                    p_cod_proveedor   => :P730_COD_PROVEEDOR,',
'                                    p_fec_comprobante => :P730_FEC_COMPROBANTE,',
'                                    p_tot_repuestos   => :P730_TOT_REPUESTOS,',
'                                    p_cerrado         => :P730_CERRADO,',
'                                    p_tot_mobra       => :P730_TOT_MOBRA,',
'                                    p_total_ot        => :P730_TOTAL_OT,',
'                                    p_senia           => :P730_SENIA,',
'                                    p_monto_adelanto  => :P730_MONTO_ADELANTO,',
'                                    p_ind_adelanto    => :P730_IND_ADELANTO,',
'                                    p_mensaje_error   => :P0_MENSAJE_VALIDACION);',
'    ELSE',
'      :P0_MENSAJE_VALIDACION := ''Debe ingresar un motivo para realizar la devolucion'';',
'    END IF;',
'    NULL;',
'  ELSE',
'    :P0_MENSAJE_VALIDACION := ''La cantidad a devolver no puede ser mayor a la cantidad utiliazada'';',
'    NULL;',
'  ',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P_COD_EMPRESA,P730_TIP_COMPROBANTE,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE,P730_COD_ORIGEN,P730_COD_PROVEEDOR,P730_FEC_COMPROBANTE,P730_CERRADO,P730_TOT_MOBRA,P730_SENIA,P730_MONTO_ADELANTO,P730_IND_ADELANTO,P730_CANTIDAD,P730_CANTIDAD_DEV,P730_COD'
||'_MOTIVO_DEV,P730_ARTICULO_DEV'
,p_attribute_03=>'P730_TOTAL_OT,P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279592475449777374)
,p_event_id=>wwv_flow_imp.id(279591460827777374)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(404319178079631655)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279592963605777374)
,p_event_id=>wwv_flow_imp.id(279591460827777374)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(404319178079631655)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279594773015777375)
,p_name=>'Validaciones de devoluciones_1'
,p_event_sequence=>560
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(279407571974777296)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279595291313777375)
,p_event_id=>wwv_flow_imp.id(279594773015777375)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF NVL(:P730_CANTIDAD, 0) <= NVL(:P730_CANTIDAD_DEV, 0) THEN',
'    IF :P730_COD_MOTIVO_DEV IS NOT NULL THEN',
'      SP_DEVOLUCION_REPUESTO_OT(:P730_COD_PROVEEDOR,',
'                                :P730_TIP_COMPROBANTE,',
'                                :P730_SER_COMPROBANTE,',
'                                :P730_NRO_COMPROBANTE,',
'                                :P730_ARTICULO_DEV,',
'                                :P730_CANTIDAD,',
'                                :P730_COD_MOTIVO_DEV);',
'    ',
'  /*    apex_collection.create_or_truncate_collection(p_collection_name => ''VT_REPUESTOS_UTILIZADOS'');',
'    inv.caordtra_370.pr_buscar_articulos(p_cod_empresa    => :P_COD_EMPRESA,',
'                                    p_tip_comprobante => :P730_TIP_COMPROBANTE,',
'                                    p_ser_comprobante => :P730_SER_COMPROBANTE,',
'                                    p_nro_comprobante => :P730_NRO_COMPROBANTE,',
'                                    p_cod_origen      => :P730_COD_ORIGEN,',
'                                    p_cod_proveedor   => :P730_COD_PROVEEDOR,',
'                                    p_fec_comprobante => :P730_FEC_COMPROBANTE,',
'                                    p_tot_repuestos   => :P730_TOT_REPUESTOS,',
'                                    p_cerrado         => :P730_CERRADO,',
'                                    p_tot_mobra       => :P730_TOT_MOBRA,',
'                                    p_total_ot        => :P730_TOTAL_OT,',
'                                    p_senia           => :P730_SENIA,',
'                                    p_monto_adelanto  => :P730_MONTO_ADELANTO,',
'                                    p_ind_adelanto    => :P730_IND_ADELANTO,',
'                                    p_mensaje_error   => :P0_MENSAJE_VALIDACION);*/',
'    ELSE',
'      :P0_MENSAJE_VALIDACION := ''Debe ingresar un motivo para realizar la devolucion'';',
'    END IF;',
'    NULL;',
'  ELSE',
'    :P0_MENSAJE_VALIDACION := ''La cantidad a devolver no puede ser mayor a la cantidad utiliazada'';',
'    NULL;',
'  ',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P_COD_EMPRESA,P730_TIP_COMPROBANTE,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE,P730_COD_ORIGEN,P730_FEC_COMPROBANTE,P730_CERRADO,P730_TOT_MOBRA,P730_SENIA,P730_MONTO_ADELANTO,P730_IND_ADELANTO,P730_CANTIDAD,P730_CANTIDAD_DEV,P730_COD_MOTIVO_DEV,P730_AR'
||'TICULO_DEV'
,p_attribute_03=>'P730_TOTAL_OT,P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279595740063777375)
,p_event_id=>wwv_flow_imp.id(279594773015777375)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.caordtra_370.pr_obtiene_informaciones(p_tip_comprobante =>  ''ORT'',',
'                                   p_ser_comprobante => :P730_PARAM_SER_OT,',
'                                   p_nro_comprobante => :P730_PARAM_NRO_OT,',
'                                   p_cod_empresa     => ''1'');'))
,p_attribute_02=>'P730_PARAM_SER_OT,P730_PARAM_NRO_OT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279596272382777375)
,p_event_id=>wwv_flow_imp.id(279594773015777375)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(354956920959971562)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279596775880777375)
,p_event_id=>wwv_flow_imp.id(279594773015777375)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(404319178079631655)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279597168640777376)
,p_name=>unistr('Cierra ventana de art\00EDculos presupuestados')
,p_event_sequence=>570
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(279407902238777296)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279597600356777376)
,p_event_id=>wwv_flow_imp.id(279597168640777376)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(404319178079631655)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279597969483777376)
,p_name=>'Imprime reporte'
,p_event_sequence=>580
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(279414787697777299)
,p_condition_element=>'P730_NRO_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279598478829777376)
,p_event_id=>wwv_flow_imp.id(279597969483777376)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var params = []',
'var comprobante = document.getElementById("P730_NRO_COMPROBANTE").value; ',
'var ser_comprobante = document.getElementById("P730_SER_COMPROBANTE").value; ',
'var usuario = ''&APP_USER.'';',
'params.push({ name: ''p_cod_empresa'', value: ''1''}) ',
'params.push({ name: ''p_tip_comprobante'', value: ''ORT''}) ',
'params.push({ name: ''p_ser_comprobante'', value: ser_comprobante}) ',
'params.push({ name: ''p_nro_comprobante'', value: comprobante}) ',
'Jasper_impresion_directa(''CAORDTRA'', params)',
'       ',
'  ',
'',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279598863648777376)
,p_name=>'Visualizar reporte'
,p_event_sequence=>590
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(279413951983777299)
,p_condition_element=>'P730_NRO_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279599349893777376)
,p_event_id=>wwv_flow_imp.id(279598863648777376)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var params = []',
'var comprobante = document.getElementById("P730_NRO_COMPROBANTE").value; ',
'var ser_comprobante = document.getElementById("P730_SER_COMPROBANTE").value; ',
'var usuario = ''&APP_USER.'';',
'',
'apex.server.process(',
'        ''VALIDA_IMPRESION'', ',
'        { x01: comprobante,',
'          x02: ser_comprobante}, ',
'        {',
'        success: function (pData) { ',
'            if (pData.p_contador === 0) {',
'                    params.push({ name: ''p_cod_empresa'', value: ''1''}) ',
'                    params.push({ name: ''p_tip_comprobante'', value: ''ORT''}) ',
'                    params.push({ name: ''p_ser_comprobante'', value: ser_comprobante}) ',
'                    params.push({ name: ''p_nro_comprobante'', value: comprobante}) ',
'',
'                        apex.server.process(',
'                                        ''CONTADOR_IMPRESION'', ',
'                                        { x01: comprobante,',
'                                        x02: ser_comprobante}, ',
'                                        {',
'                                        success: function (pData) { ',
'                                            null;',
'                                        }, ',
'                                        });',
'                    createReportUrl(''CAORDTRA'', params)',
'            }else {',
'                apex.item("P0_MENSAJE_VALIDACION").setValue("No se puede reimprimir OT");',
'            }',
'        }, ',
'        });',
'',
'',
'',
'       ',
'  ',
'',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279599778638777377)
,p_name=>'Setea info articulos'
,p_event_sequence=>600
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P730_DESCRIPCION_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279600208329777377)
,p_event_id=>wwv_flow_imp.id(279599778638777377)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_DESCRIPCION_ARTICULO_1'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P730_DESCRIPCION_ARTICULO'
,p_attribute_07=>'P730_DESCRIPCION_ARTICULO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279600671880777377)
,p_name=>'Carga datos Ticket'
,p_event_sequence=>610
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P730_NRO_ORDEN'
,p_condition_element=>'P730_NRO_ORDEN'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279601154700777377)
,p_event_id=>wwv_flow_imp.id(279600671880777377)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    v_transporte NUMBER;',
'BEGIN ',
'    IF :P730_COD_ORIGEN IS NOT NULL THEN ',
'        :P0_MENSAJE_VALIDACION := null;',
'        BEGIN',
'        select A.COD_DISTRIBUIDOR, A.NRO_PLANILLA, A.COD_DISTRIBUIDOR,  A.TRANSPORTADORA',
'        into :P730_COD_CLIENTE,',
'            :P730_NRO_ORDEN,',
'            :P730_COD_DISTRIBUIDOR,',
'         ',
'            v_transporte',
'        from RP_Retiro_CABECERA a',
'        where a.nro_planilla = :P730_NRO_ORDEN',
'        and a.cod_empresa = :P_COD_EMPRESA;',
'        EXCEPTION  ',
'           WHEN OTHERS THEN ',
'            :P730_COD_DISTRIBUIDOR := NULL;',
'            :P730_NRO_ORDEN  := NULL;',
'            :P730_COD_CLIENTE := NULL;',
'        END;',
'',
'',
'        BEGIN ',
'            SELECT D.COD_ARTICULO, D.GARANTIA, D.FACTURA, D.FEC_COMPRA  ',
'            INTO :P730_COD_ARTICULO_OT,',
'                 :P730_NRO_GARANTIA,',
'                 :P730_NRO_COMPRA,',
'                 :P730_FEC_COMPRA',
'            FROM RP_RETIRO_DETALLE D',
'            WHERE D.NRO_PLANILLA = :P730_NRO_ORDEN',
'            and  D.cod_empresa = :P_COD_EMPRESA',
'            AND ROWNUM = 1;',
'            EXCEPTION  ',
'           WHEN OTHERS THEN ',
'            :P730_COD_ARTICULO_OT := NULL;',
'            :P730_NRO_GARANTIA  := NULL;',
'            :P730_NRO_COMPRA := NULL;',
'        END;',
'    ELSE ',
'        :P0_MENSAJE_VALIDACION := ''Debe seleccionar el Origen'';',
'    END IF;',
'',
'    IF v_transporte IN (1,2,3,4,7) THEN ',
'        :P730_TRANSPPORTADOR := ''T'';',
'        ',
'    ELSIF  v_transporte IN (5,8) THEN ',
'        :P730_TRANSPPORTADOR := ''S'';',
'    ELSIF  v_transporte  IN (6) THEN ',
'        :P730_TRANSPPORTADOR := ''L'';',
'    ELSE ',
'        :P730_TRANSPPORTADOR := NULL;',
'',
'    END  IF;',
'',
'',
'END;'))
,p_attribute_02=>'P730_NRO_ORDEN,P_COD_EMPRESA,P730_COD_ORIGEN'
,p_attribute_03=>'P730_COD_CLIENTE,P730_COD_DISTRIBUIDOR,P730_NRO_ORDEN,P730_COD_ARTICULO_OT,P0_MENSAJE_VALIDACION,P730_NRO_COMPRA,P730_FEC_COMPRA,P730_NRO_GARANTIA,P730_TRANSPPORTADOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279601574229777377)
,p_name=>'Imprime reporte'
,p_event_sequence=>620
,p_condition_element=>'P730_IMPRIMIR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279602021334777377)
,p_event_id=>wwv_flow_imp.id(279601574229777377)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var params = []',
'var params2 = []',
'var comprobante = document.getElementById("P730_NRO_COMPROBANTE").value; ',
'var ser_comprobante = document.getElementById("P730_SER_COMPROBANTE").value; ',
'',
'',
'                ',
'var usuario = ''&APP_USER.'';',
'params.push({ name: ''p_cod_empresa'', value: ''1''}) ',
'params.push({ name: ''p_tip_comprobante'', value: ''ORT''}) ',
'params.push({ name: ''p_ser_comprobante'', value: ser_comprobante}) ',
'params.push({ name: ''p_nro_comprobante'', value: comprobante}) ',
'',
'params2.push({ name: ''p_ser_comprobante'', value: ser_comprobante}) ',
'params2.push({ name: ''p_id_ticket'', value: comprobante}) ',
'',
'apex.server.process(',
'                ''VERIFICA_CONTADOR'', ',
'                { x01: comprobante,',
'                  x02: ser_comprobante}, ',
'                {',
'                success: function (pData) { ',
'                    if (pData.p_contador === 0) {',
unistr('                        var htmldb_delete_messag_agregar =''\00BFDesea Visualizar la OT Nro. '' + comprobante + '''';  '),
'                        apex.message.confirm(htmldb_delete_messag_agregar, function( okPressed ) { ',
'                            if( okPressed ) {',
'                                apex.server.process(',
'                                    ''CONTADOR_IMPRESION'', ',
'                                    { x01: comprobante,',
'                                    x02: ser_comprobante}, ',
'                                    {',
'                                    success: function (pData) { ',
'                                        null;',
'                                    }, ',
'                                    });',
'                                    ',
'                                    createReportUrl("CAORDTRA", params)',
unistr('                                var htmldb_delete_messag_agregar =''\00BFDesea Visualizar la etiqueta Nro. '' + comprobante + '''';  '),
'                                apex.message.confirm(htmldb_delete_messag_agregar, function( okPressed ) { ',
'                                    if( okPressed ) {',
'                                        createReportUrl("ETIQUETAOT", params2)',
'                                    } else {',
'                                        null;',
'                                    }',
'                                });',
'                            } else {',
unistr('                            var htmldb_delete_messag_agregar =''\00BFDesea Visualizar la etiqueta Nro. '' + comprobante + '''';  '),
'                                apex.message.confirm(htmldb_delete_messag_agregar, function( okPressed ) { ',
'                                    if( okPressed ) {',
'                                        createReportUrl("ETIQUETAOT", params2)',
'                                    } else {',
'                                        null;',
'                                    }',
'                                });',
'                            }',
'                            apex.item("P730_NRO_COMPROBANTE").setValue(null);',
'                        });',
'                    }else  {',
'                        null;',
'                    }',
'                }, ',
'                });',
'',
'',
'',
'',
'',
'',
'',
''))
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
 p_id=>wwv_flow_imp.id(279602480247777378)
,p_name=>'Setea Canal'
,p_event_sequence=>630
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P730_DESCRI_ORIGEN'
,p_condition_element=>'P730_DESCRI_ORIGEN'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279602904952777378)
,p_event_id=>wwv_flow_imp.id(279602480247777378)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P730_DESCRI_ORIGEN IN (''DESMONTAJE/MONTAJE'', ''DIVISION CORPORATIVA'', ''MANTENIMIENTO'', ''OBRAS Y PROYECTOS'') THEN ',
'    :P730_CANAL := ''DIVISION CORPORATIVA'';',
'ELSIF :P730_DESCRI_ORIGEN IN (''ARGENTAL'',  ''VISITA GASTRO-NGO'') THEN ',
unistr('    :P730_CANAL := ''GASTRONOM\00CDA'';'),
'ELSIF :P730_DESCRI_ORIGEN IN (''INSTALACION DE PILETAS'', ''LEVANTAMIENTOS STA'', ''REPARACION DE PILETAS'', ''SERVICIO AUTORIZADO CPH'') THEN ',
'    :P730_CANAL := ''N/A'';',
'ELSIF :P730_DESCRI_ORIGEN IN (''ARISTON'',  ''FITNES'', ''GESTION STCDE'', ''SERVICIO AUTORIZADO'', ''SERVICIO AUTORIZADO WEB'', ''TOKYO SET UP'', ''WHIRLPOOL SET UP'') THEN ',
'    :P730_CANAL := ''STA'';',
'ELSIF :P730_DESCRI_ORIGEN IN (''BICICLETAS'', ''CARNEO'', ''CLIENTE FINAL CPH'', ''CPH'', ''DESCARGA EN GARANTIA'', ''LEVANTAMIENTO'', ''MUESTRAS'', ''SERVICIO TECNICO'', ''SERVICIO TECNICO INTERIOR'', ''SPP INTERIOR'', ''SPP INTERIOR'') THEN ',
'    :P730_CANAL := ''STNGO'';',
'ELSIF :P730_DESCRI_ORIGEN IN (''CELULARES'') THEN ',
'    :P730_CANAL := ''STNGO'';',
'ELSE ',
'    :P730_CANAL := NULL;',
'END  IF;'))
,p_attribute_02=>'P730_DESCRI_ORIGEN'
,p_attribute_03=>'P730_CANAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279603382732777378)
,p_name=>'Abrir garantia'
,p_event_sequence=>640
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(279423620287777303)
,p_condition_element=>'P730_NRO_GARANTIA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279603817564777378)
,p_event_id=>wwv_flow_imp.id(279603382732777378)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.caordtra_370.pr_garantia(p_garantia_ot    => :P730_NRO_GARANTIA,',
'                        p_datos_garantia => :P730_DATOS_GARANTIA);'))
,p_attribute_02=>'P730_NRO_GARANTIA'
,p_attribute_03=>'P730_DATOS_GARANTIA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279604304564777378)
,p_event_id=>wwv_flow_imp.id(279603382732777378)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:openModal(''gara''); '
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279604784545777378)
,p_name=>unistr('Cerrar regi\00F3n garant\00EDa')
,p_event_sequence=>650
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(279411282570777298)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279605262155777378)
,p_event_id=>wwv_flow_imp.id(279604784545777378)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(428273727983046040)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279605661094777379)
,p_name=>'Oculta botones'
,p_event_sequence=>660
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P730_ESTADO_PRESU'
,p_condition_element=>'P730_ESTADO_PRESU'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'A'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279607191539777379)
,p_event_id=>wwv_flow_imp.id(279605661094777379)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(279316586694777248)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279607510839777379)
,p_name=>'Establece estado'
,p_event_sequence=>670
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P730_OCULTAR'
,p_condition_element=>'P730_OCULTAR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279608042860777379)
,p_event_id=>wwv_flow_imp.id(279607510839777379)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(279415573445777299)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279608574356777379)
,p_event_id=>wwv_flow_imp.id(279607510839777379)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(279415573445777299)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279608972188777380)
,p_name=>'da_pedir_repuesto'
,p_event_sequence=>680
,p_condition_element=>'P730_GARANTIA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279609442957777380)
,p_event_id=>wwv_flow_imp.id(279608972188777380)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_ESTADO_PRESU'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'RI'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279610482724777380)
,p_event_id=>wwv_flow_imp.id(279608972188777380)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_ESTADO_AUX'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'RI'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279610905336777380)
,p_event_id=>wwv_flow_imp.id(279608972188777380)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_ESTADO_PRESU'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'V'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279611475200777380)
,p_event_id=>wwv_flow_imp.id(279608972188777380)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_ESTADO_AUX'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'V'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279611909877777381)
,p_event_id=>wwv_flow_imp.id(279608972188777380)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(279281322264777231)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279612887955777381)
,p_name=>'Estado de OT'
,p_event_sequence=>690
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P730_GARANTIA'
,p_condition_element=>'P730_GARANTIA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279613398679777381)
,p_event_id=>wwv_flow_imp.id(279612887955777381)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_ESTADO_PRESU'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'V'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279613874423777381)
,p_event_id=>wwv_flow_imp.id(279612887955777381)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_ESTADO_PRESU'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'RI'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279614393384777381)
,p_event_id=>wwv_flow_imp.id(279612887955777381)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_ESTADO_AUX'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'V'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279614899090777382)
,p_event_id=>wwv_flow_imp.id(279612887955777381)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_ESTADO_AUX'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'RI'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279615374770777382)
,p_event_id=>wwv_flow_imp.id(279612887955777381)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(279281322264777231)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279616276159777382)
,p_name=>'Nuevo_2'
,p_event_sequence=>700
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P730_OBERVACION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P730_PARAM_NRO_OT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279616759382777382)
,p_event_id=>wwv_flow_imp.id(279616276159777382)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var valor = apex.item("P730_OBERVACION").getValue();',
'if (valor ===  "" || valor === null) {',
'    null;',
'}',
'else {',
'    document.getElementById(''P730_OBERVACION'').readOnly = true; ',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279617133869777382)
,p_name=>'Oculta boton'
,p_event_sequence=>710
,p_condition_element=>'P730_VOLVER'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279617601047777383)
,p_event_id=>wwv_flow_imp.id(279617133869777382)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(279413596462777299)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279619113689777383)
,p_event_id=>wwv_flow_imp.id(279617133869777382)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(279413596462777299)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279618162435777383)
,p_event_id=>wwv_flow_imp.id(279617133869777382)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(279413108161777299)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279618650931777383)
,p_event_id=>wwv_flow_imp.id(279617133869777382)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(279413108161777299)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279619577094777383)
,p_name=>'Refresca region'
,p_event_sequence=>720
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(403269355592604515)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279620088428777383)
,p_event_id=>wwv_flow_imp.id(279619577094777383)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'inv.caordtra_370.pr_busca_llamadas(p_cod_empresa        => :P_COD_EMPRESA,',
'                              p_tip_comprobante     => :P730_TIP_COMPROBANTE,',
'                              p_ser_comprobante     => :P730_SER_COMPROBANTE,',
'                              p_nro_comprobante     => :P730_NRO_COMPROBANTE,',
'                              p_usuario_seguimiento => :P730_USUARIO_SEGUIMIENTO,',
'                              p_motivo_seguimiento  => :P730_MOTIVO_SEGUIMIENTO,',
'                              p_motivo_secundario   => :P730_MOTIVO_SECUNDARIO,',
'                              p_motivo_principal    => :P730_MOTIVO_PRINCIPAL,',
'                              p_cod_motivo          => :P730_COD_MOTIVO);'))
,p_attribute_02=>'P_COD_EMPRESA,P730_TIP_COMPROBANTE,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE,P730_USUARIO_SEGUIMIENTO,P730_MOTIVO_SEGUIMIENTO,P730_MOTIVO_SECUNDARIO,P730_MOTIVO_PRINCIPAL,P730_COD_MOTIVO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279620509295777383)
,p_event_id=>wwv_flow_imp.id(279619577094777383)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(403269355592604515)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279620959366777384)
,p_name=>'Imprimir etiqueta'
,p_event_sequence=>730
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(279414376304777299)
,p_condition_element=>'P730_NRO_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279621457100777384)
,p_event_id=>wwv_flow_imp.id(279620959366777384)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var params = []',
'var ser_comprobante = apex.item("P730_SER_COMPROBANTE").getValue();',
'var nro_comprobante = apex.item("P730_NRO_COMPROBANTE").getValue();',
'var vfacnom = "ETIQUETAOT";',
'params.push({ name: ''p_id_ticket'', value: nro_comprobante})',
'params.push({ name: ''p_ser_comprobante'', value: ser_comprobante})',
'',
'createReportUrl(vfacnom, params)',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279621822669777384)
,p_name=>'Validaciones reclamos'
,p_event_sequence=>740
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P730_IND_RECLAMO'
,p_condition_element=>'P730_IND_RECLAMO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279622343763777384)
,p_event_id=>wwv_flow_imp.id(279621822669777384)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P730_NRO_COMPROBANTE is not null then',
' inv.caordtra_370.pr_valida_mano_de_obra(p_cod_empresa => :P_COD_EMPRESA,',
'p_cod_origen => :P730_COD_ORIGEN,',
'p_cod_cliente => :P730_COD_CLIENTE,',
'p_cerrado => :P730_CERRADO,',
'p_ind_reclamo => :P730_IND_RECLAMO,',
'p_tot_mobra => :P730_TOT_MOBRA,',
'p_fec_comprobante => :P730_FEC_COMPROBANTE,',
'p_ind_garantia => :P730_GARANTIA,',
'p_rubro_mo => :P730_RUBRO_MO,',
'p_cod_moneda_base => :P730_COD_MONEDA_BASE,',
'p_porc_iva => :P730_PORC_IVA,',
'p_fec_rechazo => :P730_FEC_RECHAZO,',
'p_ser_comprobante          => :P730_SER_COMPROBANTE,',
'p_nro_comprobante           => :P730_NRO_COMPROBANTE,',
'p_fecha_modificado_garantia => :P730_FECHA_MODIFICADO_GARANTIA,',
'p_fec_aprobacion            => :P730_FEC_APROBACION,',
'p_fec_cierre                => :P730_FEC_CIERRE,',
'p_fecha_estado_complicado   => :P730_FECHA_ESTADO_COMPLICADO,',
'p_fec_pendiente             => :P730_FEC_PENDIENTE,',
'p_ind_adicional             => :P730_IND_ADICIONAL,',
'p_cod_proveedor             => :P730_COD_PROVEEDOR,',
'p_linea_producto            => :P730_LINEA_PRODUCTO,',
'p_error                     => :P730_ERROR,',
'p_tipo_cierre               => :P730_TIPO_CIERRE,',
'p_mensaje_error             => :P0_MENSAJE_VALIDACION);',
'inv.caordtra_370.pr_sumar_totales_mo(p_cod_empresa  =>  :P_COD_EMPRESA,',
'p_tip_comprobante => :P730_TIP_COMPROBANTE,',
'p_ser_comprobante => :P730_SER_COMPROBANTE,',
'p_nro_comprobante => :P730_NRO_COMPROBANTE,',
'p_tot_mobra       => :P730_TOT_MOBRA);',
'end if;'))
,p_attribute_02=>'P_COD_EMPRESA,P730_COD_ORIGEN,P730_COD_CLIENTE,P730_CERRADO,P730_IND_RECLAMO,P730_TOT_MOBRA,P730_FEC_COMPROBANTE,P730_GARANT,P730_RUBRO_MO,P730_COD_MONEDA_BASE,P730_PORC_IVA,P730_FEC_RECHAZO,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE_DISTR,P730_NRO_CO'
||'MPROBANTE,P730_FECHA_ABANDONADO,P730_FEC_APROBACION,P730_FEC_CIERRE,P730_COD_USUARIO_RENDICION,P730_FEC_PENDIENTE,P730_IND_ADICIONAL,P730_COD_PROVEEDOR,P730_LINEA_PRODUCTO,P730_TIPO'
,p_attribute_03=>'P0_MENSAJE_VALIDACION,P730_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279622889776777384)
,p_event_id=>wwv_flow_imp.id(279621822669777384)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF nvl(:P730_IND_RECLAMO, ''N'') = ''S'' THEN',
'    :P730_ESTADO_PRESU := ''RU'';',
'  END IF;',
'  IF nvl(:P730_IND_RECLAMO, ''N'') <> ''S'' THEN',
'    IF nvl(:p730_presupuesto, ''N'') = ''S'' THEN',
'      :P730_ESTADO_PRESU := ''V'';',
'      :P730_FEC_ESTADO   := SYSDATE;',
'    ELSE',
'      :P730_ESTADO_PRESU := ''RI'';',
'      :P730_FEC_ESTADO   := SYSDATE;',
'    END IF;',
'  END IF;',
'',
'  IF nvl(:P730_TIPO_RECLAMO, ''X'') <> ''RMO'' AND',
'     nvl(:P730_IND_RECLAMO, ''N'') = ''S'' THEN',
'    declare ',
'        cursor cur_mobra is ',
'            select ',
'                seq_id,',
'                    c001 AS COD_ARTICULO, ',
'                    NVL(c002 , (select descripcion from st_articulos p where cod_empresa=:P_COD_EMPRESA and cod_articulo = c001)) as product_name,',
'                        to_number(c003) as MONTO,',
'                        to_number(c004) as MONTO_VENTA,',
'                        (c005) as COD_TECNICO,',
'                       apex_item.checkbox2 ( 2, c006, DECODE(c006, ''S'' , ''CHECKED'' , '''') || '' DISABLED'' )  as GARANTIA,',
'                       apex_item.checkbox2 ( 2, c007, DECODE(c007, ''S'' , ''CHECKED'' , '''') || '' DISABLED'' )  as RECLAMO, ',
'                       null as remove,',
'                       c010 IND_RECLAMO,',
'                       c020 MONTO_COMISION_TECNICO,',
'                       c021  MONTO_COMISION_jEFE_tECNICO',
'                  from apex_collections',
'                 where collection_name = ''VT_MANO_OBRA''',
'                 order by 1 asc;',
'    begin ',
'        for a in cur_mobra loop',
'            apex_collection.update_member_attribute(p_collection_name => ''VT_MANO_OBRA'',',
'             p_seq => a.seq_id,',
'             p_attr_number => ''7'',',
'             p_attr_value => ''S'');',
'',
'             apex_collection.update_member_attribute(p_collection_name => ''VT_MANO_OBRA'',',
'             p_seq => a.seq_id,',
'             p_attr_number => ''20'',',
'             p_attr_value => ''0'');',
'',
'             apex_collection.update_member_attribute(p_collection_name => ''VT_MANO_OBRA'',',
'             p_seq => a.seq_id,',
'             p_attr_number => ''21'',',
'             p_attr_value => ''0'');',
'              ',
'        end loop;',
'    end;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P730_IND_RECLAMO,P730_PRESUPUESTO,P730_TIPO_RECLAMO'
,p_attribute_03=>'P730_ESTADO_PRESU,P730_FEC_ESTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279623396908777384)
,p_event_id=>wwv_flow_imp.id(279621822669777384)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(610989532014552622)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279623705715777385)
,p_name=>'Valida tipo reclamo'
,p_event_sequence=>750
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P730_TIPO_RECLAMO'
,p_condition_element=>'P730_TIPO_RECLAMO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_da_event_comment=>'hector'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279624288006777385)
,p_event_id=>wwv_flow_imp.id(279623705715777385)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'IF NVL(:P730_IND_RECLAMO,''N'')=''S'' 	and :P730_TIPO_RECLAMO=''RMO'' AND NVL(:P730_CERRADO,''N'')=''S''',
'	AND NVL(:P730_IND_ENTREGA,''N'')<>''S'' 	AND NVL(:P730_IND_RETIRADO,''N'')<>''S'' THEN',
'	:P730_ESTADO_PRESU:=''RMC'';',
' ',
'ELSIF  NVL(:P730_IND_RECLAMO,''N'')=''S''',
'	and :P730_TIPO_RECLAMO=''RMO''  ',
'	AND (NVL(:P730_IND_ENTREGA,''N'')=''S'' ',
'	OR NVL(:P730_IND_RETIRADO,''N'')<>''S'')THEN',
'	:P730_ESTADO_PRESU:=''RME'';',
'ELSIF NVL(:P730_IND_RECLAMO,''N'')=''S''',
'	and :P730_TIPO_RECLAMO=''RSPP'' AND NVL(:P730_CERRADO,''N'')=''S''',
'	AND NVL(:P730_IND_ENTREGA,''N'')<>''S'' ',
'	AND NVL(:P730_IND_RETIRADO,''N'')<>''S''',
'	AND NVL(:P730_IND_DELIVERY,''N'')=''S''',
'	THEN',
'	:P730_ESTADO_PRESU:=''RSPPC'';',
'	',
'	',
'	ELSIF NVL(:P730_IND_RECLAMO,''N'')=''S''',
'	and :P730_TIPO_RECLAMO=''RRE'' AND NVL(:P730_CERRADO,''N'')=''S''',
'	AND NVL(:P730_IND_ENTREGA,''N'')<>''S'' ',
'	AND NVL(:P730_IND_RETIRADO,''N'')<>''S''',
'	AND NVL(:P730_IND_DELIVERY,''N'')=''S''',
'	THEN',
'	:P730_ESTADO_PRESU:=''RRE'';',
'	',
'ELSIF  NVL(:P730_IND_RECLAMO,''N'')=''S''',
'	and :P730_TIPO_RECLAMO=''RSPP''  ',
'		AND	NVL(:P730_IND_DELIVERY,''N'')=''S''',
'	AND (NVL(:P730_IND_ENTREGA,''N'')=''S'' ',
'',
'	OR NVL(:P730_IND_RETIRADO,''N'')<>''S'')THEN',
'	:P730_ESTADO_PRESU:=''RSPPE'';	',
'ELSE ',
'    :P730_ESTADO_PRESU := :P730_ESTADO_PRESU;',
'END IF;',
'',
' ',
'	IF NVL(:P730_IND_RECLAMO,''N'')=''S''',
'	and :P730_TIPO_RECLAMO=''RRE''  THEN',
'		:P730_ESTADO_PRESU:=''RRE'';',
'	END IF;',
'	',
'	IF   nvl(:P730_TIPO_RECLAMO,null) not in (''RSPP'' ) then',
'	    :P730_COD_MOTIVO_RECLAMO_SPP:=null;',
'	end if;  ',
'	',
'	if nvl(:P730_TIPO_RECLAMO,''X'')<>''RMO'' then',
'		declare ',
'                cursor cur_mobra is ',
'                    select ',
'                        seq_id,',
'                            c001 AS COD_ARTICULO, ',
'                            NVL(c002 , (select descripcion from st_articulos p where cod_empresa=:P_COD_EMPRESA and cod_articulo = c001)) as product_name,',
'                                to_number(c003) as MONTO,',
'                                to_number(c004) as MONTO_VENTA,',
'                                (c005) as COD_TECNICO,',
'                               apex_item.checkbox2 ( 2, c006, DECODE(c006, ''S'' , ''CHECKED'' , '''') || '' DISABLED'' )  as GARANTIA,',
'                               apex_item.checkbox2 ( 2, c007, DECODE(c007, ''S'' , ''CHECKED'' , '''') || '' DISABLED'' )  as RECLAMO, ',
'                               null as remove,',
'                               c010 IND_RECLAMO,',
'                               c020 MONTO_COMISION_TECNICO,',
'                               c021  MONTO_COMISION_jEFE_tECNICO',
'                          from apex_collections',
'                         where collection_name = ''VT_MANO_OBRA''',
'                         order by 1 asc;',
'            begin ',
'                for a in cur_mobra loop',
'                    apex_collection.update_member_attribute(p_collection_name => ''VT_MANO_OBRA'',',
'                     p_seq => a.seq_id,',
'                     p_attr_number => ''7'',',
'                     p_attr_value => ''S'');',
'',
'                     apex_collection.update_member_attribute(p_collection_name => ''VT_MANO_OBRA'',',
'                     p_seq => a.seq_id,',
'                     p_attr_number => ''20'',',
'                     p_attr_value => ''0'');',
'',
'                     apex_collection.update_member_attribute(p_collection_name => ''VT_MANO_OBRA'',',
'                     p_seq => a.seq_id,',
'                     p_attr_number => ''21'',',
'                     p_attr_value => ''0'');',
'                      ',
'                end loop;',
'            end;',
'	',
'	end if;',
'	',
'	',
'	:P730_ESTADO_RECLAMO :=''CREADO'';',
'	',
''))
,p_attribute_02=>'P730_IND_RECLAMO,P730_TIPO_RECLAMO,P730_CERRADO,P730_IND_ENTREGA,P730_IND_RETIRADO,P730_IND_DELIVERY,P730_ESTADO_PRESU'
,p_attribute_03=>'P730_ESTADO_PRESU,P730_COD_MOTIVO_RECLAMO_SPP,P730_ESTADO_RECLAMO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279624732089777385)
,p_event_id=>wwv_flow_imp.id(279623705715777385)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_IND_RECLAMO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279625247896777385)
,p_event_id=>wwv_flow_imp.id(279623705715777385)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(393387146927321617)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279625734818777385)
,p_event_id=>wwv_flow_imp.id(279623705715777385)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_COD_PROBLEMA,P730_COD_SOLUCION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279626298014777386)
,p_event_id=>wwv_flow_imp.id(279623705715777385)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_ESTADO_PRESU'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P730_TIPO_RECLAMO'
,p_attribute_07=>'P730_TIPO_RECLAMO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279626677156777386)
,p_name=>'Cerrar reclamos'
,p_event_sequence=>760
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(279318840208777249)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279627179147777386)
,p_event_id=>wwv_flow_imp.id(279626677156777386)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(393387146927321617)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279627517788777386)
,p_name=>'Imprime reporte de reemplazo'
,p_event_sequence=>770
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(279415970866777299)
,p_condition_element=>'P730_NRO_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279628049270777386)
,p_event_id=>wwv_flow_imp.id(279627517788777386)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var params = []',
'var comprobante = document.getElementById("P730_NRO_COMPROBANTE").value; ',
'var ser_comprobante = document.getElementById("P730_SER_COMPROBANTE").value; ',
'var usuario = ''&APP_USER.'';',
'params.push({ name: ''p_cod_empresa'', value: ''1''}) ',
'params.push({ name: ''p_tip_comprobante'', value: ''ORT''}) ',
'params.push({ name: ''p_ser_comprobante'', value: ser_comprobante}) ',
'params.push({ name: ''p_nro_comprobante'', value: comprobante}) ',
'createReportUrl(''REEMPLAZOOTS'', params)'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279590546089777373)
,p_name=>'Entrega ot'
,p_event_sequence=>780
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(279268486070777225)
,p_condition_element=>'P730_NRO_COMPROBANTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279591019151777374)
,p_event_id=>wwv_flow_imp.id(279590546089777373)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF NVL(:P730_ANULADO, ''N'') <> ''S'' OR NVL(:P730_IND_RETIRADO, ''N'') <> ''S'' OR',
'     NVL(:P730_IND_ENTREGA, ''N'') <> ''S'' OR NVL(:P730_COD_ORIGEN, ''N'') = ''1'' THEN',
'    DECLARE',
'      VMENSAJE  VARCHAR2(600);',
'      VMENSAJE1 VARCHAR2(600);',
'      VGRUPO    VARCHAR2(100);',
'    BEGIN',
'    ',
'      BEGIN',
'        SELECT A.COD_GRUPO',
'          INTO VGRUPO',
'          FROM USUARIOS A',
'         WHERE COD_EMPRESA = :P_COD_EMPRESA',
'           AND COD_USUARIO = :APP_USER;',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          VGRUPO := ''S'';',
'      END;',
'      IF :APP_USER IN (''GABRIELSAR'', ''SONIASO'') THEN',
'        VGRUPO := ''TECNIC'';',
'      END IF;',
'      IF NVL(VGRUPO, ''TECNIC'') in (''TECNIC'',''TCNPV'')  THEN',
'        SP_SOLICITA_OT( :P_COD_EMPRESA,',
'                        :APP_USER,',
'                       :P730_TIP_COMPROBANTE,',
'                       :P730_SER_COMPROBANTE,',
'                       :P730_NRO_COMPROBANTE,',
'                       ''E'',',
'                       VMENSAJE);',
'      ',
'        INSERTA_SEGUIMIENTO_OT(:P_COD_EMPRESA,',
'                               ''Solicitud de entregada de Orden de trabajo por '' ||',
'                               :APP_USER,',
'                               NULL,',
'                               ''A'',',
'                               :P730_NRO_COMPROBANTE,',
'                               NULL,',
'                               NULL,',
'                               ''solicitud de ot'');',
'      ',
'      ELSE',
'        BEGIN',
'          SP_INGRESO_OT_SALON(:APP_USER,',
'                              :P730_TIP_COMPROBANTE,',
'                              :P730_SER_COMPROBANTE,',
'                              :P730_NRO_COMPROBANTE,',
'                              ''E'',',
'                              VMENSAJE1',
'                              ',
'                              );',
'        END;',
'      END IF;',
'    ',
'      RAISE_APPLICATION_ERROR(-20001, VMENSAJE);',
'    END;',
'  END IF;',
'',
'END;',
''))
,p_attribute_02=>'P730_ANULADO,P730_IND_RETIRADO,P730_IND_ENTREGA,P730_COD_ORIGEN,P730_TIP_COMPROBANTE,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE'
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
 p_id=>wwv_flow_imp.id(279593373390777374)
,p_name=>'Abri reclamos'
,p_event_sequence=>790
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(279268009503777225)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279593893377777374)
,p_event_id=>wwv_flow_imp.id(279593373390777374)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(393387146927321617)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279594335980777375)
,p_event_id=>wwv_flow_imp.id(279593373390777374)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P730_COD_PROBLEMA'').css(''pointer-events'',''none'');'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279628475274777386)
,p_name=>'Solicitar productos'
,p_event_sequence=>800
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(279268879591777226)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279628901835777386)
,p_event_id=>wwv_flow_imp.id(279628475274777386)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF NVL(:P730_ANULADO, ''N'') <> ''S'' OR NVL(:P730_IND_RETIRADO, ''N'') <> ''S'' OR',
'     NVL(:P730_IND_ENTREGA, ''N'') <> ''S'' OR NVL(:P730_COD_ORIGEN, ''N'') = ''1''',
'  ',
'   THEN',
'  ',
'    DECLARE',
'      VUSER  VARCHAR2(100);',
'      VGRUPO VARCHAR2(100);',
'    BEGIN',
'      BEGIN',
'        SELECT A.COD_PROVEEDOR',
'          INTO VUSER',
'          FROM CM_PROVEEDORES A, USUARIOS U',
'         WHERE A.COD_EMPRESA = :P_COD_EMPRESA',
'           AND IND_SERVICIO_TECNICO = ''STNGO''',
'           AND A.COD_EMPRESA = U.COD_EMPRESA(+)',
'           AND COD_PROVEEDOR = :P730_COD_PROVEEDOR',
'           AND A.COD_PERSONA = U.COD_PERSONA',
'           AND U.COD_USUARIO = :APP_USER;',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          VUSER := NULL;',
'      END;',
'    ',
'      BEGIN',
'        SELECT A.COD_GRUPO',
'          INTO VGRUPO',
'          FROM USUARIOS A',
'         WHERE COD_EMPRESA = :P_COD_EMPRESA',
'           AND COD_USUARIO = :APP_USER;',
'      EXCEPTION',
'        WHEN OTHERS THEN',
'          VGRUPO := ''S'';',
'      END;',
'      IF VUSER = :P730_COD_PROVEEDOR AND :P730_NRO_COMPROBANTE IS NOT NULL THEN',
'        IF NVL(:P730_TICKET, ''N'') = ''S'' THEN',
'          :P730_SOLICITA := ''S'';',
'          NULL;',
'        ',
'        ELSE',
'          ---TECNICO NO PUEDE SOLICITAR--09/08/2019',
'          ---LOS TECNICOS YA PUEDEN SOLICITAR POR LO TANTO SE COMENTA EL IF',
'        --  IF VGRUPO NOT IN (''TECNIC'') THEN',
'            DECLARE',
'              VMENSAJE VARCHAR2(600);',
'            BEGIN',
'              SP_SOLICITA_OT(:APP_USER,',
'                             :P730_TIP_COMPROBANTE,',
'                             :P730_SER_COMPROBANTE,',
'                             :P730_NRO_COMPROBANTE,',
'                             ''S'',',
'                             VMENSAJE',
'                             ',
'                             );',
'            ',
'              RAISE_APPLICATION_ERROR(-20001, VMENSAJE);',
'            END;',
'          ',
'         /* ELSE',
'            RAISE_APPLICATION_ERROR(-20001, ''No puede solicitar la OT'');',
'          END IF;*/',
'        ',
'        END IF;',
'      ',
'      ELSE',
'      ',
'        IF /*VGRUPO NOT IN (''TECNIC'') AND */:P730_NRO_COMPROBANTE IS NOT NULL THEN',
'          IF NVL(:P730_TICKET, ''N'') = ''S'' THEN',
'            :P730_SOLICITA := ''S'';',
'            NULL;',
'          ELSE',
'          ',
'            DECLARE',
'              VMENSAJE VARCHAR2(600);',
'            BEGIN',
'              --IF VGRUPO NOT IN (''TECNIC'') THEN',
'                SP_SOLICITA_OT(:APP_USER,',
'                               :P730_TIP_COMPROBANTE,',
'                               :P730_SER_COMPROBANTE,',
'                               :P730_NRO_COMPROBANTE,',
'                               ''S'',',
'                               VMENSAJE',
'                               ',
'                               );',
'              ',
'                RAISE_APPLICATION_ERROR(-20001, VMENSAJE);',
'             /* ELSE',
'                RAISE_APPLICATION_ERROR(-20001, ''No puede solicitar la OT'');',
'              END IF;*/',
'            END;',
'          ',
'          END IF;',
'        ',
'        ELSE',
'          RAISE_APPLICATION_ERROR(-20001, ''No puede solicitar la OT'');',
'        END IF;',
'      END IF;',
'    END;',
'  END IF;',
'END;',
''))
,p_attribute_02=>'P730_ANULADO,P730_IND_RETIRADO,P730_IND_ENTREGA,P730_COD_ORIGEN,P730_COD_PROVEEDOR,P730_NRO_COMPROBANTE,P730_TICKET,P730_TIP_COMPROBANTE,P730_SER_COMPROBANTE'
,p_attribute_03=>'P730_SOLICITA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279629304079777387)
,p_name=>'New'
,p_event_sequence=>810
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P730_IR_A_MO'
,p_condition_element=>'P730_IR_A_MO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279629831302777387)
,p_event_id=>wwv_flow_imp.id(279629304079777387)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let url = $v("P730_IR_A_MO");',
'apex.navigation.redirect(url);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(279630249622777387)
,p_name=>'DA_SET_URL'
,p_event_sequence=>820
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(279316586694777248)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(279630787193777387)
,p_event_id=>wwv_flow_imp.id(279630249622777387)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    :P730_IR_A_MO := apex_page.get_url(  p_page   => 402,',
'                                               p_items  => ''P402_COD_ARTICULO_OT,P402_ORIGEN,P402_COD_PROVEEDOR'',',
'                                               p_values => :P730_COD_ARTICULO_OT||'',''||:P730_COD_ORIGEN_AUX||'',''||:P730_COD_PROVEEDOR',
'                                             );     '))
,p_attribute_02=>'P402_COD_ARTICULO_OT,P402_ORIGEN,P402_COD_PROVEEDOR'
,p_attribute_03=>'P730_IR_A_MO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(285244893673611302)
,p_name=>'DA_VER_MAPA'
,p_event_sequence=>830
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(285256523035766570)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(337527821378921301)
,p_event_id=>wwv_flow_imp.id(285244893673611302)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--:P730_BUSQUEDA:= NULL;',
'BEGIN',
'    --:P748_DIR_CLIENTE := NULL;',
'    :P730_LATITUD_LONGITUD := NULL;',
'	:P748_BUSQUEDA := NULL;--P748_DIRECCION',
'',
'    SELECT ubicacion',
'    INTO   :P730_LATITUD_LONGITUD',
'    FROM VT_ORDENES_TRABAJO',
'    WHERE  cod_empresa = :P_COD_EMPRESA',
'	AND ser_comprobante =  :P730_SER_ORDEN_TRABAJO',
'	AND nro_comprobante =  :P730_NRO_COMPROBANTE;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'       :P748_LATITUD_LONGITUD:= NULL;',
'END;'))
,p_attribute_02=>'P730_COD_EMPRESA,P730_SER_ORDEN_TRABAJO,P730_NRO_COMPROBANTE'
,p_attribute_03=>'P730_LATITUD_LONGITUD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285244979471611303)
,p_event_id=>wwv_flow_imp.id(285244893673611302)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(496486159656989723)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(285811568981143308)
,p_name=>'DA_ICONO_REGION'
,p_event_sequence=>840
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(285811666510143309)
,p_event_id=>wwv_flow_imp.id(285811568981143308)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'',
'// Store the icon or text you want to append',
'var icon1 = ''<a onclick="javascript:fn("Hello!")"><span class="fa fa-help" title="Click here for Help"></span> </a>'';',
'',
'// Append the icon to the title',
'$("#REG_OT").append(icon1);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(285815746512143350)
,p_name=>'da_envia_presupuesto'
,p_event_sequence=>850
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(285815647261143349)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295810065243820901)
,p_event_id=>wwv_flow_imp.id(285815746512143350)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta Seguro de Enviar el Presupuesto?'
,p_attribute_02=>'Enviar Presupuesto'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295810153619820902)
,p_event_id=>wwv_flow_imp.id(285815746512143350)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' inv.caordtra.pr_informa_presupuesto(p_nom_cliente      => :P730_NOM_CLIENTE,',
'                                         p_desc_articulo    => :P730_DESCRIPCION_ARTICULO,',
'                                         p_ser_comprobante  => :P730_SER_COMPROBANTE,',
'                                         p_nro_comprobante  => :P730_NRO_COMPROBANTE,',
'                                         p_cod_empresa      => :P_COD_EMPRESA,',
'                                         p_tip_comprobante  => :P730_TIP_COMPROBANTE,',
'                                         p_ind_garantia     => :P730_GARANTIA,',
'                                         p_ind_delivery     => :P730_IND_DELIVERY,',
'                                         p_total_ot_call    => :P730_TOTAL_OT,',
'                                         p_cod_cliente      => :P730_COD_CLIENTE,',
'                                         p_celular_contacto => :P730_CELULAR_CONTACTO,',
'                                         p_correo_contacto  => :P730_CORREO_CONTACTO);',
'  ',
'    :P730_IND_CORREO_PRESU := ''S'';',
'end;'))
,p_attribute_02=>'P730_NOM_CLIENTE,P730_DESCRIPCION_ARTICULO,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE,,P_COD_EMPRESA,P730_TIP_COMPROBANTE,P730_GARANTIA,P730_IND_DELIVERY,P730_TOTAL_OT,P730_COD_CLIENTE,P730_CELULAR_CONTACTO,P730_CORREO_CONTACTO'
,p_attribute_03=>'P730_IND_CORREO_PRESU'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295810285258820903)
,p_event_id=>wwv_flow_imp.id(285815746512143350)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Presupuesto Enviado'
,p_attribute_02=>'Enviado'
,p_attribute_04=>'fa-check'
,p_attribute_06=>'Aceptar'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(295810627556820907)
,p_name=>'da_aprobar_presupuesto'
,p_event_sequence=>860
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(295810463621820905)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295810761069820908)
,p_event_id=>wwv_flow_imp.id(295810627556820907)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta Seguro de AProbar el Presupuesto?'
,p_attribute_02=>'Aprobar Presupuesto'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295811261099820913)
,p_event_id=>wwv_flow_imp.id(295810627556820907)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
':P730_ESTADO_PRESU:=''A'';',
'inv.caordtra_370.pr_validaciones_estado(p_estado_presu               => :P730_ESTADO_PRESU,',
'                     p_estado_presu_real         => :P730_ESTADO_PRESU_REAL,',
'                     p_fec_cierre                => :P730_FEC_CIERRE,',
'                     p_fec_entregado             => :P730_FEC_ENTREGADO,',
'                     p_fec_presupuestado         => :P730_FEC_PRESUPUESTADO,',
'                     p_fec_estado                => :P730_FEC_ESTADO,',
'                     p_creado_por                => :P730_CREADO_POR,',
'                     p_fec_creacion              => :P730_FEC_CREACION,',
'                     p_cod_usuario               => :APP_USER,',
'                     p_hora_creacion             => :P730_HORA_CREACION,',
'                     p_entregado_por             => :P730_ENTREGADO_POR,',
'                     p_presupuestado_por         =>  :P730_PRESUPUESTADO_POR,',
'                     p_hora_presupuesto          =>  :P730_HORA_PRESUPUESTO,',
'                     p_pendiente_por             =>  :P730_PENDIENTE_POR,',
'                     p_fec_pendiente             => :P730_FEC_PENDIENTE,',
'                     p_hora_pendiente            => :P730_HORA_PENDIENTE,',
'                     p_aprobado_por              => :P730_APROBADO_POR,',
'                     p_cod_empresa               => nvl(:P_COD_EMPRESA,''1''),',
'                     p_cod_forma                 =>  ''CAORDTRA'',',
'                     p_fec_aprobacion            =>  :P730_FEC_APROBACION,',
'                     p_hora_aprobada             =>  :P730_HORA_APROBADA,',
'                     p_fecha_estado_complicado   =>  :P730_FECHA_ESTADO_COMPLICADO,',
'                     p_cod_usuario_es_complicado =>  :P730_COD_USUAROP_ES_COMPLICADO,',
'                     p_fecha_modificado_garantia => :P730_FECHA_MODIFICADO_GARANTIA,',
'                     p_cod_usuario_mod_gar       =>  :P730_COD_USUARIO_MOD_GAR,',
'                     p_rechazado_por             => :P730_RECHAZADO_POR,',
'                     p_fec_rechazo               => :P730_FEC_RECHAZO,',
'                     p_hora_rechazado            =>  :P730_HORA_RECHAZADO,',
'                     p_verificado_por            => :P730_VERIFICADO_POR,',
'                     p_fec_verificado            =>  :P730_FEC_VERIFICADO,',
'                     p_hora_verificacion         => :P730_HORA_VERIFICACION,',
'                     p_autorizado_gar_por        => :P730_AUTORIZADO_GAR_POR,',
'                     p_fec_autorizado_gar_por    => :P730_FEC_AUTORIZADO_GAR_POR,',
'                     p_hora_autorizado_gar_por   => :P730_HORA_AUTORIZADO_GAR_POR,',
'                     p_presupuesto               => :P730_PRESUPUESTO,',
'                     p_cod_usuario_sin_rp        => :P730_COD_USUARIO_SIN_RP,',
'                     p_fec_sin_repuesto          => :P730_FEC_SIN_REPUESTO,',
'                     p_hora_sin_repuesto         => :P730_HORA_SIN_REPUESTO,',
'                     p_fec_im                    => :P730_FEC_IM,',
'                     p_reparado_im_por           => :P730_REPARADO_IM_POR,',
'                     p_tot_repuestos_call        => :P730_TOT_REPUESTOS_CALL,',
'                     p_mensaje_error             => :P0_MENSAJE_VALIDACION,',
'                     p_tip_comprobante           => :P730_TIP_COMPROBANTE,',
'                     p_ser_comprobante           => :P730_SER_COMPROBANTE,',
'                     p_nro_comprobante           => :P730_NRO_COMPROBANTE,',
'                     p_usuario                   => :APP_USER);',
'',
'',
'                     IF :P0_MENSAJE_VALIDACION IS NOT NULL THEN ',
'                         :P730_ESTADO_PRESU := :P730_ESTADO_AUX;',
'                     END IF;',
'EXCEPTION ',
'        WHEN OTHERS THEN ',
'            :P730_ESTADO_PRESU := :P730_ESTADO_AUX;',
'            :P0_MENSAJE_VALIDACION := sqlerrm;',
'END;'))
,p_attribute_02=>'P730_ESTADO_PRESU,P730_ESTADO_PRESU_REAL,P730_FEC_CIERRE,P730_FEC_ENTREGADO,P730_FEC_PRESUPUESTADO,P730_HORA_CREACION,P730_ENTREGADO_POR,P730_PENDIENTE_POR,P730_APROBADO_POR,P_COD_EMPRESA,P730_VERIFICADO_POR,P730_AUTORIZADO_GAR_POR,P730_COD_USUARIO_S'
||'IN_RP,P730_TOT_REPUESTOS_CALL,P730_TIP_COMPROBANTE,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE,P730_ESTADO_AUX'
,p_attribute_03=>'P730_ESTADO_PRESU,P730_ESTADO_PRESU_REAL,P730_FEC_PRESUPUESTADO,P730_FEC_ESTADO,P730_CREADO_POR,P730_FEC_CREACION,P730_HORA_CREACION,P730_PRESUPUESTADO_POR,P730_HORA_PRESUPUESTO,P730_PENDIENTE_POR,P730_FEC_PENDIENTE,P730_HORA_PENDIENTE,P730_APROBADO_'
||'POR,P730_FEC_APROBACION,P730_HORA_APROBADA,P730_COD_USUARIO_RENDICION,P730_COD_USUAROP_ES_COMPLICADO,P730_FECHA_ABANDONADO,P730_COD_USUARIO_MOD_GAR,P730_RECHAZADO_POR,P730_FEC_RECHAZO,P730_HORA_RECHAZADO,P730_VERIFICADO_POR,P730_FEC_VERIFICADO,P730_H'
||'ORA_VERIFICACION,P730_AUTORIZADO_GAR_POR,P730_FEC_AUTORIZADO_GAR_POR,P730_HORA_AUTORIZADO_GAR_POR,P730_COD_USUARIO_SIN_RP,P730_FEC_SIN_REPUESTO,P730_HORA_SIN_REPUESTO,P730_FEC_IM,P730_REPARADO_IM_POR,P0_MENSAJE_VALIDACION,P730_ESTADO_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(339827062586701517)
,p_event_id=>wwv_flow_imp.id(295810627556820907)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  p_nro_ot      NUMBER;',
'  p_cod_cliente varchar2(50);',
'  p_retorno     varchar2(3500);',
'  vmensaje      varchar2(3500);',
'  error         exception;',
'  vcantps       number;',
'begin',
'  ',
'                UPDATE vt_ordenes_trabajo a',
'                set  estado_presu                  = ''A''',
'               WHERE COD_EMPRESA=:P_COD_EMPRESA',
'               AND TIP_COMPROBANTE=''ORT'' ',
'               AND SER_COMPROBANTE=:P730_SER_COMPROBANTE',
'               AND NRO_COMPROBANTE=:P730_NRO_COMPROBANTE;',
'   /* inv.caordtra_370.pr_crea_ot_apex(nvl(:P730_NCI,:P730_RUC),',
':P730_NOM_CLIENTE,',
':P730_DIR_CLIENTE,',
':P730_PREFIJO||:P730_TEL_CLIENTE,',
':P730_COD_ARTICULO_OT,',
':P730_NRO_GARANTIA,',
':P730_SERIE_PRODUCTO,',
'to_char(sysdate,''dd/mm/yyyy''),',
':P730_FECHA_FACTURA,',
' :P730_NRO_FACTURA  ,',
':P730_COD_DISTRIBUIDOR ,',
':P730_COD_PROVEEDOR ,',
'NULL,NULL,NULL,NULL,',
':P730_COMENTARIO ,',
':P730_NRO_BOLETA_AM,',
'p_nro_ot ,',
'p_cod_cliente  ,p_retorno,',
'NULL,''U'',:P730_SER_COMPROBANTE,',
':P730_NRO_COMPROBANTE,',
'NULL,',
'NULL,',
':P730_OBSERV,',
':P730_CONCLUSION,',
':P730_DEPARTAMENTO,',
':P730_CIUDAD,',
':P730_EMAIL,',
':P730_PREFIJO||:P730_TEL_CLIENTE,',
'NULL,',
'NULL,',
'NULL,:P730_COD_ORIGEN,v(''app_user''),:P730_GARANTIA,:P730_IND_ZONA,',
':P730_PRESUPUESTO,:P730_IND_DELIVERY,',
':P730_IND_RETIRADO,',
':P730_FECHA_CO_DISTRIBUIDOR,',
':P730_NRO_COMPROBANTE_DISTR,',
':P730_CONTADOR_FACT_ART_DIST,',
':P730_TIPO_CIERRE,',
':P730_FEC_ESTADO,',
' :P730_VERIFICADO_POR,',
' :P730_FEC_VERIFICADO,',
' :P730_HORA_VERIFICACION,',
' :P730_IND_CORREO_PRESU,',
' :P730_RETIRADO_POR,',
' :P730_FECHA_RETIRADO,',
' :P730_HORA_RETIRADO,',
' :P730_FEC_RETIRADO,',
'  :P730_IND_ENTREGA,',
' :P0_MENSAJE,',
' :P730_CONT_OT,',
' :P730_CREADO_POR,',
' :P730_FEC_CREACION,',
'  :P730_HORA_CREACION,',
' :P730_PRESUPUESTADO_POR,',
'  :P730_FEC_PRESUPUESTADO,',
' :P730_HORA_PRESUPUESTO,',
'  :P730_PENDIENTE_POR,',
'  :P730_FEC_PENDIENTE,',
'  :P730_HORA_PENDIENTE,',
'  :P730_RECHAZADO_POR,',
'  :P730_FEC_RECHAZO,',
'  :P730_HORA_RECHAZADO,',
'  :P730_ENTREGADO_POR,',
'  :P730_FEC_ENTREGADO,',
'  :P730_HORA_ENTREGADO,',
'  :P730_COD_USUARIO_SIN_RP,',
'  :P730_FEC_SIN_REPUESTO,',
'   :P730_HORA_SIN_REPUESTO,',
'  :P730_COD_SUCURSAL,',
'  :P730_COD_MOTIVO_RECLAMO_JEFE,',
'   :P730_COD_CONDICION_VENTA,',
'  :P730_FEC_APROBACION,',
'  :P730_ANULADO,',
'  :P730_COD_MOTIVO_ANU,',
'    :P730_COD_MOTIVO_RECHAZO_PRESU,',
'  :P730_IND_RECLAMO_STA,',
'   :P730_COD_MOTIVO_RECLAMO_STA,',
'   :P730_TIPO_RECLAMO,',
'   :P730_COD_MOTIVO_RECLAMO_SPP,',
'  :P730_COD_ARTICULO_OT_CALL,',
'   :P730_APROBADO_POR,',
'  :P730_HORA_APROBADA,',
'  :P730_FEC_MODIF_APROBADO,',
'  :P730_FEC_MODIF_PRESUPUESTO,',
'  :P730_FEC_MODIF_PENDIENTE,',
'   :P730_FEC_MODIF_RECHAZADO,',
'  :P730_FEC_MODIF_VERIFICADO,',
'  :P730_IND_LIQUIDA,',
'   :P730_IND_ABANDONADO,',
'   :P730_TOT_REPUESTOS_CALL,',
'  :P730_COD_MOTIVO_COMPRA_NUEVA,',
'   :P730_CELULAR_CONTACTO,',
'  :P730_CORREO_CONTACTO,',
'  :P730_FECHA_MODIFICADO_GARANTIA,',
':P730_FECHA_ESTADO_COMPLICADO,',
':P730_IND_ADICIONAL,',
':P730_SITIO,',
':P730_IND_CORREO_PE,',
':P730_IND_ENVIADO,',
' :P730_FEC_IM,',
' :P730_REPARADO_IM_POR,:P730_HORA_IM,',
'  :P730_FINALIZADO_POR,',
'  :P730_FEC_MODIF_CERRADO,',
'  :P730_HORA_FINALIZADO,',
'  :P730_NCR,',
'  :P730_CAMBIO,',
'  :P730_IND_CARNEO,',
'  :P730_ESTADO_PRESU,',
'  :P730_FEC_FINALIZADO,',
' :P730_USUARIO_PED_REP,',
' :P730_FECHA_PED_REP,',
' :P730_HORA_PED_REP, :P730_COD_USUARIO_ESTADO_COMPLI, :P730_COD_USUARIO_RENDICION, :P730_FEC_RENDIDO, :P730_IND_RENDIDO, :P730_FECHA_LIQUIDA, :P730_USUARIO_LIQUIDA, :P730_COD_USUARIO_MOD_GAR,',
' :P730_FECHA_ABANDONADO,',
' :P730_COD_USUARIO_ABANDONADO,',
' null,:P730_COD_SUCURSAL_DIST,',
' :P730_IND_SNC,',
'  :P730_NRO_TICKET,',
' :P730_IND_RECLAMO,',
' :P730_COD_PROBLEMA ,',
':P730_COD_SOLUCION,',
':P730_COMENTARIO_RECLAMO,',
':P730_FECHA_FINALIZACION,',
':P730_ESTADO_RECLAMO,',
':P730_CERRADO,',
':P730_OT_ANTERIOR,',
':P730_SER_OT_ANTERIOR,',
':P730_LATITUD_LONGITUD,',
':P730_REFERENCIAS,',
':P730_RUC,:P730_ci,',
':P730_IND_SRP);*/',
'commit;',
'            exception when others then',
'             Raise_Application_Error(-20999,''error guardar ot  ''||sqlerrm);',
'             end; '))
,p_attribute_02=>'P730_CI, P730_RUC,P730_NOM_CLIENTE,P730_DIR_CLIENTE,P730_PREFIJO,P730_TEL_CLIENTE, P730_COD_ARTICULO_OT, P730_NRO_GARANTIA, P730_SERIE_PRODUCTO,  P730_FECHA_FACTURA, P730_NRO_FACTURA, P730_COD_DISTRIBUIDOR, P730_COD_PROVEEDOR,  P730_COMENTARIO, P730_'
||'NRO_BOLETA_AM, P730_COD_CLIENTE,  P730_SER_COMPROBANTE,  P730_NRO_COMPROBANTE,  P730_OBSERV,  P730_CONCLUSION,  P730_DEPARTAMENTO,  P730_CIUDAD,  P730_EMAIL, P730_PREFIJO,P730_TEL_CLIENTE, P730_COD_ORIGEN, P730_GARANTIA, P730_IND_ZONA, P730_PRESUPUES'
||'TO, P730_IND_DELIVERY, P730_IND_RETIRADO, P730_FECHA_CO_DISTRIBUIDOR,  P730_NRO_COMPROBANTE_DISTR, P730_CONTADOR_FACT_ART_DIST, P730_TIPO_CIERRE, P730_FEC_ESTADO, P730_VERIFICADO_POR, P730_FEC_VERIFICADO, P730_HORA_VERIFICACION,  P730_IND_CORREO_PRES'
||'U, P730_RETIRADO_POR, P730_FECHA_RETIRADO, P730_HORA_RETIRADO, P730_FEC_RETIRADO, P730_IND_ENTREGA,  P0_MENSAJE, P730_CONT_OT, P730_CREADO_POR, P730_FEC_CREACION, P730_HORA_CREACION, P730_PRESUPUESTADO_POR,  P730_FEC_PRESUPUESTADO, P730_HORA_PRESUPUE'
||'STO, P730_PENDIENTE_POR, P730_FEC_PENDIENTE, P730_HORA_PENDIENTE, P730_RECHAZADO_POR,  P730_FEC_RECHAZO, P730_HORA_RECHAZADO, P730_ENTREGADO_POR,  P730_FEC_ENTREGADO,  P730_HORA_ENTREGADO,  P730_COD_USUARIO_SIN_RP,  P730_FEC_SIN_REPUESTO,  P730_HORA_'
||'SIN_REPUESTO,  P730_COD_SUCURSAL,  P730_COD_MOTIVO_RECLAMO_JEFE,  P730_COD_CONDICION_VENTA,  P730_FEC_APROBACION,  P730_ANULADO,  P730_COD_MOTIVO_ANU,  P730_COD_MOTIVO_RECHAZO_PRESU,  P730_IND_RECLAMO_STA,  P730_COD_MOTIVO_RECLAMO_STA,  P730_TIPO_REC'
||'LAMO,  P730_COD_MOTIVO_RECLAMO_SPP,  P730_COD_ARTICULO_OT_CALL,  P730_APROBADO_POR,  P730_HORA_APROBADA,  P730_FEC_MODIF_APROBADO,  P730_FEC_MODIF_PRESUPUESTO,  P730_FEC_MODIF_PENDIENTE,  P730_FEC_MODIF_RECHAZADO,  P730_FEC_MODIF_VERIFICADO,  P730_IN'
||'D_LIQUIDA,  P730_IND_ABANDONADO,  P730_TOT_REPUESTOS_CALL,  P730_COD_MOTIVO_COMPRA_NUEVA,  P730_CELULAR_CONTACTO,  P730_CORREO_CONTACTO,  P730_FECHA_MODIFICADO_GARANTIA,  P730_FECHA_ESTADO_COMPLICADO,  P730_IND_ADICIONAL,  P730_SITIO,  P730_IND_CORRE'
||'O_PE,  P730_IND_ENVIADO,  P730_FEC_IM,  P730_REPARADO_IM_POR,  P730_HORA_IM,  P730_FINALIZADO_POR,  P730_FEC_MODIF_CERRADO,  P730_HORA_FINALIZADO,  P730_NCR,  P730_CAMBIO,  P730_IND_CARNEO,  P730_ESTADO_PRESU,  P730_FEC_FINALIZADO,  P730_USUARIO_PED_'
||'REP,  P730_FECHA_PED_REP,  P730_HORA_PED_REP,  P730_COD_USUARIO_ESTADO_COMPLI,  P730_COD_USUARIO_RENDICION,  P730_FEC_RENDIDO,  P730_IND_RENDIDO,  P730_FECHA_LIQUIDA,  P730_USUARIO_LIQUIDA,  P730_COD_USUARIO_MOD_GAR,  P730_FECHA_ABANDONADO,  P730_COD'
||'_USUARIO_ABANDONADO,  P730_COD_SUCURSAL_DIST,  P730_IND_SNC,  P730_NRO_TICKET,  P730_IND_RECLAMO,  P730_COD_PROBLEMA,  P730_COD_SOLUCION,  P730_COMENTARIO_RECLAMO,  P730_FECHA_FINALIZACION,  P730_ESTADO_RECLAMO,  P730_CERRADO,  P730_OT_ANTERIOR,  P73'
||'0_SER_OT_ANTERIOR,  P730_LATITUD_LONGITUD,  P730_REFERENCIAS,   P730_RUC,  P730_CI,P730_IND_SRP'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295810864423820909)
,p_event_id=>wwv_flow_imp.id(295810627556820907)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Presupuesto AProbado'
,p_attribute_02=>'Presupuesto Aprobado'
,p_attribute_06=>'Aceptar'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(345316169060285242)
,p_name=>'da_srp'
,p_event_sequence=>870
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P730_IND_SRP'
,p_condition_element=>'P730_IND_SRP'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(345316296658285243)
,p_event_id=>wwv_flow_imp.id(345316169060285242)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta Seguro de Tildar SRP?'
,p_attribute_02=>'Servicio SRP'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(345316649261285247)
,p_event_id=>wwv_flow_imp.id(345316169060285242)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if   :P730_IND_SRP=''S'' THEN',
'            declare',
'                l_order_id    number;',
'                l_order_id_det    number;',
'                v_codigo NUMBER  :=  0;',
'                VARTICULO_SRP VARCHAR2(400):=''FLETESERV02'';',
'                VPRECIO_SRP NUMBER:=50000;',
'            begin',
'                begin ',
'                    select  count(*)',
'                        into v_codigo',
'                          from apex_collections',
'                         where collection_name = ''VT_MANO_OBRA''',
'                         and c001 = upper(:P402_COD_ARTICULO);',
'                    exception ',
'                        when others then ',
'                            v_codigo := 0;',
'                end;',
'                IF v_codigo >  0 THEN ',
'                    RAISE_APPLICATION_ERROR(-20001, ''Ya existe la mano de obra seleccionada'');',
'                else  ',
'                  ',
'                        apex_collection.add_member(',
'                                                    p_collection_name => ''VT_MANO_OBRA'',',
'                                                    p_c001            => VARTICULO_SRP, ',
'                                                    p_c002            => '''', ',
'                                                    p_c003            => VPRECIO_SRP,',
'                                                    p_c004            => VPRECIO_SRP , ',
'                                                    p_c005            => ''29'',--:P402_COD_TECNICO, ',
'                                                    p_c006            => ''N'', ',
'                                                    p_c007            => ''N'',',
'                                                    p_c008            => 0 , ',
'                                                    p_c009            => 0,',
'                                                    p_c010            => 0, ',
'                                                    p_c011            => 0 , ',
'                                                    p_c012            => 0,',
'                                                    p_c013            =>  0 ,',
'                                                    p_c014            => ''I''',
'                                                    )  ;  ',
'                 end if;    ',
'       exception',
'            WHEN OTHERs THEN',
'                apex_error.add_error(p_message => sqlerrm,',
'	                   p_display_location      => apex_error.c_inline_in_notification',
'                   );',
'        END;',
'ELSE',
'    apex_application.g_print_success_message := ''<span style="color:red">Mano de OBRA no registrada</span>'';  ',
'END IF;',
'',
' '))
,p_attribute_02=>'P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(345316734882285248)
,p_event_id=>wwv_flow_imp.id(345316169060285242)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'            cursor REG is',
'            select seq_id,',
'                    c001 COD_ARTICULO,',
'                    c003 PRECIO_UNITARIO,',
'                    c004 MONTO_TOTAL,',
'                    c005 COD_TECNICO,',
'                    c008 PORC_CLIENTE , ',
'                    c009 TIPO_CAMBIO,',
'                    c010 COM_TEC, ',
'                    c011 COM_JEF , ',
'                    c012 MON_GAR,',
'                    c013 MON_ADICIONAL,',
'                    c020 MONTO_COMISION_TECNICO,',
'                    c021  MONTO_COMISION_jEFE_tECNICO',
'                from apex_collections',
'                where collection_name = ''VT_MANO_OBRA''',
'                AND c014=''I''',
'                order by 1 asc;',
'    begin',
'            for x in REG loop',
'                insert into inv.vt_ordenes_trabajo_mo',
'                        (cod_empresa,tip_comprobante,ser_comprobante,nro_comprobante,  ',
'                        cod_articulo,',
'                        cantidad,',
'                        cod_moneda,',
'                        tip_cambio,',
'                        monto,',
'                        cod_tecnico,',
'                        ind_reclamo, ',
'                        garantia,',
'                        monto_venta,',
'                        monto_comision_tecnico,',
'                        monto_comision_jefe_tecnico,',
'                        monto_adicional, ',
'                        porcentaje_cliente,',
'                        monto_gar_jt)',
'                        values',
'                        (''1'',''ORT'',:P730_SER_COMPROBANTE, (NVL(:P730_NRO_COMPROBANTE,:P730_PARAM_NRO_OT)),  ',
'                        X.COD_ARTICULO,1,1,x.TIPO_CAMBIO,x.PRECIO_UNITARIO,x.cod_tecnico,''N'',',
'                        nvl(:P730_GARANTIA,''N''),x.MONTO_TOTAL,x.MONTO_COMISION_TECNICO ,x.MONTO_COMISION_jEFE_tECNICO, x.MON_ADICIONAL,',
'                        X.PORC_CLIENTE,x.MON_GAR);',
'            end loop;',
'            COMMIT;',
'',
'        apex_collection.create_OR_TRUNCATE_collection(''VT_MANO_OBRA'');',
'    exception',
'        when others then',
'                  Raise_Application_Error(-20999,''error guardar LA MO da_srp  ''||sqlerrm);',
'                ',
'    end;',
''))
,p_attribute_02=>'P730_CI, P730_RUC,P730_NOM_CLIENTE,P730_DIR_CLIENTE,P730_PREFIJO,P730_TEL_CLIENTE, P730_COD_ARTICULO_OT, P730_NRO_GARANTIA, P730_SERIE_PRODUCTO,  P730_FECHA_FACTURA, P730_NRO_FACTURA, P730_COD_DISTRIBUIDOR, P730_COD_PROVEEDOR,  P730_COMENTARIO, P730_'
||'NRO_BOLETA_AM, P730_COD_CLIENTE,  P730_SER_COMPROBANTE,  P730_NRO_COMPROBANTE,  P730_OBSERV,  P730_CONCLUSION,  P730_DEPARTAMENTO,  P730_CIUDAD,  P730_EMAIL, P730_PREFIJO,P730_TEL_CLIENTE, P730_COD_ORIGEN, P730_GARANTIA, P730_IND_ZONA, P730_PRESUPUES'
||'TO, P730_IND_DELIVERY, P730_IND_RETIRADO, P730_FECHA_CO_DISTRIBUIDOR,  P730_NRO_COMPROBANTE_DISTR, P730_CONTADOR_FACT_ART_DIST, P730_TIPO_CIERRE, P730_FEC_ESTADO, P730_VERIFICADO_POR, P730_FEC_VERIFICADO, P730_HORA_VERIFICACION,  P730_IND_CORREO_PRES'
||'U, P730_RETIRADO_POR, P730_FECHA_RETIRADO, P730_HORA_RETIRADO, P730_FEC_RETIRADO, P730_IND_ENTREGA,  P0_MENSAJE, P730_CONT_OT, P730_CREADO_POR, P730_FEC_CREACION, P730_HORA_CREACION, P730_PRESUPUESTADO_POR,  P730_FEC_PRESUPUESTADO, P730_HORA_PRESUPUE'
||'STO, P730_PENDIENTE_POR, P730_FEC_PENDIENTE, P730_HORA_PENDIENTE, P730_RECHAZADO_POR,  P730_FEC_RECHAZO, P730_HORA_RECHAZADO, P730_ENTREGADO_POR,  P730_FEC_ENTREGADO,  P730_HORA_ENTREGADO,  P730_COD_USUARIO_SIN_RP,  P730_FEC_SIN_REPUESTO,  P730_HORA_'
||'SIN_REPUESTO,  P730_COD_SUCURSAL,  P730_COD_MOTIVO_RECLAMO_JEFE,  P730_COD_CONDICION_VENTA,  P730_FEC_APROBACION,  P730_ANULADO,  P730_COD_MOTIVO_ANU,  P730_COD_MOTIVO_RECHAZO_PRESU,  P730_IND_RECLAMO_STA,  P730_COD_MOTIVO_RECLAMO_STA,  P730_TIPO_REC'
||'LAMO,  P730_COD_MOTIVO_RECLAMO_SPP,  P730_COD_ARTICULO_OT_CALL,  P730_APROBADO_POR,  P730_HORA_APROBADA,  P730_FEC_MODIF_APROBADO,  P730_FEC_MODIF_PRESUPUESTO,  P730_FEC_MODIF_PENDIENTE,  P730_FEC_MODIF_RECHAZADO,  P730_FEC_MODIF_VERIFICADO,  P730_IN'
||'D_LIQUIDA,  P730_IND_ABANDONADO,  P730_TOT_REPUESTOS_CALL,  P730_COD_MOTIVO_COMPRA_NUEVA,  P730_CELULAR_CONTACTO,  P730_CORREO_CONTACTO,  P730_FECHA_MODIFICADO_GARANTIA,  P730_FECHA_ESTADO_COMPLICADO,  P730_IND_ADICIONAL,  P730_SITIO,  P730_IND_CORRE'
||'O_PE,  P730_IND_ENVIADO,  P730_FEC_IM,  P730_REPARADO_IM_POR,  P730_HORA_IM,  P730_FINALIZADO_POR,  P730_FEC_MODIF_CERRADO,  P730_HORA_FINALIZADO,  P730_NCR,  P730_CAMBIO,  P730_IND_CARNEO,  P730_ESTADO_PRESU,  P730_FEC_FINALIZADO,  P730_USUARIO_PED_'
||'REP,  P730_FECHA_PED_REP,  P730_HORA_PED_REP,  P730_COD_USUARIO_ESTADO_COMPLI,  P730_COD_USUARIO_RENDICION,  P730_FEC_RENDIDO,  P730_IND_RENDIDO,  P730_FECHA_LIQUIDA,  P730_USUARIO_LIQUIDA,  P730_COD_USUARIO_MOD_GAR,  P730_FECHA_ABANDONADO,  P730_COD'
||'_USUARIO_ABANDONADO,  P730_COD_SUCURSAL_DIST,  P730_IND_SNC,  P730_NRO_TICKET,  P730_IND_RECLAMO,  P730_COD_PROBLEMA,  P730_COD_SOLUCION,  P730_COMENTARIO_RECLAMO,  P730_FECHA_FINALIZACION,  P730_ESTADO_RECLAMO,  P730_CERRADO,  P730_OT_ANTERIOR,  P73'
||'0_SER_OT_ANTERIOR,  P730_LATITUD_LONGITUD,  P730_REFERENCIAS,   P730_RUC,  P730_CI'
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
 p_id=>wwv_flow_imp.id(345316476198285245)
,p_event_id=>wwv_flow_imp.id(345316169060285242)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  p_nro_ot      NUMBER;',
'  p_cod_cliente varchar2(50);',
'  p_retorno     varchar2(3500);',
'  vmensaje      varchar2(3500);',
'  error         exception;',
'  vcantps       number;',
'begin',
'inv.caordtra_370.pr_crea_ot_apex(nvl(:P730_NCI,:P730_RUC),',
':P730_NOM_CLIENTE,',
':P730_DIR_CLIENTE,',
':P730_PREFIJO||:P730_TEL_CLIENTE,',
':P730_COD_ARTICULO_OT,',
':P730_NRO_GARANTIA,',
':P730_SERIE_PRODUCTO,',
'to_char(sysdate,''dd/mm/yyyy''),',
':P730_FECHA_FACTURA,',
' :P730_NRO_FACTURA  ,',
':P730_COD_DISTRIBUIDOR ,',
':P730_COD_PROVEEDOR ,',
'NULL,NULL,NULL,NULL,',
':P730_COMENTARIO ,',
':P730_NRO_BOLETA_AM,',
'p_nro_ot ,',
'p_cod_cliente  ,p_retorno,',
'NULL,''U'',:P730_SER_COMPROBANTE,',
':P730_NRO_COMPROBANTE,',
'NULL,',
'NULL,',
':P730_OBSERV,',
':P730_CONCLUSION,',
':P730_DEPARTAMENTO,',
':P730_CIUDAD,',
':P730_EMAIL,',
':P730_PREFIJO||:P730_TEL_CLIENTE,',
'NULL,',
'NULL,',
'NULL,:P730_COD_ORIGEN,v(''app_user''),:P730_GARANTIA,:P730_IND_ZONA,',
':P730_PRESUPUESTO,:P730_IND_DELIVERY,',
':P730_IND_RETIRADO,',
':P730_FECHA_CO_DISTRIBUIDOR,',
':P730_NRO_COMPROBANTE_DISTR,',
':P730_CONTADOR_FACT_ART_DIST,',
':P730_TIPO_CIERRE,',
':P730_FEC_ESTADO,',
' :P730_VERIFICADO_POR,',
' :P730_FEC_VERIFICADO,',
' :P730_HORA_VERIFICACION,',
' :P730_IND_CORREO_PRESU,',
' :P730_RETIRADO_POR,',
' :P730_FECHA_RETIRADO,',
' :P730_HORA_RETIRADO,',
' :P730_FEC_RETIRADO,',
'  :P730_IND_ENTREGA,',
' :P0_MENSAJE,',
' :P730_CONT_OT,',
' :P730_CREADO_POR,',
' :P730_FEC_CREACION,',
'  :P730_HORA_CREACION,',
' :P730_PRESUPUESTADO_POR,',
'  :P730_FEC_PRESUPUESTADO,',
' :P730_HORA_PRESUPUESTO,',
'  :P730_PENDIENTE_POR,',
'  :P730_FEC_PENDIENTE,',
'  :P730_HORA_PENDIENTE,',
'  :P730_RECHAZADO_POR,',
'  :P730_FEC_RECHAZO,',
'  :P730_HORA_RECHAZADO,',
'  :P730_ENTREGADO_POR,',
'  :P730_FEC_ENTREGADO,',
'  :P730_HORA_ENTREGADO,',
'  :P730_COD_USUARIO_SIN_RP,',
'  :P730_FEC_SIN_REPUESTO,',
'   :P730_HORA_SIN_REPUESTO,',
'  :P730_COD_SUCURSAL,',
'  :P730_COD_MOTIVO_RECLAMO_JEFE,',
'   :P730_COD_CONDICION_VENTA,',
'  :P730_FEC_APROBACION,',
'  :P730_ANULADO,',
'  :P730_COD_MOTIVO_ANU,',
'    :P730_COD_MOTIVO_RECHAZO_PRESU,',
'  :P730_IND_RECLAMO_STA,',
'   :P730_COD_MOTIVO_RECLAMO_STA,',
'   :P730_TIPO_RECLAMO,',
'   :P730_COD_MOTIVO_RECLAMO_SPP,',
'  :P730_COD_ARTICULO_OT_CALL,',
'   :P730_APROBADO_POR,',
'  :P730_HORA_APROBADA,',
'  :P730_FEC_MODIF_APROBADO,',
'  :P730_FEC_MODIF_PRESUPUESTO,',
'  :P730_FEC_MODIF_PENDIENTE,',
'   :P730_FEC_MODIF_RECHAZADO,',
'  :P730_FEC_MODIF_VERIFICADO,',
'  :P730_IND_LIQUIDA,',
'   :P730_IND_ABANDONADO,',
'   :P730_TOT_REPUESTOS_CALL,',
'  :P730_COD_MOTIVO_COMPRA_NUEVA,',
'   :P730_CELULAR_CONTACTO,',
'  :P730_CORREO_CONTACTO,',
'  :P730_FECHA_MODIFICADO_GARANTIA,',
':P730_FECHA_ESTADO_COMPLICADO,',
':P730_IND_ADICIONAL,',
':P730_SITIO,',
':P730_IND_CORREO_PE,',
':P730_IND_ENVIADO,',
' :P730_FEC_IM,',
' :P730_REPARADO_IM_POR,:P730_HORA_IM,',
'  :P730_FINALIZADO_POR,',
'  :P730_FEC_MODIF_CERRADO,',
'  :P730_HORA_FINALIZADO,',
'  :P730_NCR,',
'  :P730_CAMBIO,',
'  :P730_IND_CARNEO,',
'  :P730_ESTADO_PRESU,',
'  :P730_FEC_FINALIZADO,',
' :P730_USUARIO_PED_REP,',
' :P730_FECHA_PED_REP,',
' :P730_HORA_PED_REP, :P730_COD_USUARIO_ESTADO_COMPLI, :P730_COD_USUARIO_RENDICION, :P730_FEC_RENDIDO, :P730_IND_RENDIDO, :P730_FECHA_LIQUIDA, :P730_USUARIO_LIQUIDA, :P730_COD_USUARIO_MOD_GAR,',
' :P730_FECHA_ABANDONADO,',
' :P730_COD_USUARIO_ABANDONADO,',
' null,:P730_COD_SUCURSAL_DIST,',
' :P730_IND_SNC,',
'  :P730_NRO_TICKET,',
' :P730_IND_RECLAMO,',
' :P730_COD_PROBLEMA ,',
':P730_COD_SOLUCION,',
':P730_COMENTARIO_RECLAMO,',
':P730_FECHA_FINALIZACION,',
':P730_ESTADO_RECLAMO,',
':P730_CERRADO,',
':P730_OT_ANTERIOR,',
':P730_SER_OT_ANTERIOR,',
':P730_LATITUD_LONGITUD,',
':P730_REFERENCIAS,',
':P730_RUC,:P730_ci,:P730_IND_SRP);',
'commit;',
'            exception when others then',
'             Raise_Application_Error(-20999,''error guardar ot  ''||sqlerrm);',
'             end; '))
,p_attribute_02=>'P730_CI, P730_RUC,P730_NOM_CLIENTE,P730_DIR_CLIENTE,P730_PREFIJO,P730_TEL_CLIENTE, P730_COD_ARTICULO_OT, P730_NRO_GARANTIA, P730_SERIE_PRODUCTO,  P730_FECHA_FACTURA, P730_NRO_FACTURA, P730_COD_DISTRIBUIDOR, P730_COD_PROVEEDOR,  P730_COMENTARIO, P730_'
||'NRO_BOLETA_AM, P730_COD_CLIENTE,  P730_SER_COMPROBANTE,  P730_NRO_COMPROBANTE,  P730_OBSERV,  P730_CONCLUSION,  P730_DEPARTAMENTO,  P730_CIUDAD,  P730_EMAIL, P730_PREFIJO,P730_TEL_CLIENTE, P730_COD_ORIGEN, P730_GARANTIA, P730_IND_ZONA, P730_PRESUPUES'
||'TO, P730_IND_DELIVERY, P730_IND_RETIRADO, P730_FECHA_CO_DISTRIBUIDOR,  P730_NRO_COMPROBANTE_DISTR, P730_CONTADOR_FACT_ART_DIST, P730_TIPO_CIERRE, P730_FEC_ESTADO, P730_VERIFICADO_POR, P730_FEC_VERIFICADO, P730_HORA_VERIFICACION,  P730_IND_CORREO_PRES'
||'U, P730_RETIRADO_POR, P730_FECHA_RETIRADO, P730_HORA_RETIRADO, P730_FEC_RETIRADO, P730_IND_ENTREGA,  P0_MENSAJE, P730_CONT_OT, P730_CREADO_POR, P730_FEC_CREACION, P730_HORA_CREACION, P730_PRESUPUESTADO_POR,  P730_FEC_PRESUPUESTADO, P730_HORA_PRESUPUE'
||'STO, P730_PENDIENTE_POR, P730_FEC_PENDIENTE, P730_HORA_PENDIENTE, P730_RECHAZADO_POR,  P730_FEC_RECHAZO, P730_HORA_RECHAZADO, P730_ENTREGADO_POR,  P730_FEC_ENTREGADO,  P730_HORA_ENTREGADO,  P730_COD_USUARIO_SIN_RP,  P730_FEC_SIN_REPUESTO,  P730_HORA_'
||'SIN_REPUESTO,  P730_COD_SUCURSAL,  P730_COD_MOTIVO_RECLAMO_JEFE,  P730_COD_CONDICION_VENTA,  P730_FEC_APROBACION,  P730_ANULADO,  P730_COD_MOTIVO_ANU,  P730_COD_MOTIVO_RECHAZO_PRESU,  P730_IND_RECLAMO_STA,  P730_COD_MOTIVO_RECLAMO_STA,  P730_TIPO_REC'
||'LAMO,  P730_COD_MOTIVO_RECLAMO_SPP,  P730_COD_ARTICULO_OT_CALL,  P730_APROBADO_POR,  P730_HORA_APROBADA,  P730_FEC_MODIF_APROBADO,  P730_FEC_MODIF_PRESUPUESTO,  P730_FEC_MODIF_PENDIENTE,  P730_FEC_MODIF_RECHAZADO,  P730_FEC_MODIF_VERIFICADO,  P730_IN'
||'D_LIQUIDA,  P730_IND_ABANDONADO,  P730_TOT_REPUESTOS_CALL,  P730_COD_MOTIVO_COMPRA_NUEVA,  P730_CELULAR_CONTACTO,  P730_CORREO_CONTACTO,  P730_FECHA_MODIFICADO_GARANTIA,  P730_FECHA_ESTADO_COMPLICADO,  P730_IND_ADICIONAL,  P730_SITIO,  P730_IND_CORRE'
||'O_PE,  P730_IND_ENVIADO,  P730_FEC_IM,  P730_REPARADO_IM_POR,  P730_HORA_IM,  P730_FINALIZADO_POR,  P730_FEC_MODIF_CERRADO,  P730_HORA_FINALIZADO,  P730_NCR,  P730_CAMBIO,  P730_IND_CARNEO,  P730_ESTADO_PRESU,  P730_FEC_FINALIZADO,  P730_USUARIO_PED_'
||'REP,  P730_FECHA_PED_REP,  P730_HORA_PED_REP,  P730_COD_USUARIO_ESTADO_COMPLI,  P730_COD_USUARIO_RENDICION,  P730_FEC_RENDIDO,  P730_IND_RENDIDO,  P730_FECHA_LIQUIDA,  P730_USUARIO_LIQUIDA,  P730_COD_USUARIO_MOD_GAR,  P730_FECHA_ABANDONADO,  P730_COD'
||'_USUARIO_ABANDONADO,  P730_COD_SUCURSAL_DIST,  P730_IND_SNC,  P730_NRO_TICKET,  P730_IND_RECLAMO,  P730_COD_PROBLEMA,  P730_COD_SOLUCION,  P730_COMENTARIO_RECLAMO,  P730_FECHA_FINALIZACION,  P730_ESTADO_RECLAMO,  P730_CERRADO,  P730_OT_ANTERIOR,  P73'
||'0_SER_OT_ANTERIOR,  P730_LATITUD_LONGITUD,  P730_REFERENCIAS,   P730_RUC,  P730_CI,P730_IND_SRP'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(345316505330285246)
,p_event_id=>wwv_flow_imp.id(345316169060285242)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Presupuesto AProbado'
,p_attribute_02=>'Presupuesto Aprobado'
,p_attribute_06=>'Aceptar'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(295811376442820914)
,p_name=>'da_RECHAZA_presupuesto'
,p_event_sequence=>880
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(345312072019285201)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295811473386820915)
,p_event_id=>wwv_flow_imp.id(295811376442820914)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Esta Seguro de RECHAZAR el Presupuesto?'
,p_attribute_02=>'Aprobar Presupuesto'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295812148336820922)
,p_event_id=>wwv_flow_imp.id(295811376442820914)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'       IF :P730_COD_MOTIVO_RECHAZO_PRES IS  NULL   THEN ',
'        RAISE_APPLICATION_ERROR(-20001, ''Debe Seleccionar un motivo de rechazo!'');',
'       end if;',
'EXCEPTION ',
'        WHEN OTHERS THEN ',
'            :P730_ESTADO_PRESU := :P730_ESTADO_AUX;',
'            :P0_MENSAJE_VALIDACION := sqlerrm;',
'END;'))
,p_attribute_02=>'P730_ESTADO_PRESU,P730_COD_MOTIVO_RECHAZO_PRES'
,p_attribute_03=>'P0_MENSAJE_VALIDACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295811522461820916)
,p_event_id=>wwv_flow_imp.id(295811376442820914)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if     :P730_COD_MOTIVO_RECHAZO_PRES IS  not NULL   THEN ',
'BEGIN ',
':P730_ESTADO_PRESU:=''R'';',
'inv.caordtra_370.pr_validaciones_estado(p_estado_presu               => :P730_ESTADO_PRESU,',
'                     p_estado_presu_real         => :P730_ESTADO_PRESU_REAL,',
'                     p_fec_cierre                => :P730_FEC_CIERRE,',
'                     p_fec_entregado             => :P730_FEC_ENTREGADO,',
'                     p_fec_presupuestado         => :P730_FEC_PRESUPUESTADO,',
'                     p_fec_estado                => :P730_FEC_ESTADO,',
'                     p_creado_por                => :P730_CREADO_POR,',
'                     p_fec_creacion              => :P730_FEC_CREACION,',
'                     p_cod_usuario               => :APP_USER,',
'                     p_hora_creacion             => :P730_HORA_CREACION,',
'                     p_entregado_por             => :P730_ENTREGADO_POR,',
'                     p_presupuestado_por         =>  :P730_PRESUPUESTADO_POR,',
'                     p_hora_presupuesto          =>  :P730_HORA_PRESUPUESTO,',
'                     p_pendiente_por             =>  :P730_PENDIENTE_POR,',
'                     p_fec_pendiente             => :P730_FEC_PENDIENTE,',
'                     p_hora_pendiente            => :P730_HORA_PENDIENTE,',
'                     p_aprobado_por              => :P730_APROBADO_POR,',
'                     p_cod_empresa               => :P_COD_EMPRESA,',
'                     p_cod_forma                 =>  ''CAORDTRA'',',
'                     p_fec_aprobacion            =>  :P730_FEC_APROBACION,',
'                     p_hora_aprobada             =>  :P730_HORA_APROBADA,',
'                     p_fecha_estado_complicado   =>  :P730_FECHA_ESTADO_COMPLICADO,',
'                     p_cod_usuario_es_complicado =>  :P730_COD_USUAROP_ES_COMPLICADO,',
'                     p_fecha_modificado_garantia => :P730_FECHA_MODIFICADO_GARANTIA,',
'                     p_cod_usuario_mod_gar       =>  :P730_COD_USUARIO_MOD_GAR,',
'                     p_rechazado_por             => :P730_RECHAZADO_POR,',
'                     p_fec_rechazo               => :P730_FEC_RECHAZO,',
'                     p_hora_rechazado            =>  :P730_HORA_RECHAZADO,',
'                     p_verificado_por            => :P730_VERIFICADO_POR,',
'                     p_fec_verificado            =>  :P730_FEC_VERIFICADO,',
'                     p_hora_verificacion         => :P730_HORA_VERIFICACION,',
'                     p_autorizado_gar_por        => :P730_AUTORIZADO_GAR_POR,',
'                     p_fec_autorizado_gar_por    => :P730_FEC_AUTORIZADO_GAR_POR,',
'                     p_hora_autorizado_gar_por   => :P730_HORA_AUTORIZADO_GAR_POR,',
'                     p_presupuesto               => :P730_PRESUPUESTO,',
'                     p_cod_usuario_sin_rp        => :P730_COD_USUARIO_SIN_RP,',
'                     p_fec_sin_repuesto          => :P730_FEC_SIN_REPUESTO,',
'                     p_hora_sin_repuesto         => :P730_HORA_SIN_REPUESTO,',
'                     p_fec_im                    => :P730_FEC_IM,',
'                     p_reparado_im_por           => :P730_REPARADO_IM_POR,',
'                     p_tot_repuestos_call        => :P730_TOT_REPUESTOS_CALL,',
'                     p_mensaje_error             => :P0_MENSAJE_VALIDACION,',
'                     p_tip_comprobante           => :P730_TIP_COMPROBANTE,',
'                     p_ser_comprobante           => :P730_SER_COMPROBANTE,',
'                     p_nro_comprobante           => :P730_NRO_COMPROBANTE,',
'                     p_usuario                   => :APP_USER);',
'',
'',
'                     IF :P0_MENSAJE_VALIDACION IS NOT NULL THEN ',
'                         :P730_ESTADO_PRESU := :P730_ESTADO_AUX;',
'                     END IF;',
'EXCEPTION ',
'        WHEN OTHERS THEN ',
'            :P730_ESTADO_PRESU := :P730_ESTADO_AUX;',
'            :P0_MENSAJE_VALIDACION := sqlerrm;',
'END;',
'end if;'))
,p_attribute_02=>'P730_ESTADO_PRESU,P730_ESTADO_PRESU_REAL,P730_FEC_CIERRE,P730_FEC_ENTREGADO,P730_FEC_PRESUPUESTADO,P730_HORA_CREACION,P730_ENTREGADO_POR,P730_PENDIENTE_POR,P730_APROBADO_POR,P_COD_EMPRESA,P730_VERIFICADO_POR,P730_AUTORIZADO_GAR_POR,P730_COD_USUARIO_S'
||'IN_RP,P730_TOT_REPUESTOS_CALL,P730_TIP_COMPROBANTE,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE,P730_ESTADO_AUX,P730_COD_MOTIVO_RECHAZO_PRES'
,p_attribute_03=>'P730_ESTADO_PRESU,P730_ESTADO_PRESU_REAL,P730_FEC_PRESUPUESTADO,P730_FEC_ESTADO,P730_CREADO_POR,P730_FEC_CREACION,P730_HORA_CREACION,P730_PRESUPUESTADO_POR,P730_HORA_PRESUPUESTO,P730_PENDIENTE_POR,P730_FEC_PENDIENTE,P730_HORA_PENDIENTE,P730_APROBADO_'
||'POR,P730_FEC_APROBACION,P730_HORA_APROBADA,P730_COD_USUARIO_RENDICION,P730_COD_USUAROP_ES_COMPLICADO,P730_FECHA_ABANDONADO,P730_COD_USUARIO_MOD_GAR,P730_RECHAZADO_POR,P730_FEC_RECHAZO,P730_HORA_RECHAZADO,P730_VERIFICADO_POR,P730_FEC_VERIFICADO,P730_H'
||'ORA_VERIFICACION,P730_AUTORIZADO_GAR_POR,P730_FEC_AUTORIZADO_GAR_POR,P730_HORA_AUTORIZADO_GAR_POR,P730_COD_USUARIO_SIN_RP,P730_FEC_SIN_REPUESTO,P730_HORA_SIN_REPUESTO,P730_FEC_IM,P730_REPARADO_IM_POR,P0_MENSAJE_VALIDACION,P730_ESTADO_AUX'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(339826932347701516)
,p_event_id=>wwv_flow_imp.id(295811376442820914)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  p_nro_ot      NUMBER;',
'  p_cod_cliente varchar2(50);',
'  p_retorno     varchar2(3500);',
'  vmensaje      varchar2(3500);',
'  error         exception;',
'  vcantps       number;',
'begin',
'',
'   UPDATE vt_ordenes_trabajo a',
'                set  estado_presu                  = ''R''',
'               WHERE COD_EMPRESA=:P_COD_EMPRESA',
'               AND TIP_COMPROBANTE=''ORT'' ',
'               AND SER_COMPROBANTE=:P730_SER_COMPROBANTE',
'               AND NRO_COMPROBANTE=:P730_NRO_COMPROBANTE;',
'exception',
'  when others then',
'    Raise_Application_Error(-20999, ''error guardar ot  '' || sqlerrm);',
'end;',
''))
,p_attribute_02=>'P730_CI, P730_RUC,P730_NOM_CLIENTE,P730_DIR_CLIENTE,P730_PREFIJO,P730_TEL_CLIENTE, P730_COD_ARTICULO_OT, P730_NRO_GARANTIA, P730_SERIE_PRODUCTO,  P730_FECHA_FACTURA, P730_NRO_FACTURA, P730_COD_DISTRIBUIDOR, P730_COD_PROVEEDOR,  P730_COMENTARIO, P730_'
||'NRO_BOLETA_AM, P730_COD_CLIENTE,  P730_SER_COMPROBANTE,  P730_NRO_COMPROBANTE,  P730_OBSERV,  P730_CONCLUSION,  P730_DEPARTAMENTO,  P730_CIUDAD,  P730_EMAIL, P730_PREFIJO,P730_TEL_CLIENTE, P730_COD_ORIGEN, P730_GARANTIA, P730_IND_ZONA, P730_PRESUPUES'
||'TO, P730_IND_DELIVERY, P730_IND_RETIRADO, P730_FECHA_CO_DISTRIBUIDOR,  P730_NRO_COMPROBANTE_DISTR, P730_CONTADOR_FACT_ART_DIST, P730_TIPO_CIERRE, P730_FEC_ESTADO, P730_VERIFICADO_POR, P730_FEC_VERIFICADO, P730_HORA_VERIFICACION,  P730_IND_CORREO_PRES'
||'U, P730_RETIRADO_POR, P730_FECHA_RETIRADO, P730_HORA_RETIRADO, P730_FEC_RETIRADO, P730_IND_ENTREGA,  P0_MENSAJE, P730_CONT_OT, P730_CREADO_POR, P730_FEC_CREACION, P730_HORA_CREACION, P730_PRESUPUESTADO_POR,  P730_FEC_PRESUPUESTADO, P730_HORA_PRESUPUE'
||'STO, P730_PENDIENTE_POR, P730_FEC_PENDIENTE, P730_HORA_PENDIENTE, P730_RECHAZADO_POR,  P730_FEC_RECHAZO, P730_HORA_RECHAZADO, P730_ENTREGADO_POR,  P730_FEC_ENTREGADO,  P730_HORA_ENTREGADO,  P730_COD_USUARIO_SIN_RP,  P730_FEC_SIN_REPUESTO,  P730_HORA_'
||'SIN_REPUESTO,  P730_COD_SUCURSAL,  P730_COD_MOTIVO_RECLAMO_JEFE,  P730_COD_CONDICION_VENTA,  P730_FEC_APROBACION,  P730_ANULADO,  P730_COD_MOTIVO_ANU,  P730_COD_MOTIVO_RECHAZO_PRESU,  P730_IND_RECLAMO_STA,  P730_COD_MOTIVO_RECLAMO_STA,  P730_TIPO_REC'
||'LAMO,  P730_COD_MOTIVO_RECLAMO_SPP,  P730_COD_ARTICULO_OT_CALL,  P730_APROBADO_POR,  P730_HORA_APROBADA,  P730_FEC_MODIF_APROBADO,  P730_FEC_MODIF_PRESUPUESTO,  P730_FEC_MODIF_PENDIENTE,  P730_FEC_MODIF_RECHAZADO,  P730_FEC_MODIF_VERIFICADO,  P730_IN'
||'D_LIQUIDA,  P730_IND_ABANDONADO,  P730_TOT_REPUESTOS_CALL,  P730_COD_MOTIVO_COMPRA_NUEVA,  P730_CELULAR_CONTACTO,  P730_CORREO_CONTACTO,  P730_FECHA_MODIFICADO_GARANTIA,  P730_FECHA_ESTADO_COMPLICADO,  P730_IND_ADICIONAL,  P730_SITIO,  P730_IND_CORRE'
||'O_PE,  P730_IND_ENVIADO,  P730_FEC_IM,  P730_REPARADO_IM_POR,  P730_HORA_IM,  P730_FINALIZADO_POR,  P730_FEC_MODIF_CERRADO,  P730_HORA_FINALIZADO,  P730_NCR,  P730_CAMBIO,  P730_IND_CARNEO,  P730_ESTADO_PRESU,  P730_FEC_FINALIZADO,  P730_USUARIO_PED_'
||'REP,  P730_FECHA_PED_REP,  P730_HORA_PED_REP,  P730_COD_USUARIO_ESTADO_COMPLI,  P730_COD_USUARIO_RENDICION,  P730_FEC_RENDIDO,  P730_IND_RENDIDO,  P730_FECHA_LIQUIDA,  P730_USUARIO_LIQUIDA,  P730_COD_USUARIO_MOD_GAR,  P730_FECHA_ABANDONADO,  P730_COD'
||'_USUARIO_ABANDONADO,  P730_COD_SUCURSAL_DIST,  P730_IND_SNC,  P730_NRO_TICKET,  P730_IND_RECLAMO,  P730_COD_PROBLEMA,  P730_COD_SOLUCION,  P730_COMENTARIO_RECLAMO,  P730_FECHA_FINALIZACION,  P730_ESTADO_RECLAMO,  P730_CERRADO,  P730_OT_ANTERIOR,  P73'
||'0_SER_OT_ANTERIOR,  P730_LATITUD_LONGITUD,  P730_REFERENCIAS,   P730_RUC,  P730_CI,P730_IND_SRP'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295811658022820917)
,p_event_id=>wwv_flow_imp.id(295811376442820914)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Presupuesto Rechazado'
,p_attribute_02=>'Presupuesto Rechazado'
,p_attribute_06=>'Aceptar'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P730_COD_MOTIVO_RECHAZO_PRES'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(295812242662820923)
,p_name=>'da_estados_load'
,p_event_sequence=>890
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295812360307820924)
,p_event_id=>wwv_flow_imp.id(295812242662820923)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_ESTADO_PRESU'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#P730_ESTADO_PRESU'').attr(''readonly'', true);',
'$(''#P730_ESTADO_PRESU'').attr(''readonly'', true);',
'',
' $(''#P730_ESTADO_PRESU'').attr(''readonly'', true);',
'    $(''#P730_ESTADO_PRESU'').css(''pointer-events'',''none'');',
'    $(''#P730_ESTADO_PRESU'').css(''opacity'',''.5'');',
'    $(''#P730_ESTADO_PRESU'').off(''keydown'');',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(295812754537820928)
,p_name=>'da_articulo_load'
,p_event_sequence=>900
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295812864944820929)
,p_event_id=>wwv_flow_imp.id(295812754537820928)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_ESTADO_PRESU'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#P730_COD_ARTICULO_OT'').attr(''readonly'', true);',
'$(''#P730_COD_ARTICULO_OT'').attr(''readonly'', true);',
'',
' $(''#P730_COD_ARTICULO_OT'').attr(''readonly'', true);',
'    $(''#P730_COD_ARTICULO_OT'').css(''pointer-events'',''none'');',
'    $(''#P730_COD_ARTICULO_OT'').css(''opacity'',''.5'');',
'    $(''#P730_COD_ARTICULO_OT'').off(''keydown'');',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(295812988915820930)
,p_name=>'da_estado_presu'
,p_event_sequence=>910
,p_condition_element=>'F'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'A'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P730_ESTADO_PRESU'
,p_display_when_cond2=>'A'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295813128753820932)
,p_event_id=>wwv_flow_imp.id(295812988915820930)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(295810463621820905)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(339829137010701538)
,p_event_id=>wwv_flow_imp.id(295812988915820930)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(295810463621820905)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295813335904820934)
,p_event_id=>wwv_flow_imp.id(295812988915820930)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(295810590893820906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(339829220225701539)
,p_event_id=>wwv_flow_imp.id(295812988915820930)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(295810590893820906)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(339828674983701533)
,p_name=>'da_estado_presu_1'
,p_event_sequence=>920
,p_condition_element=>'P730_ESTADO_PRESU'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'R'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P730_ESTADO_PRESU'
,p_display_when_cond2=>'R'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(339828759995701534)
,p_event_id=>wwv_flow_imp.id(339828674983701533)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(295810463621820905)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(339828995368701536)
,p_event_id=>wwv_flow_imp.id(339828674983701533)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(295810463621820905)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(339828881525701535)
,p_event_id=>wwv_flow_imp.id(339828674983701533)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(295810590893820906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(339829007072701537)
,p_event_id=>wwv_flow_imp.id(339828674983701533)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(295810590893820906)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(345312480134285205)
,p_name=>'da_total_presupuesto'
,p_event_sequence=>930
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(345312564507285206)
,p_event_id=>wwv_flow_imp.id(345312480134285205)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'select  ',
'        SUM(to_number(c004)) as monto_total',
'        INTO :P730_TOTAL_OT_CALL_CALCULADO        ',
'  from apex_collections',
' where collection_name = ''VT_ORDENES_PRESUPUESTO'';',
' EXCEPTION WHEN OTHERS THEN',
' :P730_TOTAL_OT_CALL_CALCULADO:=00000;',
'END;',
'',
'declare vtotal number;',
'begin ',
'        select ',
'           ',
'             sum( decode( nvl( ind_ent_sal, ''N'' ), ''S'', nvl( d.cantidad, 0 ), nvl( d.cantidad, 0 ) * -1 ) * nvl( d.precio_venta, 0 ) ) monto_total ',
'             into vtotal',
'             from ca_entsal_cab c, ca_entsal_det d, st_articulos a, st_motivo_ent_sal mo',
'            where c.cod_empresa = :P_COD_EMPRESA',
'              and c.tip_comprobante_ref = ''ORT''',
'              and c.ser_comprobante_ref = :P730_PARAM_SER_OT',
'              and c.nro_comprobante_ref = :P730_PARAM_NRO_OT',
'              and c.cod_empresa = d.cod_empresa',
'              and nvl( c.tip_ent_sal, ''DFL'' ) = d.tip_ent_sal',
'              and nvl( c.ser_ent_sal, ''D'' ) = d.ser_ent_sal',
'              and c.num_ent_sal = d.num_ent_sal',
'              and a.cod_empresa = d.cod_empresa',
'              and a.cod_articulo = d.cod_articulo',
'              and nvl(D.anulado,''N'')<>''S''',
'              and c.cod_motivo_ent_sal = mo.cod_motivo_ent_sal(+);',
'             :P730_TOTAL_OT_CALL_CALCULADO:= to_char(vtotal,''999G999G999G990'');',
'               EXCEPTION WHEN OTHERS THEN',
' :P730_TOTAL_OT_CALL_CALCULADO:=''0'';',
'END;',
'',
'            ',
'             '))
,p_attribute_03=>'P730_TOTAL_OT_CALL_CALCULADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(339829362523701540)
,p_name=>'da_estado_presu_estaado'
,p_event_sequence=>940
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P730_ESTADO_PRESU'
,p_condition_element=>'P730_ESTADO_PRESU'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'R'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P730_ESTADO_PRESU'
,p_display_when_cond2=>'R'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(339829420611701541)
,p_event_id=>wwv_flow_imp.id(339829362523701540)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(295810463621820905)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(339829588528701542)
,p_event_id=>wwv_flow_imp.id(339829362523701540)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(295810463621820905)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(339829602909701543)
,p_event_id=>wwv_flow_imp.id(339829362523701540)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(295810590893820906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(339829795768701544)
,p_event_id=>wwv_flow_imp.id(339829362523701540)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(295810590893820906)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(339829844277701545)
,p_name=>'da_estado_presu_estaado_1'
,p_event_sequence=>950
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P730_ESTADO_PRESU'
,p_condition_element=>'P730_ESTADO_PRESU'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'A'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P730_ESTADO_PRESU'
,p_display_when_cond2=>'R'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(339829974392701546)
,p_event_id=>wwv_flow_imp.id(339829844277701545)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(295810463621820905)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(339830047541701547)
,p_event_id=>wwv_flow_imp.id(339829844277701545)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(295810463621820905)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(339830170559701548)
,p_event_id=>wwv_flow_imp.id(339829844277701545)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(295810590893820906)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(339830265978701549)
,p_event_id=>wwv_flow_imp.id(339829844277701545)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(295810590893820906)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(295813540321820936)
,p_name=>'New_1'
,p_event_sequence=>960
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P730_NRO_COMPROBANTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295813644431820937)
,p_event_id=>wwv_flow_imp.id(295813540321820936)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(579831524719542033)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(330121859406269401)
,p_name=>'da_refrescar'
,p_event_sequence=>970
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(295814972801820950)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(330121948612269402)
,p_event_id=>wwv_flow_imp.id(330121859406269401)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(579831524719542033)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(330122187507269404)
,p_name=>'set_cobertura'
,p_event_sequence=>980
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P730_CIUDAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(330122272495269405)
,p_event_id=>wwv_flow_imp.id(330122187507269404)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P730_LOCALIDAD_COBERTURA'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P730_LOCALIDAD_COBERTURA:=:P730_CIUDAD;',
'end;'))
,p_attribute_07=>'P730_CIUDAD'
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
 p_id=>wwv_flow_imp.id(339825409256701501)
,p_name=>'da_notifica_cliente'
,p_event_sequence=>990
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(178180244451823647)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(339825553803701502)
,p_event_id=>wwv_flow_imp.id(339825409256701501)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(178180343054823648)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(339825791845701504)
,p_name=>'da_cerrar_notifica'
,p_event_sequence=>1000
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(178180522554823650)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(339825856717701505)
,p_event_id=>wwv_flow_imp.id(339825791845701504)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(178180343054823648)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(339825961564701506)
,p_name=>'da_carga_notificacion'
,p_event_sequence=>1010
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(339825687607701503)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(339826061008701507)
,p_event_id=>wwv_flow_imp.id(339825961564701506)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare vretorno varchar2 (400); begin',
'inv.SP_INSERTA_SEGUIMIENTO_OT(:P730_SER_COMPROBANTE,:P730_NRO_COMPROBANTE,''1451'',:P730_COMENTARIO_NOTIFICACION,vretorno);',
'end;'))
,p_attribute_02=>'P730_COMENTARIO_NOTIFICACION,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(339826202524701509)
,p_event_id=>wwv_flow_imp.id(339825961564701506)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Notificaci\00F3n Confirmada.')
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(339826129472701508)
,p_event_id=>wwv_flow_imp.id(339825961564701506)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(178180343054823648)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(339826403965701511)
,p_name=>'da_refresca_seguimiento'
,p_event_sequence=>1020
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(339826390028701510)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(339826525395701512)
,p_event_id=>wwv_flow_imp.id(339826403965701511)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'inv.caordtra_370.pr_busca_llamadas(p_cod_empresa        => :P_COD_EMPRESA,',
'                              p_tip_comprobante     => :P730_TIP_COMPROBANTE,',
'                              p_ser_comprobante     => :P730_SER_COMPROBANTE,',
'                              p_nro_comprobante     => :P730_NRO_COMPROBANTE,',
'                              p_usuario_seguimiento => :P730_USUARIO_SEGUIMIENTO,',
'                              p_motivo_seguimiento  => :P730_MOTIVO_SEGUIMIENTO,',
'                              p_motivo_secundario   => :P730_MOTIVO_SECUNDARIO,',
'                              p_motivo_principal    => :P730_MOTIVO_PRINCIPAL,',
'                              p_cod_motivo          => :P730_COD_MOTIVO);',
'                              end;'))
,p_attribute_02=>'P_COD_EMPRESA,P730_TIP_COMPROBANTE,P730_SER_COMPROBANTE,P730_NRO_COMPROBANTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(339826639755701513)
,p_event_id=>wwv_flow_imp.id(339826403965701511)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(403269355592604515)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(345312207002285203)
,p_name=>'da_rechazo'
,p_event_sequence=>1030
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(295810590893820906)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(345312387419285204)
,p_event_id=>wwv_flow_imp.id(345312207002285203)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(339830390732701550)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(345313193700285212)
,p_name=>'New_2'
,p_event_sequence=>1040
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(345313065248285211)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(345313205285285213)
,p_event_id=>wwv_flow_imp.id(345313193700285212)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*doVtimpfacCanonFeMasivo(apex.item(''P_COD_EMPRESA'').getValue(), ',
'                        apex.item(''P361_NRO_PLANILLA'').getValue(),',
'                        apex.item(''P_COD_USUARIO'').getValue());',
'*/',
'',
'var comprobante = document.getElementById("P730_NRO_COMPROBANTE").value; ',
'var params = []',
'var empresa = document.getElementById("P_COD_EMPRESA").value;',
'var tip_comprobante = "ORT";',
'var ser_comprobante = apex.item("P730_SER_COMPROBANTE").getValue();',
'',
'var nro_comprobante = apex.item("P730_NRO_COMPROBANTE").getValue();',
'var usuario = ''&APP_USER.'';',
'var vfacnom = "capresup";',
'params.push({ name: ''P_COD_EMPRESA'', value: empresa})',
'params.push({ name: ''P_TIP_COMPROBANTE_DET'', value: tip_comprobante}) ',
'params.push({ name: ''P_SER_COMPROBANTE_DET'', value: ser_comprobante}) ',
'params.push({ name: ''P_NRO_COMPROBANTE_DET'', value: nro_comprobante}) ',
'params.push({ name: ''P_TIP_COMPROBANTE'', value: tip_comprobante}) ',
'params.push({ name: ''P_SER_COMPROBANTE'', value: ser_comprobante}) ',
'params.push({ name: ''P_NRO_COMPROBANTE'', value: nro_comprobante}) ',
'',
'createReportUrl(vfacnom, params)                        '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(354863300080382772)
,p_name=>'New_1'
,p_event_sequence=>1050
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(354862999235376481)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(354863766461382777)
,p_event_id=>wwv_flow_imp.id(354863300080382772)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(700178921482687102)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(354864254406382778)
,p_event_id=>wwv_flow_imp.id(354863300080382772)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(700178831678687101)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(339826801308701515)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRE_validaciones'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  DECLARE',
'    VERROR EXCEPTION;',
'        VERROR_lat_long EXCEPTION;',
'        VERROR_dist EXCEPTION;',
'        VERROR_fecha EXCEPTION;',
'  BEGIN',
'    IF :P730_COD_ARTICULO_ot IS NULL AND',
'       :P730_COD_ARTICULO_OT_CALL IS NULL THEN',
'      RAISE VERROR;',
'    END IF;',
'',
'     IF :P730_LATITUD_LONGITUD IS NULL  and :P730_PARAM_NRO_OT is null  THEN',
'      RAISE VERROR_lat_long;',
'    END IF;',
'',
'   IF :P730_COD_DISTRIBUIDOR IS NULL  and :P730_PARAM_NRO_OT is null  THEN',
'      RAISE VERROR_dist;',
'    END IF;',
'     IF :P730_FECHA_CO_DISTRIBUIDOR IS NULL  and :P730_PARAM_NRO_OT is null  THEN',
'      RAISE VERROR_fecha;',
'    END IF;',
'',
'',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001, ''Debe cargar el articulo de la orden antes de grabar!'');',
'    WHEN VERROR_lat_long THEN',
'      RAISE_APPLICATION_ERROR(-20001, ''Debe cargar las coordenadas del cliente!'');  ',
'    WHEN VERROR_dist THEN',
'      RAISE_APPLICATION_ERROR(-20001, ''Debe cargar el distribuidor!'');    ',
'     WHEN VERROR_fecha THEN',
'      RAISE_APPLICATION_ERROR(-20001, ''Debe cargar la fecha del comprobante!'');      ',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'&P0_ERROR. #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P730_NRO_COMPROBANTE'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(279473038472777328)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(279413108161777299)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(279473821195777328)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'clear_page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(279415116544777299)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(279475081723777329)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'clear_page_1'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(279412309894777298)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(279476664015777330)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'KEY COMMIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--:P730_COD_ARTICULO_hCALL  := :P730_COD_ARTICULO;',
':P730_COD_ARTICULO := :P730_COD_ARTICULO_OT;',
':P730_IND_GARANTIA :=  :P730_GARANTIA;',
'  DECLARE',
'    VORIGEN VARCHAR2(100);',
'  BEGIN',
'    BEGIN',
'      SELECT ORIGEN',
'        INTO VORIGEN',
'        FROM VT_ORIGENES',
'       WHERE COD_EMPRESA = :P_COD_EMPRESA',
'         AND COD_ORIGEN = :P730_COD_ORIGEN;',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        VORIGEN := NULL;',
'    END;',
'    IF VORIGEN = ''STNGO'' THEN',
'      inv.caordtra_370.pr_valida_cantidad_mo(p_cod_empresa  => :P_COD_EMPRESA,',
'                                        p_tot_mobra     => :P730_TOT_MOBRA,',
'                                        p_cod_forma     => :P730_COD_FORMA,',
'                                        p_cod_usuario   => :APP_USER,',
'                                        p_cod_origen    => :P730_COD_ORIGEN,',
'                                        p_mensaje_error => :P0_ERROR);',
'      inv.caordtra_370.pr_valida_mano_de_obra(p_cod_empresa               => :P_COD_EMPRESA,',
'                                           p_cod_origen               => :P730_COD_ORIGEN,',
'                                           p_cod_cliente              => :P730_COD_CLIENTE,',
'                                           p_cerrado                  => :P730_CERRADO,',
'                                           p_ind_reclamo              => :P730_IND_RECLAMO,',
'                                           p_tot_mobra                => :P730_TOT_MOBRA,',
'                                           p_fec_comprobante          => :P730_FEC_COMPROBANTE,',
'                                           p_ind_garantia             => :P730_GARANTIA,',
'                                           p_rubro_mo                 => :P730_RUBRO_MO,',
'                                           p_cod_moneda_base          => :P730_COD_MONEDA_BASE,',
'                                           p_porc_iva                 => :P730_PORC_IVA,',
'                                           p_fec_rechazo              => :P730_FEC_RECHAZO,',
'                                           p_ser_comprobante          => :P730_SER_COMPROBANTE,',
'                                           p_nro_comprobante           => :P730_NRO_COMPROBANTE,',
'                                           p_fecha_modificado_garantia => :P730_FECHA_MODIFICADO_GARANTIA,',
'                                           p_fec_aprobacion            => :P730_FEC_APROBACION,',
'                                           p_fec_cierre                => :P730_FEC_CIERRE,',
'                                           p_fecha_estado_complicado   => :P730_FECHA_ESTADO_COMPLICADO,',
'                                           p_fec_pendiente             => :P730_FEC_PENDIENTE,',
'                                           p_ind_adicional             => :P730_IND_ADICIONAL,',
'                                           p_cod_proveedor             => :P730_COD_PROVEEDOR,',
'                                           p_linea_producto            => :P730_LINEA_PRODUCTO,',
'                                           p_error                     => :P730_ERROR,',
'                                           p_tipo_cierre               => :P730_TIPO_CIERRE,',
'                                           p_mensaje_error             => :P0_ERROR);',
'    END IF;',
'  END;',
'',
'  DECLARE',
'    VEXISTE VARCHAR2(10) := ''N'';',
'    VERROR EXCEPTION;',
'  BEGIN',
'    BEGIN',
'      SELECT ''S''',
'        INTO VEXISTE',
'        FROM CA_COMISION_LINEAS T',
'       WHERE T.COD_EMPRESA = :P_COD_EMPRESA',
'            ',
'         AND COD_PROVEEDOR = :P730_COD_PROVEEDOR',
'         AND ROWNUM = 1;',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        VEXISTE := ''N'';',
'    END;',
'',
'    IF :P730_NRO_GARANTIA IS NOT NULL THEN ',
'  ',
'    BEGIN',
'      IF NVL(VEXISTE, ''N'') = ''N'' AND',
'         NVL(:P730_IND_ADICIONAL, ''N'') = ''S'' THEN',
'        RAISE VERROR;',
'      END IF;',
'    EXCEPTION',
'      WHEN VERROR THEN',
'        RAISE_APPLICATION_ERROR(-20001, ''Proveedor no habilitado para MO adicional!'');',
'      WHEN OTHERS THEN',
'        NULL;',
'    END;',
'    END IF;',
'  END;',
'',
'  ',
'',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF :P730_COD_PROVEEDOR IS NULL THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001, ''Debe cargar el Proveedor antes de grabar!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF :P730_ERROR = ''1'' THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001,''Cantidad de MO para el Tecnico no Valida!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    inv.caordtra_370.pr_buscar_articulos_pre(p_cod_empresa     => :P_COD_EMPRESA,',
'                                      p_tip_comprobante    => :P730_TIP_COMPROBANTE,',
'                                      p_ser_comprobante    => :P730_SER_COMPROBANTE,',
'                                      p_nro_comprobante    => :P730_NRO_COMPROBANTE,',
'                                      p_tot_repuestos_call => :P730_TOT_REPUESTOS_CALL,',
'                                      p_total_ot_call_c_g  => :P730_TOTAL_OT_CALL_C_G,',
'                                      p_total_ot_call_s_g  => :P730_TOTAL_OT_CALL_S_G,',
'                                      p_ind_adelanto       => :P730_IND_ADELANTO,',
'                                      p_total_ot           => :P730_TOTAL_OT,',
'                                      p_tot_mobra          => :P730_TOT_MOBRA,',
'                                      p_tot_repuestos      => :P730_TOT_REPUESTOS,',
'                                      p_senia              => :P730_SENIA,',
'                                      p_mensaje_error      => :P0_ERROR);',
'    IF :P730_TOT_REPUESTOS_CALL > 0 AND',
'       :P730_FEC_PRESUPUESTADO IS NULL AND',
'       NVL(:P730_MODIFICA_GARANTIA, ''N'') <> ''S'' THEN',
'    ',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001,''Debe cambiar de estado a presupuestado para poder guardar.'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'',
'  inv.caordtra_370.pr_valida_motivos_guardar(p_estado_presu          => :P730_ESTADO_PRESU,',
'                                    p_fec_aprobacion           => :P730_FEC_APROBACION,',
'                                    p_presupuesto              => :P730_PRESUPUESTO,',
'                                    p_ind_garantia             => :P730_GARANTIA,',
'                                    p_anulado                  => :P730_ANULADO,',
'                                    p_cod_motivo_anu           => :P730_COD_MOTIVO_ANU,',
'                                    p_cod_origen               => :P730_COD_ORIGEN,',
'                                    p_cod_motivo_rechazo_presu => nvl(:P730_COD_MOTIVO_RECHAZO_PRES,:P730_COD_MOTIVO_RECHAZO_PRESU),',
'                                    p_ind_reclamo_sta          => :P730_IND_RECLAMO_STA,',
'                                    p_cod_motivo_reclamo_sta   => :P730_COD_MOTIVO_RECLAMO_STA,',
'                                    p_tipo_reclamo             => :P730_TIPO_RECLAMO,',
'                                    p_cod_motivo_reclamo_spp   => :P730_COD_MOTIVO_RECLAMO_SPP,',
'                                    p_cerrado                  => :P730_CERRADO,',
'                                    p_cod_proveedor            => :P730_COD_PROVEEDOR,',
'                                    p_mensaje_error            => :P0_ERROR,',
'                                    P_NRO_GARANTIA          => :P730_NRO_GARANTIA);',
'',
'  DECLARE',
'    VDISTRIBUIDOR VARCHAR2(15);',
'    VERROR EXCEPTION;',
'  BEGIN',
'  ',
'    BEGIN',
'      SELECT ''S''',
'        INTO VDISTRIBUIDOR',
'        FROM CC_CLIENTES C, PERSONAS P',
'       WHERE C.COD_EMPRESA = :P_COD_EMPRESA',
'         AND C.COD_CLIENTE = :P730_COD_CLIENTE',
'         AND C.COD_PERSONA = P.COD_PERSONA',
'         AND C.TIP_CLIENTE IN (''1'', ''27'');',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        VDISTRIBUIDOR := ''N'';',
'    END;',
'  ',
'    IF VDISTRIBUIDOR = ''S'' AND :P730_COD_SUCURSAL_DIST IS NULL THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001,''Debe cargar LA SUCURSAL del distribuidor antes de grabar!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF :P730_ESTADO_PRESU IS NULL THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001,''Debe cargar el estado de la orden antes de grabar!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'/*',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF :P730_TIPO_RECLAMO IS NULL AND',
'       NVL(:P730_IND_RECLAMO, ''N'') = ''S'' THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001,''Debe cargar el TIPO de RECLAMO ANTES de grabar!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;*/',
'',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF :P730_COD_ARTICULO_OT IS NULL AND',
'       :P730_COD_ARTICULO_OT_CALL IS NULL THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001,''Debe cargar el articulo de la orden antes de grabar!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'  ',
'    IF NVL(:P730_GARANTIA, ''N'') = ''S'' AND',
'       NVL(:P730_PRESUPUESTO, ''N'') = ''S'' THEN',
'      RAISE VERROR;',
'    END IF;',
'  ',
'    IF NVL(:P730_GARANTIA, ''N'') <> ''S'' AND',
'       NVL(:P730_PRESUPUESTO, ''N'') <> ''S'' THEN',
'      IF :P730_COD_ORIGEN IN (''1'', ''11'', ''9'', ''3'') THEN',
'      ',
'        RAISE VERROR;',
'      END IF;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'     RAISE_APPLICATION_ERROR(-20001,''Para Guardar debe Seleccionar si es garantia o presupuesto!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'',
'  IF :P730_COD_ORIGEN IN (''1'', ''3'') THEN',
'    DECLARE',
'      VERROR EXCEPTION;',
'    BEGIN',
'      IF :P730_TEL_CLIENTE IS NULL AND',
'         :P730_EMAIL IS NULL THEN',
'        RAISE VERROR;',
'      END IF;',
'    EXCEPTION',
'      WHEN VERROR THEN',
'        RAISE_APPLICATION_ERROR(-20001, ''Debe cargar el algun medio de contacto antes de grabar!'');',
'      WHEN OTHERS THEN',
'        NULL;',
'    END;',
'  END IF;',
'  IF NVL(:P730_SITIO, ''B'') = ''LE'' THEN',
'    DECLARE',
'      VERROR EXCEPTION;',
'    BEGIN',
'      IF :P730_COD_ORIGEN IS NULL THEN',
'        RAISE VERROR;',
'      END IF;',
'    EXCEPTION',
'      WHEN VERROR THEN',
'        RAISE_APPLICATION_ERROR(-20001, ''Debe cargar el origen!'');',
'      WHEN OTHERS THEN',
'        NULL;',
'    END;',
'  END IF;',
'',
'  IF :P730_P_NRO_SERVICIO_PARAM IS NOT NULL THEN',
'    LLAMA_NRO_SERVICIO(''1'',',
'                       :P730_P_TIP_SERVICIO_PARAM,',
'                       :P730_P_NRO_SERVICIO_PARAM,',
'                       ''RELA'',',
'                       :P730_TIP_COMPROBANTE,',
'                       :P730_SER_COMPROBANTE,',
'                       :P730_NRO_COMPROBANTE);',
'  ',
'  END IF;',
'',
'  IF NVL(:P730_ESTADO_PRESU, ''N'') = ''P'' AND',
'     NVL(:P730_IND_CORREO_PRESU, ''N'') <> ''S'' AND',
'     NVL(:P730_TOTA_OT_CALL, 0) > 0 THEN',
'    inv.caordtra_370.pr_buscar_articulos_pre(p_cod_empresa     => :P_COD_EMPRESA,',
'                                      p_tip_comprobante    => :P730_TIP_COMPROBANTE,',
'                                      p_ser_comprobante    => :P730_SER_COMPROBANTE,',
'                                      p_nro_comprobante    => :P730_NRO_COMPROBANTE,',
'                                      p_tot_repuestos_call => :P730_TOT_REPUESTOS_CALL,',
'                                      p_total_ot_call_c_g  => :P730_TOTAL_OT_CALL_C_G,',
'                                      p_total_ot_call_s_g  => :P730_TOTAL_OT_CALL_S_G,',
'                                      p_ind_adelanto       => :P730_IND_ADELANTO,',
'                                      p_total_ot           => :P730_TOTAL_OT,',
'                                      p_tot_mobra          => :P730_TOT_MOBRA,',
'                                      p_tot_repuestos      => :P730_TOT_REPUESTOS,',
'                                      p_senia              => :P730_SENIA,',
'                                      p_mensaje_error      => :P0_ERROR);',
'  ',
'    inv.caordtra_370.pr_informa_presupuesto(p_nom_cliente      => :P730_NOM_CLIENTE,',
'                                         p_desc_articulo    => :P730_DESCRIPCION_ARTICULO,',
'                                         p_ser_comprobante  => :P730_SER_COMPROBANTE,',
'                                         p_nro_comprobante  => :P730_NRO_COMPROBANTE,',
'                                         p_cod_empresa      => :P_COD_EMPRESA,',
'                                         p_tip_comprobante  => :P730_TIP_COMPROBANTE,',
'                                         p_ind_garantia     => :P730_GARANTIA,',
'                                         p_ind_delivery     => :P730_IND_DELIVERY,',
'                                         p_total_ot_call    => :P730_TOTAL_OT,',
'                                         p_cod_cliente      => :P730_COD_CLIENTE,',
'                                         p_celular_contacto => :P730_CELULAR_CONTACTO,',
'                                         p_correo_contacto  => :P730_CORREO_CONTACTO);',
'  ',
'    :P730_IND_CORREO_PRESU := ''S'';',
'  END IF;',
'',
'  IF NVL(:P730_ESTADO_PRESU, ''N'') = ''PE'' AND',
'     NVL(:P730_IND_CORREO_PRESU, ''N'') <> ''S'' AND',
'     NVL(:P730_CERRADO, ''S'') <> ''S'' THEN',
'  ',
'    inv.caordtra_370.pr_informa_pe(p_cod_origen       => :P730_COD_ORIGEN,',
'                                p_nom_cliente     => :P730_NOM_CLIENTE,',
'                                p_nro_comprobante => :P730_NRO_COMPROBANTE,',
'                                p_correo_contacto => :P730_CORREO_CONTACTO,',
'                                p_cod_empresa     => :P_COD_EMPRESA,',
'                                p_cod_cliente     => :P730_COD_CLIENTE,',
'                                p_ser_comprobante => :P730_SER_COMPROBANTE);',
'  ',
'    :P730_IND_CORREO_PE := ''S'';',
'  END IF;',
'',
'  IF :P730_COD_ORIGEN IN (''2'', ''27'', ''30'') AND',
'     NVL(:P730_IND_ENVIADO, ''N'') <> ''S'' THEN',
'  ',
'    DECLARE',
'      VERROR EXCEPTION;',
'    BEGIN',
'      IF :P730_DIR_CLIENTE IS NULL THEN',
'        RAISE VERROR;',
'      END IF;',
'    EXCEPTION',
'      WHEN VERROR THEN',
'        RAISE_APPLICATION_ERROR(-20001,''Debe cargar la direccion antes de grabar!'');',
'      WHEN OTHERS THEN',
'        NULL;',
'    END;',
'  ',
'    DECLARE',
'      VDATOS VARCHAR2(60);',
'    BEGIN',
'    ',
'      SP_NEWOTWEB(:P730_TIP_COMPROBANTE,',
'                  :P730_SER_COMPROBANTE,',
'                  :P730_NRO_COMPROBANTE,',
'                  VDATOS);',
'    ',
'      :P730_IND_ENVIADO := ''S'';',
'      COMMIT;',
'    ',
'      IF :APP_USER NOT IN (''CARGAST1'', ''CARGAST2'', ''PATRICIAPO'') THEN',
'        CORREO_OT_CREADA_PROV(:P730_SER_COMPROBANTE,',
'                              :P730_NRO_COMPROBANTE);',
'      END IF;',
'    ',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        COMMIT;',
'    END;',
'  END IF;',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'&P0_ERROR. #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(279415573445777299)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(279475437759777329)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRE INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    v_contador NUMBER := 0;',
'BEGIN ',
'    begin ',
'    select COUNT(*)',
'    INTO v_contador',
'    from apex_collections',
'    where collection_name = ''VT_MANO_OBRA'';',
'    exception ',
'        when others then ',
'            v_contador := 0;',
'    end;',
'',
'   /* if v_contador = 0 then ',
'        raise_application_error(-20001, ''No se agregar OT sin mano de obra asignada'');',
'    end if;*/',
'',
'END;  ',
'  ',
'  ',
'  -------------------------------------------------------',
'  -- LE DAMOS VALOR A LA VARIABLE CON LOS DATOS INGRESADOS. GASPAR M. 12/04/2022',
'  :P730_COD_ARTICULO2 := :P730_COD_ARTICULO;',
'  -------------------------------------------------------',
'',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF :P730_SERIE_PRODUCTO IS NULL AND',
'       :P730_COD_ORIGEN IN (''1'', ''3'', ''24'') THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001, ''Para Guardar debe cargar la serie del producto!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'',
'',
'  IF :P730_COD_ORIGEN NOT IN (''2'', ''13'', ''27'') THEN',
'    INSERTA_SEGUIMIENTO_OT_MOTIVO(''1'',',
'                                  ''ASIGNA PROVEEDOR  '' ||',
'                                  :P730_COD_PROVEEDOR || ''  '' ||',
'                                  :P730_NOM_PROVEEDOR,',
'                                  :P730_COD_CLIENTE,',
'                                  :P730_SER_COMPROBANTE,',
'                                  :P730_NRO_COMPROBANTE,',
'                                  :P730_NOM_CLIENTE,',
'                                  NULL,',
'                                  ''ASIGNA PROVEEDOR'',',
'                                  ''201'',',
'                                  :APP_USER);',
'  END IF;',
'',
'',
'',
'',
'  IF NVL(:P730_ESTADO_PRESU, ''AP'') = ''AP'' THEN',
'    :P730_CREADO_POR    := :APP_USER;',
'    :P730_FEC_CREACION  := SYSDATE;',
'    :P730_HORA_CREACION := TO_CHAR(SYSDATE, ''HH24:MI:SS'');',
'  ELSIF NVL(:P730_ESTADO_PRESU, ''P'') = ''P'' THEN',
'    :P730_PRESUPUESTADO_POR := :APP_USER;',
'    :P730_FEC_PRESUPUESTADO := SYSDATE;',
'    :P730_HORA_PRESUPUESTO  := TO_CHAR(SYSDATE, ''HH24:MI:SS'');',
'  ELSIF NVL(:P730_ESTADO_PRESU, ''P'') = ''PE'' THEN',
'    :P730_PENDIENTE_POR  := :APP_USER;',
'    :P730_FEC_PENDIENTE  := SYSDATE;',
'    :P730_HORA_PENDIENTE := TO_CHAR(SYSDATE, ''HH24:MI:SS'');',
'  ELSIF NVL(:P730_ESTADO_PRESU, ''P'') = ''A'' THEN',
'    NULL;',
'  ELSIF NVL(:P730_ESTADO_PRESU, ''P'') = ''R'' THEN',
'    :P730_RECHAZADO_POR  := :APP_USER;',
'    :P730_FEC_RECHAZO    := SYSDATE;',
'    :P730_HORA_RECHAZADO := TO_CHAR(SYSDATE, ''HH24:MI:SS'');',
'  ELSIF NVL(:P730_ESTADO_PRESU, ''P'') = ''V'' THEN',
'    NULL;',
'   /* :P730_VERIFICADO_POR    := :APP_USER;',
'    :P730_FEC_VERIFICADO    := SYSDATE;',
'    :P730_HORA_VERIFICACION := TO_CHAR(SYSDATE, ''HH24:MI:SS'');*/',
'  ELSIF NVL(:P730_ESTADO_PRESU, ''P'') = ''E'' THEN',
'    :P730_ENTREGADO_POR  := :APP_USER;',
'    :P730_FEC_ENTREGADO  := SYSDATE;',
'    :P730_HORA_ENTREGADO := TO_CHAR(SYSDATE, ''HH24:MI:SS'');',
'  ',
'  ELSIF NVL(:P730_ESTADO_PRESU, ''P'') = ''SR'' THEN',
'    :P730_COD_USUARIO_SIN_RP := :APP_USER;',
'    :P730_FEC_SIN_REPUESTO   := SYSDATE;',
'    :P730_HORA_SIN_REPUESTO  := TO_CHAR(SYSDATE, ''HH24:MI:SS'');',
'  ',
'  END IF;',
'',
'  :P730_ESTADO_PRESU_REAL := :P730_ESTADO_PRESU;',
'',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF :P730_COD_ARTICULO IS NULL AND',
'       :P730_COD_ARTICULO_OT_CALL IS NULL THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001, ''Debe cargar el articulo de la orden antes de grabar!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF NVL(:P730_GARANTIA, ''N'') <> ''S'' AND',
'       NVL(:P730_PRESUPUESTO, ''N'') <> ''S'' THEN',
'      IF :P730_COD_ORIGEN IN (''1'', ''11'', ''9'') THEN',
'      ',
'        RAISE VERROR;',
'      END IF;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001, ''Para Guardar debe Seleccionar si es garantia o presupuesto!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF :P730_ESTADO_PRESU IS NULL THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'     RAISE_APPLICATION_ERROR(-20001,''Debe cargar el estado de la orden antes de grabar!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'  DECLARE',
'    VDIST VARCHAR2(5) := ''N'';',
'  BEGIN',
'    BEGIN',
'    ',
'      SELECT ''S''',
'        INTO VDIST',
'        FROM CC_CLIENTES C',
'       WHERE C.COD_EMPRESA = :P_COD_EMPRESA',
'         AND C.COD_CLIENTE = :P730_COD_CLIENTE',
'         AND C.TIP_CLIENTE IN (''1'', ''27'', ''63'', ''6'', ''28'');',
'    ',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        VDIST := ''N'';',
'    END;',
'  ',
'    DECLARE',
'      DUMMY CHAR;',
'    BEGIN',
'      SELECT DISTINCT ''1''',
'        INTO DUMMY',
'        FROM ST_ARTICULOS A',
'       WHERE A.COD_ARTICULO = :P730_COD_ARTICULO',
'         AND A.COD_EMPRESA = :P_COD_EMPRESA',
'         AND A.COD_RUBRO <> ''PR'';',
'    ',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        IF NVL(:P730_COSTO_SERVICIO, 0) > 0 AND',
'           NVL(:P730_IND_ADELANTO, ''N'') <> ''S'' AND',
'           NVL(:P730_GARANTIA, ''N'') <> ''S'' AND',
'           NVL(:P730_COD_ORIGEN, ''N'') = ''1'' AND',
'           NVL(VDIST, ''N'') <> ''S'' THEN',
'          :P730_MONTO_ADELANTO := :P730_COSTO_SERVICIO;',
'        END IF;',
'    END;',
'  ',
'  END;',
'',
'  IF :P730_COD_ORIGEN NOT IN (''2'', ''13'', ''27'') THEN',
'    :P730_COD_SUCURSAL := ''248'';',
'  END IF;',
'',
'  :P730_ESTADO_PRESU_REAL := :P730_ESTADO_PRESU;',
'',
' ',
'',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF :P730_COD_MOTIVO_RECLAMO_JEFE IS NULL AND',
'       NVL(:P730_IND_RECLAMO, ''N'') = ''S'' AND',
'       NVL(:P730_CERRADO, ''P'') = ''S'' AND',
'       :P730_COD_ORIGEN NOT IN (''2'', ''13'', ''31'', ''27'', ''15'') THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001,''EL motivo de reclamo debe validarse por el jefe tecnico antes de grabar!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF (:P730_DIR_CLIENTE IS NULL OR :P730_TEL_CLIENTE IS NULL) AND',
'       :P730_COD_ORIGEN IN (''2'', ''13'', ''31'', ''27'', ''15'') THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001,''Debe cargar la direccion y telefono antes de grabar!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'',
'  DECLARE',
'    VTIP_CLIENTE CC_CLIENTES.TIP_CLIENTE%TYPE;',
'  BEGIN',
'    IF NVL(:P730_GARANTIA, ''N'') = ''N'' THEN',
'      BEGIN',
'        SELECT C.TIP_CLIENTE',
'          INTO VTIP_CLIENTE',
'          FROM CC_CLIENTES C',
'         WHERE C.COD_EMPRESA = :P_COD_EMPRESA',
'           AND C.COD_CLIENTE = :P730_COD_CLIENTE',
'           AND NVL(C.ESTADO, ''A'') <> ''I'';',
'      EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'          VTIP_CLIENTE := NULL;',
'        WHEN OTHERS THEN',
'          VTIP_CLIENTE := NULL;',
'      END;',
'    ',
'      --SI EL CLIENTE ES COLABORADOR DE LA EMPRESA',
'      --DEBE REGISTRAR CONDICION DE VENTA',
'      --LAURAVE AL 09032020',
'      IF VTIP_CLIENTE = BS_BUSCA_PARAMETRO(''VT'', ''VT_TIPO_PERS_EMP'') THEN',
'        IF :P730_COD_CONDICION_VENTA IS NULL THEN',
unistr('          RAISE_APPLICATION_ERROR(-20001,''Debe registrar la condici\00F3n de venta. El dato no puede ser nulo. '');'),
'        END IF;',
'      END IF;',
'    END IF;',
'  END;',
'',
'',
'inv.caordtra_370.pr_valida_motivos_guardar(p_estado_presu          => :P730_ESTADO_PRESU,',
'                                    p_fec_aprobacion           => :P730_FEC_APROBACION,',
'                                    p_presupuesto              => :P730_PRESUPUESTO,',
'                                    p_ind_garantia             => :P730_GARANTIA,',
'                                    p_anulado                  => :P730_ANULADO,',
'                                    p_cod_motivo_anu           => :P730_COD_MOTIVO_ANU,',
'                                    p_cod_origen               => :P730_COD_ORIGEN,',
'                                    p_cod_motivo_rechazo_presu => nvl(:P730_COD_MOTIVO_RECHAZO_PRES,:P730_COD_MOTIVO_RECHAZO_PRESU),',
'                                    p_ind_reclamo_sta          => :P730_IND_RECLAMO_STA,',
'                                    p_cod_motivo_reclamo_sta   => :P730_COD_MOTIVO_RECLAMO_STA,',
'                                    p_tipo_reclamo             => :P730_TIPO_RECLAMO,',
'                                    p_cod_motivo_reclamo_spp   => :P730_COD_MOTIVO_RECLAMO_SPP,',
'                                    p_cerrado                  => :P730_CERRADO,',
'                                    p_cod_proveedor            => :P730_COD_PROVEEDOR,',
'                                    p_mensaje_error            => :P0_ERROR,',
'                                    P_NRO_GARANTIA          => :P730_NRO_GARANTIA);',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'&P0_ERROR. #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(279415573445777299)
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
 p_id=>wwv_flow_imp.id(279475865596777330)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRE_UPDATE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  --------------------------------------------------------------------------',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF :P730_COD_ARTICULO IS NULL AND',
'       :P730_COD_ARTICULO_OT_CALL IS NULL THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001, ''Debe cargar el articulo de la orden antes de grabar!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'  --------------------------------------------------------------------------',
'',
'  -------------------------------------------------------------------------- ',
'  IF NVL(:P730_ESTADO_PRESU, ''AP'') = ''A'' AND',
'     :P730_APROBADO_POR IS NOT NULL AND',
'     :P730_FEC_APROBACION IS NOT NULL AND',
'     :P730_HORA_APROBADA IS NOT NULL AND',
'     NVL(:P730_IND_CORREO_PRESU, ''N'') <> ''S'' THEN',
'    :P730_FEC_MODIF_APROBADO := SYSDATE;',
'  ',
'  ELSIF NVL(:P730_ESTADO_PRESU, ''P'') = ''P'' AND',
'        :P730_PRESUPUESTADO_POR IS NOT NULL AND',
'        :P730_FEC_PRESUPUESTADO IS NOT NULL AND',
'        :P730_HORA_PRESUPUESTO IS NOT NULL THEN',
'        :P730_FEC_MODIF_PRESUPUESTO := SYSDATE;',
'  ELSIF NVL(:P730_ESTADO_PRESU, ''P'') = ''PE'' AND',
'        :P730_PENDIENTE_POR IS NOT NULL AND',
'        :P730_FEC_PENDIENTE IS NOT NULL AND',
'        :P730_HORA_PENDIENTE IS NOT NULL THEN',
'        :P730_FEC_MODIF_PENDIENTE := SYSDATE;',
'  ELSIF NVL(:P730_ESTADO_PRESU, ''P'') = ''R'' AND',
'        :P730_RECHAZADO_POR IS NOT NULL AND',
'        :P730_FEC_RECHAZO IS NOT NULL AND',
'        :P730_HORA_RECHAZADO IS NOT NULL THEN',
'        :P730_FEC_MODIF_RECHAZADO := SYSDATE;',
'  ELSIF NVL(:P730_ESTADO_PRESU, ''P'') = ''V'' AND',
'        :P730_VERIFICADO_POR IS NOT NULL AND',
'        :P730_FEC_VERIFICADO IS NOT NULL AND',
'        :P730_HORA_VERIFICACION IS NOT NULL THEN',
'        :P730_FEC_MODIF_VERIFICADO := SYSDATE;',
'  END IF;',
'  -------------------------------------------------------------------------- ',
'',
'  --------------------------------------------------------------------------      ',
'  IF NVL(:P730_ESTADO_PRESU, ''N'') = ''P'' AND',
'     NVL(:P730_IND_CORREO_PRESU, ''N'') <> ''S'' THEN',
'     /*inv.caordtra_370.pr_informa_presupuesto(p_nom_cliente      => :P730_NOM_CLIENTE,',
'                                         p_desc_articulo    => :P730_DESCRIPCION_ARTICULO,',
'                                         p_ser_comprobante  => :P730_SER_COMPROBANTE,',
'                                         p_nro_comprobante  => :P730_NRO_COMPROBANTE,',
'                                         p_cod_empresa      => :P_COD_EMPRESA,',
'                                         p_tip_comprobante  => :P730_TIP_COMPROBANTE,',
'                                         p_ind_garantia     => :P730_GARANTIA,',
'                                         p_ind_delivery     => :P730_IND_DELIVERY,',
'                                         p_total_ot_call    => :P730_TOTAL_OT,',
'                                         p_cod_cliente      => :P730_COD_CLIENTE,',
'                                         p_celular_contacto => :P730_CELULAR_CONTACTO,',
'                                         p_correo_contacto  => :P730_CORREO_CONTACTO);*/',
'    :P730_IND_CORREO_PRESU := ''S'';',
'  END IF;',
'  -------------------------------------------------------------------------- ',
'',
'  -------------------------------------------------------------------------- ',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF NVL(:P730_GARANTIA, ''N'') <> ''S'' AND',
'       NVL(:P730_PRESUPUESTO, ''N'') <> ''S'' THEN',
'      IF :P730_COD_ORIGEN IN (''1'', ''11'', ''9'', ''3'', ''32'') THEN',
'        RAISE VERROR;',
'      END IF;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001, ''Para Guardar debe Seleccionar si es garantia o presupuesto!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'  -------------------------------------------------------------------------- ',
'',
'  -------------------------------------------------------------------------- ',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF NVL(:P730_CERRADO, ''N'') = ''S'' AND',
'       NVL(:P730_TIPO_CIERRE, ''N'') = ''CPR'' AND',
'       NVL(:P730_TOT_REPUESTOS, 0) > 0 THEN',
'      IF :P730_COD_ORIGEN IN (''1'', ''11'', ''9'', ''3'', ''20'') THEN',
'        RAISE VERROR;',
'      END IF;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001,''Para Cerrar debe realizar la devolucion de los repuestos!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'  -------------------------------------------------------------------------- ',
'  --------------------------------------------------------------------------      ',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF :P730_ESTADO_PRESU IS NULL THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001, ''Debe cargar el estado de la orden antes de grabar!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'  --------------------------------------------------------------------------',
'',
'  --------------------------------------------------------------------------',
'  :P730_ESTADO_PRESU_REAL := :P730_ESTADO_PRESU;',
'  --------------------------------------------------------------------------',
'',
'  --------------------------------------------------------------------------',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF NVL(:P730_PRESUPUESTO, ''N'') = ''S'' AND',
'       NVL(:P730_GARANTIA, ''N'') = ''S'' THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'     NULL;',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'  --------------------------------------------------------------------------    ',
'',
'  --------------------------------------------------------------------------    ',
'  IF NVL(:P730_IND_LIQUIDA, ''N'') = ''S'' OR',
'     NVL(:P730_IND_ABANDONADO, ''N'') = ''S'' THEN',
'    NULL;',
'  ELSE',
'    DECLARE',
'      VERROR EXCEPTION;',
'    BEGIN',
'      IF NVL(:P730_PRESUPUESTO, ''N'') = ''S'' AND',
'         NVL(:P730_TOT_REPUESTOS_CALL, 0) = 0 AND',
'         NVL(:P730_CERRADO, ''N'') = ''S'' AND',
'         NVL(:P730_TIPO_CIERRE, ''N'') NOT IN (''CPR'', ''CSS'', ''CSR'') AND',
'         NVL(:P730_IND_RECLAMO, ''N'') <> ''S'' AND',
'         :P730_COD_ORIGEN NOT IN (''20'') THEN',
'        RAISE VERROR;',
'      END IF;',
'    EXCEPTION',
'      WHEN VERROR THEN',
'        RAISE_APPLICATION_ERROR(-20001, ''1) Debe Cargar un presupuesto antes de guardar!'');',
'      WHEN OTHERS THEN',
'        NULL;',
'    END;',
'  END IF;',
'  --------------------------------------------------------------------------',
'',
'  --------------------------------------------------------------------------  ',
'  IF NVL(:P730_IND_LIQUIDA, ''N'') = ''S'' OR',
'     NVL(:P730_IND_ABANDONADO, ''N'') = ''S'' THEN',
'    NULL;',
'  ELSE',
'    DECLARE',
'      VERROR EXCEPTION;',
'    BEGIN',
'      IF NVL(:P730_PRESUPUESTO, ''N'') = ''S'' AND',
'         :P730_FEC_RECHAZO IS NULL AND',
'         :P730_FEC_APROBACION IS NULL AND',
'         NVL(:P730_TOT_REPUESTOS_CALL, 0) > 0 AND',
'         NVL(:P730_TIPO_CIERRE, ''N'') NOT IN (''CPR'', ''CSS'', ''CSR'') AND',
'         NVL(:P730_IND_RECLAMO, ''N'') <> ''S'' AND',
'         :P730_COD_ORIGEN IN (''1'', ''11'', ''9'', ''3'', ''20'', ''32'', ''36'') AND',
'         NVL(:P730_CERRADO, ''N'') = ''S'' THEN',
'        RAISE VERROR;',
'      END IF;',
'    EXCEPTION',
'      WHEN VERROR THEN',
'        RAISE_APPLICATION_ERROR(-20001, ''9Debe aprobar o rechazar un presupuesto antes de guardar!'');',
'      WHEN OTHERS THEN',
'        NULL;',
'    END;',
'  END IF;',
'  --------------------------------------------------------------------------',
'',
'  --------------------------------------------------------------------------',
'  IF NVL(:P730_IND_LIQUIDA, ''N'') = ''S'' OR',
'     NVL(:P730_IND_ABANDONADO, ''N'') = ''S'' THEN',
'    NULL;',
'  ELSE',
'    DECLARE',
'      VERROR EXCEPTION;',
'    BEGIN',
'      IF :P730_FEC_RECHAZO IS NOT NULL AND',
'         NVL(:P730_TIPO_CIERRE, ''N'') NOT IN (''CPR'') AND',
'         :P730_COD_ORIGEN IN (''1'', ''11'', ''9'', ''3'', ''20'', ''32'') AND',
'         NVL(:P730_CERRADO, ''N'') = ''S'' AND',
'         NVL(:P730_GARANTIA, ''N'') <> ''S'' THEN',
'        RAISE VERROR;',
'      END IF;',
'    EXCEPTION',
'      WHEN VERROR THEN',
'        RAISE_APPLICATION_ERROR(-20001, ''El cierre debe ser presupuesto rechazado!'');',
'      WHEN OTHERS THEN',
'        NULL;',
'    END;',
'  END IF;',
'  --------------------------------------------------------------------------',
'',
'  --------------------------------------------------------------------------    ',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF :P730_IND_RECLAMO = ''S'' AND',
'       :P730_COD_ORIGEN IN (''1'', ''11'', ''9'', ''3'', ''20'', ''32'') AND',
'       (:P730_COD_PROBLEMA IS NULL OR',
'       :P730_ESTADO_RECLAMO IS NULL) AND',
'       :P730_TIPO_RECLAMO = ''RMO'' THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001, ''Debe Cargar datos del reclamo!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'  --------------------------------------------------------------------------    ',
'  --------------------------------------------------------------------------',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF :P730_COD_MOTIVO_RECLAMO_JEFE IS NULL AND',
'       NVL(:P730_IND_RECLAMO, ''N'') = ''S'' AND',
'       NVL(:P730_CERRADO, ''P'') = ''S'' AND',
'       :P730_COD_ORIGEN NOT IN (''2'', ''13'', ''31'', ''27'', ''15'') AND',
'       :P730_ESTADO_RECLAMO = ''FINALIZADO'' THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001,''EL motivo de reclamo debe validarse por el jefe tecnico antes de grabar!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'  --------------------------------------------------------------------------        ',
'',
'  --------------------------------------------------------------------------        ',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF :P730_COD_MOTIVO_RECLAMO_SPP IS NULL AND',
'       NVL(:P730_IND_RECLAMO, ''N'') = ''S'' AND',
'       NVL(:P730_CERRADO, ''P'') = ''S'' AND',
'       :P730_COD_ORIGEN NOT IN (''2'', ''13'', ''31'', ''27'', ''15'') AND',
'       :P730_ESTADO_RECLAMO = ''FINALIZADO'' THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001, ''EL motivo de reclamo debe validarse antes de grabar!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'  --------------------------------------------------------------------------',
'',
'  --------------------------------------------------------------------------    ',
'  IF NVL(:P730_IND_LIQUIDA, ''N'') = ''S'' OR',
'     NVL(:P730_IND_ABANDONADO, ''N'') = ''S'' THEN',
'    NULL;',
'  ELSE',
'    DECLARE',
'      VERROR EXCEPTION;',
'    BEGIN',
'      IF nvl(:P730_COD_MOTIVO_RECHAZO_PRES,:P730_COD_MOTIVO_RECHAZO_PRESU) IS NULL AND',
'         :P730_FEC_RECHAZO IS NOT NULL THEN',
'        RAISE VERROR;',
'      END IF;',
'    EXCEPTION',
'      WHEN VERROR THEN',
'        RAISE_APPLICATION_ERROR(-20001, ''Debe Cargar el motivo de rechazo!'');',
'      WHEN OTHERS THEN',
'        NULL;',
'    END;',
'  END IF;',
'  --------------------------------------------------------------------------',
'',
'  --------------------------------------------------------------------------',
'  IF NVL(:P730_IND_LIQUIDA, ''N'') = ''S'' OR',
'     NVL(:P730_IND_ABANDONADO, ''N'') = ''S'' THEN',
'    NULL;',
'  ELSE',
'    DECLARE',
'      VERROR EXCEPTION;',
'    BEGIN',
'      IF NVL(:P730_GARANTIA, ''N'') <> ''S'' THEN',
'        IF ((NVL(:P730_TOT_MOBRA, 0) +',
'           NVL(:P730_TOT_REPUESTOS, 0) -',
'           NVL(:P730_TOT_REPUESTOS_CALL, 0) > 10000 OR',
'           NVL(:P730_TOT_MOBRA, 0) +',
'           NVL(:P730_TOT_REPUESTOS, 0) -',
'           NVL(:P730_TOT_REPUESTOS_CALL, 0) < -10000) AND',
'           NVL(:P730_TOT_REPUESTOS_CALL, 0) > 0) AND',
'           NVL(:P730_TIPO_CIERRE, ''CR'') IN (''CR'') AND',
'           NVL(:P730_CERRADO, ''N'') = ''S'' AND',
'           NVL(:P730_TOT_REPUESTOS_CALL, 0) > 0 AND',
'           NVL(:P730_IND_RECLAMO, ''N'') <> ''S'' AND',
'           NVL(:P730_IND_RECLAMO, ''N'') <> ''S'' AND',
'           :P730_FEC_RECHAZO IS NULL THEN',
'          RAISE VERROR;',
'        END IF;',
'      END IF;',
'    EXCEPTION',
'      WHEN VERROR THEN',
'        RAISE_APPLICATION_ERROR(-20001, ''La ot no puede ser finalizada, existe diferencia entre el presupuesto y el cierre...'');',
'      WHEN OTHERS THEN',
'        NULL;',
'    END;',
'  END IF;',
'  --------------------------------------------------------------------------',
'',
'  --------------------------------------------------------------------------  ',
'  DECLARE',
'    VTIP_CLIENTE CC_CLIENTES.TIP_CLIENTE%TYPE;',
'  BEGIN',
'    IF NVL(:P730_GARANTIA, ''N'') = ''N'' THEN',
'      BEGIN',
'        SELECT C.TIP_CLIENTE',
'          INTO VTIP_CLIENTE',
'          FROM CC_CLIENTES C',
'         WHERE C.COD_EMPRESA = :P_COD_EMPRESA',
'           AND C.COD_CLIENTE = :P730_COD_CLIENTE',
'           AND NVL(C.ESTADO, ''A'') <> ''I'';',
'      EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'          VTIP_CLIENTE := NULL;',
'        WHEN OTHERS THEN',
'          VTIP_CLIENTE := NULL;',
'      END;',
'    ',
'      --SI EL CLIENTE ES COLABORADOR DE LA EMPRESA',
'      --DEBE REGISTRAR CONDICION DE VENTA',
'      --LAURAVE AL 09032020',
'      IF VTIP_CLIENTE = BS_BUSCA_PARAMETRO(''VT'', ''VT_TIPO_PERS_EMP'') THEN',
'        IF :P730_COD_CONDICION_VENTA IS NULL THEN',
unistr('          RAISE_APPLICATION_ERROR(-20001, ''Debe registrar la condici\00F3n de venta. El dato no puede ser nulo. '');'),
'        END IF;',
'      END IF;',
'    END IF;',
'  END;',
'  --------------------------------------------------------------------------  ',
'',
'  --------------------------------------------------------------------------  ',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF F_VERIFICA_CONTROL_CALIDAD_OT(P_TIP_COMPROBANTE => :P730_TIP_COMPROBANTE,',
'                                     P_SER_COMPROBANTE => :P730_SER_COMPROBANTE,',
'                                     P_NRO_COMPROBANTE => :P730_NRO_COMPROBANTE) <> ''S'' AND',
'       :P730_COD_ORIGEN NOT IN (''2'', ''13'', ''31'', ''27'', ''15'') AND',
'       :P730_IND_RETIRADO = ''S'' THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001, ''Se debe cargar los valores del control de calidad para entregar la ot!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'  --------------------------------------------------------------------------',
'  --------------------------------------------------------------------------      ',
'  DECLARE',
'    VERROR EXCEPTION;',
'    VTIPO VARCHAR2(60) := ''N'';',
'  BEGIN',
'    BEGIN',
'      SELECT ''S''',
'        INTO VTIPO',
'        FROM CA_ENTSAL_CAB     C,',
'             CA_ENTSAL_DET     D,',
'             ST_ARTICULOS      A,',
'             ST_MOTIVO_ENT_SAL MO',
'       WHERE C.COD_EMPRESA = :P_COD_EMPRESA',
'         AND C.TIP_COMPROBANTE_REF = :P730_TIP_COMPROBANTE',
'         AND C.SER_COMPROBANTE_REF = :P730_SER_COMPROBANTE',
'         AND C.NRO_COMPROBANTE_REF = :P730_NRO_COMPROBANTE',
'         AND C.COD_EMPRESA = D.COD_EMPRESA',
'         AND NVL(C.TIP_ENT_SAL, ''DFL'') = D.TIP_ENT_SAL',
'         AND NVL(C.SER_ENT_SAL, ''D'') = D.SER_ENT_SAL',
'         AND C.NUM_ENT_SAL = D.NUM_ENT_SAL',
'         AND A.COD_EMPRESA = D.COD_EMPRESA',
'         AND A.COD_ARTICULO = D.COD_ARTICULO',
'         AND NVL(D.ANULADO, ''N'') <> ''S''',
'         AND C.COD_MOTIVO_ENT_SAL = MO.COD_MOTIVO_ENT_SAL(+)',
'         AND D.COD_ARTICULO = ''109''',
'         AND ROWNUM = 1;',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        VTIPO := ''N'';',
'    END;',
'  ',
'    IF NVL(VTIPO, ''N'') = ''S'' AND :P730_COD_ORIGEN IN (''1'', ''3'') AND',
'       :P730_COD_MOTIVO_COMPRA_NUEVA IS NULL AND',
'       :P730_CERRADO = ''S'' THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001,''Se debe cargar el motivo de la compra nueva del producto!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'  --------------------------------------------------------------------------   ',
'  --------------------------------------------------------------------------   ',
'  DECLARE',
'    VERROR EXCEPTION;',
'  BEGIN',
'    IF :P730_COD_MOTIVO_RECLAMO_SPP IS NULL AND',
'       NVL(:P730_IND_RECLAMO, ''N'') = ''S'' AND',
'       NVL(:P730_CERRADO, ''P'') = ''S'' AND',
'       :P730_COD_ORIGEN NOT IN (''2'', ''13'', ''31'', ''27'', ''15'', ''40'') THEN',
'      RAISE VERROR;',
'    END IF;',
'  EXCEPTION',
'    WHEN VERROR THEN',
'      RAISE_APPLICATION_ERROR(-20001,''EL motivo de reclamo debe cargarse  antes de grabar!'');',
'    WHEN OTHERS THEN',
'      NULL;',
'  END;',
'  --------------------------------------------------------------------------',
'',
'  --------------------------------------------------------------------------   ',
'  inv.caordtra_370.pr_valida_motivos_guardar(p_estado_presu            =>  :P730_ESTADO_PRESU,',
'                                        p_fec_aprobacion           =>  :P730_FEC_APROBACION,',
'                                        p_presupuesto              =>  :P730_PRESUPUESTO,',
'                                        p_ind_garantia             => :P730_GARANTIA,',
'                                        p_anulado                  =>  :P730_ANULADO,',
'                                        p_cod_motivo_anu           => :P730_COD_MOTIVO_ANU,',
'                                        p_cod_origen               => :P730_COD_ORIGEN,',
'                                        p_cod_motivo_rechazo_presu => nvl(:P730_COD_MOTIVO_RECHAZO_PRES,:P730_COD_MOTIVO_RECHAZO_PRESU),',
'                                        p_ind_reclamo_sta          => :P730_IND_RECLAMO_STA,',
'                                        p_cod_motivo_reclamo_sta   => :P730_COD_MOTIVO_RECLAMO_STA,',
'                                        p_tipo_reclamo             => :P730_TIPO_RECLAMO,',
'                                        p_cod_motivo_reclamo_spp   => :P730_COD_MOTIVO_RECLAMO_SPP,',
'                                        p_cerrado                  => :P730_CERRADO,',
'                                        p_cod_proveedor            => :P730_COD_PROVEEDOR,',
'                                        p_mensaje_error            => :P0_ERROR,',
'                                        P_NRO_GARANTIA          => :P730_NRO_GARANTIA);',
'  --------------------------------------------------------------------------    ',
'',
'  --------------------------------------------------------------------------',
'  IF :P730_CERRADO = ''S'' OR :P730_TIENE_REPUESTOS = ''S'' THEN',
'    IF :P730_COD_ARTICULO <> :P730_COD_ARTICULO2 THEN',
'      inv.caordtra_370.pr_valida_codigo_art(p_cod_origen    => :P730_COD_ORIGEN,',
'                                         p_cod_articulo  => :P730_COD_ARTICULO,',
'                                         p_cod_articulo2 =>  :P730_COD_ARTICULO2,',
'                                         p_cod_empresa   => :P_COD_EMPRESA,',
'                                         p_mensaje_error => :P0_ERROR);',
'    END IF;',
'  END IF;',
'  --------------------------------------------------------------------------',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'&P0_ERROR. #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P730_NRO_COMPROBANTE'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(279474274317777328)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Guarda_ot'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'p_nro_ot NUMBER;',
'p_cod_cliente  varchar2(50);',
'p_retorno   varchar2(3500);',
'vmensaje    varchar2(3500);',
'error exception;',
'vcantps number;',
'BEGIN  ',
'select count(*) ',
'into vcantps',
'from apex_collections',
'where collection_name = ''VT_ORDENES_PROBLEMA'';',
'if vcantps>0 then',
'    if :P730_TIPO in (''CSS'',''CSR'') then ',
'        :P730_IND_SNC :=  ''S'';',
'    ELSE ',
'        :P730_IND_SNC :=  ''N'';',
'    END IF;',
'',
'    if :P730_NRO_COMPROBANTE is null then',
'    ---- Crea OT',
'    begin ',
'           inv.caordtra_370.pr_crea_ot_apex(pci_cliente => nvl(:P730_NCI,:P730_RUC),',
'                                        p_nombre => :P730_NOM_CLIENTE,',
'                                        p_direccion => :P730_DIR_CLIENTE,',
'                                        p_telefono => :P730_PREFIJO||:P730_TEL_CLIENTE,',
'                                        p_articulo => :P730_COD_ARTICULO_OT,',
'                                        p_garantia_ot => :P730_NRO_GARANTIA,',
'                                        p_serie =>  :P730_SERIE_PRODUCTO,',
'                                        p_fecha_ot  => to_char(sysdate,''dd/mm/yyyy''),',
'                                        p_fecha_dist => :P730_FECHA_FACTURA,-- p_fecha_dist => :p_fecha_dist,',
'                                        p_nro_comprobante_dist => :P730_NRO_FACTURA  ,',
'                                        p_cod_distribuidor => :P730_COD_DISTRIBUIDOR ,',
'                                        p_cod_proveedor => :P730_COD_PROVEEDOR ,',
'                                        p_articulo_mo =>  NULL,',
'                                        p_tecnico => NULL,',
'                                        p_cod_problema =>  NULL,',
'                                        p_cod_solucion =>  NULL,',
'                                        p_condicion => :P730_COMENTARIO ,',
'                                        p_nro_ot_proveedor =>  :P730_NRO_BOLETA_AM, ',
'                                        p_nro_ot => p_nro_ot ,',
'                                        p_cod_cliente => :P730_COD_CLIENTE,',
'                                        p_retorno => p_retorno,',
'                                        p_repcant => NULL,',
'                                        p_estado => ''I'',',
'                                        p_serie_ot => :P730_SER_COMPROBANTE,',
'                                        p_ot_ngo => :P730_NRO_COMPROBANTE, ',
'                                        p_km_flete => NULL,',
'                                        p_tipo_gas => NULL,',
'                                        p_diagnostico => :P730_OBSERV,',
'                                        p_informe =>  :P730_CONCLUSION,',
'                                        p_departamento => :P730_DEPARTAMENTO,--p_departamento => :p_departamento,',
'                                        p_ciudad => :P730_CIUDAD,--p_ciudad => :p_ciudad,',
'                                        p_email =>  :P730_EMAIL,',
'                                        p_celular => :P730_PREFIJO||:P730_TEL_CLIENTE,',
'                                        p_fecha_reparacion => NULL,',
'                                        p_reparado_por => NULL,',
'                                        p_fecha_retiro => NULL,',
'                                        p_origen => :P730_COD_ORIGEN,',
'                                        p_usuario => v(''app_user''),',
'                                        p_garantia => :P730_GARANTIA,',
'                                        p_ind_zona  =>  :P730_IND_ZONA,',
'                                        p_presupuesto   => :P730_PRESUPUESTO,',
'                                        p_ind_delivery  => :P730_IND_DELIVERY,',
'                                        p_ind_retirado  =>  :P730_IND_RETIRADO,',
'                                        p_fecha_co_distribuidor =>  :P730_FECHA_CO_DISTRIBUIDOR,',
'                                        p_nro_comprobante_distr  =>  :P730_NRO_COMPROBANTE_DISTR,',
'                                        p_contador_fact_art_dist    => :P730_CONTADOR_FACT_ART_DIST,',
'                                        p_tipo_cierre           =>  :P730_TIPO_CIERRE,',
'                                        p_fec_estado  => :P730_FEC_ESTADO,',
'                                         p_verificado_por  =>  :P730_VERIFICADO_POR,',
'                                         p_fec_verificado =>  :P730_FEC_VERIFICADO,',
'                                         p_hora_verificacion  => :P730_HORA_VERIFICACION,',
'                                         p_ind_correo_presu   => :P730_IND_CORREO_PRESU,',
'                                         p_retirado_por        => :P730_RETIRADO_POR,',
'                                         p_fecha_retirado      => :P730_FECHA_RETIRADO,',
'                                         p_hora_retirado       =>  :P730_HORA_RETIRADO,',
'                                         p_fec_retirado        => :P730_FEC_RETIRADO,',
'                                         p_ind_entrega         =>  :P730_IND_ENTREGA,',
'                                         p_mensaje_proceso     => :P0_MENSAJE,',
'                                         p_cont_ot             => :P730_CONT_OT,',
'                                         p_creado_por          => :P730_CREADO_POR,',
'                                         p_fec_creacion        => :P730_FEC_CREACION,',
'                                         p_hora_creacion        => :P730_HORA_CREACION,',
'                                         p_presupuestado_por    => :P730_PRESUPUESTADO_POR,',
'                                         p_fec_presupuestado     =>  :P730_FEC_PRESUPUESTADO,',
'                                         p_hora_presupuesto       =>  :P730_HORA_PRESUPUESTO,',
'                                          p_pendiente_por         => :P730_PENDIENTE_POR,',
'                                          p_fec_pendiente         =>  :P730_FEC_PENDIENTE,',
'                                          p_hora_pendiente        => :P730_HORA_PENDIENTE,',
'                                          p_rechazado_por         =>  :P730_RECHAZADO_POR,',
'                                          p_fec_rechazo           =>  :P730_FEC_RECHAZO,',
'                                          p_hora_rechazado         => :P730_HORA_RECHAZADO,',
'                                          p_entregado_por          => :P730_ENTREGADO_POR,',
'                                          p_fec_entregado         => :P730_FEC_ENTREGADO,',
'                                          p_hora_entregado         =>  :P730_HORA_ENTREGADO,',
'                                          p_cod_usuario_sin_rp      => :P730_COD_USUARIO_SIN_RP,',
'                                          p_fec_sin_repuesto        => :P730_FEC_SIN_REPUESTO,',
'                                          p_hora_sin_repuesto        => :P730_HORA_SIN_REPUESTO,',
'                                          p_cod_sucursal             => :P730_COD_SUCURSAL,',
'                                          p_cod_motivo_reclamo_jefe  =>  :P730_COD_MOTIVO_RECLAMO_JEFE,',
'                                          p_cod_condicion_venta      => :P730_COD_CONDICION_VENTA,',
'                                          p_fec_aprobacion           => :P730_FEC_APROBACION,',
'                                          p_anulado                  =>  :P730_ANULADO,',
'                                          p_cod_motivo_anu           => :P730_COD_MOTIVO_ANU,',
'                                          p_cod_motivo_rechazo_presu =>  :P730_COD_MOTIVO_RECHAZO_PRESU,',
'                                          p_ind_reclamo_sta          => :P730_IND_RECLAMO_STA,',
'                                          p_cod_motivo_reclamo_sta   =>  :P730_COD_MOTIVO_RECLAMO_STA,',
'                                          p_tipo_reclamo             =>  :P730_TIPO_RECLAMO,',
'                                          p_cod_motivo_reclamo_spp   => :P730_COD_MOTIVO_RECLAMO_SPP,',
'                                          p_cod_articulo_call        => :P730_COD_ARTICULO_OT_CALL,',
'                                          p_aprobado_por             => :P730_APROBADO_POR,',
'                                          p_hora_aprobada            =>  :P730_HORA_APROBADA,',
'                                          p_fec_modif_aprobado       => :P730_FEC_MODIF_APROBADO,',
'                                          p_fec_modif_presupuesto    => :P730_FEC_MODIF_PRESUPUESTO,',
'                                          p_fec_modif_pendiente      => :P730_FEC_MODIF_PENDIENTE,',
'                                          p_fec_modif_rechazado      => :P730_FEC_MODIF_RECHAZADO,',
'                                          p_fec_modif_verificado     => :P730_FEC_MODIF_VERIFICADO,',
'                                          p_ind_liquida              => :P730_IND_LIQUIDA,',
'                                          p_ind_abandonado           => :P730_IND_ABANDONADO,',
'                                          p_tot_repuestos_call       => :P730_TOT_REPUESTOS_CALL,',
'                                          p_cod_motivo_compra_nueva  => :P730_COD_MOTIVO_COMPRA_NUEVA,',
'                                          p_celular_contacto         =>  :P730_CELULAR_CONTACTO,',
'                                          p_correo_contacto          => :P730_CORREO_CONTACTO,',
'                                          p_fecha_modificado_garantia => :P730_FECHA_MODIFICADO_GARANTIA,',
'                                          p_fecha_estado_complicado  => :P730_FECHA_ESTADO_COMPLICADO,',
'                                          p_ind_adicional            => :P730_IND_ADICIONAL,',
'                                          p_sitio                    => :P730_SITIO,',
'                                          p_ind_correo_pe            => :P730_IND_CORREO_PE,',
'                                          p_ind_enviado              => :P730_IND_ENVIADO,',
'                                          P_FEC_IM                   => :P730_FEC_IM,',
'                                            P_REPARADO_IM_POR         => :P730_REPARADO_IM_POR,',
'                                            P_HORA_IM                 => :P730_HORA_IM,',
'                                            p_finalizado_por          => :P730_FINALIZADO_POR,',
'                                            p_fec_modif_cerrado      => :P730_FEC_MODIF_CERRADO,',
'                                            p_hora_finalizado        => :P730_HORA_FINALIZADO,',
'                                            p_ncr                   => :P730_NCR,',
'                                            p_cambio                => :P730_CAMBIO,',
'                                            p_ind_carneo            => :P730_IND_CARNEO,',
'                                            p_estado_presu          =>  :P730_ESTADO_PRESU,',
'                                            p_FEC_FINALIZADO        => :P730_FEC_FINALIZADO,',
'                                             p_USUARIO_PED_REP      =>  :P730_USUARIO_PED_REP,',
'                                             p_FECHA_PED_REP        =>  :P730_FECHA_PED_REP,',
'                                             p_HORA_PED_REP          => :P730_HORA_PED_REP,',
'                                             p_COD_USUARIO_ESTADO_COMPLI   => :P730_COD_USUARIO_ESTADO_COMPLI,',
'                                             p_COD_USUARIO_RENDICION           =>  :P730_COD_USUARIO_RENDICION,',
'                                             p_FEC_RENDIDO                     =>  :P730_FEC_RENDIDO,',
'                                             p_IND_RENDIDO                     => :P730_IND_RENDIDO,',
'                                             p_FECHA_LIQUIDA                   =>  :P730_FECHA_LIQUIDA,',
'                                             p_USUARIO_LIQUIDA                 =>  :P730_USUARIO_LIQUIDA,',
'                                             p_COD_USUARIO_MOD_GAR             => :P730_COD_USUARIO_MOD_GAR,',
'                                             p_FECHA_ABANDONADO                =>  :P730_FECHA_ABANDONADO,',
'                                             p_COD_USUARIO_ABANDONADO          => :P730_COD_USUARIO_ABANDONADO,',
'                                             p_cod_sta                         => null,',
'                                             P_COD_SUCURSAL_DIST                => :P730_COD_SUCURSAL_DIST,',
'                                            P_IND_SNC                           => :P730_IND_SNC,',
'                                            p_id_ticket     => :P730_NRO_TICKET,',
'                                            p_ind_reclamo   => :P730_IND_RECLAMO,',
'                                            p_cod_problema_reclamo  =>  :P730_COD_PROBLEMA ,',
'                                            p_cod_solucion_reclamo   => :P730_COD_SOLUCION,',
'                                            p_comentario_reclamo  => :P730_COMENTARIO_RECLAMO,',
'                                            p_fecha_finalizacion  => :P730_FECHA_FINALIZACION,',
'                                            p_estado_reclamo  =>  :P730_ESTADO_RECLAMO,',
'                                            P_CERRADO => :P730_CERRADO,',
'                                            p_ot_anterior => :P730_OT_ANTERIOR,',
'                                            p_ser_ot_anterior => :P730_SER_OT_ANTERIOR,',
'                                            p_ubicacion => :P730_LATITUD_LONGITUD,',
'                                            p_referencia => :P730_REFERENCIAS,',
'                                         ',
'                                            p_ruc =>:P730_RUC,',
'                                            p_ci =>:P730_ci,',
'                                            p_ind_srp => null',
'                                            );  ',
'                    :P730_NRO_COMPROBANTE := p_nro_ot;',
'                   ',
'                   ',
'                    if nvl(p_retorno,''nn'')<>''OK'' then',
'                        --raise error; ',
'                         Raise_Application_Error(-20999,''Error al guardar la ot inicial II''||sqlerrm||''-''||p_retorno);',
'                    end if;',
'',
'                   IF :P730_P_NRO_SERVICIO_PARAM IS NOT NULL THEN',
'                      BEGIN',
'                            UPDATE ca_solicitud_servicio_dist A',
'                               SET A.SER_OT = NVL(:P730_SER_COMPROBANTE,''P''),',
'                                   A.NRO_OT = p_nro_ot',
'                             WHERE COD_EMPRESA = :P_COD_EMPRESA',
'                               AND A.NRO_PLANILLA = :P730_P_NRO_SERVICIO_PARAM;',
'                      EXCEPTION',
'                        WHEN OTHERS THEN',
'                          NULL;',
'                      END;',
'                  ELSE',
'                    OUT_OUT('':P370_P_NRO_SERVICIO_PARAM->''||:P730_P_NRO_SERVICIO_PARAM);',
'                  END IF;',
'exception when others then ',
' Raise_Application_Error(-20999,''Error al guardar la ot inicial ''||sqlerrm);',
'end;',
'',
'',
'    else',
'    ---- Actualiza OT ',
'    begin ',
'                inv.caordtra_370.pr_crea_ot_apex(nvl(:P730_NCI,:P730_RUC),',
'                :P730_NOM_CLIENTE,',
'                :P730_DIR_CLIENTE,',
'                :P730_PREFIJO||:P730_TEL_CLIENTE,',
'                :P730_COD_ARTICULO_OT,',
'                :P730_NRO_GARANTIA,',
'                :P730_SERIE_PRODUCTO,',
'                to_char(sysdate,''dd/mm/yyyy''),',
'                :P730_FECHA_FACTURA,',
'                 :P730_NRO_FACTURA  ,',
'                :P730_COD_DISTRIBUIDOR ,',
'                :P730_COD_PROVEEDOR ,',
'                NULL,',
'                NULL,',
'                NULL,',
'                NULL,',
'                :P730_COMENTARIO ,',
'                :P730_NRO_BOLETA_AM,',
'                p_nro_ot ,',
'                p_cod_cliente  ,',
'                p_retorno,',
'                NULL,',
'                ''U'',',
'                :P730_SER_COMPROBANTE,',
'                :P730_NRO_COMPROBANTE,',
'                NULL,',
'                NULL,',
'                :P730_OBSERV,',
'                :P730_CONCLUSION,',
'                :P730_DEPARTAMENTO,',
'                :P730_CIUDAD,',
'                :P730_EMAIL,',
'                :P730_PREFIJO||:P730_TEL_CLIENTE,',
'                NULL,',
'                NULL,',
'                NULL',
'                ,:P730_COD_ORIGEN',
'                ,v(''app_user'')',
'                ,:P730_GARANTIA,',
'                p_ind_zona  =>  :P730_IND_ZONA,',
'                p_presupuesto   => :P730_PRESUPUESTO,',
'                p_ind_delivery  => :P730_IND_DELIVERY,',
'                p_ind_retirado  =>  :P730_IND_RETIRADO,',
'                p_fecha_co_distribuidor =>  :P730_FECHA_CO_DISTRIBUIDOR,',
'                p_nro_comprobante_distr  =>  :P730_NRO_COMPROBANTE_DISTR,',
'                p_contador_fact_art_dist    => :P730_CONTADOR_FACT_ART_DIST,',
'                p_tipo_cierre           =>  :P730_TIPO_CIERRE,',
'                p_fec_estado  => :P730_FEC_ESTADO,',
'                 p_verificado_por  =>  :P730_VERIFICADO_POR,',
'                 p_fec_verificado =>  :P730_FEC_VERIFICADO,',
'                 p_hora_verificacion  => :P730_HORA_VERIFICACION,',
'                 p_ind_correo_presu   => :P730_IND_CORREO_PRESU,',
'                 p_retirado_por        => :P730_RETIRADO_POR,',
'                 p_fecha_retirado      => :P730_FECHA_RETIRADO,',
'                 p_hora_retirado       =>  :P730_HORA_RETIRADO,',
'                 p_fec_retirado        => :P730_FEC_RETIRADO,',
'                 p_ind_entrega         =>  :P730_IND_ENTREGA,',
'                 p_mensaje_proceso     => :P0_MENSAJE,',
'                 p_cont_ot             => :P730_CONT_OT,',
'                 p_creado_por          => :P730_CREADO_POR,',
'                 p_fec_creacion        => :P730_FEC_CREACION,',
'                 p_hora_creacion        => :P730_HORA_CREACION,',
'                 p_presupuestado_por    => :P730_PRESUPUESTADO_POR,',
'                 p_fec_presupuestado     =>  :P730_FEC_PRESUPUESTADO,',
'                 p_hora_presupuesto       =>  :P730_HORA_PRESUPUESTO,',
'                  p_pendiente_por         => :P730_PENDIENTE_POR,',
'                  p_fec_pendiente         =>  :P730_FEC_PENDIENTE,',
'                  p_hora_pendiente        => :P730_HORA_PENDIENTE,',
'                  p_rechazado_por         =>  :P730_RECHAZADO_POR,',
'                  p_fec_rechazo           =>  :P730_FEC_RECHAZO,',
'                  p_hora_rechazado         => :P730_HORA_RECHAZADO,',
'                  p_entregado_por          => :P730_ENTREGADO_POR,',
'                  p_fec_entregado         => :P730_FEC_ENTREGADO,',
'                  p_hora_entregado         =>  :P730_HORA_ENTREGADO,',
'                  p_cod_usuario_sin_rp      => :P730_COD_USUARIO_SIN_RP,',
'                  p_fec_sin_repuesto        => :P730_FEC_SIN_REPUESTO,',
'                  p_hora_sin_repuesto        => :P730_HORA_SIN_REPUESTO,',
'                  p_cod_sucursal             => :P730_COD_SUCURSAL,',
'                  p_cod_motivo_reclamo_jefe  =>  :P730_COD_MOTIVO_RECLAMO_JEFE,',
'                  p_cod_condicion_venta      => :P730_COD_CONDICION_VENTA,',
'                  p_fec_aprobacion           => :P730_FEC_APROBACION,',
'                  p_anulado                  =>  :P730_ANULADO,',
'                  p_cod_motivo_anu           => :P730_COD_MOTIVO_ANU,',
'                  p_cod_motivo_rechazo_presu =>  :P730_COD_MOTIVO_RECHAZO_PRESU,',
'                  p_ind_reclamo_sta          => :P730_IND_RECLAMO_STA,',
'                  p_cod_motivo_reclamo_sta   =>  :P730_COD_MOTIVO_RECLAMO_STA,',
'                  p_tipo_reclamo             =>  :P730_TIPO_RECLAMO,',
'                  p_cod_motivo_reclamo_spp   => :P730_COD_MOTIVO_RECLAMO_SPP,',
'                  p_cod_articulo_call        => :P730_COD_ARTICULO_OT_CALL,',
'                  p_aprobado_por             => :P730_APROBADO_POR,',
'                  p_hora_aprobada            =>  :P730_HORA_APROBADA,',
'                  p_fec_modif_aprobado       => :P730_FEC_MODIF_APROBADO,',
'                  p_fec_modif_presupuesto    => :P730_FEC_MODIF_PRESUPUESTO,',
'                  p_fec_modif_pendiente      => :P730_FEC_MODIF_PENDIENTE,',
'                  p_fec_modif_rechazado      => :P730_FEC_MODIF_RECHAZADO,',
'                  p_fec_modif_verificado     => :P730_FEC_MODIF_VERIFICADO,',
'                  p_ind_liquida              => :P730_IND_LIQUIDA,',
'                  p_ind_abandonado           => :P730_IND_ABANDONADO,',
'                  p_tot_repuestos_call       => :P730_TOT_REPUESTOS_CALL,',
'                  p_cod_motivo_compra_nueva  => :P730_COD_MOTIVO_COMPRA_NUEVA,',
'                  p_celular_contacto         =>  :P730_CELULAR_CONTACTO,',
'                  p_correo_contacto          => :P730_CORREO_CONTACTO,',
'                  p_fecha_modificado_garantia => :P730_FECHA_MODIFICADO_GARANTIA,',
'                  p_fecha_estado_complicado  => :P730_FECHA_ESTADO_COMPLICADO,',
'                  p_ind_adicional            => :P730_IND_ADICIONAL,',
'                  p_sitio                    => :P730_SITIO,',
'                  p_ind_correo_pe            => :P730_IND_CORREO_PE,',
'                  p_ind_enviado              => :P730_IND_ENVIADO,',
'                  P_FEC_IM                   => :P730_FEC_IM,',
'                    P_REPARADO_IM_POR         => :P730_REPARADO_IM_POR,',
'                    P_HORA_IM                 => :P730_HORA_IM,',
'                    p_finalizado_por          => :P730_FINALIZADO_POR,',
'                    p_fec_modif_cerrado      => :P730_FEC_MODIF_CERRADO,',
'                    p_hora_finalizado        => :P730_HORA_FINALIZADO,',
'                    p_ncr                   => :P730_NCR,',
'                    p_cambio                => :P730_CAMBIO,',
'                    p_ind_carneo            => :P730_IND_CARNEO,',
'                    p_estado_presu          =>  :P730_ESTADO_PRESU,',
'                    p_FEC_FINALIZADO        => :P730_FEC_FINALIZADO,',
'                 p_USUARIO_PED_REP      =>  :P730_USUARIO_PED_REP,',
'                 p_FECHA_PED_REP        =>  :P730_FECHA_PED_REP,',
'                 p_HORA_PED_REP          => :P730_HORA_PED_REP,',
'                 p_COD_USUARIO_ESTADO_COMPLI   => :P730_COD_USUARIO_ESTADO_COMPLI,',
'                 p_COD_USUARIO_RENDICION           =>  :P730_COD_USUARIO_RENDICION,',
'                 p_FEC_RENDIDO                     =>  :P730_FEC_RENDIDO,',
'                 p_IND_RENDIDO                     => :P730_IND_RENDIDO,',
'                 p_FECHA_LIQUIDA                   =>  :P730_FECHA_LIQUIDA,',
'                 p_USUARIO_LIQUIDA                 =>  :P730_USUARIO_LIQUIDA,',
'                 p_COD_USUARIO_MOD_GAR             => :P730_COD_USUARIO_MOD_GAR,',
'                 p_FECHA_ABANDONADO                =>  :P730_FECHA_ABANDONADO,',
'                 p_COD_USUARIO_ABANDONADO          => :P730_COD_USUARIO_ABANDONADO,',
'                 p_cod_sta                         => null,',
'                 P_COD_SUCURSAL_DIST               => :P730_COD_SUCURSAL_DIST,',
'                 P_IND_SNC                           => :P730_IND_SNC,',
'                 p_id_ticket     => :P730_NRO_TICKET,',
'                 p_ind_reclamo   => :P730_IND_RECLAMO,',
'                 p_cod_problema_reclamo  =>  :P730_COD_PROBLEMA ,',
'                p_cod_solucion_reclamo   => :P730_COD_SOLUCION,',
'                p_comentario_reclamo  => :P730_COMENTARIO_RECLAMO,',
'                p_fecha_finalizacion  => :P730_FECHA_FINALIZACION,',
'                p_estado_reclamo  =>  :P730_ESTADO_RECLAMO,',
'                P_CERRADO => :P730_CERRADO,',
'                p_ot_anterior => :P730_OT_ANTERIOR,',
'                p_ser_ot_anterior => :P730_SER_OT_ANTERIOR,',
'                                            p_ubicacion => :P730_LATITUD_LONGITUD,',
'                                            p_referencia => :P730_REFERENCIAS,',
'                                            p_ruc =>:P730_RUC,',
'                                            p_ci =>:P730_ci,',
'                                            p_ind_srp => null);',
'                                            exception when others then',
'                                             Raise_Application_Error(-20999,''error guardar ot  ''||sqlerrm);',
'                                             end;    ',
'    end if;   ',
'    declare ',
'            cursor REG is',
'            select seq_id,',
'                    c001 COD_PROB_CLI,',
'                    c003 COD_PROBLEMA,',
'                    c005 COD_SOLUCION',
'                from apex_collections',
'                where collection_name = ''VT_ORDENES_PROBLEMA''             ',
'                order by 1 asc;',
'    begin',
'    BEGIN ',
'        DELETE FROM inv.vt_ordenes_trabajo_prob_gen',
'        WHERE SER_COMPROBANTE  = :P730_SER_COMPROBANTE',
'        AND NRO_COMPROBANTE =  :P730_NRO_COMPROBANTE;',
'        EXCEPTION',
'        WHEN OTHERS THEN ',
'            NULL;',
'    END;',
'            for x in REG loop',
'                insert into inv.vt_ordenes_trabajo_prob_gen',
'                    (cod_empresa,',
'                    tip_comprobante,',
'                    ser_comprobante,',
'                    nro_comprobante,      ',
'                    cod_problema,',
'                    cod_solucion, ',
'                    cod_problema_cliente)',
'                    values',
'                    (:P_COD_EMPRESA,''ORT'',:P730_SER_COMPROBANTE,NVL(p_nro_ot,NVL(:P730_NRO_COMPROBANTE,:P730_PARAM_NRO_OT)),  ',
'                    X.cod_problema,',
'                    X.COD_SOLUCION,',
'                    X.COD_PROB_CLI);',
'            end loop;',
'            COMMIT;',
'',
'            apex_collection.create_OR_TRUNCATE_collection(''VT_ORDENES_PROBLEMA'');',
'    exception',
'        when others then',
'                p_retorno:=''No se ha podido cargar el Problema/Solucion'';',
'                raise error; ',
'    end;',
'',
'',
'    ------------------------ Inserta Mano de Obra',
'    declare ',
'            cursor REG is',
'            select seq_id,',
'                    c001 COD_ARTICULO,',
'                    c003 PRECIO_UNITARIO,',
'                    c004 MONTO_TOTAL,',
'                    c005 COD_TECNICO,',
'                    c008 PORC_CLIENTE , ',
'                    c009 TIPO_CAMBIO,',
'                    c010 COM_TEC, ',
'                    c011 COM_JEF , ',
'                    c012 MON_GAR,',
'                    c013 MON_ADICIONAL,',
'                    c020 MONTO_COMISION_TECNICO,',
'                    c021  MONTO_COMISION_jEFE_tECNICO',
'                from apex_collections',
'                where collection_name = ''VT_MANO_OBRA''',
'                AND c014=''I''',
'                order by 1 asc;',
'    begin',
'            for x in REG loop',
'                insert into inv.vt_ordenes_trabajo_mo',
'                        (cod_empresa,tip_comprobante,ser_comprobante,nro_comprobante,  ',
'                        cod_articulo,',
'                        cantidad,',
'                        cod_moneda,',
'                        tip_cambio,',
'                        monto,',
'                        cod_tecnico,',
'                        ind_reclamo, ',
'                        garantia,',
'                        monto_venta,',
'                        monto_comision_tecnico,',
'                        monto_comision_jefe_tecnico,',
'                        monto_adicional, ',
'                        porcentaje_cliente,',
'                        monto_gar_jt)',
'                        values',
'                        (:P_COD_EMPRESA,''ORT'',:P730_SER_COMPROBANTE,NVL(p_nro_ot,NVL(:P730_NRO_COMPROBANTE,:P730_PARAM_NRO_OT)),  ',
'                        X.COD_ARTICULO,1,1,x.TIPO_CAMBIO,x.PRECIO_UNITARIO,x.cod_tecnico,''N'',',
'                        nvl(:P730_GARANTIA,''N''),x.MONTO_TOTAL,x.MONTO_COMISION_TECNICO ,x.MONTO_COMISION_jEFE_tECNICO, x.MON_ADICIONAL,',
'                        X.PORC_CLIENTE,x.MON_GAR);',
'            end loop;',
'            COMMIT;',
'',
'        apex_collection.create_OR_TRUNCATE_collection(''VT_MANO_OBRA'');',
'    exception',
'        when others then',
'                p_retorno:=''No se ha podido cargar la Mano de Obra'';',
'                raise error; ',
'    end;',
'',
'',
'declare ',
'    V_CONT NUMBER := 0;',
'BEGIN',
'BEGIN',
'select COUNT(*)',
'INTO V_CONT',
'from ca_entsal_cab a',
'where a.nro_comprobante_ref = :P730_NRO_COMPROBANTE',
'and a.ser_comprobante_ref = :P730_SER_COMPROBANTE',
'and a.tip_comprobante_ref  = ''ORT''',
'AND a.cod_empresa = :P_COD_EMPRESA;',
'EXCEPTION ',
'WHEN OTHERS THEN ',
'V_CONT := 0;',
'END;',
'',
'if V_CONT = 0 then',
'------------------------ Inserta PRESUPUESTO',
'    declare ',
'            cursor REG is',
'            select seq_id,',
'                    c001 COD_ARTICULO,',
'                    c003 CANTIDAD,',
'                    c004 PRECIO_UNITARIO,',
'                    c005 MONTO_TOTAL,',
'                    (SELECT COSTO_PROM FROM ST_ARTICULOS  WHERE COD_EMPRESA=:P_COD_EMPRESA AND COD_ARTICULO=c001) AS COSTO',
'                ',
'                from apex_collections',
'                where collection_name = ''VT_ORDENES_PRESUPUESTO''',
'                AND c006=''I''',
'                order by 1 asc;',
'        v_num_ent_sal NUMBER;',
'    begin',
'           BEGIN    ',
'            SELECT NVL(MAX(num_ent_sal),0)+1',
'            INTO v_num_ent_sal',
'            FROM inv.ca_entsal_cab',
'            WHERE cod_empresa=:P_COD_EMPRESA',
'            AND   ser_ent_sal=''A''',
'            AND   tip_ent_sal=''AJS'';',
'',
'           EXCEPTION',
'            WHEN OTHERS THEN',
'                        V_num_ent_sal:=1;',
'           END;',
'',
'',
'            insert into inv.ca_entsal_cab',
'                        (cod_empresa,cod_sucursal,num_ent_sal,fec_ent_sal,',
'                            cod_motivo_ent_sal,cod_moneda,ser_ent_sal,tip_ent_sal,',
'                            fec_alta,tip_comprobante_ref,ser_comprobante_ref,',
'                            nro_comprobante_ref,hora_alta,cod_tecnico,cod_usuario )',
'                        values',
'                        (:P_COD_EMPRESA,''01'',v_num_ent_sal,TRUNC(SYSDATE),''8'',''1'',''A'',''AJS'',',
'                         TRUNC(SYSDATE),''ORT'',:P730_SER_COMPROBANTE,:P730_NRO_COMPROBANTE, ',
'                        TO_CHAR(SYSDATE,''HH24:MI:SS''),:P730_COD_PROVEEDOR,v(''app_user'') );',
'',
'            for x in REG loop',
'                insert into inv.ca_entsal_det',
'                (cod_empresa, tip_ent_sal, ser_ent_sal, num_ent_sal, cod_articulo, ',
'                costo, cantidad, cod_sucursal, cod_unidad_medida, cantidad_ub, confirmado,',
'                cod_iva, nro_lote, fec_vencimiento,  precio_venta, costo_gs, ',
'                anulado,  cantidad_confirmada, precio_lista)',
'                values',
'                (:P_COD_EMPRESA, ''AJS'', ''A'', v_num_ent_sal, X.cod_articulo, ',
'                X.costo, X.cantidad, ''01'', ''UN'', X.Cantidad , ''S'', ',
'                ''1'', ''1'', TRUNC(SYSDATE+15),   X.precio_UNITARIO, X.costo ,',
'                ''N'',  0, X.precio_UNITARIO);',
'            end loop;',
'            COMMIT;',
'',
'        apex_collection.create_OR_TRUNCATE_collection(''VT_ORDENES_PRESUPUESTO'');',
'    exception',
'        when others then',
'                p_retorno:=''No se ha podido cargar el Presupuesto'';',
'                raise error; ',
'    end;',
'',
'    end if;',
'    END;',
'',
'    if :P730_PARAM_ID_TKT  is not null then',
'       begin',
'            update CA_TICKET_ATENCION',
'            set nro_ort = p_nro_ot,',
'                ser_ort = :P730_SER_COMPROBANTE,',
'                FECHA_CIERRE=SYSDATE,',
'                USER_CIERRE = v(''app_user''),',
'                LATITUDE_1 = decode(LATITUDE_1,null,:P730_LATITUDE,LATITUDE_1),			',
'                LONGITUDE_1	= decode(LONGITUDE_1,null,:P730_LONGITUDE,LONGITUDE_1),',
'                FEC_UBI_1	= decode(FEC_UBI_1,null,sysdate,FEC_UBI_1),',
'                LATITUDE_2	= decode(LATITUDE_2,null,decode(LATITUDE_1,null,null,:P730_LATITUDE),LATITUDE_2),',
'                LONGITUDE_2	= decode(LONGITUDE_2,null,decode(LONGITUDE_1,null,null,:P730_LONGITUDE) ,LONGITUDE_2),',
'                FEC_UBI_2	= decode(FEC_UBI_2,null,decode(FEC_UBI_1,null,null,sysdate) ,FEC_UBI_2)',
'            where cod_empresa= :P_COD_EMPRESA',
'            and   ID_ticket = :P730_PARAM_ID_TKT ',
'            ;',
'       exception ',
'            when others then',
'                    null;',
'       end;',
'    end if;',
'',
'   ',
'else',
' apex_error.add_error',
'                (p_message               => ''Debe cargar al menos un problema'',',
'                    p_display_location      => apex_error.c_inline_in_notification',
'                );',
'end if;',
'exception     ',
'when error then',
'apex_error.add_error',
'       (p_message               => p_retorno,',
'        p_display_location      => apex_error.c_inline_in_notification',
'       );',
'when others then',
'    apex_error.add_error',
'                (p_message               => ''Debe cargar al intentar guardar la OT'',',
'                    p_display_location      => apex_error.c_inline_in_notification',
'                );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'&P0_ERROR. #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(279415573445777299)
,p_process_success_message=>'&P0_MENSAJE.'
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
 p_id=>wwv_flow_imp.id(279473479270777328)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clear_collection_nuevo'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P730_PARAM_NRO_OT:=null;',
':P730_PARAM_SER_OT:=null;',
'apex_collection.truncate_collection (''VT_ORDENES_PROBLEMA'');',
'apex_collection.truncate_collection (''VT_ORDENES_PROBLEMA1'');',
'apex_collection.truncate_collection (''VT_ORDENES_REPUESTOS_PEDIDOS'');',
'apex_collection.truncate_collection (''VT_ORDENES_PRESUPUESTO'');',
'apex_collection.truncate_collection (''VT_MANO_OBRA'');',
'---apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_PEDIDOS_DETALLE'');',
'apex_collection.truncate_collection (''VT_ORDENES_REPUESTOS_PEDIDOS1'');',
'apex_collection.truncate_collection (''VT_ORDENES_PRESUPUESTO1'');',
'apex_collection.truncate_collection (''VT_MANO_OBRA1'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(279415116544777299)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(279474693310777329)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clear_collection_cancel'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P730_PARAM_NRO_OT:=null;',
':P730_PARAM_SER_OT:=null;',
'apex_collection.truncate_collection (''VT_ORDENES_PROBLEMA'');',
'apex_collection.truncate_collection (''VT_ORDENES_PROBLEMA1'');',
'apex_collection.truncate_collection (''VT_ORDENES_REPUESTOS_PEDIDOS'');',
'apex_collection.truncate_collection (''VT_ORDENES_PRESUPUESTO'');',
'apex_collection.truncate_collection (''VT_MANO_OBRA'');',
'',
'apex_collection.truncate_collection (''VT_ORDENES_REPUESTOS_PEDIDOS1'');',
'apex_collection.truncate_collection (''VT_ORDENES_PRESUPUESTO1'');',
'apex_collection.truncate_collection (''VT_MANO_OBRA1'');',
'---apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''VT_PEDIDOS_DETALLE'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(279413108161777299)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(279476257062777330)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Crea coleccion'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_ORDENES_PROBLEMA''); ',
'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_MANO_OBRA''); ',
'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_ORDENES_PRESUPUESTO''); ',
'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_ORDENES_REPUESTOS_PEDIDOS''); ',
'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_ORDENES_REPUESTOS_UTILIZADOS'');',
'apex_collection.create_or_truncate_collection(p_collection_name => ''TMP_REG_SEGUIMIENTOS''); ',
'apex_collection.create_or_truncate_collection(p_collection_name => ''TMP_REG_CALL'');',
'apex_collection.create_or_truncate_collection(p_collection_name => ''TMP_UBICACIONES'');',
'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_REPUESTOS_UTILIZADOS'');',
'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_B_DETALLE'');',
'apex_collection.create_or_truncate_collection(p_collection_name => ''VT_PRODUCTOS'');',
'apex_collection.create_or_truncate_collection(p_collection_name => ''CAORDTRA_370_IMAGENES'');',
' ',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(279477065187777331)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRE FORM'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P730_TIP_ORDEN_TRABAJO    := inv.f_BUSCA_PARAMETRO(''CA'', ''TIPO_ORDEN_TRAB'');',
':P730_SER_ORDEN_TRABAJO    := inv.f_BUSCA_PARAMETRO(''CA'', ''SERIE_ORDEN_TRAB'');',
':P730_RUBRO_MO             := inv.f_BUSCA_PARAMETRO(''CA'', ''RUBRO_MANO_OBRA'');',
':P730_CLIENTE_CONTADO     := inv.f_BUSCA_PARAMETRO(''CA'', ''CLIENTE_CONTADO'');',
':P730_RUBRO_SERV_TECNICO   := inv.f_BUSCA_PARAMETRO(''CM'', ''RUBRO_SERV_TECNICO'');',
':P730_COD_MONEDA_BASE      := inv.f_BUSCA_PARAMETRO(''CA'', ''COD_MONEDA_BASE'');',
':P730_TIP_MOTIVO_ANULACION := inv.f_BUSCA_PARAMETRO(''CA'', ''TIP_ANULACION_OT'');',
':P730_PERMITE_ANULAR := inv.f_BUSCA_PARAMETRO(''CA'', ''PERMITE_ANULAR'');',
'',
':P730_MODIFICA_FECHA_CIERRE    := busca_permiso(:P_COD_EMPRESA, ',
'                                                     ''CAORDTRA'', ',
'                                                     :APP_USER, ',
'                                                     ''MODIFICA FECHA CIERRE'');',
'',
':P730_ESTADO_COMPLICADO        := busca_permiso(:P_COD_EMPRESA, ',
'                                                     ''CAORDTRA'', ',
'                                                     :APP_USER, ',
'                                                     ''ESTADO_COMPLICADO'');',
'                                                   ',
'                                                    ',
':P730_REPUESTO                 := busca_permiso(:P_COD_EMPRESA, ',
'						                                         ''CAORDTRA'', ',
'						                                         :APP_USER, ',
'						                                         ''PIDE REPUESTO'');',
'                                                  ',
':P730_AGREGA_REPUESTOS_OT_PRE  := busca_permiso(:P_COD_EMPRESA, ',
'																										 ''CAORDTRA'', ',
'																										 :APP_USER, ',
'																										 ''AGREGA_REP_PRE'');  ',
'                                                      ',
':P730_MODIFICA_CLIENTE         := busca_permiso(:P_COD_EMPRESA, ',
'                                                     ''CAORDTRA'', ',
'                                                     :APP_USER, ',
'                                                     ''CAMBIA_CLIENTEE'');     ',
'                                                                                               ',
unistr(':P730_ACTUALIZA_COD_ARTICULO   := busca_permiso(:P_COD_EMPRESA,   --Se agrega esto a pedido de Alma y Adriana, de forma a que solo ellas puedan editar los art\00EDculos de ots finalizadas o'),
unistr('                                                     ''CAORDTRA'',     --que tengan art\00EDculos con pedido de repuesto. Gaspar M. 06/04/2022   '),
'                                                     :APP_USER, ',
'                                                     ''ACTUALIZA_COD_ARTICULO'');                                                      ',
'                                                     ',
'--REABRE_OT_TECNICO',
'--* solo permite modificar fecha de entrega de ot anteriores al 2003',
':P730_MODIFICA_FECHA_ENTREGA   := busca_permiso(:P_COD_EMPRESA, ',
'                                                     ''VTORDTRA'', ',
'                                                     :APP_USER, ',
'                                                     ''MODIFICA FECHA ENTREGA'' ) ;',
'                                                    ',
':P730_REIMPRIME                := busca_permiso(:P_COD_EMPRESA, ',
'                                                     ''CAORDTRA'', ',
'                                                     :APP_USER, ',
'                                                     ''REIMPRIME'');  ',
'',
':P730_FECHAOT                 := busca_permiso(:P_COD_EMPRESA, ',
'                                                     ''CAORDTRA'', ',
'                                                     :APP_USER, ',
'                                                     ''MODIFICA_FECHAOT'');  ',
'                                                    ',
':P730_CONSULTA_FECHAOT         := busca_permiso(:P_COD_EMPRESA, ',
'                                                     ''CAORDTRA'', ',
'                                                     :APP_USER, ',
'                                                     ''CONSULTA_FECHAOT'');  ',
'',
':P730_CONSULTA_FEC_CIERRE      := busca_permiso(:P_COD_EMPRESA, ',
'                                                     ''CAORDTRA'', ',
'                                                     :APP_USER, ',
'                                                     ''CONSULTA_FEC_CIERRE'');',
'',
':P730_CARGA_NROOT              := busca_permiso(:P_COD_EMPRESA,',
'                                                     ''CAORDTRA'', ',
'                                                     :APP_USER,',
'                                                     ''CARGA_NROOT'');    ',
'                                                    ',
':P730_MODIFICA_GARANTIA        := busca_permiso(:P_COD_EMPRESA,',
'                                                     ''CAORDTRA'', ',
'                                                     :APP_USER,',
'                                                     ''MODIFICA_GARANTIA'');                                                                                                ',
'       ',
':P730_TICKET                   := busca_permiso(:P_COD_EMPRESA,',
'                                                     ''CAORDTRA'', ',
'                                                     :APP_USER,',
'                                                     ''CARGA_TICKET'');                                                                                                ',
'  ',
':P730_CARGA_MO_GARANTIA        := busca_permiso(:P_COD_EMPRESA,',
'                                                     ''CAORDTRA'', ',
'                                                     :APP_USER,',
'                                                     ''CARGAS_VARIAS_MO_GAR'');',
'                                                       ',
':P730_MODIFICA_PRECIO_MO       := busca_permiso(:P_COD_EMPRESA,',
'                                                     ''CAORDTRA'', ',
'                                                     :APP_USER,',
'                                                     ''MODIFICA_PRECIO_MO'');',
'                                                          ',
':P730_CIERRA_LINEA_CRITICA    := busca_permiso(:P_COD_EMPRESA,',
'                                                     ''CAORDTRA'', ',
'                                                     :APP_USER,',
'                                                     ''CIERRA_LINEA_CRITICA'');',
'                                                       ',
':P730_MODIFICA_FECHA_CIERRE    := busca_permiso(:P_COD_EMPRESA, ',
'                                                     ''CAORDTRA'', ',
'                                                     :APP_USER, ',
'                                                     ''MODIFICA FECHA CIERRE'');      ',
'                                                   ',
'',
'                                                                                                                                                                                                 ',
':P730_RECLAMO_JEFE     := 	busca_permiso ( :P_COD_EMPRESA,',
'                                                  ''CAORDTRA'', ',
'                                                  :APP_USER,',
'                                                  ''RECLAMO_JEFE'' ) ;        ',
'',
'declare',
'		viva VARCHAR2(5) ;',
'begin',
'		viva := inv.f_BUSCA_PARAMETRO( ''CA'', ''COD_IVA_GRAVADA''  ) ;',
'		select porc_iva_venta',
'		  into :P730_PORC_IVA',
'		  from st_iva',
'		 where cod_iva = viva ;',
'exception',
'		when others then',
'				:P730_PORC_IVA := 0 ;',
'end ;',
'',
'',
'',
'',
'',
':P730_ARTICULO :=  :P730_COD_ARTICULO_OT;',
'',
'BEGIN ',
' SELECT cod_linea, cod_categoria',
' into :P730_LINEA_ARTICULOS, :P730_CATEGORIA_ARTICULO',
'   FROM st_articulos',
'  WHERE cod_empresa = :P_COD_EMPRESA',
'    AND cod_articulo = :P730_COD_ARTICULO_OT;',
'EXCEPTION ',
'    WHEN OTHERS THEN ',
'        :P730_LINEA_ARTICULOS :=  null;',
'        :P730_CATEGORIA_ARTICULO := null;',
'END;',
'',
'--:P730_COD_CLIENTE:=''8032'';',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(279477433856777331)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'VALIDA_IMPRESION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_nro_comprobante VARCHAR2(50);',
'    v_ser_comprobante VARCHAR2(50);',
'    v_contador NUMBER := 0;',
'BEGIN',
'    v_nro_comprobante := apex_application.g_x01;',
'    v_ser_comprobante := apex_application.g_x02;',
'        BEGIN',
'            select COUNT(*)',
'            INTO v_contador',
'            from VT_CONTADOR_IMPRESION_ORT   ',
'             where cod_empresa =:P_COD_EMPRESA',
'             and TIP_COMPROBANTE =''ORT''',
'             and SER_COMPROBANTE = v_ser_comprobante',
'             and nro_comprobante = v_nro_comprobante;',
'         EXCEPTION ',
'             WHEN OTHERS THEN ',
'                v_contador := 0;',
'         END;',
'          ',
'  apex_json.open_object;',
'  apex_json.write(''success'', TRUE);',
'  apex_json.write(''p_contador'', v_contador);',
'  apex_json.close_object;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    apex_json.open_object;',
'    apex_json.write(''success'', FALSE);',
'    apex_json.write(''p_contador'', v_contador);',
'    apex_json.close_object;',
'END;',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(279478224844777332)
,p_process_sequence=>120
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'VALIDA_ESTADO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_nro_comprobante VARCHAR2(50);',
'    v_ser_comprobante VARCHAR2(50);',
'    v_contador NUMBER := 0;',
'    v_estado VARCHAR2(50);',
'BEGIN',
'    v_nro_comprobante := apex_application.g_x01;',
'    v_ser_comprobante := apex_application.g_x02;',
'        BEGIN',
'            select OT.estado_presu',
'            INTO v_estado',
'            from vt_ordenes_trabajo ot',
'            where OT.COD_EMPRESA=:P_COD_EMPRESA',
'            AND   OT.TIP_COMPROBANTE=''ORT''',
'            AND   OT.SER_COMPROBANTE = v_ser_comprobante ',
'            and   ot.NRO_comprobante= v_nro_comprobante;',
'',
'         EXCEPTION ',
'             WHEN OTHERS THEN ',
'                v_contador := 0;',
'         END;',
'          ',
'  apex_json.open_object;',
'  apex_json.write(''success'', TRUE);',
'  apex_json.write(''p_estado'', v_estado);',
'  apex_json.close_object;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    apex_json.open_object;',
'    apex_json.write(''success'', FALSE);',
'    apex_json.write(''p_estado'', v_estado);',
'    apex_json.close_object;',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(279478608336777332)
,p_process_sequence=>130
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'VERIFICA_CONTADOR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_nro_comprobante VARCHAR2(50);',
'    v_ser_comprobante VARCHAR2(50);',
'    v_contador NUMBER := 0;',
'BEGIN',
'    v_nro_comprobante := apex_application.g_x01;',
'    v_ser_comprobante := apex_application.g_x02;',
'        BEGIN',
'            select COUNT(*)',
'            INTO v_contador',
'            from VT_CONTADOR_IMPRESION_ORT   ',
'             where cod_empresa =:P_COD_EMPRESA',
'             and TIP_COMPROBANTE =''ORT''',
'             and SER_COMPROBANTE = v_ser_comprobante',
'             and nro_comprobante = v_nro_comprobante;',
'         EXCEPTION ',
'             WHEN OTHERS THEN ',
'                v_contador := 0;',
'         END;',
'          ',
'  apex_json.open_object;',
'  apex_json.write(''success'', TRUE);',
'  apex_json.write(''p_contador'', v_contador);',
'  apex_json.close_object;',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    apex_json.open_object;',
'    apex_json.write(''success'', FALSE);',
'    apex_json.write(''p_contador'', v_contador);',
'    apex_json.close_object;',
'END;',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
