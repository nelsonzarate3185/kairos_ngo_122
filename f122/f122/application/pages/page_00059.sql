prompt --application/pages/page_00059
begin
--   Manifest
--     PAGE: 00059
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
 p_id=>59
,p_user_interface_id=>wwv_flow_imp.id(40210426655263685)
,p_name=>'FVMRGPRO'
,p_alias=>'FVMRGPRO'
,p_step_title=>'FVMRGPRO'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function doShowHide(){',
'    var mostrar = $v("P59_MOSTRAR_BTN_CONFIRMAR");',
'    if(mostrar == 2){',
'        $(''#BOTON'').hide()',
'    }else{',
'        $(''#BOTON'').show()',
'    }',
'}',
'function seleccionar(cb) {',
'    console.log(cb.value);',
'    console.log(cb.checked);',
'',
'  if (cb.checked == true){',
'    console.log("block" + cb.value);',
'      $s(''P59_ACCION'',''AGREGAR'');',
'      $s(''P59_SEQ_ID'', cb.value,false);',
'  } else {',
'      $s(''P59_ACCION'',''QUITAR'');',
'      $s(''P59_SEQ_ID'', cb.value,false);',
'  }',
'}',
'',
'function soloNumeros(e){',
'  var key = e.charCode;',
'    return key >= 48 && key <= 57;',
'}',
'',
'',
'function soloNumerosydecimales(e) {',
'  var key = e.charCode;',
'  var char = String.fromCharCode(key);',
'',
unistr('  // Permite n\00FAmeros del 0 al 9'),
'  if (key >= 48 && key <= 57) {',
'    return true;',
'  }',
'  // // Permite el punto decimal (ASCII 46) o coma decimal (ASCII 44) solo si no se ha ingresado previamente ',
'else if ((key === 46 || key === 44) && e.target.value.indexOf(''.'') === -1 && e.target.value.indexOf('','') === -1) {',
'    return true;',
'',
'  }',
'  ',
unistr('  // Bloquea cualquier otro car\00E1cter'),
'  e.preventDefault();',
'  return false;',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-item-select:focus, .apex-item-text:focus, .apex-item-textarea:focus {',
'   background-color: #FFED00 !important;',
'   border-color: #8f0000 !important;',
'}',
'',
'.apex-item-select,  .apex-item-text , .apex-item-textarea , .apex-item-group, .display_only {',
'  border-color: #b4c6dd !important;',
'  background-color: #f8f6ea !important;',
'}',
'',
'',
'tr:last-child td[headers="TOTAL"] { ',
'    font-size: large; ',
'    background: #d9ed92; ',
'}',
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
' ',
' .divcol{text-align: right;}',
'',
' #sinstock{ background-color: #ff5636;}',
' #stockperif{ background-color: #e9ff70; }',
' #stockcompleto{background-color: #b7e4c7;}',
' #anulado{background-color: lightgray;}',
'  ',
' ',
'',
'',
' #detalle_articulo .ui-dialog {',
'    width: 1200px;  /* Ajusta el ancho */',
'    height: 600px;  /* Ajusta la altura */',
'}',
'',
'#detalle_articulo .ui-dialog-content {',
'    max-height: 350px;  /* Ajusta la altura del contenido */',
'    overflow-y: auto;   /* Agrega un scroll si es necesario */',
'}',
'',
' '))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'NZARATE'
,p_last_upd_yyyymmddhh24miss=>'20250320110341'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45805192254056647)
,p_plug_name=>'VARIABLES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>31
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(417069871069643324)
,p_plug_name=>'Menu Principal'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>1200
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(417069993843643325)
,p_plug_name=>'Principal'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49054230919350233)
,p_plug_name=>'DETALLE'
,p_parent_plug_id=>wwv_flow_imp.id(417069993843643325)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>41
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48478701235391520)
,p_plug_name=>'REPORTE_DETALLE'
,p_parent_plug_id=>wwv_flow_imp.id(49054230919350233)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT           ',
'        seq_id p_id,        ',
'        C001 COD_EMPRESA,',
'        C002 COD_ARTICULO, ',
'        to_number(C003) PRECIO ,--PRECIO DE VENTA, ',
'        to_number(C004) PORC_DTO1 ,--DESC %, ',
'        to_number(C005) PRECIO_NETO,--PRECIO VTA. NETO ',
'        to_number(C006) COSTO_ART ,--COSTO OPN, ',
'        to_number(C007) UTILIDAD ,--UTIL ',
'        to_number(C008) PORC_MARGEN, --MARGEN ',
'        to_number(C009) PORC_DTO2, -- DESC %',
'        to_number(C010) PRECIO_NETO2, --PRECIO VTA. NETO ',
'        to_number(C011) COSTO_PROMO2,',
'        to_number(C012) PORC_DESCUENTO2, ',
'        to_number(C013) UTILIDAD2, --UTILIDAD ',
'        to_number(C014) PORC_MARGEN2, --MARGEN',
'',
'   to_number(C035) PORC_DTO3, -- DESC %',
'      to_number(C037) PRECIO_NETO3, --PRECIO VTA. NETO 3',
'      to_number(C036) UTILIDAD3, --UTILIDAD 3',
'            to_number(C038) PORC_MARGEN3, --MARGEN',
'            to_number(c047)cantidad_comprada,',
'',
'        C015 USUARIO, ',
'        C016 FECHA,',
'        C017 COD_MONEDA,',
'        to_number(C018) Costo_total, ',
'        C019 NRO_PROMO_margen,',
'        C020 COD_ART_CORTO, --ARTICULO,',
'        to_number(C021) PORC_MARGEN_MK, --MAKUP',
'        to_number(c022) PORC_MARGEN_MK2, --MAKUP',
'        C023 COD_USUARIO, ',
'        C024 FECHA_ALTA,',
'        C025 USUARIO_AUT_COMERCIAL, ',
'        C026 FECHA_AUT_COMERCIAL, ',
'        C027 OBSERVACION, ',
'        C028 DESPACHO, ',
'        C029 NRO_PROMO,',
'        c031 RID,',
'        C032 CF_DESCRIPCION_ARTICULO, --DESCRIPCION,',
'        c033 CF_MON, --MON,',
'        APEX_ITEM.CHECKBOX (p_idx  => 1 ,',
'                    p_value       => seq_id,',
'                    p_attributes  => (case C046',
'                                       when ''S'' then ''checked ''',
'                                      else null',
'                                     end ) ||''onclick="seleccionar(this)"'' )as  INCLUIR_LISTADO,   ',
'         C050 RIDM,',
'        TO_NUMBER(C034) CF_PRECIO_BRUTO ,--PRECIO VTA. BRUTO,',
'        null detalle,',
'        null Editar,',
'        null Eliminar',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''VERIFICACION_MARGENES''',
'AND nvl(c030, ''O'') <> ''B''',
'ORDER BY 1;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE_DETALLE'
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
 p_id=>wwv_flow_imp.id(48478857105391521)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'NO SE ENCONTRARON REGISTROS'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>48478857105391521
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48478936535391522)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48549445405631627)
,p_db_column_name=>'P_ID'
,p_display_order=>20
,p_column_identifier=>'AD'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48549943510631632)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>60
,p_column_identifier=>'AH'
,p_column_label=>unistr('Cod. Art\00EDculo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48551232135631645)
,p_db_column_name=>'USUARIO'
,p_display_order=>190
,p_column_identifier=>'AU'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48551333316631646)
,p_db_column_name=>'FECHA'
,p_display_order=>200
,p_column_identifier=>'AV'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48551463064631647)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>210
,p_column_identifier=>'AW'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48551633882631649)
,p_db_column_name=>'NRO_PROMO_MARGEN'
,p_display_order=>230
,p_column_identifier=>'AY'
,p_column_label=>'Nro Promo Margen'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48551772891631650)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>240
,p_column_identifier=>'AZ'
,p_column_label=>'Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49051204264350203)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>270
,p_column_identifier=>'BC'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49051345230350204)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>280
,p_column_identifier=>'BD'
,p_column_label=>'Fecha Alta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49051431374350205)
,p_db_column_name=>'USUARIO_AUT_COMERCIAL'
,p_display_order=>290
,p_column_identifier=>'BE'
,p_column_label=>'Usuario Aut Comercial'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49051554216350206)
,p_db_column_name=>'FECHA_AUT_COMERCIAL'
,p_display_order=>300
,p_column_identifier=>'BF'
,p_column_label=>'Fecha Aut Comercial'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49051641636350207)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>310
,p_column_identifier=>'BG'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49051768773350208)
,p_db_column_name=>'DESPACHO'
,p_display_order=>320
,p_column_identifier=>'BH'
,p_column_label=>'Despacho'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49051812638350209)
,p_db_column_name=>'NRO_PROMO'
,p_display_order=>330
,p_column_identifier=>'BI'
,p_column_label=>'Nro Promo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49051940695350210)
,p_db_column_name=>'RID'
,p_display_order=>340
,p_column_identifier=>'BJ'
,p_column_label=>'Rid'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49052911735350220)
,p_db_column_name=>'PORC_DESCUENTO2'
,p_display_order=>440
,p_column_identifier=>'BT'
,p_column_label=>'Porc Descuento2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49053277367350223)
,p_db_column_name=>'COSTO_TOTAL'
,p_display_order=>470
,p_column_identifier=>'BW'
,p_column_label=>'Costo Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49590053863414425)
,p_db_column_name=>'PRECIO'
,p_display_order=>530
,p_column_identifier=>'CD'
,p_column_label=>'Precio de Vta.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49590272153414427)
,p_db_column_name=>'PRECIO_NETO'
,p_display_order=>550
,p_column_identifier=>'CE'
,p_column_label=>'Precio Vta. Neto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49590399558414428)
,p_db_column_name=>'UTILIDAD'
,p_display_order=>560
,p_column_identifier=>'CF'
,p_column_label=>'Utilidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49590556535414430)
,p_db_column_name=>'PRECIO_NETO2'
,p_display_order=>580
,p_column_identifier=>'CG'
,p_column_label=>'Precio Vta. Neto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49590649676414431)
,p_db_column_name=>'COSTO_PROMO2'
,p_display_order=>590
,p_column_identifier=>'CH'
,p_column_label=>'Costo Promo2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49590766932414432)
,p_db_column_name=>'PORC_DTO1'
,p_display_order=>600
,p_column_identifier=>'CI'
,p_column_label=>'Desc %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49590844515414433)
,p_db_column_name=>'COSTO_ART'
,p_display_order=>610
,p_column_identifier=>'CJ'
,p_column_label=>'Costo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49590905122414434)
,p_db_column_name=>'PORC_MARGEN'
,p_display_order=>620
,p_column_identifier=>'CK'
,p_column_label=>'Margen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49591014329414435)
,p_db_column_name=>'PORC_DTO2'
,p_display_order=>630
,p_column_identifier=>'CL'
,p_column_label=>'Desc %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49591149196414436)
,p_db_column_name=>'UTILIDAD2'
,p_display_order=>640
,p_column_identifier=>'CM'
,p_column_label=>'Utilidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49591251933414437)
,p_db_column_name=>'PORC_MARGEN2'
,p_display_order=>650
,p_column_identifier=>'CN'
,p_column_label=>'Margen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999D90'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49591317453414438)
,p_db_column_name=>'CF_DESCRIPCION_ARTICULO'
,p_display_order=>660
,p_column_identifier=>'CO'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49591434184414439)
,p_db_column_name=>'CF_MON'
,p_display_order=>670
,p_column_identifier=>'CP'
,p_column_label=>'Mon'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49591651008414441)
,p_db_column_name=>'PORC_MARGEN_MK'
,p_display_order=>690
,p_column_identifier=>'CR'
,p_column_label=>'Makup'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49591739734414442)
,p_db_column_name=>'PORC_MARGEN_MK2'
,p_display_order=>700
,p_column_identifier=>'CS'
,p_column_label=>'Makup'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48549631920631629)
,p_db_column_name=>'EDITAR'
,p_display_order=>720
,p_column_identifier=>'AF'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P59_SEQ_ID_EDITAR_ART'',''#P_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'IF:P59_ESTADO_CAB<>''CREADO'' THEN',
'   RETURN TRUE;',
' ---RETURN FALSE;',
'END IF;',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48549726061631630)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>730
,p_column_identifier=>'AG'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P59_SEQ_ID_ELIMINAR_ART'',#P_ID#);'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49730896588898001)
,p_db_column_name=>'CF_PRECIO_BRUTO'
,p_display_order=>740
,p_column_identifier=>'CT'
,p_column_label=>'Precio Vta. Bruto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990D000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52913061213696428)
,p_db_column_name=>'DETALLE'
,p_display_order=>750
,p_column_identifier=>'CU'
,p_column_label=>'Detalle'
,p_column_link=>'javascript:$s(''P59_SEQ_ID_DETALLE'',''#P_ID#'');'
,p_column_linktext=>'<span class="fa fa-search" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_display_condition_type=>'NEVER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52913459780696432)
,p_db_column_name=>'RIDM'
,p_display_order=>760
,p_column_identifier=>'CV'
,p_column_label=>'Ridm'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52915035875696448)
,p_db_column_name=>'INCLUIR_LISTADO'
,p_display_order=>770
,p_column_identifier=>'CW'
,p_column_label=>'Incluir Listado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(417287954424863247)
,p_db_column_name=>'PORC_DTO3'
,p_display_order=>780
,p_column_identifier=>'CX'
,p_column_label=>'Desc %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(417288020782863248)
,p_db_column_name=>'PRECIO_NETO3'
,p_display_order=>790
,p_column_identifier=>'CY'
,p_column_label=>'Precio Vta. Neto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(417288120634863249)
,p_db_column_name=>'UTILIDAD3'
,p_display_order=>800
,p_column_identifier=>'CZ'
,p_column_label=>'Utilidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(417288213402863250)
,p_db_column_name=>'PORC_MARGEN3'
,p_display_order=>810
,p_column_identifier=>'DA'
,p_column_label=>'Margen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1103764435706237803)
,p_db_column_name=>'CANTIDAD_COMPRADA'
,p_display_order=>820
,p_column_identifier=>'DB'
,p_column_label=>'Cantidad Comprada'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(48533233198595400)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'485333'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDITAR:COD_ARTICULO:COD_ART_CORTO:CF_DESCRIPCION_ARTICULO:CANTIDAD_COMPRADA:CF_MON:PRECIO:COSTO_ART:PORC_DTO1:PRECIO_NETO:UTILIDAD:PORC_MARGEN:PORC_DTO2:PRECIO_NETO2:UTILIDAD2:PORC_MARGEN2:PORC_DTO3:PRECIO_NETO3:UTILIDAD3:PORC_MARGEN3:ELIMINAR:'
,p_sort_column_1=>'P_ID'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50496235532541928)
,p_plug_name=>'B_BLOQUE'
,p_parent_plug_id=>wwv_flow_imp.id(49054230919350233)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(108046622007228031)
,p_plug_name=>'REPORTE_DETALLE_ABM_BLOQUEADOS'
,p_parent_plug_id=>wwv_flow_imp.id(49054230919350233)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT           ',
'        seq_id p_id,        ',
'        C001 COD_EMPRESA,',
'        C002 COD_ARTICULO, ',
'        to_number(C003) PRECIO ,--PRECIO DE VENTA, ',
'        to_number(C004) PORC_DTO1 ,--DESC %, ',
'        to_number(C005) PRECIO_NETO,--PRECIO VTA. NETO ',
'        to_number(C006) COSTO_ART ,--COSTO OPN, ',
'        to_number(C007) UTILIDAD ,--UTIL ',
'        to_number(C008) PORC_MARGEN, --MARGEN ',
'        to_number(C009) PORC_DTO2, -- DESC %',
'        to_number(C010) PRECIO_NETO2, --PRECIO VTA. NETO ',
'        to_number(C011) COSTO_PROMO2,',
'        to_number(C012) PORC_DESCUENTO2, ',
'        to_number(C013) UTILIDAD2, --UTILIDAD ',
'        to_number(C014) PORC_MARGEN2, --MARGEN',
'        C015 USUARIO, ',
'        C016 FECHA,',
'        C017 COD_MONEDA,',
'        to_number(C018) Costo_total, ',
'        C019 NRO_PROMO_margen,',
'        C020 COD_ART_CORTO, --ARTICULO,',
'        to_number(C021) PORC_MARGEN_MK, --MAKUP',
'        to_number(c022) PORC_MARGEN_MK2, --MAKUP',
'        C023 COD_USUARIO, ',
'        C024 FECHA_ALTA,',
'        C025 USUARIO_AUT_COMERCIAL, ',
'        C026 FECHA_AUT_COMERCIAL, ',
'        C027 OBSERVACION, ',
'        C028 DESPACHO, ',
'        C029 NRO_PROMO,',
'        c031 RID,',
'        C032 CF_DESCRIPCION_ARTICULO, --DESCRIPCION,',
'        c033 CF_MON, --MON,',
'        APEX_ITEM.CHECKBOX (p_idx  => 1 ,',
'                    p_value       => seq_id,',
'                    p_attributes  => (case C046',
'                                       when ''S'' then ''checked ''',
'                                      else null',
'                                     end ) ||''onclick="seleccionar(this)"'' )as  INCLUIR_LISTADO,   ',
'         C050 RIDM,',
'        TO_NUMBER(C034) CF_PRECIO_BRUTO --PRECIO VTA. BRUTO,',
'         ',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''VERIFICACION_MARGENES''',
'AND nvl(c030, ''O'') <> ''B''',
'ORDER BY 1;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE_DETALLE_ABM_BLOQUEADOS'
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
 p_id=>wwv_flow_imp.id(108046700378228032)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'NO SE ENCONTRARON REGISTROS'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>108046700378228032
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108046888378228033)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108046959938228034)
,p_db_column_name=>'P_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108047082135228035)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('Cod. Art\00EDculo')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108047124603228036)
,p_db_column_name=>'USUARIO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108047223664228037)
,p_db_column_name=>'FECHA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108047335481228038)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108047431103228039)
,p_db_column_name=>'NRO_PROMO_MARGEN'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Nro Promo Margen'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108047529047228040)
,p_db_column_name=>'COD_ART_CORTO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108047622829228041)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108047739282228042)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Fecha Alta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108047854914228043)
,p_db_column_name=>'USUARIO_AUT_COMERCIAL'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Usuario Aut Comercial'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108047991896228044)
,p_db_column_name=>'FECHA_AUT_COMERCIAL'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Fecha Aut Comercial'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108048046059228045)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108048141446228046)
,p_db_column_name=>'DESPACHO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Despacho'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108048280918228047)
,p_db_column_name=>'NRO_PROMO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Nro Promo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108048385844228048)
,p_db_column_name=>'RID'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Rid'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108048468530228049)
,p_db_column_name=>'PORC_DESCUENTO2'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Porc Descuento2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(108048582937228050)
,p_db_column_name=>'COSTO_TOTAL'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Costo Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109026017219414001)
,p_db_column_name=>'PRECIO'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Precio de Vta.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109026169923414002)
,p_db_column_name=>'PRECIO_NETO'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Precio Vta. Neto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990D000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109026266510414003)
,p_db_column_name=>'UTILIDAD'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Util'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109026377427414004)
,p_db_column_name=>'PRECIO_NETO2'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Precio Vta. Neto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990D000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109026428871414005)
,p_db_column_name=>'COSTO_PROMO2'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Costo Promo2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109026527848414006)
,p_db_column_name=>'PORC_DTO1'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Desc %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109026632784414007)
,p_db_column_name=>'COSTO_ART'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Costo OPN'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990D000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109026704748414008)
,p_db_column_name=>'PORC_MARGEN'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Markup'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109026853769414009)
,p_db_column_name=>'PORC_DTO2'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Desc %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109026954641414010)
,p_db_column_name=>'UTILIDAD2'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Utilidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109027041160414011)
,p_db_column_name=>'PORC_MARGEN2'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Markup'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999D90'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109027180555414012)
,p_db_column_name=>'CF_DESCRIPCION_ARTICULO'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109027206046414013)
,p_db_column_name=>'CF_MON'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Mon'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109027338993414014)
,p_db_column_name=>'PORC_MARGEN_MK'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Margen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109027440719414015)
,p_db_column_name=>'PORC_MARGEN_MK2'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Margen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109027780813414018)
,p_db_column_name=>'CF_PRECIO_BRUTO'
,p_display_order=>360
,p_column_identifier=>'AH'
,p_column_label=>'Precio Vta. Bruto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990D000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109027948333414020)
,p_db_column_name=>'RIDM'
,p_display_order=>380
,p_column_identifier=>'AI'
,p_column_label=>'Ridm'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109028041328414021)
,p_db_column_name=>'INCLUIR_LISTADO'
,p_display_order=>390
,p_column_identifier=>'AJ'
,p_column_label=>'Incluir Listado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(109043343102420373)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1090434'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_ART_CORTO:COD_ARTICULO:CF_DESCRIPCION_ARTICULO:CF_MON:PRECIO:COSTO_ART:CF_PRECIO_BRUTO:PORC_DTO1:PRECIO_NETO2:UTILIDAD:PORC_MARGEN_MK:PORC_DTO2:PRECIO_NETO:UTILIDAD2:PORC_MARGEN2:PORC_MARGEN_MK2:COSTO_TOTAL:'
,p_sort_column_1=>'P_ID'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49054451051350235)
,p_plug_name=>'Cabecera'
,p_parent_plug_id=>wwv_flow_imp.id(417069993843643325)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>21
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45804989511056645)
,p_plug_name=>'C_PARAMETROS'
,p_parent_plug_id=>wwv_flow_imp.id(49054451051350235)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40096829222263653)
,p_plug_display_sequence=>130
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45805056184056646)
,p_plug_name=>'AGREGAR/EDITAR PROMO'
,p_parent_plug_id=>wwv_flow_imp.id(49054451051350235)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49731097884898003)
,p_plug_name=>'REPORTE_CABECERA'
,p_parent_plug_id=>wwv_flow_imp.id(49054451051350235)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT  ',
'        seq_id p_id,',
'        C001  COD_EMPRESA,',
'        C002 NRO_PROMO,',
'        C003 COD_MONEDA,',
'        C004 MONEDA,',
'        C005 NRO_DESPACHO,',
'        C006 ESTADO,',
'        C007 FECHA,',
'        C008 TIPO_CAMBIO,',
'        C009 OBSERVACION,',
'        C010 NRO_EMBARQUE,',
'        C011 COD_USUARIO,',
'        C012 USUARIO_VERIFICACION,',
'        C013 USUARIO_REVISADO_MKT,',
'        C014 USUARIO_AUT_ADMINISTRACION,',
'        C015 USUARIO_AUT_COMERCIAL,',
'        C016 USUARIO_CONFIRMADO_DEPOSITO,',
'        C017 USUARIO_CONFIRMADO_COMERCIAL,',
'        C018 USUARIO_RECHAZO,',
'        C019 FECHA_ALTA,',
'        C020 FECHA_VERIFICACION,',
'        C021 FECHA_REVISADO_MKT,',
'        C022 FECHA_AUT_ADMINISTRACION,',
'        C023 FECHA_AUT_COMERCIAL,',
'        C024 FECHA_CONFIRMADO_DEPOSITO,',
'        C025 FECHA_CONFIRMADO_COMERCIAL,',
'        C026 FECHA_RECHAZO, ',
'        C027 DESCUENTO_1, ',
'        C028 DESCUENTO_2,                ',
'        c029 RID,',
'        C031 DESC_TIPO_CAMBIO,',
'        NULL EDITAR,',
'        NULL ELIMINAR',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''CABECERA''   ',
'    AND nvl(c030, ''O'') <> ''B''',
'    ORDER BY 1;',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE_CABECERA'
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
 p_id=>wwv_flow_imp.id(49732178257898014)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'NO SE ENCONTRARON REGISTROS'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>49732178257898014
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49732226783898015)
,p_db_column_name=>'P_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'P Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(49735074831898043)
,p_db_column_name=>'RID'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Rid'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50495093148541916)
,p_db_column_name=>'EDITAR'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Editar'
,p_column_link=>'javascript:$s(''P59_SEQ_ID_EDITAR_PRO'',''#P_ID#'');'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-edit"></span>'
,p_column_type=>'STRING'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50495141433541917)
,p_db_column_name=>'ELIMINAR'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Eliminar'
,p_column_link=>'javascript:$s(''P59_SEQ_ID_ELIMINAR_PROMO'',#P_ID#);'
,p_column_linktext=>'<span class="fa fa-trash" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(103970043035984644)
,p_db_column_name=>'DESC_TIPO_CAMBIO'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Tipo Cambio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(225087818684086250)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(413651921738543101)
,p_db_column_name=>'NRO_PROMO'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Nro Promo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(413652002145543102)
,p_db_column_name=>'COD_MONEDA'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Cod Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(413652171487543103)
,p_db_column_name=>'MONEDA'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(413652275845543104)
,p_db_column_name=>'NRO_DESPACHO'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Nro Despacho'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(413652378639543105)
,p_db_column_name=>'ESTADO'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(413652403729543106)
,p_db_column_name=>'FECHA'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(413652588255543107)
,p_db_column_name=>'TIPO_CAMBIO'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Tipo Cambio'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(413652653181543108)
,p_db_column_name=>'OBSERVACION'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Observacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(413652783442543109)
,p_db_column_name=>'NRO_EMBARQUE'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Nro Embarque'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(413652855078543110)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Cod Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(413652999485543111)
,p_db_column_name=>'USUARIO_VERIFICACION'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Usuario Verificacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(413653065126543112)
,p_db_column_name=>'USUARIO_REVISADO_MKT'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Usuario Revisado Mkt'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(413653194714543113)
,p_db_column_name=>'USUARIO_AUT_ADMINISTRACION'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Usuario Aut Administracion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(413653200563543114)
,p_db_column_name=>'USUARIO_AUT_COMERCIAL'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Usuario Aut Comercial'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(413653331335543115)
,p_db_column_name=>'USUARIO_CONFIRMADO_DEPOSITO'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Usuario Confirmado Deposito'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(413653411052543116)
,p_db_column_name=>'USUARIO_CONFIRMADO_COMERCIAL'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Usuario Confirmado Comercial'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(413653514786543117)
,p_db_column_name=>'USUARIO_RECHAZO'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Usuario Rechazo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(413653620674543118)
,p_db_column_name=>'FECHA_ALTA'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Fecha Alta'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(413653732747543119)
,p_db_column_name=>'FECHA_VERIFICACION'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Fecha Verificacion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(413653825117543120)
,p_db_column_name=>'FECHA_REVISADO_MKT'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Fecha Revisado Mkt'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(413653951546543121)
,p_db_column_name=>'FECHA_AUT_ADMINISTRACION'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'Fecha Aut Administracion'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(413654006626543122)
,p_db_column_name=>'FECHA_AUT_COMERCIAL'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'Fecha Aut Comercial'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(413654115043543123)
,p_db_column_name=>'FECHA_CONFIRMADO_DEPOSITO'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'Fecha Confirmado Deposito'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(413654299389543124)
,p_db_column_name=>'FECHA_CONFIRMADO_COMERCIAL'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'Fecha Confirmado Comercial'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(413654370615543125)
,p_db_column_name=>'FECHA_RECHAZO'
,p_display_order=>590
,p_column_identifier=>'BG'
,p_column_label=>'Fecha Rechazo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(413654445492543126)
,p_db_column_name=>'DESCUENTO_1'
,p_display_order=>600
,p_column_identifier=>'BH'
,p_column_label=>'Descuento 1'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(413654520626543127)
,p_db_column_name=>'DESCUENTO_2'
,p_display_order=>610
,p_column_identifier=>'BI'
,p_column_label=>'Descuento 2'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(49774882344021885)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'497749'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'EDITAR:DESC_TIPO_CAMBIO:ELIMINAR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49055047262350241)
,p_plug_name=>'Fijacion de Precio de Lista'
,p_parent_plug_id=>wwv_flow_imp.id(417069993843643325)
,p_region_css_classes=>'js-dialog-size1500x650'
,p_region_template_options=>'#DEFAULT#:js-dialog-nosize:js-headingLevel-1'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>51
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(416473668569622114)
,p_plug_name=>'Articulo'
,p_parent_plug_id=>wwv_flow_imp.id(49055047262350241)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(416473799946622115)
,p_plug_name=>'Precio de Lista'
,p_parent_plug_id=>wwv_flow_imp.id(49055047262350241)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(416473809593622116)
,p_plug_name=>'Precio de Lista Actual'
,p_parent_plug_id=>wwv_flow_imp.id(49055047262350241)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(416474650223622124)
,p_plug_name=>'Aplicacion de Descuentos'
,p_parent_plug_id=>wwv_flow_imp.id(49055047262350241)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>40
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(416475436375622132)
,p_plug_name=>'Aplicacion de Descuentos'
,p_parent_plug_id=>wwv_flow_imp.id(49055047262350241)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(416475934490622137)
,p_plug_name=>'Aplicacion de Descuentos'
,p_parent_plug_id=>wwv_flow_imp.id(49055047262350241)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(416476553847622143)
,p_plug_name=>'Articulo Competencia'
,p_parent_plug_id=>wwv_flow_imp.id(49055047262350241)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>90
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Articulo Competencia'
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
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(416477159419622149)
,p_plug_name=>'CompetenciaN1'
,p_parent_plug_id=>wwv_flow_imp.id(416476553847622143)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C001 MARCA, TO_NUMBER(C002) PRECIO, C003 Variacion from apex_collections a  ',
'where collection_name = ''DETALLE_COMPETENCIA''',
'and  c004=''N1''',
'AND C008=:P59_A_COD_ARTICULO',
' '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P59_A_COD_ARTICULO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'CompetenciaN1'
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
 p_id=>wwv_flow_imp.id(416477234049622150)
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
,p_internal_uid=>416477234049622150
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(417067556936643301)
,p_db_column_name=>'MARCA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Marca'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(432284837228518207)
,p_db_column_name=>'PRECIO'
,p_display_order=>20
,p_column_identifier=>'E'
,p_column_label=>'Precio C/ IVA'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(417285715520863225)
,p_db_column_name=>'VARIACION'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>'Variacion %'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(417081523170652770)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4170816'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MARCA:PRECIO:VARIACION:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(417067862117643304)
,p_plug_name=>'Articulo Competencia'
,p_parent_plug_id=>wwv_flow_imp.id(49055047262350241)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>100
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Articulo Competencia'
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
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(417068351801643309)
,p_plug_name=>'CompetenciaN2'
,p_parent_plug_id=>wwv_flow_imp.id(417067862117643304)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C001 MARCA, TO_NUMBER(C002) PRECIO, C003 Variacion from apex_collections a  ',
'where collection_name = ''DETALLE_COMPETENCIA''',
'and  c004=''N2''',
' and c008 = :P59_A_COD_ARTICULO',
' '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P59_A_COD_ARTICULO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'CompetenciaN2'
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
 p_id=>wwv_flow_imp.id(417068459731643310)
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
,p_internal_uid=>417068459731643310
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(417068522915643311)
,p_db_column_name=>'MARCA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(432284996829518208)
,p_db_column_name=>'PRECIO'
,p_display_order=>20
,p_column_identifier=>'E'
,p_column_label=>'Precio C/ IVA'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(417286356166863231)
,p_db_column_name=>'VARIACION'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>'Variacion'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(417082145652652777)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4170822'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MARCA:PRECIO:VARIACION:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(417068816075643314)
,p_plug_name=>'Articulo Competencia'
,p_parent_plug_id=>wwv_flow_imp.id(49055047262350241)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>110
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Articulo Competencia'
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
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(417069304197643319)
,p_plug_name=>'CompetenciaN3'
,p_parent_plug_id=>wwv_flow_imp.id(417068816075643314)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C001 MARCA, to_number(C002) PRECIO, C003 Variacion from apex_collections a  ',
'where collection_name = ''DETALLE_COMPETENCIA''',
'and  c004=''N3''',
'  and c008 = :P59_A_COD_ARTICULO'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P59_A_COD_ARTICULO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'CompetenciaN3'
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
 p_id=>wwv_flow_imp.id(417069425761643320)
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
,p_internal_uid=>417069425761643320
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(417069523360643321)
,p_db_column_name=>'MARCA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Marca'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(417286411026863232)
,p_db_column_name=>'VARIACION'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>'Variacion'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(432287364013518232)
,p_db_column_name=>'PRECIO'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Precio C/ IVA'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(417094359584666417)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4170944'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MARCA:PRECIO:VARIACION:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51531685933865627)
,p_plug_name=>'PARAMETROS'
,p_parent_plug_id=>wwv_flow_imp.id(417069993843643325)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>61
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51532961518865640)
,p_plug_name=>'REPORTE DE MARGENES'
,p_parent_plug_id=>wwv_flow_imp.id(51531685933865627)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51533943015865650)
,p_plug_name=>'REPORTE STMANPRO'
,p_parent_plug_id=>wwv_flow_imp.id(51531685933865627)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40123385688263660)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_empresa, ',
'    fec_alta, ',
'    fec_cierre,',
'    cod_articulo, ',
'    desc_articulo,',
'    cod_articulo_promo, ',
'    desc_art_promo,',
'     nro_promo,',
'    AUTORIZADO , ',
'    PORCENTAJE, ',
'    ACTIVO_DET',
'from (SELECT p.cod_empresa, ',
'        C.FECHA_INICIO FEC_ALTA,',
'        C.FECHA_FIN fec_cierre,',
'        C.AUTORIZADO activo, ',
'        p.cod_corto_art,        ',
'    case when  TIPO_PROMOCION =''PRINCIPAL'' THEN',
'        nvl(p.cod_articulo_principal,p.cod_articulo)',
'       ELSE ',
'         nvl(p.cod_articulo_principal,p.cod_articulo)',
'    END cod_articulo, ',
'    case when  TIPO_PROMOCION =''PRINCIPAL'' THEN',
'       a.descripcion',
'       ELSE ',
'         a.descripcion ',
'    END desc_articulo,',
'       ',
'    case when  TIPO_PROMOCION =''REGALO'' THEN',
'        p.cod_articulo ',
'        ELSE ',
'         NULL ',
'    END cod_articulo_promo, ',
'         ',
'    case when  TIPO_PROMOCION =''REGALO'' THEN',
'        s2.descripcion',
'        ELSE ',
'         NULL ',
'    END   desc_art_promo,',
'    C.EVENTID NRO_PROMO,',
'    P.TIPO_PROMOCION,',
'    CASE WHEN  nvl(C.AUTORIZADO ,''N'')=''S'' THEN',
'        ''ACTIVO''',
'        ELSE ',
'         ''INACTIVO'' ',
'    END AUTORIZADO ,',
'    P.PORCENTAJE,',
'    CASE WHEN  nvl(P.ESTADO ,''N'')=''N'' THEN',
'        ''ACTIVO''',
'        ELSE ',
'         ''INACTIVO'' ',
'    END ACTIVO_DET, ',
'    P.ACTIVO ACTIVOD1',
'    FROM ST_PROMOCION p, st_articulos a,   ST_PROMOCION_CAB C, st_articulos s2 ',
'        where C.cod_empresa         =   ''99''-- :P59_COD_EMPRESA',
'        AND C.COD_EMPRESA=P.COD_EMPRESA',
'        AND C.EVENTID=P.NRO_PROMO',
'        and ( NVL(C.AUTORIZADO,''N'')= :P59_B_ESTADO or :P59_B_ESTADO is null)',
'        and a.cod_empresa  = p.cod_empresa',
'        and a.cod_articulo = nvl(p.cod_articulo_principal,p.cod_articulo)',
'        and s2.cod_empresa = p.cod_empresa',
'        and s2.cod_articulo= nvl(p.cod_art_promo,p.cod_articulo)',
'        --and p.tipo_promocion=''REGALO''',
'        and  C.FECHA_INICIO >=  nvl( :P59_B_FECHA_DESDE, to_date( ''31/12/0001'', ''DD/MM/YYYY'' )) ',
'        and  C.FECHA_FIN  <= nvl( :P59_B_FECHA_HASTA, to_date( ''31/12/9999'', ''DD/MM/YYYY'' ) )  ',
'        and (a.cod_marca=:P59_B_COD_MARCA_DES or :P59_B_COD_MARCA_DES is null)                          ',
'        and (a.cod_categoria=:P59_B_COD_CATEGORIA or :P59_B_COD_CATEGORIA is null)      ',
'        and (p.cod_articulo = :P59_COD_ARTICULO or :P59_COD_ARTICULO is null)',
'    order by c.eventid, a.descripcion)',
'',
'                       ',
'group by cod_empresa, fec_alta, fec_cierre,',
'cod_articulo, desc_articulo,',
'cod_articulo_promo, desc_art_promo, nro_promo,AUTORIZADO ,PORCENTAJE, ACTIVO_DET'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P59_B_FECHA_DESDE,P59_B_FECHA_HASTA,P59_COD_EMPRESA,P59_B_COD_MARCA_DES,P59_B_COD_CATEGORIA,P59_B_ESTADO,P59_COD_ARTICULO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORTE STMANPRO'
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
 p_id=>wwv_flow_imp.id(52910343446696401)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'NO SE ENCONTRARON REGISTROS'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUANASIS'
,p_internal_uid=>52910343446696401
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52910447572696402)
,p_db_column_name=>'COD_EMPRESA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cod Empresa'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52910555327696403)
,p_db_column_name=>'FEC_ALTA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fec Alta'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52910663609696404)
,p_db_column_name=>'FEC_CIERRE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fec Cierre'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52910782283696405)
,p_db_column_name=>'COD_ARTICULO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52910858963696406)
,p_db_column_name=>'DESC_ARTICULO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Desc Articulo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52910912999696407)
,p_db_column_name=>'COD_ARTICULO_PROMO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cod Articulo Promo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52911052808696408)
,p_db_column_name=>'DESC_ART_PROMO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Desc Art Promo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52911106696696409)
,p_db_column_name=>'NRO_PROMO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Nro Promo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52911232076696410)
,p_db_column_name=>'AUTORIZADO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Autorizado'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52911391101696411)
,p_db_column_name=>'PORCENTAJE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Porcentaje'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52911461948696412)
,p_db_column_name=>'ACTIVO_DET'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Activo Det'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(52919687238770103)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'529197'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COD_EMPRESA:FEC_ALTA:FEC_CIERRE:COD_ARTICULO:DESC_ARTICULO:COD_ARTICULO_PROMO:DESC_ART_PROMO:NRO_PROMO:AUTORIZADO:PORCENTAJE:ACTIVO_DET'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(295814584277820946)
,p_plug_name=>'Procesos'
,p_parent_plug_id=>wwv_flow_imp.id(417069993843643325)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40108275410263656)
,p_plug_display_sequence=>31
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_column=>7
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(417070029471643326)
,p_plug_name=>'Comentarios'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>21
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(417070146638643327)
,p_plug_name=>'Seguimientos'
,p_parent_plug_id=>wwv_flow_imp.id(417070029471643326)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(40125238939263661)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.collection_name,c.seq_id,c.c003 file_name,c.c002 as mime_type,dbms_lob.getlength(c.blob001) pdf_blob, C001 comentario,',
'c008 fecha, c009 usuario from  apex_collections c',
'where collection_name = ''PAGINA_59'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Seguimientos'
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
 p_id=>wwv_flow_imp.id(417070254247643328)
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
,p_internal_uid=>417070254247643328
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(417287187175863239)
,p_db_column_name=>'COLLECTION_NAME'
,p_display_order=>10
,p_column_identifier=>'B'
,p_column_label=>'Collection Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(417287245771863240)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>20
,p_column_identifier=>'C'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(417287363563863241)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>'Nombre del Archivo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(417287407562863242)
,p_db_column_name=>'MIME_TYPE'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Mime Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(417287549013863243)
,p_db_column_name=>'PDF_BLOB'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Descargar Archivo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'DOWNLOAD:APEX_COLLECTIONS:BLOB001:COLLECTION_NAME::C002:C003:::attachment::'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(417287647445863244)
,p_db_column_name=>'COMENTARIO'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'Comentario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(417287780894863245)
,p_db_column_name=>'FECHA'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Fecha'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(417287855949863246)
,p_db_column_name=>'USUARIO'
,p_display_order=>80
,p_column_identifier=>'I'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(417276349865789418)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4172764'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COMENTARIO:FECHA:USUARIO:FILE_NAME:PDF_BLOB:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(529983114626481762)
,p_plug_name=>'Comentario Rechazo'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(40117728043263659)
,p_plug_display_sequence=>1210
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(417069276904643318)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(417068816075643314)
,p_button_name=>'Agregar_3'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'IF:P59_ESTADO_CAB<>''CREADO'' THEN',
'',
'RETURN FALSE;',
'END IF;',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); ',
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
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(416477095658622148)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(416476553847622143)
,p_button_name=>'Agregar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--padTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'IF:P59_ESTADO_CAB<>''CREADO'' THEN',
'',
'RETURN FALSE;',
'END IF;',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); ',
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
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(417068217440643308)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(417067862117643304)
,p_button_name=>'Agregar_2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--padTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'IF:P59_ESTADO_CAB<>''CREADO'' THEN',
'',
' RETURN FALSE;',
'END IF;',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); ',
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
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(59348978367791041)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(45804989511056645)
,p_button_name=>'BT_LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'LIMPIAR'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48547800427631611)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(45804989511056645)
,p_button_name=>'BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49055293214350243)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(49055047262350241)
,p_button_name=>'CANCELAR_ART'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-redo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(251265458360040057)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(529983114626481762)
,p_button_name=>'Volver_comentario'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51533612204865647)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(51532961518865640)
,p_button_name=>'VOLVER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'Volver'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48547692547631609)
,p_button_sequence=>320
,p_button_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_button_name=>'CANCELAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'CANCELAR'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49055529981350246)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(49055047262350241)
,p_button_name=>'ACEPTAR_CREAR_ART'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(52913864917696436)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(51532961518865640)
,p_button_name=>'LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_image_alt=>'LIMPIAR'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49055602523350247)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(49055047262350241)
,p_button_name=>'ACEPTAR_EDITAR_ART'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'IF:P59_ESTADO_CAB<>''CREADO'' THEN',
'   --RETURN TRUE;',
' RETURN FALSE;',
'END IF;',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51533735802865648)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(51532961518865640)
,p_button_name=>'EJECUTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ejecutar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
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
 p_id=>wwv_flow_imp.id(251265862192040058)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(529983114626481762)
,p_button_name=>'aCEPTAR_comentario'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48547435078631607)
,p_button_sequence=>300
,p_button_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_button_name=>'ACEPTAR_CREAR_PROMO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar '
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48547570217631608)
,p_button_sequence=>320
,p_button_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_button_name=>'ACEPTAR_EDIITAR_PROMO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51532176243865632)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(49054451051350235)
,p_button_name=>'LISTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'LISTAR'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48548083313631613)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(49054451051350235)
,p_button_name=>'CONFIRMAR'
,p_button_static_id=>'btn3'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar Verificacion'
,p_button_position=>'EDIT'
,p_button_condition=>'P59_NRO_PROMO_CAB'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'u-color-33-bg'
,p_icon_css_classes=>'fa-save-as'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(413656620101543148)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(49054451051350235)
,p_button_name=>'Actualizar_verificacion'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Actualizar Verificaci\00F3n')
,p_button_position=>'EDIT'
,p_button_condition=>'P59_NRO_PROMO_CAB'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'u-color-33-bg'
,p_icon_css_classes=>'fa-save-as'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(138650125815528736)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(49054451051350235)
,p_button_name=>'Volver'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Volver'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:373:&SESSION.::&DEBUG.:373::'
,p_button_css_classes=>'u-color-29-bg u-normal-text'
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(417071084944643336)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(417070029471643326)
,p_button_name=>'Comentarios'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Comentarios'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:787:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-archive'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(419452407160055801)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(417070029471643326)
,p_button_name=>'Actualizar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(40187845155263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Actualizar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49055823801350249)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(48478701235391520)
,p_button_name=>'AGREGAR_ART'
,p_button_static_id=>'btn2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Detalle'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'VCONTROL NUMBER;',
'BEGIN',
'IF:P59_ESTADO_CAB<>''CREADO'' THEN',
'  ',
' RETURN FALSE;',
'END IF;',
'',
'',
'IF:P59_NRO_EMBARQUE is not null THEN',
'  ',
' RETURN FALSE;',
'END IF;',
'',
'    VCONTROL := SEGURIDAD_GRANULAR.RETORNA_PERMISO_BOTON(ppage_id     => :APP_PAGE_ID,',
'                                                         papli0100_id => :P_APLI0100_ID,',
'                                                         pcod_empresa => :P_COD_EMPRESA,',
'                                                         pusua0100_id => :P_USUA0100_ID,',
'                                                         pdm_boto     => 2); ',
'',
'    IF VCONTROL = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;                                                     ',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48547904817631612)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(49054451051350235)
,p_button_name=>'NUEVA_PROMO'
,p_button_static_id=>'BOTON'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(40187749278263678)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Nueva Promo'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(450856204361357818)
,p_branch_action=>'f?p=&APP_ID.:373:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(413656620101543148)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(450856383780357819)
,p_branch_name=>'Go To Page 373'
,p_branch_action=>'f?p=&APP_ID.:373:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(48548083313631613)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45805236122056648)
,p_name=>'P59_COD_USUARIO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45805377327056649)
,p_name=>'P59_COD_SUCURSAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45805400133056650)
,p_name=>'P59_COD_MODULO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48293949695818001)
,p_name=>'P59_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48294111135818003)
,p_name=>'P59_NOM_SUCURSAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48294243903818004)
,p_name=>'P59_NOM_EMPRESA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48294498169818006)
,p_name=>'P59_NRO_PROMO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48294553361818007)
,p_name=>'P59_FECHA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_prompt=>'FECHA.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48294662743818008)
,p_name=>'P59_COD_MONEDA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_prompt=>'MONEDA'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MON'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select cod_moneda AS COD_MONEDA, descripcion AS MONEDA, siglas AS SIGNO, tipo_cambio_dia AS TIPO',
' from monedas ',
' order by descripcion;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_10=>'TIPO:P59_TIPO_CAMBIO,SIGNO:P59_SIGNO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48294773914818009)
,p_name=>'P59_MONEDA'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48294894511818010)
,p_name=>'P59_TIPO_CAMBIO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_prompt=>'TIPO CAMBIO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(48294937304818011)
,p_name=>'P59_SIGNO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_prompt=>'SIGNO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(48295012323818012)
,p_name=>'P59_DESCUENTO_1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(49054451051350235)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48295131531818013)
,p_name=>'P59_DESCUENTO_2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(49054451051350235)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48295249584818014)
,p_name=>'P59_USUARIO_REVISADO_MKT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48295369974818015)
,p_name=>'P59_FECHA_REVISADO_MKT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48295497712818016)
,p_name=>'P59_USUARIO_VERIFICACION'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48295583297818017)
,p_name=>'P59_FECHA_VERIFICACION'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48295665588818018)
,p_name=>'P59_USUARIO_AUT_COMERCIAL'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48295778040818019)
,p_name=>'P59_FECHA_AUT_COMERCIAL'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48295882398818020)
,p_name=>'P59_ESTADO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_prompt=>'ESTADO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:CREADO;CREADO,VERIFICADO NIVEL 1;VERIFICADO,VERIFICADO NIVEL 2;AUTORIZADOMKT,VERIFICADO NIVEL 3;AUTORIZADOADM,vERIFICADO NIVEL 4(FIJA PRECIOS);AUTORIZADOCOM,VERIFICADO NIVEL 5(Confirmado para Venta);CONFIRMADO_COMERCIAL,CONFIRMADO DEPOSITO;CO'
||'NFIRMADODEP,ANULADO;RECHAZADO'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48295906182818021)
,p_name=>'P59_FECHA_ALTA'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48296024995818022)
,p_name=>'P59_NRO_DESPACHO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_prompt=>'DESPACHO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48296140293818023)
,p_name=>'P59_NRO_EMBARQUE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_prompt=>'EMBARQUE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(48296299519818024)
,p_name=>'P59_OBSERVACION'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_prompt=>'OBSERVACION'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(48296348847818025)
,p_name=>'P59_USUARIO_RECHAZO'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48296448637818026)
,p_name=>'P59_FECHA_RECHAZO'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48296540770818027)
,p_name=>'P59_USUARIO_AUT_ADMINISTRACION'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48296621864818028)
,p_name=>'P59_FECHA_AUT_ADMINISTRACION'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48296750529818029)
,p_name=>'P59_USUARIO_CONFIRMADO_DEPOSIT'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48296845102818030)
,p_name=>'P59_FECHA_CONFIRMADO_DEPOSITO'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48296916813818031)
,p_name=>'P59_USUARIO_CONFIRMADO_COMERCI'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48297080626818032)
,p_name=>'P59_FECHA_CONFIRMADO_COMERCIAL'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(45805056184056646)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48478476494391517)
,p_name=>'P59_P_NRO_PROMO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(45804989511056645)
,p_prompt=>'Nro Promo'
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
 p_id=>wwv_flow_imp.id(48478593530391518)
,p_name=>'P59_FEC_DESDE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(45804989511056645)
,p_prompt=>'Fecha Desde'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(48478652868391519)
,p_name=>'P59_FEC_HASTA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(45804989511056645)
,p_prompt=>'Fecha Hasta'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(48546836949631601)
,p_name=>'P59_AUX_CONTROL_REPORTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48546943356631602)
,p_name=>'P59_AUX_MSJ_CONTROL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48547024192631603)
,p_name=>'P59_SEQ_ID_EDITAR_PRO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48547134954631604)
,p_name=>'P59_SEQ_ID_ELIMINAR_ART'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48547275207631605)
,p_name=>'P59_ACCION'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48547396149631606)
,p_name=>'P59_SEQ_ID'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49055109878350242)
,p_name=>'P59_A_COD_ARTICULO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(416473668569622114)
,p_prompt=>'Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ART'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo,cod_art_corto, TRIM(descripcion)descripcion  ',
'from st_articulos ',
'where cod_empresa = :P_COD_EMPRESA',
'and nvl( estado, ''S'' ) <> ''N'' ',
'and cod_rubro in(''PR'',''RE'')',
' order ',
'by cod_articulo,descripcion',
'',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'3'
,p_attribute_08=>'800'
,p_attribute_09=>'400'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49588558943414410)
,p_name=>'P59_MOSTRAR_BTN_CONFIRMAR'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49589552898414420)
,p_name=>'P59_A_PRECIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(416473809593622116)
,p_prompt=>'Precio Lista C/ IVA'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49589686253414421)
,p_name=>'P59_AUX_MSJ_CONTROL_ART'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50493686862541902)
,p_name=>'P59_SEQ_ID_EDITAR_ART'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50493750502541903)
,p_name=>'P59_SEQ_ID_ELIMINAR_PROMO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50496180720541927)
,p_name=>'P59_A_COD_ART_CORTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(416473668569622114)
,p_prompt=>'Codigo Corto'
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
 p_id=>wwv_flow_imp.id(50496300752541929)
,p_name=>'P59_B_COD_EMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50496451336541930)
,p_name=>'P59_B_NRO_PROMO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50496537601541931)
,p_name=>'P59_B_COD_ART_CORTO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50496647619541932)
,p_name=>'P59_B_COD_ARTICULO_PROMO1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50496791061541933)
,p_name=>'P59_B_COD_ARTICULO_PROMO2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50496827395541934)
,p_name=>'P59_B_COD_ARTICULO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50496938647541935)
,p_name=>'P59_B_COD_ARTICULO_MADRE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_prompt=>'Cod. Art. Madre'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50497068427541936)
,p_name=>'P59_B_PRECIO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50497127562541937)
,p_name=>'P59_B_DESC_ART'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50497227444541938)
,p_name=>'P59_B_PRECIO_NETO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50497308312541939)
,p_name=>'P59_B_COSTO_PROMOS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50497437499541940)
,p_name=>'P59_B_COSTO_PROMO_1'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50497575398541941)
,p_name=>'P59_B_COSTO_PROMO_2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50497730820541943)
,p_name=>'P59_B_COSTO_ART'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50497824924541944)
,p_name=>'P59_B_PORC_MARGEN'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50497982116541945)
,p_name=>'P59_B_DESC_PROMO1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50498055761541946)
,p_name=>'P59_B_DESC_PROMO2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50498265884541948)
,p_name=>'P59_B_COSTO_TOTAL'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50498385323541949)
,p_name=>'P59_B_UTIL'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50498400144541950)
,p_name=>'P59_B_UTILIDAD'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51529020666865601)
,p_name=>'P59_B_UTILIDAD2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51529153362865602)
,p_name=>'P59_B_IVA'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_prompt=>'IVA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(51529282956865603)
,p_name=>'P59_B_GRAVADA'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_prompt=>'Precio s/IVA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(51529321170865604)
,p_name=>'P59_B_PRECIO_NETO2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51529406947865605)
,p_name=>'P59_B_PORC_MARGEN2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51529591841865606)
,p_name=>'P59_B_UTIL2'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51529682204865607)
,p_name=>'P59_B_IND_INCLUIR_LISTADO'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51529771003865608)
,p_name=>'P59_B_COD_ART_CORTO_RELACION'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51529825775865609)
,p_name=>'P59_B_DESC_ART_RELACION'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_prompt=>'Articulo Relacionado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(51529975436865610)
,p_name=>'P59_B_PORC_MARGEN_MK'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51530077492865611)
,p_name=>'P59_B_PORC_MARGEN_MK2'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(50496235532541928)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51531498243865625)
,p_name=>'P59_AUX_PRECIO_CERO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51532669311865637)
,p_name=>'P59_AUX_CTROL_REPORTE_STMANPRO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51533060541865641)
,p_name=>'P59_B_COD_MARCA_DES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(51532961518865640)
,p_prompt=>'MARCA'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_MARCAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_marca||'' - ''||descripcion D, cod_marca R',
'from st_marcas',
'order by descripcion;'))
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51533121068865642)
,p_name=>'P59_B_COD_CATEGORIA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(51532961518865640)
,p_prompt=>'CATEGORIA'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_CATEGORIAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT cod_categoria||'' - '' ||descripcion D, ',
'         cod_categoria R',
'    FROM st_categorias',
'  ',
'  WHERE COD_EMPRESA=:P_COD_EMPRESA',
'  AND ESTADO IN(''S'',''A'');',
' '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51533222078865643)
,p_name=>'P59_B_FECHA_DESDE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(51532961518865640)
,p_prompt=>'FECHA DESDE'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(51533376177865644)
,p_name=>'P59_B_FECHA_HASTA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(51532961518865640)
,p_prompt=>'FECHA HASTA'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(51533410992865645)
,p_name=>'P59_B_DESC_MARCA_DES'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(51532961518865640)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51533584125865646)
,p_name=>'P59_B_DESC_CATEGORIA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(51532961518865640)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52912583480696423)
,p_name=>'P59_COD_ARTICULO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(51532961518865640)
,p_prompt=>'Articulo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LV_ART'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_articulo,cod_art_corto, TRIM(descripcion)descripcion  ',
'from st_articulos ',
'where cod_empresa = :P_COD_EMPRESA',
'and nvl( estado, ''S'' ) <> ''N'' ',
'and cod_rubro in(''PR'',''RE'')',
' order ',
'by cod_articulo,descripcion',
'',
''))
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52912737115696425)
,p_name=>'P59_B_ESTADO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(51532961518865640)
,p_prompt=>'ESTADO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:VERIFICADO;VERIFICADO,AUTORIZADO MKT;AUTORIZADOMKT,AUTORIZADO ADMINISTRACION;AUTORIZADOADM,AUTORIZADO COMERCIAL;AUTORIZADOCOM,CREADO;CREADO'
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(52913171957696429)
,p_name=>'P59_SEQ_ID_DETALLE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59347166259791023)
,p_name=>'P59_B_COD_USUARIO'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(295814584277820946)
,p_prompt=>'Creado Por'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>4
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59347289483791024)
,p_name=>'P59_B_USUARIO_VERIFICACION'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(295814584277820946)
,p_prompt=>'Usuario Analisis de MKT'
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
 p_id=>wwv_flow_imp.id(59347325044791025)
,p_name=>'P59_B_USUARIO_REVISADO_MKT'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(295814584277820946)
,p_prompt=>'Usuario Validacion Comercial'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>4
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59347418943791026)
,p_name=>'P59_B_USUARIO_AUT_ADMIN'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_imp.id(295814584277820946)
,p_prompt=>'Usuario Aprobado GG'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>4
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59347561742791027)
,p_name=>'P59_B_FECHA_ALTA'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(295814584277820946)
,p_prompt=>'Fecha Creacion'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59347690030791028)
,p_name=>'P59_B_FECHA_VERIFICACION'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(295814584277820946)
,p_prompt=>'Fecha Analisis MKT'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
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
 p_id=>wwv_flow_imp.id(59347765252791029)
,p_name=>'P59_B_FECHA_USUARIO_REVISADO'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(295814584277820946)
,p_prompt=>'Fecha Validacion Comercial'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59347847438791030)
,p_name=>'P59_B_FECHA_USUARIO_AUT_ADMIN'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_imp.id(295814584277820946)
,p_prompt=>'Fecha Aprobado GG'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59347924703791031)
,p_name=>'P59_B_USUARIO_AUT_COMERCIAL'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(295814584277820946)
,p_prompt=>'Usuario de Aprobacion de Precios'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>4
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59348042527791032)
,p_name=>'P59_B_USUARIO_CONFIRM_DEPO'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_imp.id(295814584277820946)
,p_prompt=>'Usuario Disponibilidad Deposito'
,p_placeholder=>'REQUERIDO SI TIENE DESPACHO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>4
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59348127029791033)
,p_name=>'P59_B_USUARIO_CONFIRM_COMER'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_imp.id(295814584277820946)
,p_prompt=>'Usuario Comunicado'
,p_placeholder=>'REQUERIDO SI TIENE DESPACHO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>4
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59348251745791034)
,p_name=>'P59_B_USUARIO_RECHAZO'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_imp.id(295814584277820946)
,p_prompt=>'Rechazado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_colspan=>4
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59348364405791035)
,p_name=>'P59_B_FECHA_AUT_COM'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(295814584277820946)
,p_prompt=>'Fecha Aprobacion de Precios'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59348414718791036)
,p_name=>'P59_B_FECHA_CONF_DEPO'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_imp.id(295814584277820946)
,p_prompt=>'Fecha Disponibilidad Deposito'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59348526739791037)
,p_name=>'P59_B_FECHA_CONF_COM'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_imp.id(295814584277820946)
,p_prompt=>'Fecha Comunicado'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59348677151791038)
,p_name=>'P59_B_FECHA_RECHAZO'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_imp.id(295814584277820946)
,p_prompt=>'Fecha Rechazo'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>5
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70412847810288617)
,p_name=>'P59_ESTADO_PROMO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(45804989511056645)
,p_prompt=>'ESTADO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:VERIFICADO;VERIFICADO,AUTORIZADO MKT;AUTORIZADOMKT,AUTORIZADO ADMINISTRACION;AUTORIZADOADM,AUTORIZADO COMERCIAL;AUTORIZADOCOM,CREADO;CREADO'
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(75758535228816719)
,p_name=>'P59_NRO_PROMO_LINK'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103968173815984625)
,p_name=>'P59_CONFIRMA_COMERCIAL'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103968240658984626)
,p_name=>'P59_VERIFICACION_BRAND'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103968354464984627)
,p_name=>'P59_CAMBIA_ESTADO'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103968407199984628)
,p_name=>'P59_AUTORIZA_MKT'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103968537195984629)
,p_name=>'P59_DERECHOS'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103968617414984630)
,p_name=>'P59_CODSISMENU'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103968749506984631)
,p_name=>'P59_COD_FORMA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103968818531984632)
,p_name=>'P59_NOM_FORMA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103968915080984633)
,p_name=>'P59_NOM_MODULO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(103969455391984638)
,p_name=>'P59_AUTORIZA_COMERCIAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109030479078414045)
,p_name=>'P59_ESTADO_AUX'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(251266225061040062)
,p_name=>'P59_COMENTARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(529983114626481762)
,p_prompt=>'Comentario Rechazo'
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
 p_id=>wwv_flow_imp.id(251266627725040065)
,p_name=>'P59_TIPO_PROCESO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(529983114626481762)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(413654623145543128)
,p_name=>'P59_NRO_PROMO_CAB'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(49054451051350235)
,p_prompt=>'Nro Verificacion'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(413654705513543129)
,p_name=>'P59_FECHA_CAB'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(49054451051350235)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Creacion'
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
 p_id=>wwv_flow_imp.id(413654873516543130)
,p_name=>'P59_COD_MONEDA_CAB'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(49054451051350235)
,p_prompt=>'Moneda'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_MONEDAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion as d,',
'       cod_moneda r',
'  from monedas',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(413654956749543131)
,p_name=>'P59_TIP_CAMBIO_CAB'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(49054451051350235)
,p_prompt=>'Tipo de Cambio'
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
 p_id=>wwv_flow_imp.id(413655047794543132)
,p_name=>'P59_DESPACHO_CAB'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(49054451051350235)
,p_prompt=>'Despacho'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(413655177469543133)
,p_name=>'P59_OBSERVACION_CAB'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(49054451051350235)
,p_prompt=>'Observacion'
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
 p_id=>wwv_flow_imp.id(413655225723543134)
,p_name=>'P59_EMBARQUE_CAB'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(49054451051350235)
,p_prompt=>'Embarque'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(413655412694543136)
,p_name=>'P59_ESTADO_CAB'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(49054451051350235)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:CREADO;CREADO,Analisis MKT;VERIFICADO,Validacion Comercial;AUTORIZADOMKT,Aprobacion de Precios;AUTORIZADOCOM,Disponibilidad Deposito;CONFIRMADODEP,Comunicado;CONFIRMADO_COMERCIAL,Aprobado GG;AUTORIZADOADM,Rechazado;RECHAZADO'
,p_cHeight=>1
,p_tag_attributes=>'readonly="readonly"'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(413656431660543146)
,p_name=>'P59_PARAM_NRO_PROMO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(49054451051350235)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(415318019866400906)
,p_name=>'P59_ESTADO_VERIFICACION'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(295814584277820946)
,p_prompt=>'Analisis de MKT'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Aprobado;S,Rechazado;N'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(415318130427400907)
,p_name=>'P59_ESTADO_VALIDACION_COM'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(295814584277820946)
,p_prompt=>'Validacion Comercial'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Aprobado;S,Rechazado;N'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:P59_AUTORIZA_MKT,''N'')=''N'' THEN',
'RETURN FALSE;',
'END IF;',
'if :P59_B_USUARIO_VERIFICACION is null then',
'return false;',
'else',
'',
'if nvl(:P59_AUTORIZA_MKT,''N'')=''S'' THEN',
'RETURN TRUE;',
'END IF;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(415318235104400908)
,p_name=>'P59_ESTADO_APROBACION_PRECIOS'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(295814584277820946)
,p_prompt=>'Aprobacion de Precios'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Aprobado;S,Rechazado;N'
,p_begin_on_new_line=>'N'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P59_B_USUARIO_REVISADO_MKT is null then',
'  return false;',
'elsif :P59_B_USUARIO_AUT_COMERCIAL is not null then',
' return false;',
' elsif NVL(:P59_ESTADO_APROBACION_PRECIOS,''X'')=''S'' THEN',
' RETURN FALSE;',
'elsif NVL(:P59_AUTORIZA_COMERCIAL,''X'')=''S'' THEN ',
' return true;',
'else ',
' return false;',
'end if;',
' ',
'',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(415318398092400909)
,p_name=>'P59_ESTADO_DISPO_DEPOSITO'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_imp.id(295814584277820946)
,p_prompt=>'Disponibilidad de Deposito'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Aprobado;S,Rechazado;N'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(415318417932400910)
,p_name=>'P59_ESTADO_COMUNICADO'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_imp.id(295814584277820946)
,p_prompt=>'Comunicado'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Aprobado;S,Rechazado;N'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P59_B_USUARIO_AUT_COMERCIAL is   NOT null then',
'return false;',
'elsif :P59_NRO_DESPACHO is null then',
'return false;',
'else return true;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(415318528000400911)
,p_name=>'P59_ESTADO_APROBADO_GG'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_imp.id(295814584277820946)
,p_prompt=>'Aprobado GG'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Aprobado;S,Rechazado;N'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P59_B_FECHA_USUARIO_REVISADO is   null then',
'return false;',
'else return true;',
'end if;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(415318685506400912)
,p_name=>'P59_ESTADO_RECHAZADO'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_imp.id(295814584277820946)
,p_prompt=>'Rechazado'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P59_B_USUARIO_REVISADO_MKT is null then',
'return false;',
'IF NVL(:P59_ESTADO_APROBACION_PRECIOS,''X'')=''S'' THEN ',
'return false;',
'else return true;',
'end if;',
'end if;',
''))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_attribute_01=>'N'
,p_attribute_02=>'S'
,p_attribute_03=>'Si'
,p_attribute_04=>'N'
,p_attribute_05=>'No'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(415322112162400947)
,p_name=>'P59_RECHAZA_VERIFICACION'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(415322418629400950)
,p_name=>'P59_AUTORIZA_GG'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(45805192254056647)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(416474092719622118)
,p_name=>'P59_A_COSTO_UNITARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(416473809593622116)
,p_prompt=>'Costo Unitario'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(416474159010622119)
,p_name=>'P59_A_MARGEN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(416473809593622116)
,p_prompt=>'Margen'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(416474233311622120)
,p_name=>'P59_A_ULTIMO_PRECIO_LISTA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(416473799946622115)
,p_prompt=>'Ultimo Precio de Lista'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(416474390835622121)
,p_name=>'P59_A_IVA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(416473809593622116)
,p_prompt=>'I.V.A. 10%'
,p_format_mask=>'999G999G999G999G999G999G990'
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
 p_id=>wwv_flow_imp.id(416475028605622128)
,p_name=>'P59_DESCUENTO_DET1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(416474650223622124)
,p_prompt=>'Descuento %'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC(,):0 %010 %1012,7 %12,714.5 %14,519 %19'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(416475116449622129)
,p_name=>'P59_PRECIO_LISTA_D1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(416474650223622124)
,p_prompt=>'Precio Lista C/ IVA'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
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
 p_id=>wwv_flow_imp.id(416475203501622130)
,p_name=>'P59_PRECIO_NETO_D1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(416474650223622124)
,p_prompt=>'Precio con Descuento  S/ IVA'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(416475382831622131)
,p_name=>'P59_MARGEN_D1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(416474650223622124)
,p_prompt=>'Margen'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(416475555260622133)
,p_name=>'P59_DESCUENTO_DET2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(416475436375622132)
,p_prompt=>'Descuento %'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC(,):0 %010 %1012,7 %12,714.5 %14,519 %19'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(416475661495622134)
,p_name=>'P59_PRECIO_LISTA_D2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(416475436375622132)
,p_prompt=>'Precio Lista  C/ IVA'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(416475768120622135)
,p_name=>'P59_PRECIO_NETO_D2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(416475436375622132)
,p_prompt=>'Precio con Descuento  S/ IVA'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(416475845271622136)
,p_name=>'P59_MARGEN_D2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(416475436375622132)
,p_prompt=>'Margen'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(416476070509622138)
,p_name=>'P59_DESCUENTO_DET3'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(416475934490622137)
,p_prompt=>'Descuento %'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC(,):0 %010 %1012,7 %12,714.5 %14,519 %19'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(416476139697622139)
,p_name=>'P59_PRECIO_LISTA_D3'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(416475934490622137)
,p_prompt=>'Precio Lista  C/ IVA'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(416476214696622140)
,p_name=>'P59_PRECIO_NETO_D3'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(416475934490622137)
,p_prompt=>'Precio con Descuento  S/ IVA'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(416476314764622141)
,p_name=>'P59_MARGEN_D3'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(416475934490622137)
,p_prompt=>'Margen'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(416476701340622145)
,p_name=>'P59_MARCA_COMPETENCIA_N1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(416476553847622143)
,p_prompt=>'Marca'
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
 p_id=>wwv_flow_imp.id(416476890339622146)
,p_name=>'P59_PRECIO_COMPETENCIA_N1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(416476553847622143)
,p_prompt=>'Precio C/ IVA'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(416476974403622147)
,p_name=>'P59_PRECIO_DIFE_COMPETENCIA_N1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(416476553847622143)
,p_prompt=>'Comparativo'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(417067999335643305)
,p_name=>'P59_MARCA_COMPETENCIA_N2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(417067862117643304)
,p_prompt=>'Marca'
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
 p_id=>wwv_flow_imp.id(417068099425643306)
,p_name=>'P59_PRECIO_COMPETENCIA_N2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(417067862117643304)
,p_prompt=>'Precio C/ IVA'
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
 p_id=>wwv_flow_imp.id(417068134269643307)
,p_name=>'P59_PRECIO_DIFE_COMPETENCIA_N2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(417067862117643304)
,p_prompt=>'Comparativo'
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
 p_id=>wwv_flow_imp.id(417068991982643315)
,p_name=>'P59_MARCA_COMPETENCIA_N3'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(417068816075643314)
,p_prompt=>'Marca'
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
 p_id=>wwv_flow_imp.id(417069008872643316)
,p_name=>'P59_PRECIO_COMPETENCIA_N3'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(417068816075643314)
,p_prompt=>'Precio C/ IVA'
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
 p_id=>wwv_flow_imp.id(417069102822643317)
,p_name=>'P59_PRECIO_DIFE_COMPETENCIA_N3'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(417068816075643314)
,p_prompt=>'Comparativo'
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
 p_id=>wwv_flow_imp.id(419453439323055811)
,p_name=>'P59_OBSERVACION_PRECIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(416473809593622116)
,p_prompt=>'Motivo de Baja de precios'
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
 p_id=>wwv_flow_imp.id(432285074547518209)
,p_name=>'P59_NRO_OC'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(49054451051350235)
,p_prompt=>'Nro OC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(40186634462263678)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48548220775631615)
,p_name=>'DA_OCULTAR_REGION'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51533833081865649)
,p_event_id=>wwv_flow_imp.id(48548220775631615)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51531685933865627)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103970421862984648)
,p_event_id=>wwv_flow_imp.id(48548220775631615)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT',
'        C011 USUARIO,',
'        C012 USUARIO_VERIFICACION,',
'        C013 USUARIO_REVISADO_MKT,',
'        C014 USUARIO_AUT_ADMINISTRACION,',
'        C015 USUARIO_AUT_COMERCIAL,',
'        C016 USUARIO_CONFIRMADO_DEPOSITO,',
'        C017 USUARIO_CONFIRMADO_COMERCIAL,',
'        C018 USUARIO_RECHAZO,',
'        C019 FECHA_ALTA,',
'        C020 FECHA_VERIFICACION,',
'        C021 FECHA_REVISADO_MKT,',
'        C022 FECHA_AUT_ADMINISTRACION,',
'        C023 FECHA_AUT_COMERCIAL,',
'        C024 FECHA_CONFIRMADO_DEPOSITO,',
'        C025 FECHA_CONFIRMADO_COMERCIAL,',
'        C026 FECHA_RECHAZO',
'    INTO ',
'        :P59_B_COD_USUARIO,',
'        :P59_B_USUARIO_VERIFICACION,',
'        :P59_B_USUARIO_REVISADO_MKT,',
'        :P59_B_USUARIO_AUT_ADMIN,',
'        :P59_B_USUARIO_AUT_COMERCIAL,',
'        :P59_B_USUARIO_CONFIRM_DEPO,',
'        :P59_B_USUARIO_CONFIRM_COMER,        ',
'        :P59_B_USUARIO_RECHAZO,',
'        :P59_B_FECHA_ALTA,',
'        :P59_B_FECHA_VERIFICACION,',
'        :P59_B_FECHA_USUARIO_REVISADO,',
'        :P59_B_FECHA_USUARIO_AUT_ADMIN,',
'        :P59_B_FECHA_AUT_COM,',
'        :P59_B_FECHA_CONF_DEPO,',
'        :P59_B_FECHA_CONF_COM,',
'        :P59_B_FECHA_RECHAZO',
'',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''CABECERA''',
'    AND SEQ_ID = 1;',
'   ',
'END;'))
,p_attribute_03=>'P59_B_USUARIO_VERIFICACION,P59_B_USUARIO_REVISADO_MKT,P59_B_USUARIO_AUT_ADMIN,P59_B_USUARIO_AUT_COMERCIAL,P59_B_USUARIO_CONFIRM_DEPO,P59_B_USUARIO_CONFIRM_COMER,P59_B_FECHA_ALTA,P59_B_USUARIO_RECHAZO,P59_B_FECHA_VERIFICACION,P59_B_FECHA_USUARIO_REVIS'
||'ADO,P59_B_FECHA_USUARIO_AUT_ADMIN,P59_B_FECHA_AUT_COM,P59_B_FECHA_CONF_DEPO,P59_B_FECHA_CONF_COM,P59_B_FECHA_RECHAZO,P59_B_COD_USUARIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108043813351228003)
,p_event_id=>wwv_flow_imp.id(48548220775631615)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48478701235391520)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109028138846414022)
,p_event_id=>wwv_flow_imp.id(48548220775631615)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48478701235391520)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P59_ESTADO'
,p_client_condition_expression=>'CREADO'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109028492320414025)
,p_event_id=>wwv_flow_imp.id(48548220775631615)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(108046622007228031)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P59_ESTADO'
,p_client_condition_expression=>'CREADO'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109028206400414023)
,p_event_id=>wwv_flow_imp.id(48548220775631615)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(108046622007228031)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P59_ESTADO'
,p_client_condition_expression=>'CREADO'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109028305856414024)
,p_event_id=>wwv_flow_imp.id(48548220775631615)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48478701235391520)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P59_ESTADO'
,p_client_condition_expression=>'CREADO'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48548407606631617)
,p_name=>'MOSTAR_REPORTE'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(48547800427631611)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48549819034631631)
,p_event_id=>wwv_flow_imp.id(48548407606631617)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P59_AUX_CONTROL_REPORTE IS NULL THEN',
'    :P59_AUX_CONTROL_REPORTE := ''EJECUTAR'';',
'END IF;'))
,p_attribute_02=>'P59_AUX_CONTROL_REPORTE'
,p_attribute_03=>'P59_AUX_CONTROL_REPORTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48548624212631619)
,p_event_id=>wwv_flow_imp.id(48548407606631617)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' IF (:P59_P_NRO_PROMO IS NULL ',
'     AND :P59_FEC_DESDE IS NULL ',
'     AND :P59_FEC_HASTA IS NULL',
'     AND :P59_ESTADO_PROMO is null) THEN',
'     :P59_AUX_MSJ_CONTROL := ''INTRODUZCA UN VALOR'';',
' ELSE    ',
'    :P59_AUX_MSJ_CONTROL := null;',
'    BEGIN',
'      ',
'       FVMRGPRO.pr_crear_collection_cabecera(:P59_P_NRO_PROMO,  :P_COD_EMPRESA, :P59_ESTADO_PROMO);',
'',
'        :P59_AUX_CONTROL_REPORTE := ''EJECUTAR'';',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'            :P59_AUX_MSJ_CONTROL := ''PARA LOS FILTROS INGRESADOS NO EXISTEN PROMOS'';',
'            APEX_DEBUG.ERROR(''ERROR EN PROCEDIMIENTO CREAR COLLECTION ''||SQLERRM);',
'            ',
'    END;',
' END IF;',
'',
''))
,p_attribute_02=>'P59_ESTADO_PROMO,P59_P_NRO_PROMO,P59_FEC_DESDE,P59_FEC_HASTA,P59_COD_EMPRESA'
,p_attribute_03=>'P59_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59348884137791040)
,p_event_id=>wwv_flow_imp.id(48548407606631617)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT',
'        C012 USUARIO_VERIFICACION,',
'        C013 USUARIO_REVISADO_MKT,',
'        C014 USUARIO_AUT_ADMINISTRACION,',
'        C015 USUARIO_AUT_COMERCIAL,',
'        C016 USUARIO_CONFIRMADO_DEPOSITO,',
'        C017 USUARIO_CONFIRMADO_COMERCIAL,',
'        C018 USUARIO_RECHAZO,',
'        C019 FECHA_ALTA,',
'        C020 FECHA_VERIFICACION,',
'        C021 FECHA_REVISADO_MKT,',
'        C022 FECHA_AUT_ADMINISTRACION,',
'        C023 FECHA_AUT_COMERCIAL,',
'        C024 FECHA_CONFIRMADO_DEPOSITO,',
'        C025 FECHA_CONFIRMADO_COMERCIAL,',
'        C026 FECHA_RECHAZO',
'    INTO ',
'        :P59_B_USUARIO_VERIFICACION,',
'        :P59_B_USUARIO_REVISADO_MKT,',
'        :P59_B_USUARIO_AUT_ADMIN,',
'        :P59_B_USUARIO_AUT_COMERCIAL,',
'        :P59_B_USUARIO_CONFIRM_DEPO,',
'        :P59_B_USUARIO_CONFIRM_COMER,        ',
'        :P59_B_USUARIO_RECHAZO,',
'        :P59_B_FECHA_ALTA,',
'        :P59_B_FECHA_VERIFICACION,',
'        :P59_B_FECHA_USUARIO_REVISADO,',
'        :P59_B_FECHA_USUARIO_AUT_ADMIN,',
'        :P59_B_FECHA_AUT_COM,',
'        :P59_B_FECHA_CONF_DEPO,',
'        :P59_B_FECHA_CONF_COM,',
'        :P59_B_FECHA_RECHAZO',
'',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''CABECERA''',
'    AND SEQ_ID = 1;',
'   EXCEPTION',
'   WHEN NO_DATA_FOUND THEN',
'        RAISE_APPLICATION_ERROR (-20111,''NO SE ENCONTRARON ELEMENTOS''||SQLERRM);',
'   WHEN OTHERS THEN',
'        APEX_DEBUG.ERROR(sqlerrm);',
'END;'))
,p_attribute_03=>'P59_B_USUARIO_VERIFICACION,P59_B_USUARIO_REVISADO_MKT,P59_B_USUARIO_AUT_ADMIN,P59_B_USUARIO_AUT_COMERCIAL,P59_B_USUARIO_CONFIRM_DEPO,P59_B_USUARIO_CONFIRM_COMER,P59_B_FECHA_ALTA,P59_B_USUARIO_RECHAZO,P59_B_FECHA_VERIFICACION,P59_B_FECHA_USUARIO_REVIS'
||'ADO,P59_B_FECHA_USUARIO_AUT_ADMIN,P59_B_FECHA_AUT_COM,P59_B_FECHA_CONF_DEPO,P59_B_FECHA_CONF_COM,P59_B_FECHA_RECHAZO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59349288778791044)
,p_event_id=>wwv_flow_imp.id(48548407606631617)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P59_AUX_MSJ_CONTROL.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49735102170898044)
,p_event_id=>wwv_flow_imp.id(48548407606631617)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49731097884898003)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P59_AUX_CONTROL_REPORTE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49587900352414404)
,p_event_id=>wwv_flow_imp.id(48548407606631617)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49054230919350233)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P59_AUX_CONTROL_REPORTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48548837843631621)
,p_name=>'DA_ABRIR_GUARDAR'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(48547904817631612)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50494884651541914)
,p_event_id=>wwv_flow_imp.id(48548837843631621)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P59_P_NRO_PROMO,P59_COD_MONEDA,P59_TIPO_CAMBIO,P59_NRO_PROMO,P59_NRO_DESPACHO,P59_NRO_EMBARQUE,P59_OBSERVACION,P59_DESCUENTO_1,P59_DESCUENTO_DET2,P59_B_FECHA_AUT_COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48548913521631622)
,p_event_id=>wwv_flow_imp.id(48548837843631621)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(48547570217631608)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48549034121631623)
,p_event_id=>wwv_flow_imp.id(48548837843631621)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(48547435078631607)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48549114205631624)
,p_event_id=>wwv_flow_imp.id(48548837843631621)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(45805056184056646)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48549247540631625)
,p_name=>'DA_CERRAR_REGION'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(48547692547631609)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48549359285631626)
,p_event_id=>wwv_flow_imp.id(48549247540631625)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(45805056184056646)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49053795594350228)
,p_name=>'DA_GUARDAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(48547435078631607)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49053807922350229)
,p_event_id=>wwv_flow_imp.id(49053795594350228)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.create_or_truncate_collection(p_collection_name => ''CABECERA'');',
'apex_collection.create_or_truncate_collection(p_collection_name => ''VERIFICACION_MARGENES'');',
':P59_AUX_MSJ_CONTROL := NULL;',
'IF :P59_FECHA IS NULL THEN',
'    :P59_AUX_MSJ_CONTROL := ''DEBE INGRESAR UNA FECHA'';',
'    ELSIF :P59_COD_MONEDA IS NULL THEN',
'            :P59_AUX_MSJ_CONTROL := ''DEBE INGRESAR UNA MONEDA'';',
'        ELSIF :P59_DESCUENTO_1 IS NULL THEN',
'        :P59_AUX_MSJ_CONTROL := ''DEBE INGRESAR EL DESCUENTO 1'';',
'            ELSIF :P59_DESCUENTO_2 IS NULL THEN',
'            :P59_AUX_MSJ_CONTROL := ''DEBE INGRESAR EL DESCUENTO 2'';',
'             ELSE',
'             :P59_AUX_MSJ_CONTROL := null;',
'                BEGIN',
'                 FVMRGPRO.pr_agregar_miembro_cabecera( ',
'                            PI_COD_EMPRESA => :P59_COD_EMPRESA ,',
'                            PI_COD_MONEDA  => :P59_COD_MONEDA,',
'                            PI_PORC_DTO  => :P59_DESCUENTO_1,',
'                            PI_PORC_DTO2  => :P59_DESCUENTO_2,',
'                            PI_TIPO_CAMBIO => :P59_TIPO_CAMBIO,',
'                            PI_FECHA  => :P59_FECHA,                             ',
'                            PI_USUARIO  => :P59_COD_USUARIO,',
'                            PI_NRO_DESPACHO => :P59_NRO_DESPACHO,',
'                            PI_NRO_EMBARQUE => :P59_NRO_EMBARQUE,',
'                            PI_ESTADO => :P59_ESTADO,',
'                            PI_OBSERVACION => :P59_OBSERVACION',
'           ) ;',
'  ',
'                 EXCEPTION',
'',
'                    WHEN OTHERS THEN',
'                        apex_debug.error(sqlerrm);',
'                END;',
'',
'END IF;'))
,p_attribute_02=>'P59_COD_EMPRESA,P59_B_FECHA_AUT_COM,P59_AUX_MSJ_CONTROL,P59_COD_MONEDA,P59_DESCUENTO_1,P59_DESCUENTO_DET2,P59_B_COD_USUARIO,P59_TIPO_CAMBIO,P59_NRO_DESPACHO,P59_NRO_EMBARQUE,P59_OBSERVACION,P59_FECHA_CAB'
,p_attribute_03=>'P59_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49588368116414408)
,p_event_id=>wwv_flow_imp.id(49053795594350228)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    SELECT ',
'    C002 ',
'    INTO',
'    :P59_P_NRO_PROMO',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''CABECERA''',
'    and seq_id = 1;',
'exception',
'  when others then',
'    apex_Debug.error(sqlerrm);',
'  apex_collection.create_or_truncate_collection(P_COLLECTION_NAME => ''VERIFICACION_MARGENES'');',
'  FVMRGPRO.pr_crear_collection(:p_cod_empresa,:P59_P_NRO_PROMO  ) ;',
'  ',
'end;'))
,p_attribute_02=>'P59_P_NRO_PROMO,P59_FEC_DESDE,P59_FEC_HASTA'
,p_attribute_03=>'P59_P_NRO_PROMO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49053929184350230)
,p_event_id=>wwv_flow_imp.id(49053795594350228)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'&P59_AUX_MSJ_CONTROL.',
''))
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49054634403350237)
,p_event_id=>wwv_flow_imp.id(49053795594350228)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'NUEVA PROMO CREADA'
,p_attribute_02=>unistr('\00C9XITO')
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49054595235350236)
,p_event_id=>wwv_flow_imp.id(49053795594350228)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48478701235391520)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50494963596541915)
,p_event_id=>wwv_flow_imp.id(49053795594350228)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49731097884898003)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49054709213350238)
,p_event_id=>wwv_flow_imp.id(49053795594350228)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(45805056184056646)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49588845105414413)
,p_event_id=>wwv_flow_imp.id(49053795594350228)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
' :P59_MOSTRAR_BTN_CONFIRMAR := 2;',
'end;'))
,p_attribute_03=>'P59_MOSTRAR_BTN_CONFIRMAR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49588700219414412)
,p_event_id=>wwv_flow_imp.id(49053795594350228)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'doShowHide();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52912825771696426)
,p_event_id=>wwv_flow_imp.id(49053795594350228)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49054230919350233)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52912918459696427)
,p_event_id=>wwv_flow_imp.id(49053795594350228)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48478701235391520)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49055313660350244)
,p_name=>'DA_CERRAR_REGION_ART'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(49055293214350243)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49055454668350245)
,p_event_id=>wwv_flow_imp.id(49055313660350244)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49055047262350241)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49587697460414401)
,p_name=>'DA_ABRIR_CREAR'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(49055823801350249)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70412492076288613)
,p_event_id=>wwv_flow_imp.id(49587697460414401)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P59_A_PRECIO'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49587715620414402)
,p_event_id=>wwv_flow_imp.id(49587697460414401)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49055047262350241)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49591882859414443)
,p_event_id=>wwv_flow_imp.id(49587697460414401)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(49055529981350246)
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
 p_id=>wwv_flow_imp.id(49591969577414444)
,p_event_id=>wwv_flow_imp.id(49587697460414401)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(49055602523350247)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49588060474414405)
,p_name=>'DA_GUARDAR_ART'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(49055529981350246)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50496047426541926)
,p_event_id=>wwv_flow_imp.id(49588060474414405)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    select ',
'        C003, --COD_MONEDAA',
'        C006, --ESTADO,',
'        TO_DATE(C007),',
'        TO_NUMBER(C008), --TIPO',
'        TO_NUMBER(C027), --DESCUENTO_1, ',
'        TO_NUMBER(C028) ',
'        ',
'    into ',
'        :P59_COD_MONEDA,    ',
'        :P59_ESTADO,',
'        :P59_FECHA,',
'        :P59_TIPO_CAMBIO, --NUMBER',
'        :P59_DESCUENTO_1, -- NUMBER        ',
'        :P59_DESCUENTO_2 ',
'    ',
'    from APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''CABECERA''',
'    AND SEQ_ID = 1;',
'end;'))
,p_attribute_03=>'P59_COD_MONEDA,P59_DESCUENTO_1,P59_DESCUENTO_DET2,P59_TIPO_CAMBIO,P59_B_FECHA_AUT_COM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49589460986414419)
,p_event_id=>wwv_flow_imp.id(49588060474414405)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P59_AUX_MSJ_CONTROL_ART := NULL;',
'if to_number(replace(:P59_A_PRECIO    ,''.'',null)) <to_number(replace(:P59_A_ULTIMO_PRECIO_LISTA    ,''.'',null))  and :P59_OBSERVACION_PRECIO is null then',
' :P59_AUX_MSJ_CONTROL_ART := ''DEBE INGRESAR UNA OBSERVACION DEL PORQUE EL PRECIO ACTUAL ES MAYOR AL ANTERIOR'';',
'    raise_application_error(-20102,',
'                                ''DEBE INGRESAR UNA OBSERVACION DEL PORQUE EL PRECIO ACTUAL ES MAYOR AL ANTERIOR'' );',
'end if;',
' ',
'if to_number(replace(:P59_PRECIO_NETO_D2    ,''.'',null)) <to_number(replace(:P59_A_COSTO_UNITARIO    ,''.'',null))  and :P59_OBSERVACION_PRECIO is null then',
' :P59_AUX_MSJ_CONTROL_ART := ''DEBE INGRESAR UNA OBSERVACION DEL PORQUE EL COSTO ACTUAL ES MAYOR AL PRECIO CON DESCUENTO'';',
'    raise_application_error(-20102,',
'                                ''DEBE INGRESAR UNA OBSERVACION DEL PORQUE EL COSTO ACTUAL ES MAYOR AL PRECIO CON DESCUENTO'' );',
'end if;',
'',
'',
'if to_number(replace(:P59_PRECIO_NETO_D3    ,''.'',null)) <to_number(replace(:P59_A_COSTO_UNITARIO    ,''.'',null))  and :P59_OBSERVACION_PRECIO is null then',
' :P59_AUX_MSJ_CONTROL_ART := ''DEBE INGRESAR UNA OBSERVACION DEL PORQUE EL COSTO ACTUAL ES MAYOR AL PRECIO CON DESCUENTO'';',
'    raise_application_error(-20102,',
'                                ''DEBE INGRESAR UNA OBSERVACION DEL PORQUE EL COSTO ACTUAL ES MAYOR AL PRECIO CON DESCUENTO'' );',
'end if;',
'',
'IF :P59_A_COD_ARTICULO IS NULL THEN',
'    :P59_AUX_MSJ_CONTROL_ART := ''DEBE INGRESAR UN ARTICULO'';',
'    ELSE',
'    declare',
'    vnro_promo number;',
'        BEGIN',
'begin',
'begin',
'    select C002        ',
'    into vnro_promo            ',
'    from APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''CABECERA''',
'    AND SEQ_ID = 1;',
'end;',
'end;',
'',
'       FVMRGPRO.pr_agregar_miembro_collection( ',
'                            PI_COD_ARTICULO => :P59_A_COD_ARTICULO,',
'                            PI_COD_ART_CORTO => :P59_A_COD_ART_CORTO,                            ',
'                            PI_NRO_PROMO => :P59_NRO_PROMO_CAB,',
'                            PI_COD_EMPRESA => :P_COD_EMPRESA ,',
'                            PI_COD_MONEDA  => :P59_COD_MONEDA_CAB,',
'                            PI_TIPO_CAMBIO => :P59_TIP_CAMBIO_CAB,',
'                            PI_COD_USUARIO  => :P59_COD_USUARIO,',
'                            PI_NRO_DESPACHO => :P59_NRO_DESPACHO,',
'                          PI_DESCUENTO_1 => :P59_DESCUENTO_DET1,',
'                                PI_DESCUENTO_2 => :P59_DESCUENTO_det2,',
'                                PI_DESCUENTO_3 => :P59_DESCUENTO_det3,',
'                                PI_MARGEN => :P59_A_MARGEN ,    ',
'                            PI_OBSERVACION => :P59_OBSERVACION_PRECIO, ',
'                            PI_NRO_EMBARQUE => :P59_NRO_EMBARQUE,--NUMBER, ',
'                            PI_ESTADO => :P59_ESTADO_CAB  ,',
'                            PI_FECHA => :P59_FECHA_CAB   ,',
'                                                            PI_PRECIO => to_number(replace(:P59_A_PRECIO    ,''.'',null))           ',
'        ) ;',
'',
'          ',
'        END;',
'',
'END IF;'))
,p_attribute_02=>'P59_AUX_MSJ_CONTROL_ART,P59_A_COD_ARTICULO,P59_A_PRECIO, P59_P_NRO_PROMO, P59_COD_EMPRESA , P59_COD_MONEDA, P59_B_COD_USUARIO P59_DESCUENTO_1,  P59_DESCUENTO_DET2,P59_A_COD_ART_CORTO,P59_TIPO_CAMBIO,P59_B_FECHA_AUT_COM,P59_NRO_PROMO_CAB,P59_FECHA_CAB'
||',P59_ESTADO_CAB,P59_OBSERVACION_PRECIO,P59_A_ULTIMO_PRECIO_LISTA,P59_PRECIO_NETO_D1,P59_A_COSTO_UNITARIO,P59_PRECIO_NETO_D2,P59_PRECIO_NETO_D3'
,p_attribute_03=>'P59_AUX_MSJ_CONTROL_ART,P59_AUX_PRECIO_CERO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49589760465414422)
,p_event_id=>wwv_flow_imp.id(49588060474414405)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P59_AUX_MSJ_CONTROL_ART.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL_ART'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49589801272414423)
,p_event_id=>wwv_flow_imp.id(49588060474414405)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48478701235391520)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL_ART'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49589928625414424)
,p_event_id=>wwv_flow_imp.id(49588060474414405)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49055047262350241)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL_ART'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49592067117414445)
,p_name=>'DA_ABRIR_EDITAR'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_SEQ_ID_EDITAR_ART'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50494084031541906)
,p_event_id=>wwv_flow_imp.id(49592067117414445)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT',
'         ',
'        c002,--cod_articulo,',
'        c003, --precio',
'        C020,-- COD_CORTO',
'        c004, --descuento 1',
'        c009, --descuento 2',
'        C006, --COSTO',
'        c035, --dto3 ',
'         c039, -- --porc_mg',
'         C040 --OBSERVACION PRECIO',
'    INTO',
'          ',
'        :P59_A_COD_ARTICULO,',
'        :P59_A_PRECIO,',
'        :P59_A_COD_ART_CORTO,',
'        :P59_DESCUENTO_DET1,',
'        :P59_DESCUENTO_DET2,',
'        :P59_A_COSTO_UNITARIO,',
'        :P59_DESCUENTO_DET3,',
'        :P59_A_MARGEN,',
'        :P59_OBSERVACION_PRECIO',
'         ',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''VERIFICACION_MARGENES''',
'    AND  SEQ_ID = :P59_SEQ_ID_EDITAR_ART;',
'',
'    SELECT',
'        c003, --COD MONEDA',
'        c008 --tipo cambio',
'    INTO',
'        :P59_COD_MONEDA,',
'        :P59_TIPO_CAMBIO',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''CABECERA''',
'    AND  SEQ_ID = 1;',
'END;'))
,p_attribute_02=>'P59_SEQ_ID_EDITAR_ART'
,p_attribute_03=>'P59_A_PRECIO,P59_A_COD_ARTICULO,P59_TIPO_CAMBIO,P59_COD_MONEDA,P59_A_COD_ART_CORTO,P59_COD_EMPRESA,P59_DESCUENTO_1,P59_DESCUENTO_DET2,P59_A_COSTO_UNITARIO,P59_DESCUENTO_DET1,P59_DESCUENTO_DET3,P59_A_MARGEN,P59_OBSERVACION_PRECIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(419452818313055805)
,p_event_id=>wwv_flow_imp.id(49592067117414445)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(416477159419622149)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(419452712096055804)
,p_event_id=>wwv_flow_imp.id(49592067117414445)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(417068351801643309)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(419452982319055806)
,p_event_id=>wwv_flow_imp.id(49592067117414445)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(417069304197643319)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49592392625414448)
,p_event_id=>wwv_flow_imp.id(49592067117414445)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(49055529981350246)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49592282211414447)
,p_event_id=>wwv_flow_imp.id(49592067117414445)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(49055602523350247)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(49592129616414446)
,p_event_id=>wwv_flow_imp.id(49592067117414445)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49055047262350241)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70412527582288614)
,p_event_id=>wwv_flow_imp.id(49592067117414445)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P59_A_PRECIO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49592493037414449)
,p_name=>'DA_ELIMINAR_ART'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_SEQ_ID_ELIMINAR_ART'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50494526195541911)
,p_event_id=>wwv_flow_imp.id(49592493037414449)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEsta seguro que desea Eliminar?')
,p_attribute_02=>'ELIMINAR'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50494608849541912)
,p_event_id=>wwv_flow_imp.id(49592493037414449)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FVMRGPRO.pr_borrar_miembro_collection(:P59_SEQ_ID_ELIMINAR_ART  ) ;',
' ',
'EXCEPTION',
'',
'    WHEN OTHERS THEN',
'',
'        apex_debug.ERROR(sqlerrm);',
'END;'))
,p_attribute_02=>'P59_SEQ_ID_ELIMINAR_ART'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50494752736541913)
,p_event_id=>wwv_flow_imp.id(49592493037414449)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48478701235391520)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(49735397976898046)
,p_name=>'DA_GUARDAR_EDITAR_ART'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(49055602523350247)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(419453583664055812)
,p_event_id=>wwv_flow_imp.id(49735397976898046)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P59_AUX_MSJ_CONTROL_ART := NULL;',
'if to_number(replace(:P59_A_PRECIO    ,''.'',null)) <to_number(replace(:P59_A_ULTIMO_PRECIO_LISTA    ,''.'',null))  and :P59_OBSERVACION_PRECIO is null then',
' :P59_AUX_MSJ_CONTROL_ART := ''DEBE INGRESAR UNA OBSERVACION DEL PORQUE EL PRECIO ACTUAL ES MAYOR AL ANTERIOR'';',
'    raise_application_error(-20102,',
'                                ''DEBE INGRESAR UNA OBSERVACION DEL PORQUE EL PRECIO ACTUAL ES MAYOR AL ANTERIOR'' );',
'end if;',
'',
'if to_number(replace(:P59_PRECIO_NETO_D1    ,''.'',null)) <to_number(replace(:P59_A_COSTO_UNITARIO    ,''.'',null))  and :P59_OBSERVACION_PRECIO is null then',
' :P59_AUX_MSJ_CONTROL_ART := ''DEBE INGRESAR UNA OBSERVACION DEL PORQUE EL COSTO ACTUAL ES MAYOR AL PRECIO CON DESCUENTO'';',
'    raise_application_error(-20102,',
'                                ''DEBE INGRESAR UNA OBSERVACION DEL PORQUE EL COSTO ACTUAL ES MAYOR AL PRECIO CON DESCUENTO'' );',
'end if;',
'',
'if to_number(replace(:P59_PRECIO_NETO_D2    ,''.'',null)) <to_number(replace(:P59_A_COSTO_UNITARIO    ,''.'',null))  and :P59_OBSERVACION_PRECIO is null then',
' :P59_AUX_MSJ_CONTROL_ART := ''DEBE INGRESAR UNA OBSERVACION DEL PORQUE EL COSTO ACTUAL ES MAYOR AL PRECIO CON DESCUENTO'';',
'    raise_application_error(-20102,',
'                                ''DEBE INGRESAR UNA OBSERVACION DEL PORQUE EL COSTO ACTUAL ES MAYOR AL PRECIO CON DESCUENTO'' );',
'end if;',
'',
'',
'if to_number(replace(:P59_PRECIO_NETO_D3    ,''.'',null)) <to_number(replace(:P59_A_COSTO_UNITARIO    ,''.'',null))  and :P59_OBSERVACION_PRECIO is null then',
' :P59_AUX_MSJ_CONTROL_ART := ''DEBE INGRESAR UNA OBSERVACION DEL PORQUE EL COSTO ACTUAL ES MAYOR AL PRECIO CON DESCUENTO'';',
'    raise_application_error(-20102,',
'                                ''DEBE INGRESAR UNA OBSERVACION DEL PORQUE EL COSTO ACTUAL ES MAYOR AL PRECIO CON DESCUENTO'' );',
'end if;'))
,p_attribute_02=>'P59_A_PRECIO,P59_A_ULTIMO_PRECIO_LISTA,P59_OBSERVACION_PRECIO,P59_PRECIO_NETO_D1,P59_PRECIO_NETO_D2,P59_PRECIO_NETO_D3,P59_A_COSTO_UNITARIO'
,p_attribute_03=>'P59_AUX_MSJ_CONTROL_ART'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52914620241696444)
,p_event_id=>wwv_flow_imp.id(49735397976898046)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P59_AUX_MSJ_CONTROL_ART := NULL;',
'IF replace(:P59_A_PRECIO,''.'',null) <= 0 THEN',
'    :P59_AUX_MSJ_CONTROL_ART := ''EL PRECIO DEBE SER MAYOR A CERO'';',
'    ELSE',
'        begin',
'        FVMRGPRO.pr_modificar_miembro_det(PI_SEQ_ID_EDITAR => :P59_SEQ_ID_EDITAR_ART,',
'                                PI_COD_ARTICULO => :P59_A_COD_ARTICULO, ',
'                                PI_COD_ART_CORTO => :P59_A_COD_ART_CORTO,',
'                                PI_PRECIO => replace(:P59_A_PRECIO,''.'',null),',
'                                PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                PI_COD_MONEDA => :P59_COD_MONEDA_CAB,                                ',
'                                PI_TIPO_CAMBIO => :P59_TIP_CAMBIO_CAB,',
'                                PI_DESCUENTO_1 => :P59_DESCUENTO_DET1,',
'                                PI_DESCUENTO_2 => :P59_DESCUENTO_det2,',
'                                PI_DESCUENTO_3 => :P59_DESCUENTO_det3,',
'                                PI_MARGEN => :P59_A_MARGEN,',
'                            PI_COD_USUARIO => :P59_COD_USUARIO ,',
'                            PI_OBSERVACION =>:P59_OBSERVACION_PRECIO);',
'',
'        end;',
'END IF;'))
,p_attribute_02=>'P59_A_COD_ART_CORTO,P59_COD_EMPRESA,P59_A_COD_ARTICULO,P59_A_PRECIO,P59_DESCUENTO_1,P59_DESCUENTO_DET2,P59_B_COD_USUARIO,P59_TIPO_CAMBIO,P59_SEQ_ID_EDITAR_ART,P59_COD_MONEDA,P59_DESCUENTO_DET1,P59_DESCUENTO_DET2,P59_DESCUENTO_DET3,P59_A_MARGEN,P59_OB'
||'SERVACION_PRECIO'
,p_attribute_03=>'P59_AUX_MSJ_CONTROL_ART'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70412648496288615)
,p_event_id=>wwv_flow_imp.id(49735397976898046)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P59_AUX_MSJ_CONTROL_ART.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL_ART'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50494253815541908)
,p_event_id=>wwv_flow_imp.id(49735397976898046)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48478701235391520)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL_ART'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50494331687541909)
,p_event_id=>wwv_flow_imp.id(49735397976898046)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49055047262350241)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL_ART'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50495264560541918)
,p_name=>'DA_ABRIR_EDITAR_PRO'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_SEQ_ID_EDITAR_PRO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51531100194865622)
,p_event_id=>wwv_flow_imp.id(50495264560541918)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    SELECT      ',
'        C002 NRO_PROMO,                ',
'        C003 COD_MONEDA,                     ',
'        C005 NRO_DESPACHO,',
'        C006 ESTADO,',
'        C007 FECHA,    ',
'        C008 TIPO_CAMBIO,                        ',
'        C009 OBSERVACION,',
'        C010 NRO_EMBARQUE,',
'        C027 DESCUENTO_1, ',
'        C028 DESCUENTO_2',
'',
'    into',
'    :P59_NRO_PROMO,',
'    :P59_COD_MONEDA,',
'    :P59_NRO_DESPACHO,',
'    :P59_ESTADO,',
'    :P59_FECHA,',
'    :P59_TIPO_CAMBIO,',
'    :P59_OBSERVACION,',
'    :P59_NRO_EMBARQUE,    ',
'    :P59_DESCUENTO_1,',
'    :P59_DESCUENTO_2',
'    ',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''CABECERA''',
'    AND SEQ_ID = :P59_SEQ_ID_EDITAR_PRO;',
'',
'end;',
'',
':P59_ESTADO_AUX := :P59_ESTADO;'))
,p_attribute_02=>'P59_SEQ_ID_EDITAR_PRO'
,p_attribute_03=>'P59_ESTADO_AUX,P59_NRO_PROMO,P59_COD_MONEDA,P59_NRO_DESPACHO,P59_ESTADO,P59_FECHA_CAB,P59_OBSERVACION,P59_NRO_EMBARQUE,P59_DESCUENTO_1,P59_DESCUENTO_DET2,P59_TIPO_CAMBIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50495329048541919)
,p_event_id=>wwv_flow_imp.id(50495264560541918)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(48547435078631607)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50495428268541920)
,p_event_id=>wwv_flow_imp.id(50495264560541918)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(48547570217631608)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50495539941541921)
,p_event_id=>wwv_flow_imp.id(50495264560541918)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(45805056184056646)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50495694231541922)
,p_name=>'DA_ELIMINAR_PROMO'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_SEQ_ID_ELIMINAR_PROMO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50495754138541923)
,p_event_id=>wwv_flow_imp.id(50495694231541922)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\00BFEsta seguro que desea Eliminar?')
,p_attribute_02=>'ELIMINAR'
,p_attribute_03=>'danger'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52911873064696416)
,p_event_id=>wwv_flow_imp.id(50495694231541922)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    FVMRGPRO.pr_borrar_miembro_cabecera(:P59_SEQ_ID_ELIMINAR_PROMO);',
'    EXCEPTION',
'',
'    WHEN OTHERS THEN',
'',
'        apex_debug.ERROR(sqlerrm);',
'',
'END;'))
,p_attribute_02=>'P59_SEQ_ID_ELIMINAR_PROMO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50495851153541924)
,p_event_id=>wwv_flow_imp.id(50495694231541922)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49731097884898003)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50495971959541925)
,p_event_id=>wwv_flow_imp.id(50495694231541922)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48478701235391520)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52911945234696417)
,p_event_id=>wwv_flow_imp.id(50495694231541922)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'ELIMINADO CORRECTAMENTE'
,p_attribute_02=>unistr('\00C9XITO')
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51530110682865612)
,p_name=>'DA_AGREGAR_DETALLE'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(49055823801350249)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51530592931865616)
,p_event_id=>wwv_flow_imp.id(51530110682865612)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT ',
'        C001, --COD_EMPRESA',
'        C006, --ESTADO',
'        TO_NUMBER(C008), --TIPO_CAMBIO ',
'		TO_NUMBER(C027), --DESCUENTO1',
'        TO_NUMBER(C028) --DESCUENTO2					',
'							 ',
'    INTO ',
'        :P59_B_COD_EMPRESA,',
'        :P59_ESTADO,',
'        :P59_TIPO_CAMBIO,',
'        :P59_DESCUENTO_1,',
'        :P59_DESCUENTO_2',
'',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME =''CABECERA''',
'    AND SEQ_ID = 1;',
'',
'END;',
'',
''))
,p_attribute_03=>'P59_B_COD_EMPRESA,P59_TIPO_CAMBIO,P59_DESCUENTO_1,P59_DESCUENTO_DET2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51530291079865613)
,p_event_id=>wwv_flow_imp.id(51530110682865612)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'--pre-insert',
' :P59_B_COD_EMPRESA := :P59_COD_EMPRESA;  ',
' :P59_B_NRO_PROMO := :P59_P_NRO_PROMO;',
' --WHEN-CREATED-RECORD Y POST-QUERY',
' FVMRGPRO.pr_agregar_detalle(PI_COD_EMPRESA => :P59_B_COD_EMPRESA,',
'                    PI_COD_ART_CORTO => :P59_B_COD_ART_CORTO,',
'                    PI_ESTADO => :P59_ESTADO,',
'                    PI_DESCUENTO_1 => :P59_DESCUENTO_1,',
'                    PI_DESCUENTO_2 => :P59_DESCUENTO_2,',
'                    PI_TIPO_CAMBIO => :P59_TIPO_CAMBIO,',
'                    PO_DESC_ART => :P59_B_DESC_ART,',
'                    PO_COD_ARTICULO_MADRE => :P59_B_COD_ARTICULO_MADRE,',
'                    PO_DESC_PROMO1 => :P59_B_DESC_PROMO1,',
'                    PO_PRECIO_NETO => :P59_B_PRECIO_NETO,',
'                    PO_UTILIDAD => :P59_B_UTILIDAD,',
'                    PO_PORC_MARGEN => :P59_B_PORC_MARGEN,',
'                    PO_PRECIO_NETO2 =>  :P59_B_PRECIO_NETO2,',
'                    PO_UTILIDAD2 => :P59_B_UTILIDAD2,                          ',
'                    PO_PORC_MARGEN2 =>  :P59_B_PORC_MARGEN2,',
'                    PO_PORC_MARGEN_MK => :P59_B_PORC_MARGEN_MK,',
'                    PO_PORC_MARGEN_MK2 =>  :P59_B_PORC_MARGEN_MK2,',
'                    PO_DESC_PROMO2 => :P59_B_DESC_PROMO2,',
'                    PO_DESC_ART_RELACION =>  :P59_B_DESC_ART_RELACION,',
'                    PO_COD_ART_CORTO_RELACION  =>  :P59_B_COD_ART_CORTO_RELACION,',
'                    PO_COSTO_ART => :P59_B_COSTO_ART,',
'                    PO_IND_INCLUIR_LISTADO => :P59_B_IND_INCLUIR_LISTADO );',
'END;'))
,p_attribute_02=>'P59_COD_EMPRESA,P59_P_NRO_PROMO,P59_B_COD_EMPRESA,P59_B_COD_ART_CORTO,P59_DESCUENTO_1,P59_DESCUENTO_DET2,P59_TIPO_CAMBIO'
,p_attribute_03=>'P59_B_COD_EMPRESA,P59_B_NRO_PROMO,P59_B_COD_ART_CORTO, P59_DESCUENTO_1,P59_DESCUENTO_DET2,P59_TIPO_CAMBIO,P59_B_DESC_ART,P59_B_COD_ARTICULO_MADRE,P59_B_DESC_PROMO1,P59_B_PRECIO_NETO,P59_B_UTILIDAD,P59_B_PORC_MARGEN,P59_B_PRECIO_NETO2,P59_B_UTILIDAD2,'
||'P59_B_PORC_MARGEN2,P59_B_PORC_MARGEN_MK,P59_B_PORC_MARGEN_MK2,P59_B_DESC_PROMO2,P59_B_DESC_ART_RELACION,P59_B_COD_ART_CORTO_RELACION,P59_B_COSTO_ART,P59_B_IND_INCLUIR_LISTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51530669151865617)
,p_name=>'DA_GUARDAR_EDITAR'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(48547570217631608)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109030222983414043)
,p_event_id=>wwv_flow_imp.id(51530669151865617)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P59_AUX_MSJ_CONTROL := NULL;',
'BEGIN',
'FVMRGPRO.pr_validar_cambio_estado(PI_COD_USUARIO => :P59_B_COD_USUARIO,',
'                                PI_AUTORIZA_COMERCIAL=> :P59_AUTORIZA_COMERCIAL,',
'								PI_VERIFICACION_BRAND=> :P59_VERIFICACION_BRAND,',
'								PI_AUTORIZA_MKT=> :P59_AUTORIZA_MKT,',
'								PI_confirma_comercial=> :P59_CONFIRMA_COMERCIAL,',
'								PI_ESTADO=> :P59_ESTADO,',
'								PI_CAMBIA_ESTADO=> :P59_CAMBIA_ESTADO,',
'								PI_USUARIO_VERIFICACION=> :P59_B_USUARIO_VERIFICACION,',
'								PI_USUARIO_REVISADO_MKT=> :P59_B_USUARIO_REVISADO_MKT,',
'								PI_USUARIO_CONFIRMADO_DEPOSITO=> :P59_B_USUARIO_CONFIRM_DEPO,',
'								PI_nro_despacho=> :P59_NRO_DESPACHO,',
'								PI_USUARIO_AUT_COMERCIAL=> :P59_USUARIO_AUT_COMERCIAL,',
'								PO_ESTADO => :P59_ESTADO, ',
'								PO_FECHA_AUT_COMERCIAL => :P59_FECHA_AUT_COMERCIAL,',
'								PO_USUARIO_AUT_ADMINISTRACION => :P59_USUARIO_AUT_ADMINISTRACION,',
'								PO_FECHA_AUT_ADMINISTRACION => :P59_FECHA_AUT_ADMINISTRACION,								 ',
'								PO_USUARIO_REVISADO_MKT => :P59_USUARIO_REVISADO_MKT,',
'								PO_FECHA_REVISADO_MKT => :P59_FECHA_REVISADO_MKT,',
'								PO_USUARIO_VERIFICACION => :P59_USUARIO_VERIFICACION,',
'								PO_FECHA_VERIFICACION => :P59_FECHA_VERIFICACION,',
'								PO_USUARIO_RECHAZO => :P59_USUARIO_RECHAZO,',
'								PO_FECHA_RECHAZO => :P59_B_FECHA_RECHAZO,',
'								PO_USUARIO_CONFIRMADO_COMERCIA => :P59_USUARIO_CONFIRMADO_COMERCI,',
'								PO_FECHA_CONFIRMADO_COMERCIAL => :P59_FECHA_CONFIRMADO_COMERCIAL,',
'                                PO_USUARIO_AUT_COMERCIAL  => :P59_USUARIO_AUT_COMERCIAL,',
'                                PO_MENSAJE => :P59_AUX_MSJ_CONTROL);',
'                    IF(:P59_AUX_MSJ_CONTROL IS NOT NULL)THEN',
'                        :P59_ESTADO := :P59_ESTADO_AUX||'' DA_GUARDAR_EDITAR'';',
'                    END IF;',
'END;',
'',
''))
,p_attribute_02=>'P59_AUTORIZA_COMERCIAL,P59_VERIFICACION_BRAND,P59_AUTORIZA_MKT,P59_CONFIRMA_COMERCIAL,P59_ESTADO, P59_CAMBIA_ESTADO,P59_USUARIO_VERIFICACION,P59_USUARIO_REVISADO_MKT,P59_USUARIO_CONFIRMADO_DEPOSIT, P59_NRO_DESPACHO,P59_ESTADO_AUX,P59_COD_USUARIO,P59_'
||'B_USUARIO_VERIFICACION'
,p_attribute_03=>'P59_AUX_MSJ_CONTROL,P59_USUARIO_AUT_COMERCIAL,P59_ESTADO,P59_FECHA_AUT_COMERCIAL,P59_USUARIO_AUT_ADMINISTRACION,P59_FECHA_AUT_ADMINISTRACION,P59_USUARIO_REVISADO_MKT,P59_FECHA_REVISADO_MKT,P59_USUARIO_VERIFICACION,P59_FECHA_VERIFICACION,P59_USUARIO_R'
||'ECHAZO,P59_B_FECHA_RECHAZO,P59_USUARIO_CONFIRMADO_COMERCI,P59_FECHA_CONFIRMADO_COMERCIAL,P59_USUARIO_AUT_COMERCIAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109030355185414044)
,p_event_id=>wwv_flow_imp.id(51530669151865617)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'&P59_AUX_MSJ_CONTROL.'
,p_attribute_02=>'ERROR'
,p_attribute_03=>'warning'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51530789257865618)
,p_event_id=>wwv_flow_imp.id(51530669151865617)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P59_AUX_MSJ_CONTROL := null;',
'if  :P59_ESTADO =''AUTORIZADOCOM'' and  :P59_B_USUARIO_VERIFICACION is null then',
'	:P59_AUX_MSJ_CONTROL :='' Debe pasar por el estado de Verificado antes de pasar a Autorizado Comercial... '';',
' else',
'   ',
'',
'    declare ',
'        v_descuento_1_col number;',
'        v_descuento_2_col number;',
'        ',
'    BEGIN',
'          select',
'           c027,',
'           C028',
'           INTO ',
'           V_DESCUENTO_1_COL,',
'           V_DESCUENTO_2_COL',
'           FROM APEX_COLLECTIONS',
'           WHERE COLLECTION_NAME = ''CABECERA''',
'           AND SEQ_ID = 1;',
'          ',
'    FVMRGPRO.pr_modificar_promo(PI_SEQ_ID_EDITAR => :P59_SEQ_ID_EDITAR_PRO ,',
'                                PI_NRO_PROMO => :P59_NRO_PROMO,',
'                                PI_COD_EMPRESA => :P59_COD_EMPRESA ,',
'                                PI_COD_MONEDA  => :P59_COD_MONEDA,',
'                                PI_PORC_DTO => :P59_DESCUENTO_1,',
'                                PI_PORC_DTO2  => :P59_DESCUENTO_2,',
'                                PI_TIPO_CAMBIO => :P59_TIPO_CAMBIO,',
'                                PI_FECHA => :P59_FECHA,                            ',
'                                PI_COD_USUARIO  => :P59_COD_USUARIO,',
'                                PI_NRO_DESPACHO => :P59_NRO_DESPACHO,',
'                                PI_NRO_EMBARQUE => :P59_NRO_EMBARQUE,',
'                                PI_ESTADO => :P59_ESTADO,',
'                                PI_OBSERVACION => :P59_OBSERVACION );',
'          IF(V_DESCUENTO_1_COL <> :P59_DESCUENTO_1 OR V_DESCUENTO_2_COL <> :P59_DESCUENTO_2) THEN',
'                FVMRGPRO.pr_modificar_todos_los_reg(:P59_DESCUENTO_1, :P59_DESCUENTO_2,:P59_TIPO_CAMBIO);',
'           END IF;',
'',
'    END;',
'end if;'))
,p_attribute_02=>'P59_SEQ_ID_EDITAR_PRO ,P59_NRO_PROMO,P59_COD_MONEDA,P59_NRO_DESPACHO,P59_ESTADO,P59_FECHA_CAB,P59_OBSERVACION,P59_NRO_EMBARQUE,P59_DESCUENTO_1,P59_DESCUENTO_DET2,P59_TIPO_CAMBIO,P59_B_COD_USUARIO,P59_B_USUARIO_VERIFICACION,P59_B_USUARIO_VERIFICACION'
,p_attribute_03=>'P59_AUX_MSJ_CONTROL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL'
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
 p_id=>wwv_flow_imp.id(51530871103865619)
,p_event_id=>wwv_flow_imp.id(51530669151865617)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49731097884898003)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51531367169865624)
,p_event_id=>wwv_flow_imp.id(51530669151865617)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48478701235391520)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(108043779099228002)
,p_event_id=>wwv_flow_imp.id(51530669151865617)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT',
'        C012 USUARIO_VERIFICACION,',
'        C013 USUARIO_REVISADO_MKT,',
'        C014 USUARIO_AUT_ADMINISTRACION,',
'        C015 USUARIO_AUT_COMERCIAL,',
'        C016 USUARIO_CONFIRMADO_DEPOSITO,',
'        C017 USUARIO_CONFIRMADO_COMERCIAL,',
'        C018 USUARIO_RECHAZO,',
'        C019 FECHA_ALTA,',
'        C020 FECHA_VERIFICACION,',
'        C021 FECHA_REVISADO_MKT,',
'        C022 FECHA_AUT_ADMINISTRACION,',
'        C023 FECHA_AUT_COMERCIAL,',
'        C024 FECHA_CONFIRMADO_DEPOSITO,',
'        C025 FECHA_CONFIRMADO_COMERCIAL,',
'        C026 FECHA_RECHAZO',
'    INTO ',
'        :P59_B_USUARIO_VERIFICACION,',
'        :P59_B_USUARIO_REVISADO_MKT,',
'        :P59_B_USUARIO_AUT_ADMIN,',
'        :P59_B_USUARIO_AUT_COMERCIAL,',
'        :P59_B_USUARIO_CONFIRM_DEPO,',
'        :P59_B_USUARIO_CONFIRM_COMER,        ',
'        :P59_B_USUARIO_RECHAZO,',
'        :P59_B_FECHA_ALTA,',
'        :P59_B_FECHA_VERIFICACION,',
'        :P59_B_FECHA_USUARIO_REVISADO,',
'        :P59_B_FECHA_USUARIO_AUT_ADMIN,',
'        :P59_B_FECHA_AUT_COM,',
'        :P59_B_FECHA_CONF_DEPO,',
'        :P59_B_FECHA_CONF_COM,',
'        :P59_B_FECHA_RECHAZO',
'',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''CABECERA''',
'    AND SEQ_ID = 1;',
'   ',
'END;'))
,p_attribute_03=>'P59_B_USUARIO_VERIFICACION,P59_B_USUARIO_REVISADO_MKT,P59_B_USUARIO_AUT_ADMIN,P59_B_USUARIO_AUT_COMERCIAL,P59_B_USUARIO_CONFIRM_DEPO,P59_B_USUARIO_CONFIRM_COMER,P59_B_FECHA_ALTA,P59_B_USUARIO_RECHAZO,P59_B_FECHA_VERIFICACION,P59_B_FECHA_USUARIO_REVIS'
||'ADO,P59_B_FECHA_USUARIO_AUT_ADMIN,P59_B_FECHA_AUT_COM,P59_B_FECHA_CONF_DEPO,P59_B_FECHA_CONF_COM,P59_B_FECHA_RECHAZO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51530950957865620)
,p_event_id=>wwv_flow_imp.id(51530669151865617)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(45805056184056646)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51531000662865621)
,p_event_id=>wwv_flow_imp.id(51530669151865617)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'REGISTRO MODIFICADO CORRECTAMENTE'
,p_attribute_02=>unistr('\00C9XITO')
,p_attribute_03=>'success'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P59_AUX_MSJ_CONTROL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51532264105865633)
,p_name=>'EJECUTAR_REPORTE'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51532176243865632)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52912326598696421)
,p_event_id=>wwv_flow_imp.id(51532264105865633)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P59_A_COD_ARTICULO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51532827635865639)
,p_event_id=>wwv_flow_imp.id(51532264105865633)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P59_AUX_CTROL_REPORTE_STMANPRO IS NULL THEN',
'        :P59_AUX_CTROL_REPORTE_STMANPRO := ''EJECUTAR'';',
'    END IF;',
'END;'))
,p_attribute_03=>'P59_AUX_CTROL_REPORTE_STMANPRO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51532325818865634)
,p_event_id=>wwv_flow_imp.id(51532264105865633)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49054451051350235)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P59_AUX_CTROL_REPORTE_STMANPRO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51532412555865635)
,p_event_id=>wwv_flow_imp.id(51532264105865633)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49054230919350233)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P59_AUX_CTROL_REPORTE_STMANPRO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51532579455865636)
,p_event_id=>wwv_flow_imp.id(51532264105865633)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51531685933865627)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P59_AUX_CTROL_REPORTE_STMANPRO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52911554190696413)
,p_name=>'DA_MOSTRAR_REPORTE'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51533735802865648)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52911600366696414)
,p_event_id=>wwv_flow_imp.id(52911554190696413)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51533943015865650)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52911733006696415)
,p_event_id=>wwv_flow_imp.id(52911554190696413)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51533943015865650)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52912130732696419)
,p_name=>'DA_LIMPIAR'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(49055823801350249)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52912273023696420)
,p_event_id=>wwv_flow_imp.id(52912130732696419)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P59_A_COD_ARTICULO,P59_A_PRECIO,P59_A_COD_ART_CORTO,P59_DESCUENTO_DET1,P59_DESCUENTO_DET2,P59_DESCUENTO_DET3,P59_PRECIO_LISTA_D1,P59_PRECIO_LISTA_D2,P59_PRECIO_LISTA_D3,P59_A_MARGEN,P59_DESCUENTO_DET2,P59_OBSERVACION_PRECIO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(419453663402055813)
,p_event_id=>wwv_flow_imp.id(52912130732696419)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(417069304197643319)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(419453745483055814)
,p_event_id=>wwv_flow_imp.id(52912130732696419)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(416477159419622149)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(419453892462055815)
,p_event_id=>wwv_flow_imp.id(52912130732696419)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(417068351801643309)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52913264233696430)
,p_name=>'DA_MOSTRAR_DETALLE'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_SEQ_ID_DETALLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52913376588696431)
,p_event_id=>wwv_flow_imp.id(52913264233696430)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'    select ',
'         ROUND(NVL(C003,0)/11) IVA, ',
'         ROUND(NVL(C003,0)/1.1) GRAVADA,',
'         c039 COD_ARTICULO_MADRE,       ',
'         C020 COD_ART_CORTO',
'    into',
'        :P59_B_IVA,',
'        :P59_B_GRAVADA,',
'        :P59_B_COD_ARTICULO_MADRE,        ',
'        :P59_B_DESC_ART_RELACION',
'',
'         ',
'    FROM APEX_COLLECTIONS',
'    WHERE COLLECTION_NAME = ''VERIFICACION_MARGENES''',
'    AND SEQ_ID = :P59_SEQ_ID_DETALLE;',
'  ',
' exception',
'	when others then',
'    apex_debug.error(sqlerrm);',
'    apex_debug.error(''ERROR EN MOSTRAR DETALLE '');',
'',
'',
'',
'END;'))
,p_attribute_02=>'P59_SEQ_ID_DETALLE'
,p_attribute_03=>'P59_B_COD_ARTICULO_MADRE,P59_B_IVA,P59_B_GRAVADA,P59_B_DESC_ART_RELACION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52913988452696437)
,p_name=>'DA_LIMPIAR_FILTROS'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(52913864917696436)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52914034959696438)
,p_event_id=>wwv_flow_imp.id(52913988452696437)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P59_B_COD_MARCA_DES,P59_B_COD_CATEGORIA,P59_B_FECHA_DESDE,P59_B_FECHA_HASTA,P59_B_DESC_MARCA_DES,P59_B_DESC_CATEGORIA,P59_COD_ARTICULO,P59_B_ESTADO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52914197413696439)
,p_name=>'DA_VOLVER'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(51533612204865647)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52914263304696440)
,p_event_id=>wwv_flow_imp.id(52914197413696439)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(51531685933865627)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52914302655696441)
,p_event_id=>wwv_flow_imp.id(52914197413696439)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49054451051350235)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52914453398696442)
,p_event_id=>wwv_flow_imp.id(52914197413696439)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(49054230919350233)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52915117938696449)
,p_name=>'DA_CHECK'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_SEQ_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52915234729696450)
,p_event_id=>wwv_flow_imp.id(52915117938696449)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'FVMRGPRO.PR_CHECK(P_SEQ_ID => :P59_SEQ_ID,',
'                  P_ACCION => :P59_ACCION,',
'                  P_COLECCION => ''VERIFICACION_MARGENES'');',
'exception',
'when others then',
unistr('    RAISE_APPLICATION_ERROR(-20010,''Error al completar la transacci\00F3n, favor de contactarse con el equipo de soporte.'');'),
'END;',
''))
,p_attribute_02=>'P59_SEQ_ID,P59_ACCION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(59349079596791042)
,p_name=>'DA_LIMPIAR_CAB'
,p_event_sequence=>250
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(59348978367791041)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59349184604791043)
,p_event_id=>wwv_flow_imp.id(59349079596791042)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P59_P_NRO_PROMO,P59_FEC_DESDE,P59_FEC_HASTA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75758664425816720)
,p_name=>'DA_MOSTRAR_ART'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_NRO_PROMO_LINK'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75758773786816721)
,p_event_id=>wwv_flow_imp.id(75758664425816720)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'    FVMRGPRO.pr_crear_collection(:p_cod_empresa,:P59_NRO_PROMO_LINK ) ;',
'END;'))
,p_attribute_02=>'P59_NRO_PROMO_LINK'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48548765183631620)
,p_event_id=>wwv_flow_imp.id(75758664425816720)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48478701235391520)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P59_AUX_CONTROL_REPORTE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75758811424816722)
,p_name=>'DA_LIMPIAR_DET'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(48547800427631611)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75758974086816723)
,p_event_id=>wwv_flow_imp.id(75758811424816722)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    apex_collection.create_or_truncate_collection(P_COLLECTION_NAME => ''VERIFICACION_MARGENES'');    ',
'',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75759051778816724)
,p_event_id=>wwv_flow_imp.id(75758811424816722)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48478701235391520)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(103969711567984641)
,p_name=>'DA_ES_NUMERO'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_TIPO_CAMBIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103969859037984642)
,p_event_id=>wwv_flow_imp.id(103969711567984641)
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
 p_id=>wwv_flow_imp.id(413655596289543137)
,p_name=>'DA_ES_NUMERO_1'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_TIP_CAMBIO_CAB'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(413655626500543138)
,p_event_id=>wwv_flow_imp.id(413655596289543137)
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
 p_id=>wwv_flow_imp.id(109028533278414026)
,p_name=>'DA_CAMBIA_ESTADO'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109028790398414028)
,p_event_id=>wwv_flow_imp.id(109028533278414026)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48478701235391520)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P59_ESTADO'
,p_client_condition_expression=>'CREADO'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109028823456414029)
,p_event_id=>wwv_flow_imp.id(109028533278414026)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(108046622007228031)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P59_ESTADO'
,p_client_condition_expression=>'CREADO'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109028916445414030)
,p_event_id=>wwv_flow_imp.id(109028533278414026)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(108046622007228031)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P59_ESTADO'
,p_client_condition_expression=>'CREADO'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109029094954414031)
,p_event_id=>wwv_flow_imp.id(109028533278414026)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48478701235391520)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P59_ESTADO'
,p_client_condition_expression=>'CREADO'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(413655948057543141)
,p_name=>'DA_CAMBIA_ESTADO_1'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_ESTADO_CAB'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(413656054105543142)
,p_event_id=>wwv_flow_imp.id(413655948057543141)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48478701235391520)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P59_ESTADO'
,p_client_condition_expression=>'CREADO'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(413656157389543143)
,p_event_id=>wwv_flow_imp.id(413655948057543141)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(108046622007228031)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P59_ESTADO'
,p_client_condition_expression=>'CREADO'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(413656291964543144)
,p_event_id=>wwv_flow_imp.id(413655948057543141)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(108046622007228031)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P59_ESTADO'
,p_client_condition_expression=>'CREADO'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(413656345761543145)
,p_event_id=>wwv_flow_imp.id(413655948057543141)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48478701235391520)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P59_ESTADO'
,p_client_condition_expression=>'CREADO'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(416472709208622105)
,p_name=>'DA_ESTADO_RECHAZADO'
,p_event_sequence=>320
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_ESTADO_CAB'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P59_ESTADO_CAB'
,p_display_when_cond2=>'RECHAZADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(416472853128622106)
,p_event_id=>wwv_flow_imp.id(416472709208622105)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48478701235391520)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P59_ESTADO'
,p_client_condition_expression=>'CREADO'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(416472906406622107)
,p_event_id=>wwv_flow_imp.id(416472709208622105)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(108046622007228031)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P59_ESTADO'
,p_client_condition_expression=>'CREADO'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(416473022245622108)
,p_event_id=>wwv_flow_imp.id(416472709208622105)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(108046622007228031)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P59_ESTADO'
,p_client_condition_expression=>'CREADO'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(416473125980622109)
,p_event_id=>wwv_flow_imp.id(416472709208622105)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48478701235391520)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P59_ESTADO'
,p_client_condition_expression=>'CREADO'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(416473238723622110)
,p_event_id=>wwv_flow_imp.id(416472709208622105)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P59_ESTADO_VERIFICACION,P59_ESTADO_VALIDACION_COM,P59_ESTADO_APROBACION_PRECIOS,P59_ESTADO_DISPO_DEPOSITO,P59_ESTADO_COMUNICADO,P59_ESTADO_APROBADO_GG,P59_ESTADO_RECHAZADO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P59_ESTADO'
,p_client_condition_expression=>'RECHAZADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(416473435422622112)
,p_event_id=>wwv_flow_imp.id(416472709208622105)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(49055823801350249)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P59_ESTADO'
,p_client_condition_expression=>'RECHAZADO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(107240630177845216)
,p_name=>'DA_EVALUAR_ESTADO'
,p_event_sequence=>330
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107240761311845217)
,p_event_id=>wwv_flow_imp.id(107240630177845216)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48478701235391520)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P59_ESTADO'
,p_client_condition_expression=>'CREADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107240825421845218)
,p_event_id=>wwv_flow_imp.id(107240630177845216)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(108046622007228031)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P59_ESTADO'
,p_client_condition_expression=>'CREADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107240901250845219)
,p_event_id=>wwv_flow_imp.id(107240630177845216)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(108046622007228031)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P59_ESTADO'
,p_client_condition_expression=>'CREADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107241007319845220)
,p_event_id=>wwv_flow_imp.id(107240630177845216)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(48478701235391520)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P59_ESTADO'
,p_client_condition_expression=>'CREADO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(413655703753543139)
,p_name=>'da_tipo_cambio'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_COD_MONEDA_CAB'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(413655859101543140)
,p_event_id=>wwv_flow_imp.id(413655703753543139)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P59_TIP_CAMBIO_CAB'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select  ',
'			  		   tipo_cambio_dia  ',
'			     ',
'			    from monedas',
'			   where cod_moneda = :p59_cod_moneda_cab'))
,p_attribute_07=>'P59_COD_MONEDA_CAB'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(415317719342400903)
,p_name=>'da_cod_art_corto'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_A_COD_ART_CORTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(415317829780400904)
,p_event_id=>wwv_flow_imp.id(415317719342400903)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN select cod_articulo',
'INTO :P59_A_COD_ARTICULO',
'from st_articulos where cod_empresa=:p_cod_empresa and cod_art_corto=:p59_a_cod_art_corto;',
'exception when others then',
':P59_A_COD_ARTICULO:=null;',
'',
'',
'end;',
''))
,p_attribute_02=>'P59_A_COD_ART_CORTO'
,p_attribute_03=>'P59_A_COD_ARTICULO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(415318773733400913)
,p_name=>'da_verificacion_mkt'
,p_event_sequence=>360
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_ESTADO_VERIFICACION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(415318805140400914)
,p_event_id=>wwv_flow_imp.id(415318773733400913)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
':P59_B_USUARIO_VERIFICACION:=:P_COD_USUARIO;',
':P59_B_FECHA_VERIFICACION:=TRUNC(SYSDATE);',
'',
'',
'/*VERIFICACION*/',
'IF :P59_ESTADO_VERIFICACION=''S'' THEN',
':P59_ESTADO_CAB:=''VERIFICADO'';',
'ELSIF  :P59_ESTADO_VERIFICACION=''N'' THEN',
':P59_ESTADO_CAB:= ''VERIFICADO''; ',
'END IF;',
'',
'',
'END;'))
,p_attribute_02=>'P59_ESTADO_VERIFICACION'
,p_attribute_03=>'P59_B_USUARIO_VERIFICACION,P59_B_FECHA_VERIFICACION,P59_ESTADO_CAB'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(415318977766400915)
,p_name=>'da_VALIDACION_COMERCIAL'
,p_event_sequence=>370
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_ESTADO_VALIDACION_COM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(415319027923400916)
,p_event_id=>wwv_flow_imp.id(415318977766400915)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
':P59_B_USUARIO_REVISADO_MKT:=:P_COD_USUARIO;',
':P59_B_FECHA_USUARIO_REVISADO:=TRUNC(SYSDATE);',
'',
'',
'/*VERIFICACION*/',
'IF :P59_ESTADO_VALIDACION_COM=''S'' THEN',
':P59_ESTADO_CAB:=''AUTORIZADOMKT'';',
'ELSIF  :P59_ESTADO_VALIDACION_COM=''N'' THEN',
':P59_ESTADO_CAB:= ''AUTORIZADOMKT''; ',
'END IF;',
':P59_TIPO_PROCESO:=''AUTORIZADOMKT''; ',
'',
'',
'END;'))
,p_attribute_02=>'P59_ESTADO_VALIDACION_COM'
,p_attribute_03=>'P59_B_USUARIO_REVISADO_MKT,P59_B_FECHA_USUARIO_REVISADO,P59_ESTADO_CAB,P59_TIPO_PROCESO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(432287481772518233)
,p_name=>'da_rechaza_COMERCIAl_n'
,p_event_sequence=>380
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_ESTADO_VALIDACION_COM'
,p_condition_element=>'P59_ESTADO_VALIDACION_COM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
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
 p_id=>wwv_flow_imp.id(432287675614518235)
,p_event_id=>wwv_flow_imp.id(432287481772518233)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(529983114626481762)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(415319180646400917)
,p_name=>'da_aprobacion_precios'
,p_event_sequence=>420
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_ESTADO_APROBACION_PRECIOS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(415319253225400918)
,p_event_id=>wwv_flow_imp.id(415319180646400917)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
':P59_B_USUARIO_AUT_COMERCIAL:=:P_COD_USUARIO;',
':P59_B_FECHA_AUT_COM:=TRUNC(SYSDATE);',
'',
'',
'/*VERIFICACION*/',
'IF :P59_ESTADO_APROBACION_PRECIOS=''S'' THEN',
':P59_ESTADO_CAB:=''AUTORIZADOCOM'';',
'ELSIF  :P59_ESTADO_APROBACION_PRECIOS=''N'' THEN',
':P59_ESTADO_CAB:= ''AUTORIZADOCOM''; ',
'END IF;',
':P59_TIPO_PROCESO:=''AUTORIZADOMKT''; ',
'',
'END;'))
,p_attribute_02=>'P59_ESTADO_APROBACION_PRECIOS'
,p_attribute_03=>'P59_B_USUARIO_AUT_COMERCIAL,P59_B_FECHA_AUT_COM,P59_ESTADO_CAB,P59_TIPO_PROCESO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(432288526082518244)
,p_name=>'da_rechaza_aprobacion_precios_n'
,p_event_sequence=>421
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_ESTADO_APROBACION_PRECIOS'
,p_condition_element=>'P59_ESTADO_APROBACION_PRECIOS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(432288610326518245)
,p_event_id=>wwv_flow_imp.id(432288526082518244)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(529983114626481762)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(419455924369055836)
,p_name=>'da_aprobacion_GG'
,p_event_sequence=>441
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_ESTADO_APROBADO_GG'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(419456057278055837)
,p_event_id=>wwv_flow_imp.id(419455924369055836)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
':P59_B_USUARIO_AUT_ADMIN:=:P_COD_USUARIO;',
':P59_B_FECHA_USUARIO_AUT_ADMIN:=TRUNC(SYSDATE);',
'',
'',
'/*VERIFICACION*/',
'IF :P59_ESTADO_APROBADO_GG=''S'' THEN',
':P59_ESTADO_CAB:=''AUTORIZADOADM'';',
'ELSIF  :P59_ESTADO_APROBADO_GG=''N'' THEN',
':P59_ESTADO_CAB:= ''AUTORIZADOADM''; ',
'END IF;',
'',
'',
'END;'))
,p_attribute_02=>'P59_ESTADO_APROBADO_GG'
,p_attribute_03=>'P59_B_FECHA_USUARIO_AUT_ADMIN,P59_B_USUARIO_AUT_ADMIN,P59_ESTADO_CAB'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(415319301302400919)
,p_name=>'da_dispo_deposito'
,p_event_sequence=>451
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_ESTADO_DISPO_DEPOSITO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(415319497897400920)
,p_event_id=>wwv_flow_imp.id(415319301302400919)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
':P59_B_USUARIO_CONFIRM_DEPO:=:P_COD_USUARIO;',
':P59_B_FECHA_CONF_DEPO:=TRUNC(SYSDATE);',
'',
'',
'/*VERIFICACION*/',
'IF :P59_ESTADO_DISPO_DEPOSITO=''S'' THEN',
':P59_ESTADO_CAB:=''CONFIRMADODEP'';',
'ELSIF  :P59_ESTADO_DISPO_DEPOSITO=''N'' THEN',
':P59_ESTADO_CAB:= ''CONFIRMADODEP''; ',
'END IF;',
'',
'',
'END;'))
,p_attribute_02=>'P59_ESTADO_DISPO_DEPOSITO'
,p_attribute_03=>'P59_B_USUARIO_CONFIRM_DEPO,P59_B_FECHA_CONF_DEPO,P59_ESTADO_CAB'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(415319557857400921)
,p_name=>'da_ESTADO_COMUNICA'
,p_event_sequence=>461
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_ESTADO_COMUNICADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(415319693257400922)
,p_event_id=>wwv_flow_imp.id(415319557857400921)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
':P59_B_FECHA_CONF_COM:=:P_COD_USUARIO;',
':P59_B_USUARIO_CONFIRM_COMER:=TRUNC(SYSDATE);',
'',
'',
'/*VERIFICACION*/',
'IF :P59_ESTADO_COMUNICADO=''S'' THEN',
':P59_ESTADO_CAB:=''VERIFICADO'';',
'ELSIF  :P59_ESTADO_COMUNICADO=''N'' THEN',
':P59_ESTADO_CAB:= ''VERIFICADO''; ',
'END IF;',
':P59_TIPO_PROCESO:=''VERIFICADO''; ',
'',
'END;'))
,p_attribute_02=>'P59_ESTADO_COMUNICADO'
,p_attribute_03=>'P59_B_USUARIO_CONFIRM_COMER,P59_B_FECHA_CONF_COM,P59_ESTADO_CAB,P59_TIPO_PROCESO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(432288942814518248)
,p_name=>'da_rechaza_estado_comunica'
,p_event_sequence=>462
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_ESTADO_COMUNICADO'
,p_condition_element=>'P59_ESTADO_COMUNICADO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(432289055797518249)
,p_event_id=>wwv_flow_imp.id(432288942814518248)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(529983114626481762)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(415319939150400925)
,p_name=>'da_rechazo'
,p_event_sequence=>482
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_ESTADO_RECHAZADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(415320025004400926)
,p_event_id=>wwv_flow_imp.id(415319939150400925)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
':P59_B_FECHA_RECHAZO:=:P_COD_USUARIO;',
':P59_B_USUARIO_RECHAZO:=TRUNC(SYSDATE);',
'',
'',
'/*VERIFICACION*/',
'IF :P59_ESTADO_RECHAZADO=''S'' THEN',
':P59_ESTADO_CAB:=''RECHAZADO''; ',
':P59_TIPO_PROCESO:=''RECHAZADO''; ',
'END IF;',
'',
'',
'END;'))
,p_attribute_02=>'P59_ESTADO_RECHAZADO'
,p_attribute_03=>'P59_B_FECHA_RECHAZO,P59_B_USUARIO_RECHAZO,P59_ESTADO_CAB,P59_TIPO_PROCESO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(251378869276991401)
,p_name=>'da_rechaza_estado_RECHAZA'
,p_event_sequence=>483
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_ESTADO_RECHAZADO'
,p_condition_element=>'P59_ESTADO_RECHAZADO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(251378908148991402)
,p_event_id=>wwv_flow_imp.id(251378869276991401)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(529983114626481762)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(415319790585400923)
,p_name=>'da_verificacion_mkt_1_1_1_1_1'
,p_event_sequence=>492
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_ESTADO_VERIFICACION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(415319868728400924)
,p_event_id=>wwv_flow_imp.id(415319790585400923)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
':P59_B_USUARIO_VERIFICACION:=:P_COD_USUARIO;',
':P59_B_FECHA_VERIFICACION:=TRUNC(SYSDATE);',
'',
'',
'/*VERIFICACION*/',
'IF :P59_ESTADO_VERIFICACION=''S'' THEN',
':P59_ESTADO_CAB:=''VERIFICADO'';',
'ELSIF  :P59_ESTADO_VERIFICACION=''N'' THEN',
':P59_ESTADO_CAB:= ''VERIFICADO''; ',
'END IF;',
':P59_TIPO_PROCESO:=''VERIFICADO''; ',
'',
'END;'))
,p_attribute_02=>'P59_ESTADO_VERIFICACION'
,p_attribute_03=>'P59_B_USUARIO_VERIFICACION,P59_B_FECHA_VERIFICACION,P59_TIPO_PROCESO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(415320104046400927)
,p_name=>'da_load'
,p_event_sequence=>502
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(415320254088400928)
,p_event_id=>wwv_flow_imp.id(415320104046400927)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#P59_ESTADO_CAB'').attr(''readonly'', true);',
'$(''#P59_ESTADO_CAB'').attr(''readonly'', true);',
'',
' $(''#P59_ESTADO_CAB'').attr(''readonly'', true);',
'    $(''#P59_ESTADO_CAB'').css(''pointer-events'',''none'');',
'    $(''#P59_ESTADO_CAB'').css(''opacity'',''.5'');',
'    $(''#P59_ESTADO_CAB'').off(''keydown'');',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(432288329235518242)
,p_name=>'da_VALIDACION_verificacion_n'
,p_event_sequence=>512
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_ESTADO_VERIFICACION'
,p_condition_element=>'P59_ESTADO_VERIFICACION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(432288431232518243)
,p_event_id=>wwv_flow_imp.id(432288329235518242)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(529983114626481762)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(415320348315400929)
,p_name=>'da_permiso_verificacion'
,p_event_sequence=>522
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_VERIFICACION_BRAND'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_when_cond=>'P59_VERIFICACION_BRAND'
,p_display_when_cond2=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(415320432121400930)
,p_event_id=>wwv_flow_imp.id(415320348315400929)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P59_ESTADO_VERIFICACION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(416472524110622103)
,p_name=>'da_permiso_CONFIRMA_COMERCIAL'
,p_event_sequence=>532
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_CONFIRMA_COMERCIAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_when_cond=>'P59_CONFIRMA_COMERCIAL'
,p_display_when_cond2=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(416472632645622104)
,p_event_id=>wwv_flow_imp.id(416472524110622103)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P59_ESTADO_COMUNICADO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(415322282763400948)
,p_name=>'da_permiso_RECHAZO'
,p_event_sequence=>542
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_RECHAZA_VERIFICACION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_when_cond=>'P59_RECHAZA_VERIFICACION'
,p_display_when_cond2=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(415322304448400949)
,p_event_id=>wwv_flow_imp.id(415322282763400948)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P59_ESTADO_RECHAZADO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(416472319301622101)
,p_name=>'da_permiso_GG'
,p_event_sequence=>552
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_AUTORIZA_GG'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_when_cond=>'P59_AUTORIZA_GG'
,p_display_when_cond2=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(416472455882622102)
,p_event_id=>wwv_flow_imp.id(416472319301622101)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P59_ESTADO_APROBADO_GG'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(415321993000400945)
,p_name=>'da_permiso_autorizacion_precios'
,p_event_sequence=>562
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_AUTORIZA_COMERCIAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_when_cond=>'P59_AUTORIZA_COMERCIAL'
,p_display_when_cond2=>'S'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(415322096338400946)
,p_event_id=>wwv_flow_imp.id(415321993000400945)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P59_ESTADO_APROBACION_PRECIOS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(415320520849400931)
,p_name=>'da_usuario_verificacion'
,p_event_sequence=>572
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_B_USUARIO_VERIFICACION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P59_B_USUARIO_VERIFICACION'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(415320687993400932)
,p_event_id=>wwv_flow_imp.id(415320520849400931)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P59_ESTADO_VERIFICACION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(415320785154400933)
,p_name=>'da_usuario_revisado_mkt'
,p_event_sequence=>582
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_B_USUARIO_REVISADO_MKT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P59_B_USUARIO_REVISADO_MKT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(415320891674400934)
,p_event_id=>wwv_flow_imp.id(415320785154400933)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P59_ESTADO_VALIDACION_COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(415320923077400935)
,p_name=>'da_usuario_aut_comercial'
,p_event_sequence=>592
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_B_USUARIO_AUT_COMERCIAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(415321004442400936)
,p_event_id=>wwv_flow_imp.id(415320923077400935)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P59_ESTADO_APROBACION_PRECIOS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(415321158018400937)
,p_name=>'da_usuario_conf_deposito'
,p_event_sequence=>602
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_B_USUARIO_CONFIRM_DEPO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P59_B_USUARIO_CONFIRM_DEPO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(415321274635400938)
,p_event_id=>wwv_flow_imp.id(415321158018400937)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P59_ESTADO_DISPO_DEPOSITO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(415321305973400939)
,p_name=>'da_usuario_CONFIRM_COMER'
,p_event_sequence=>612
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_B_USUARIO_CONFIRM_COMER'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P59_B_USUARIO_CONFIRM_COMER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(415321404362400940)
,p_event_id=>wwv_flow_imp.id(415321305973400939)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P59_ESTADO_COMUNICADO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(415321568998400941)
,p_name=>'da_usuario_aut_admin'
,p_event_sequence=>622
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_B_USUARIO_AUT_ADMIN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P59_B_USUARIO_AUT_ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(415321633193400942)
,p_event_id=>wwv_flow_imp.id(415321568998400941)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P59_ESTADO_APROBADO_GG'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(415321763502400943)
,p_name=>'da_usuario_rechazo'
,p_event_sequence=>632
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_B_USUARIO_RECHAZO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P59_B_USUARIO_RECHAZO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(415321878544400944)
,p_event_id=>wwv_flow_imp.id(415321763502400943)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P59_ESTADO_RECHAZADO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(417072423957643350)
,p_name=>'DA_COMENTAR'
,p_event_sequence=>642
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(417071084944643336)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(417283671807863204)
,p_name=>'da_articulo'
,p_event_sequence=>652
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_A_COD_ARTICULO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(417283762209863205)
,p_event_id=>wwv_flow_imp.id(417283671807863204)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'',
'begin ',
'',
'BEGIN select cod_art_corto  ',
'INTO :p59_a_cod_art_corto',
'from st_articulos where cod_empresa=:p_cod_empresa and cod_articulo=:P59_A_COD_ARTICULO;',
'exception when others then',
':p59_a_cod_art_corto:=null;',
'',
'',
'end;',
'BEGIN',
'  SELECT  ( (PRECIO_web_empresa_APEX(:p_cod_empresa,:P59_A_COD_ARTICULO,',
'                         ''889'',',
'                         ''1'',',
'                         0))) PROCESO',
'    INTO :P59_A_ULTIMO_PRECIO_LISTA',
'    FROM DUAL;',
'',
'    end;',
'',
'select a.costo_prom',
'          into :P59_A_COSTO_UNITARIO',
'          from st_articulos a',
'         where a.cod_empresa = :P_COD_EMPRESA',
'           and a.cod_articulo = :P59_A_COD_ARTICULO;',
'           EXCEPTION WHEN OTHERS THEN',
'           :P59_A_COSTO_UNITARIO:=0;',
'',
'    end;'))
,p_attribute_02=>'P59_A_COD_ARTICULO'
,p_attribute_03=>'P59_A_ULTIMO_PRECIO_LISTA,P59_A_COSTO_UNITARIO,P59_A_COD_ART_CORTO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(419453264663055809)
,p_event_id=>wwv_flow_imp.id(417283671807863204)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(417068351801643309)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(419453338044055810)
,p_event_id=>wwv_flow_imp.id(417283671807863204)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(417069304197643319)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(417284046741863208)
,p_name=>'da_calculo_margen'
,p_event_sequence=>662
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_A_PRECIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(417284100322863209)
,p_event_id=>wwv_flow_imp.id(417284046741863208)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare  ',
'vutilidad number;',
'vmargen number;',
'vprecio number;',
'vcosto  number;',
'begin  ',
'vprecio:=ROUND(to_number(replace(:P59_A_PRECIO,''.'',null))/1.1);',
'vcosto :=to_number(replace(:P59_A_COSTO_UNITARIO,''.'',null));',
'vutilidad:= vprecio-vcosto;',
'vmargen:= vutilidad/vprecio*100;',
':P59_A_MARGEN:=round(vmargen,2);',
'exception when others then',
':P59_A_MARGEN:=sqlerrm;',
'end;  '))
,p_attribute_02=>'P59_A_PRECIO,P59_A_COSTO_UNITARIO'
,p_attribute_03=>'P59_A_MARGEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(417284290548863210)
,p_name=>'da_calculoprecio'
,p_event_sequence=>672
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_A_MARGEN'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(417284329001863211)
,p_event_id=>wwv_flow_imp.id(417284290548863210)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare  ',
'vutilidad number;',
'',
'vprecio number;',
'vcosto  number;',
'vmargen number;',
'begin  ',
'vmargen:=to_number(replace(:P59_A_MARGEN,''.'',null))/100;',
'vcosto :=to_number(replace(:P59_A_COSTO_UNITARIO,''.'',null));',
'',
'',
'vprecio:= round((vcosto/(1-vmargen)*1.1));',
':P59_A_PRECIO:=round(vprecio);',
'exception when others then',
':P59_A_PRECIO:=sqlerrm;',
'end;  '))
,p_attribute_02=>'P59_A_COSTO_UNITARIO,P59_A_MARGEN'
,p_attribute_03=>'P59_A_PRECIO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(450856049116357816)
,p_name=>'da_solo_numeros_margen'
,p_event_sequence=>682
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_A_MARGEN'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(450856112236357817)
,p_event_id=>wwv_flow_imp.id(450856049116357816)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!soloNumerosydecimales(event)){',
'      event.preventDefault();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(417284466001863212)
,p_name=>'da_descuento_d1'
,p_event_sequence=>692
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_DESCUENTO_DET1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(417284528792863213)
,p_event_id=>wwv_flow_imp.id(417284466001863212)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare  ',
'vutilidad number;',
'vmargen number;',
'vprecio number;',
'vprecio_descuento number;',
'vcosto  number;',
'',
'begin  ',
'vprecio:=round(to_number(replace(:P59_A_PRECIO,''.'',null)));',
':P59_PRECIO_LISTA_D1:=vprecio;',
'vprecio_descuento:=vprecio*((100-:P59_DESCUENTO_DET1)/100);',
':P59_PRECIO_NETO_D1:=vprecio_descuento;',
'vcosto :=to_number(replace(:P59_A_COSTO_UNITARIO,''.'',null));',
'vutilidad:= (vprecio_descuento/1.1)-vcosto;',
'vmargen:= vutilidad/(vprecio_descuento/1.1)*100;',
':p59_margen_d1:=round(vmargen,2);',
'exception when others then',
':p59_margen_d1:=0;',
'end;  '))
,p_attribute_02=>'P59_A_PRECIO,P59_DESCUENTO_DET1'
,p_attribute_03=>'P59_PRECIO_NETO_D1,P59_MARGEN_D1,P59_PRECIO_LISTA_D1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(417284615618863214)
,p_name=>'da_descuento_d2'
,p_event_sequence=>702
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_DESCUENTO_DET2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(417284769001863215)
,p_event_id=>wwv_flow_imp.id(417284615618863214)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare  ',
'vutilidad number;',
'vmargen number;',
'vprecio number;',
'vprecio_descuento number;',
'vcosto  number;',
'',
'begin  ',
'vprecio:=round(to_number(replace(:P59_A_PRECIO,''.'',null)));',
':P59_PRECIO_LISTA_D2:=vprecio;',
'vprecio_descuento:=vprecio*((100-:P59_DESCUENTO_DET2)/100);',
':P59_PRECIO_NETO_D2:=vprecio_descuento;',
'vcosto :=to_number(replace(:P59_A_COSTO_UNITARIO,''.'',null));',
'vutilidad:= (vprecio_descuento/1.1)-vcosto;',
'vmargen:= vutilidad/(vprecio_descuento/1.1)*100;',
':p59_margen_d2:=round(vmargen,2);',
'exception when others then',
':p59_margen_d2:=0;',
'end;  '))
,p_attribute_02=>'P59_A_PRECIO,P59_DESCUENTO_DET2'
,p_attribute_03=>'P59_PRECIO_NETO_D2,P59_MARGEN_D2,P59_PRECIO_LISTA_D2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(417284896934863216)
,p_name=>'da_descuento_d3'
,p_event_sequence=>712
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_DESCUENTO_DET3'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(417284964997863217)
,p_event_id=>wwv_flow_imp.id(417284896934863216)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare  ',
'vutilidad number;',
'vmargen number;',
'vprecio number;',
'vprecio_descuento number;',
'vcosto  number;',
'',
'begin  ',
'vprecio:=round(to_number(replace(:P59_A_PRECIO,''.'',null)));',
':P59_PRECIO_LISTA_D3:=vprecio;',
'vprecio_descuento:=vprecio*((100-:P59_DESCUENTO_DET3)/100);',
':P59_PRECIO_NETO_D3:=vprecio_descuento;',
'vcosto :=to_number(replace(:P59_A_COSTO_UNITARIO,''.'',null));',
'vutilidad:= vprecio_descuento/1.1-vcosto;',
'vmargen:= vutilidad/(vprecio_descuento/1.1)*100;',
':p59_margen_d3:=round(vmargen,2);',
'exception when others then',
':p59_margen_d3:=0;',
'end;  '))
,p_attribute_02=>'P59_A_PRECIO,P59_DESCUENTO_DET3'
,p_attribute_03=>'P59_PRECIO_NETO_D3,P59_MARGEN_D3,P59_PRECIO_LISTA_D3'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(417285010916863218)
,p_name=>'da_competencia_n1'
,p_event_sequence=>722
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_PRECIO_COMPETENCIA_N1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(417285150360863219)
,p_event_id=>wwv_flow_imp.id(417285010916863218)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare  ',
'vutilidad number;',
'vmargen number;',
'vprecio number;',
'vprecio_competencia number;',
'vcosto  number;',
'',
'begin  ',
'vprecio:=to_number(replace(:P59_PRECIO_NETO_D1,''.'',null));',
'vprecio_competencia:=to_number(replace(:P59_PRECIO_COMPETENCIA_N1,''.'',null));',
' ',
' ',
'vmargen:= (vprecio_competencia-vprecio)*100/vprecio;',
':P59_PRECIO_DIFE_COMPETENCIA_N1:=round(vmargen,2);',
'exception when others then',
':P59_PRECIO_DIFE_COMPETENCIA_N1:=0;',
'end;  '))
,p_attribute_02=>'P59_A_PRECIO,P59_PRECIO_COMPETENCIA_N1,P59_PRECIO_NETO_D1'
,p_attribute_03=>'P59_PRECIO_DIFE_COMPETENCIA_N1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(417286990611863237)
,p_name=>'da_competencia_n3'
,p_event_sequence=>732
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_PRECIO_COMPETENCIA_N3'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(417287098060863238)
,p_event_id=>wwv_flow_imp.id(417286990611863237)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare  ',
'vutilidad number;',
'vmargen number;',
'vprecio number;',
'vprecio_competencia number;',
'vcosto  number;',
'',
'begin  ',
'vprecio:=to_number(replace(:P59_PRECIO_NETO_D3,''.'',null));',
'vprecio_competencia:=to_number(replace(:P59_PRECIO_COMPETENCIA_N3,''.'',null));',
' ',
' ',
'vmargen:= (vprecio_competencia-vprecio)*100/vprecio;',
':P59_PRECIO_DIFE_COMPETENCIA_N3:=round(vmargen,2);',
'exception when others then',
':P59_PRECIO_DIFE_COMPETENCIA_N3:=0;',
'end;  '))
,p_attribute_02=>'P59_A_PRECIO,P59_PRECIO_COMPETENCIA_N3,P59_PRECIO_NETO_D3'
,p_attribute_03=>'P59_PRECIO_DIFE_COMPETENCIA_N3'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(417285253117863220)
,p_name=>'da_competencia_n2'
,p_event_sequence=>742
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_PRECIO_COMPETENCIA_N2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(417285327397863221)
,p_event_id=>wwv_flow_imp.id(417285253117863220)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare  ',
'vutilidad number;',
'vmargen number;',
'vprecio number;',
'vprecio_competencia number;',
'vcosto  number;',
'',
'begin  ',
'vprecio:=to_number(replace(:P59_PRECIO_NETO_D2,''.'',null));',
'vprecio_competencia:=to_number(replace(:P59_PRECIO_COMPETENCIA_N2,''.'',null));',
' ',
' ',
'vmargen:= (vprecio_competencia-vprecio)*100/vprecio;',
':P59_PRECIO_DIFE_COMPETENCIA_n2:=round(vmargen,2);',
'exception when others then',
':P59_PRECIO_DIFE_COMPETENCIA_N2:=0;',
'end;  ',
'',
'',
' '))
,p_attribute_02=>'P59_PRECIO_COMPETENCIA_N2,P59_A_PRECIO,P59_PRECIO_NETO_D2'
,p_attribute_03=>'P59_PRECIO_DIFE_COMPETENCIA_N2'
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
 p_id=>wwv_flow_imp.id(417285470540863222)
,p_name=>'DA_ART_COMPE'
,p_event_sequence=>752
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(416477095658622148)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(417285536855863223)
,p_event_id=>wwv_flow_imp.id(417285470540863222)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'vprecio number:=to_number(replace(:P59_A_PRECIO,''.'',null));',
'vprecio_competencia  number:=to_number(replace(:P59_PRECIO_COMPETENCIA_N1,''.'',null));',
'BEGIN',
'',
'apex_collection.add_member(p_collection_name => ''DETALLE_COMPETENCIA'',',
'                                     P_C001            => :P59_MARCA_COMPETENCIA_N1,',
'                                     P_C002            => :P59_PRECIO_COMPETENCIA_N1,',
'                                     P_C003            => :P59_PRECIO_DIFE_COMPETENCIA_N1,',
'                                     P_C004            =>''N1'',',
'                                      P_C005            =>:P59_A_PRECIO,',
'                                       P_C006            => (vprecio)-vprecio_competencia,',
'                                        P_C007            =>null,',
'                                         P_C008            =>:P59_A_COD_ARTICULO);',
'END;',
'',
' '))
,p_attribute_02=>'P59_MARCA_COMPETENCIA_N1,P59_PRECIO_COMPETENCIA_N1,P59_PRECIO_DIFE_COMPETENCIA_N1,P59_A_COD_ARTICULO,P59_A_PRECIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(417285693476863224)
,p_event_id=>wwv_flow_imp.id(417285470540863222)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(416477159419622149)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(417285819989863226)
,p_event_id=>wwv_flow_imp.id(417285470540863222)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'                                     :P59_MARCA_COMPETENCIA_N1 :=null;',
' :P59_PRECIO_COMPETENCIA_N1 :=null;',
'  :P59_PRECIO_DIFE_COMPETENCIA_N1 :=null;',
'                                      ',
'END;'))
,p_attribute_03=>'P59_MARCA_COMPETENCIA_N1,P59_PRECIO_DIFE_COMPETENCIA_N1,P59_PRECIO_COMPETENCIA_N1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(417285980065863227)
,p_name=>'DA_ART_COMPE_1'
,p_event_sequence=>762
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(417068217440643308)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(417286017891863228)
,p_event_id=>wwv_flow_imp.id(417285980065863227)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'vprecio number:=to_number(replace(:P59_PRECIO_NETO_D2,''.'',null))*1.1;',
'vprecio_competencia  number:=to_number(replace(:P59_PRECIO_COMPETENCIA_N2,''.'',null));',
'BEGIN',
'apex_collection.add_member(p_collection_name => ''DETALLE_COMPETENCIA'',',
'                                     P_C001            => :P59_MARCA_COMPETENCIA_N2,',
'                                     P_C002            => :P59_PRECIO_COMPETENCIA_N2,',
'                                     P_C003            => :P59_PRECIO_DIFE_COMPETENCIA_N2,',
'                                     P_C004            =>''N2'',',
'                                       P_C005            => vprecio,',
'                                       P_C006            =>(vprecio)-vprecio_competencia,',
'                                        P_C007            =>null,',
'                                         P_C008            =>:P59_A_COD_ARTICULO);',
'END;',
'',
'  '))
,p_attribute_02=>'P59_MARCA_COMPETENCIA_N2,P59_PRECIO_COMPETENCIA_N2,P59_PRECIO_DIFE_COMPETENCIA_N2,P59_A_COD_ARTICULO,P59_A_PRECIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(417286111010863229)
,p_event_id=>wwv_flow_imp.id(417285980065863227)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(417068351801643309)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(417286214967863230)
,p_event_id=>wwv_flow_imp.id(417285980065863227)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'                                     :P59_MARCA_COMPETENCIA_N2 :=null;',
' :P59_PRECIO_COMPETENCIA_N2 :=null;',
'  :P59_PRECIO_DIFE_COMPETENCIA_N2 :=null;',
'                                      ',
'END;'))
,p_attribute_03=>'P59_MARCA_COMPETENCIA_N2,P59_PRECIO_DIFE_COMPETENCIA_N2,P59_PRECIO_COMPETENCIA_N2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(417286533499863233)
,p_name=>'DA_ART_COMPE_3'
,p_event_sequence=>772
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(417069276904643318)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(417286663203863234)
,p_event_id=>wwv_flow_imp.id(417286533499863233)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' declare ',
'vprecio number:=to_number(replace(:P59_PRECIO_NETO_D3,''.'',null))*1.1;',
'vprecio_competencia  number:=to_number(replace(:P59_PRECIO_COMPETENCIA_N3,''.'',null));',
'BEGIN',
'apex_collection.add_member(p_collection_name => ''DETALLE_COMPETENCIA'',',
'                                     P_C001            => :P59_MARCA_COMPETENCIA_N3,',
'                                     P_C002            => :P59_PRECIO_COMPETENCIA_N3,',
'                                     P_C003            => :P59_PRECIO_DIFE_COMPETENCIA_N3,',
'                                     P_C004            =>''N3'',',
'                                          P_C005            => vprecio,',
'                                       P_C006            =>(vprecio)-vprecio_competencia,',
'                                        P_C007            =>null,',
'                                         P_C008            =>:P59_A_COD_ARTICULO);',
'END;',
'',
' ',
'  '))
,p_attribute_02=>'P59_MARCA_COMPETENCIA_N3,P59_PRECIO_COMPETENCIA_N3,P59_PRECIO_DIFE_COMPETENCIA_N3,P59_A_COD_ARTICULO,P59_A_PRECIO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(417286715304863235)
,p_event_id=>wwv_flow_imp.id(417286533499863233)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(417069304197643319)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(417286824074863236)
,p_event_id=>wwv_flow_imp.id(417286533499863233)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'                                     :P59_MARCA_COMPETENCIA_N3 :=null;',
' :P59_PRECIO_COMPETENCIA_N3 :=null;',
'  :P59_PRECIO_DIFE_COMPETENCIA_N3 :=null;',
'                                      ',
'END;'))
,p_attribute_03=>'P59_MARCA_COMPETENCIA_N3,P59_PRECIO_DIFE_COMPETENCIA_N3,P59_PRECIO_COMPETENCIA_N3'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(419452525844055802)
,p_name=>'refresh_seguimientos'
,p_event_sequence=>782
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(419452407160055801)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(419452637668055803)
,p_event_id=>wwv_flow_imp.id(419452525844055802)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(417070146638643327)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(419453078671055807)
,p_name=>'da_actualiza_region'
,p_event_sequence=>792
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_NRO_PROMO_CAB'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(419453135453055808)
,p_event_id=>wwv_flow_imp.id(419453078671055807)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(417070146638643327)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(432287708706518236)
,p_name=>'da_cancelar_comentario'
,p_event_sequence=>802
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(251265458360040057)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(251379171878991404)
,p_event_id=>wwv_flow_imp.id(432287708706518236)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(432287863753518237)
,p_event_id=>wwv_flow_imp.id(432287708706518236)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(529983114626481762)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(432287966170518238)
,p_name=>'New'
,p_event_sequence=>812
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(251265862192040058)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(432288068380518239)
,p_event_id=>wwv_flow_imp.id(432287966170518238)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'vretorno varchar2(400);',
'VESTADO  varchar2(400);',
'begin',
'',
'IF :P59_COMENTARIO IS NULL THEN',
'  raise_application_error(-20001,''Debe agregar un comentario para poder avanzar '');',
'END IF;',
'',
'begin',
'   -- :P59_TIPO_PROCESO',
'  if :P59_TIPO_PROCESO =''CREADO'' THEN VESTADO:=''Creado''',
'        ; elsif:P59_TIPO_PROCESO =''VERIFICADO'' THEN VESTADO:=''Analisis MKT'' ',
'         ;elsif :P59_TIPO_PROCESO =''AUTORIZADOMKT'' THEN VESTADO:=''Validacion Comercial'' ',
'          ; elsif:P59_TIPO_PROCESO =''AUTORIZADOCOM'' THEN VESTADO:=''Validacion Comercial'' ',
'           ;elsif :P59_TIPO_PROCESO =''AUTORIZADOCOM'' THEN VESTADO:=''Aprobacion de Precios'' ',
'            ;elsif :P59_TIPO_PROCESO =''CONFIRMADODEP'' THEN VESTADO:=''Disponibilidad Deposito'' ',
'             ; elsif:P59_TIPO_PROCESO =''CONFIRMADO_COMERCIAL'' THEN VESTADO:=''Comunicado'' ',
'              ; elsif:P59_TIPO_PROCESO =''AUTORIZADOADM'' THEN VESTADO:=''Autorizado GG'' ',
'               ; elsif:P59_TIPO_PROCESO =''RECHAZADO'' THEN VESTADO:= ''Rechazado'';end if;',
'                ',
'            inv.SP_seguimiento_fijacion(:p_COD_EMPRESA,',
'                              :P59_NRO_PROMO_CAB,',
'                             ''Rechazo de  ''||VESTADO || '' Comentario: ''||:P59_COMENTARIO,',
'                              vretorno);                      ',
'',
'end;',
'',
' end;'))
,p_attribute_02=>'P59_COMENTARIO,P59_NRO_PROMO_CAB,P59_ESTADO_CAB,P59_TIPO_PROCESO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(251379327585991406)
,p_event_id=>wwv_flow_imp.id(432287966170518238)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
':P59_TIPO_PROCESO:=null;',
'end;'))
,p_attribute_03=>'P59_TIPO_PROCESO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(432288183731518240)
,p_event_id=>wwv_flow_imp.id(432287966170518238)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(529983114626481762)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(413656797071543149)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_guarda_verificacion'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'   ',
'begin',
'  -- Call the procedure',
'  FVMRGPRO.pr_guarda_verificacion(PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                    PI_NRO_ACUERDO => :P59_NRO_PROMO_CAB,',
'                                    PO_FECHA => :P59_FECHA_CAB,',
'                                    PO_COD_MONEDA => :P59_COD_MONEDA_CAB,',
'                                    PO_TIP_CAMBIO => :P59_TIP_CAMBIO_CAB,',
'                                    PO_NRO_DESPACHO => :P59_DESPACHO_CAB,',
'                                    PO_OBSERVACION => :P59_OBSERVACION_CAB,',
'                                    PO_EMBARQUE => :P59_EMBARQUE_CAB,',
'                                    PO_ESTADO => :P59_ESTADO_CAB,',
'                                    PO_DESCUENTO_1 => :P59_DESCUENTO_1,',
'                                    PO_DESCUENTO_2 => :P59_DESCUENTO_2,',
'                                    PO_COD_USUARIO => :P59_B_COD_USUARIO,',
'                                    PO_FECHA_ALTA => :P59_B_FECHA_ALTA,',
'                                    PO_USUARIO_VERIFICACION => :P59_B_USUARIO_VERIFICACION,',
'                                    PO_FECHA_VERIFICACION => :P59_B_FECHA_VERIFICACION,',
'                                    PO_USUARIO_REVISADO_MKT => :P59_B_USUARIO_REVISADO_MKT,',
'                                    PO_FECHA_REVISADO_MKT => :P59_B_FECHA_USUARIO_REVISADO,',
'                                    PO_USUARIO_AUT_ADMINISTRACION => :P59_B_USUARIO_AUT_ADMIN,',
'                                    PO_FECHA_AUT_ADMINISTRACION => :P59_B_USUARIO_AUT_ADMIN,',
'                                    PO_USUARIO_AUT_COMERCIAL => :P59_B_USUARIO_AUT_COMERCIAL,',
'                                    PO_FECHA_AUT_COMERCIAL => :P59_B_FECHA_AUT_COM,',
'                                    PO_USUARIO_CONFIRMADO_DEPOSITO => :P59_B_USUARIO_CONFIRM_DEPO,',
'                                    PO_FECHA_CONFIRMADO_DEPOSITO => :P59_B_FECHA_CONF_DEPO,',
'                                    PO_USU_CONFIRMADO_COMERCIAL => :P59_B_USUARIO_CONFIRM_COMER,',
'                                    PO_FECHA_CONFIRMADO_COMERCIAL => :P59_B_FECHA_CONF_COM,',
'                                    PO_USUARIO_RECHAZO => :P59_B_USUARIO_RECHAZO,',
'                                    PO_FECHA_RECHAZO => :P59_B_FECHA_RECHAZO,',
'                                      PO_VERIFICADO => :P59_ESTADO_VERIFICACION,',
'                                    PO_VALIDACION_COMERCIAL => :P59_ESTADO_VALIDACION_COM,',
'                                    PO_APROBACION_PRECIOS => :P59_ESTADO_APROBACION_PRECIOS,',
'                                    PO_DISPONIBILIDAD_DEPOSITO => :P59_ESTADO_DISPO_DEPOSITO,',
'                                    PO_COMUNICADO => :P59_ESTADO_COMUNICADO,',
'                                    PO_APROBADO_GG => :P59_ESTADO_APROBADO_GG,',
'                                    PO_RECHAZADO => :P59_ESTADO_RECHAZADO);',
':P59_NRO_PROMO_CAB:=:P59_PARAM_NRO_PROMO;                                    ',
'  EXCEPTION',
'            WHEN OTHERS THEN',
'                 ',
'RAISE_APPLICATION_ERROR(-20000, SQLERRM|| ''pr_actualiza_acuerdo'');',
'',
'end;',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error al guardar los datos'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(48548083313631613)
,p_process_success_message=>'Los datos se guardaron exitosamente - &P59_NRO_PROMO_CAB.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(413656824934543150)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_actualiza'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'   ',
'begin',
'  -- Call the procedure',
'  FVMRGPRO.pr_actualiza_verificacion(PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                    PI_NRO_ACUERDO => :P59_NRO_PROMO_CAB,',
'                                    PO_FECHA => :P59_FECHA_CAB,',
'                                    PO_COD_MONEDA => :P59_COD_MONEDA_CAB,',
'                                    PO_TIP_CAMBIO => :P59_TIP_CAMBIO_CAB,',
'                                    PO_NRO_DESPACHO => :P59_DESPACHO_CAB,',
'                                    PO_OBSERVACION => :P59_OBSERVACION_CAB,',
'                                    PO_EMBARQUE => :P59_EMBARQUE_CAB,',
'                                    PO_ESTADO => :P59_ESTADO_CAB,',
'                                    PO_DESCUENTO_1 => :P59_DESCUENTO_1,',
'                                    PO_DESCUENTO_2 => :P59_DESCUENTO_2,',
'                                    PO_COD_USUARIO => :P59_B_COD_USUARIO,',
'                                    PO_FECHA_ALTA => :P59_B_FECHA_ALTA,',
'                                    PO_USUARIO_VERIFICACION => :P59_B_USUARIO_VERIFICACION,',
'                                    PO_FECHA_VERIFICACION => :P59_B_FECHA_VERIFICACION,',
'                                    PO_USUARIO_REVISADO_MKT => :P59_B_USUARIO_REVISADO_MKT,',
'                                    PO_FECHA_REVISADO_MKT => :P59_B_FECHA_USUARIO_REVISADO,',
'                                    PO_USUARIO_AUT_ADMINISTRACION => :P59_B_USUARIO_AUT_ADMIN,',
'                                    PO_FECHA_AUT_ADMINISTRACION => :P59_B_FECHA_USUARIO_AUT_ADMIN,',
'                                    PO_USUARIO_AUT_COMERCIAL => :P59_B_USUARIO_AUT_COMERCIAL,',
'                                    PO_FECHA_AUT_COMERCIAL => :P59_B_FECHA_AUT_COM,',
'                                    PO_USUARIO_CONFIRMADO_DEPOSITO => :P59_B_USUARIO_CONFIRM_DEPO,',
'                                    PO_FECHA_CONFIRMADO_DEPOSITO => :P59_B_FECHA_CONF_DEPO,',
'                                    PO_USU_CONFIRMADO_COMERCIAL => :P59_B_USUARIO_CONFIRM_COMER,',
'                                    PO_FECHA_CONFIRMADO_COMERCIAL => :P59_B_FECHA_CONF_COM,',
'                                    PO_USUARIO_RECHAZO => :P59_B_USUARIO_RECHAZO,',
'                                    PO_FECHA_RECHAZO => :P59_B_FECHA_RECHAZO,',
'                                      PO_VERIFICADO => :P59_ESTADO_VERIFICACION,',
'                                    PO_VALIDACION_COMERCIAL => :P59_ESTADO_VALIDACION_COM,',
'                                    PO_APROBACION_PRECIOS => :P59_ESTADO_APROBACION_PRECIOS,',
'                                    PO_DISPONIBILIDAD_DEPOSITO => :P59_ESTADO_DISPO_DEPOSITO,',
'                                    PO_COMUNICADO => :P59_ESTADO_COMUNICADO,',
'                                    PO_APROBADO_GG => :P59_ESTADO_APROBADO_GG,',
'                                    PO_RECHAZADO => :P59_ESTADO_RECHAZADO);',
'                                   ',
'  EXCEPTION',
'            WHEN OTHERS THEN',
'                 ',
'RAISE_APPLICATION_ERROR(-20000, SQLERRM|| ''pr_actualiza_verificacion'');',
'',
'',
'end;',
'',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error al guardar los datos'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(413656620101543148)
,p_process_success_message=>'Los datos se actualizaron exitosamente - &P59_NRO_PROMO_CAB.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(103968038193984624)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'pr_limpiar'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when=>'P59_PARAM_NRO_PROMO'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(45804860822056644)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PR_INIT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P59_COD_MODULO := NVL(:P_COD_MODULO,''FV'');',
':P59_COD_USUARIO := NVL(:P_COD_USUARIO,USER);',
':P_COD_EMPRESA := (:P_COD_EMPRESA);',
':P59_NOM_EMPRESA := NVL(:P_NOM_EMPRESA,NULL);',
':P59_COD_SUCURSAL := NVL(:P_COD_SUCURSAL,''01'');',
':P59_NOM_SUCURSAL := NVL(:P_NOM_SUCURSAL,NULL);',
':P59_COD_FORMA:=''FVMRGPRO'';',
':P59_RECHAZA_VERIFICACION := busca_permiso( :P_COD_EMPRESA,',
'                                           :P59_COD_FORMA,',
'                                           :P59_COD_USUARIO,',
'                                           ''RECHAZA_VERIFICACION'' );      ',
'',
':P59_AUTORIZA_GG := busca_permiso( :P_COD_EMPRESA,',
'                                           :P59_COD_FORMA,',
'                                           :P59_COD_USUARIO,',
'                                           ''AUTORIZA_GG'' );                                             ',
' :P59_VERIFICACION_BRAND := busca_permiso( :P_COD_EMPRESA,',
'                                           :P59_COD_FORMA,',
'                                           :P59_COD_USUARIO,',
'                                           ''VERIFICACION_BRAND'' );      ',
'                                               ',
':P59_AUTORIZA_MKT := busca_permiso( :P_COD_EMPRESA,',
'                                   :P59_COD_FORMA,',
'                                   :P59_COD_USUARIO,',
'                                               ''AUTORIZA_MKT'' );  ',
':P59_AUTORIZA_COMERCIAL := busca_permiso( :P_COD_EMPRESA,',
'                                           :P59_COD_FORMA,',
'                                           :P59_COD_USUARIO,',
'                                               ''AUTORIZA_COMERCIAL'' ); ',
'  :P59_CAMBIA_ESTADO := busca_permiso( :P_COD_EMPRESA,',
'                                               :P59_COD_FORMA,',
'                                               :P59_COD_USUARIO,',
'                                               ''CAMBIA_ESTADO'' );    ',
'',
':P59_CONFIRMA_COMERCIAL := busca_permiso(:P_COD_EMPRESA,',
'                                           :P59_COD_FORMA,',
'                                           :P59_COD_USUARIO,',
'                                               ''CONFIRMA_COMERCIAL'' ); ',
':P59_AUX_PRECIO_CERO := NULL;',
':P59_MOSTRAR_BTN_CONFIRMAR := 0;',
':P59_AUX_CONTROL_REPORTE := NULL;',
':P59_AUX_CTROL_REPORTE_STMANPRO := NULL;',
'',
'if (:P59_P_NRO_PROMO IS NOT NULL)THEN   ',
'    :P59_NRO_PROMO_LINK := :P59_P_NRO_PROMO ;        ',
'',
'    FVMRGPRO.pr_crear_collection_cabecera(PI_NRO_PROMO => :P59_P_NRO_PROMO,',
'                                          PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                          PO_ESTADO => :P59_ESTADO);',
'',
'    FVMRGPRO.pr_crear_collection(:p_cod_empresa,:P59_P_NRO_PROMO) ;',
'ELSE',
'    --:P59_NRO_PROMO_LINK := null;',
'    apex_collection.create_or_truncate_collection(p_collection_name => ''CABECERA'');',
'    apex_collection.create_or_truncate_collection(p_collection_name => ''VERIFICACION_MARGENES'');',
'    :P59_FECHA  := sysdate;',
'    :P59_COD_MONEDA  := ''1'';',
'    :P59_DESCUENTO_2 := 12.7;',
'    :P59_DESCUENTO_1 := 10;',
'    :P59_ESTADO :=''CREADO'';',
'    BEGIN',
'        select descripcion ,siglas',
'          into :P59_MONEDA , :P59_SIGNO ',
'          from monedas',
'         where cod_moneda = :P59_COD_MONEDA;',
'      EXCEPTION ',
'        when others then',
'          :P59_MONEDA := NULL; ',
'      END;',
'   ',
'        apex_collection.add_member(',
'            p_collection_name => ''CABECERA'',',
'            P_C001 => :P_COD_EMPRESA ,--COD_EMPRESA,',
'            P_C002 => NVL(:P59_NRO_PROMO,0),                     ',
'            P_C003 => :P59_COD_MONEDA,',
'            P_C004 => :P59_MONEDA,',
'            P_C005 => :P59_NRO_DESPACHO,',
'            P_C006 => :P59_ESTADO,',
'            P_C007 => :P59_FECHA,',
'            P_C008 => :P59_TIPO_CAMBIO,',
'            P_C009 => :P59_OBSERVACION,',
'            P_C010 => :P59_NRO_EMBARQUE,',
'            P_C011 => :P59_COD_USUARIO,  ',
'            P_C019 => SYSDATE,',
'            P_C027 => :P59_DESCUENTO_1, ',
'            P_C028 => :P59_DESCUENTO_2, ',
'            P_c030 => ''A'',',
'            P_C031 => :P59_SIGNO  );',
'END IF;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(413656563980543147)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'carga_datos'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (:P59_PARAM_NRO_PROMO IS NOT NULL)THEN   ',
'    :P59_NRO_PROMO_LINK := :P59_P_NRO_PROMO ;        ',
'',
'    FVMRGPRO.pr_crear_collection_cabecera(PI_NRO_PROMO => :P59_PARAM_NRO_PROMO,',
'                                          PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                          PO_ESTADO => :P59_ESTADO);',
'',
'    FVMRGPRO.pr_crear_collection(:p_cod_empresa,:P59_PARAM_NRO_PROMO) ;',
'',
'begin',
'  -- Call the procedure',
'  FVMRGPRO.pr_consulta_verificacion(PI_COD_EMPRESA => :P_COD_EMPRESA,',
'                                    PI_NRO_ACUERDO => :P59_PARAM_NRO_PROMO,',
'                                    PO_FECHA => :P59_FECHA_CAB,',
'                                    PO_COD_MONEDA => :P59_COD_MONEDA_CAB,',
'                                    PO_TIP_CAMBIO => :P59_TIP_CAMBIO_CAB,',
'                                    PO_NRO_DESPACHO => :P59_DESPACHO_CAB,',
'                                    PO_OBSERVACION => :P59_OBSERVACION_CAB,',
'                                    PO_EMBARQUE => :P59_EMBARQUE_CAB,',
'                                        PO_nro_oc => :p59_nro_oc,',
'                                    PO_ESTADO => :P59_ESTADO_CAB,',
'                                    PO_DESCUENTO_1 => :P59_DESCUENTO_1,',
'                                    PO_DESCUENTO_2 => :P59_DESCUENTO_2,',
'                                    PO_COD_USUARIO => :P59_B_COD_USUARIO,',
'                                    PO_FECHA_ALTA => :P59_B_FECHA_ALTA,',
'                                    PO_USUARIO_VERIFICACION => :P59_B_USUARIO_VERIFICACION,',
'                                    PO_FECHA_VERIFICACION => :P59_B_FECHA_VERIFICACION,',
'                                    PO_USUARIO_REVISADO_MKT => :P59_B_USUARIO_REVISADO_MKT,',
'                                    PO_FECHA_REVISADO_MKT => :P59_B_FECHA_USUARIO_REVISADO,',
'                                    PO_USUARIO_AUT_ADMINISTRACION => :P59_B_USUARIO_AUT_ADMIN,',
'                                    PO_FECHA_AUT_ADMINISTRACION => :P59_B_USUARIO_AUT_ADMIN,',
'                                    PO_USUARIO_AUT_COMERCIAL => :P59_B_USUARIO_AUT_COMERCIAL,',
'                                    PO_FECHA_AUT_COMERCIAL => :P59_B_FECHA_AUT_COM,',
'                                    PO_USUARIO_CONFIRMADO_DEPOSITO => :P59_B_USUARIO_CONFIRM_DEPO,',
'                                    PO_FECHA_CONFIRMADO_DEPOSITO => :P59_B_FECHA_CONF_DEPO,',
'                                    PO_USU_CONFIRMADO_COMERCIAL => :P59_B_USUARIO_CONFIRM_COMER,',
'                                    PO_FECHA_CONFIRMADO_COMERCIAL => :P59_B_FECHA_CONF_COM,',
'                                    PO_USUARIO_RECHAZO => :P59_B_USUARIO_RECHAZO,',
'                                    PO_FECHA_RECHAZO => :P59_B_FECHA_RECHAZO,',
'                                      PO_VERIFICADO => :P59_ESTADO_VERIFICACION,',
'                                    PO_VALIDACION_COMERCIAL => :P59_ESTADO_VALIDACION_COM,',
'                                    PO_APROBACION_PRECIOS => :P59_ESTADO_APROBACION_PRECIOS,',
'                                    PO_DISPONIBILIDAD_DEPOSITO => :P59_ESTADO_DISPO_DEPOSITO,',
'                                    PO_COMUNICADO => :P59_ESTADO_COMUNICADO,',
'                                    PO_APROBADO_GG => :P59_ESTADO_APROBADO_GG,',
'                                    PO_RECHAZADO => :P59_ESTADO_RECHAZADO);',
':P59_NRO_PROMO_CAB:=:P59_PARAM_NRO_PROMO;                                    ',
'end;',
'',
'',
'ELSE',
'    --:P59_NRO_PROMO_LINK := null;',
'    apex_collection.create_or_truncate_collection(p_collection_name => ''CABECERA'');',
'',
'    apex_collection.create_or_truncate_collection(p_collection_name => ''VERIFICACION_MARGENES'');',
'    apex_collection.create_or_truncate_collection(p_collection_name => ''PAGINA_59''); ',
'apex_collection.create_or_truncate_collection(p_collection_name => ''DETALLE_COMPETENCIA''); ',
'    :P59_FECHA  := sysdate;',
'    :P59_COD_MONEDA  := ''1'';',
'    :P59_DESCUENTO_2 := 12.7;',
'    :P59_DESCUENTO_1 := 10;',
'    :P59_ESTADO :=''CREADO'';',
'    BEGIN',
'        select descripcion ,siglas',
'          into :P59_MONEDA , :P59_SIGNO ',
'          from monedas',
'         where cod_moneda = :P59_COD_MONEDA;',
'      EXCEPTION ',
'        when others then',
'          :P59_MONEDA := NULL; ',
'      END;',
'    begin',
'    	select max(nro_promo)+1',
'        into :P59_NRO_PROMO',
'        from fv_margen_cab',
'        where cod_empresa= :P_COD_EMPRESA;',
'     exception',
'    	when others then',
'    	    null;   ',
'     end;',
'        apex_collection.add_member(',
'            p_collection_name => ''CABECERA'',',
'            P_C001 => :P_COD_EMPRESA ,--COD_EMPRESA,',
'            P_C002 => NVL(:P59_NRO_PROMO,0),                     ',
'            P_C003 => :P59_COD_MONEDA,',
'            P_C004 => :P59_MONEDA,',
'            P_C005 => :P59_NRO_DESPACHO,',
'            P_C006 => :P59_ESTADO,',
'            P_C007 => :P59_FECHA,',
'            P_C008 => :P59_TIPO_CAMBIO,',
'            P_C009 => :P59_OBSERVACION,',
'            P_C010 => :P59_NRO_EMBARQUE,',
'            P_C011 => :P59_COD_USUARIO,  ',
'            P_C019 => SYSDATE,',
'            P_C027 => :P59_DESCUENTO_1, ',
'            P_C028 => :P59_DESCUENTO_2, ',
'            P_c030 => ''A'',',
'            P_C031 => :P59_SIGNO  );',
'END IF;',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
